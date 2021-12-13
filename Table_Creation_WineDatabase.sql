IF EXISTS (SELECT name FROM sys.databases WHERE name = N'WineDatabaseProjectTeam3')
    DROP DATABASE WineDatabaseProjectTeam3
GO

CREATE DATABASE [WineDatabaseProjectTeam3]
GO 

USE [WineDatabaseProjectTeam3]
GO


CREATE TABLE Customer
(
CustomerID int not null IDENTITY(100000,1),
CustomerName varchar(25) not null,
CustomerAddress varchar(50) not null,
CustomerEmail varchar(50) not null,
CustomerPhone  char(10) not null,
CONSTRAINT Customer_PK primary key (CustomerID),
CONSTRAINT valid_phone_number_customer CHECK (CustomerPhone like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT valid_email_id_customer CHECK (CustomerEmail LIKE '%_@__%.__%')
);

CREATE TABLE WineMart
(
WineMartID int not null,
WineMartName varchar(50) not null,
WineMartAddress varchar(50) not null,
WineMartPhone  char(10) not null,
WineMartEmail varchar(50) not null,
CONSTRAINT WineMart_PK primary key (WineMartID),
CONSTRAINT valid_phone_number_winemart CHECK (WineMartPhone like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT valid_email_id_winemart CHECK (WineMartEmail LIKE '%_@__%.__%')
);


CREATE TABLE Shipment
(
ShipmentID int not null IDENTITY(4001,1),
ShipmentType varchar(20),
[Status] varchar(30) DEFAULT 'Awaiting Status from Seller',
DepartureDate date not null,
ExpectedArrivalDate date not null,
CarrierName varchar(20) not null,
CONSTRAINT Shipment_PK primary key (ShipmentID),
CONSTRAINT check_shipment_dates CHECK (ExpectedArrivalDate > DepartureDate),
CONSTRAINT check_shipment_type CHECK (ShipmentType IN ('Road','Ship', 'Flight')),
);


CREATE TABLE Orders
(
OrderID int not null IDENTITY(1000,1),
CustomerID int not null,
OrderDate date DEFAULT GETDATE(),
ShipmentID int,
WineMartID int,
CONSTRAINT Order_PK primary key (OrderID),
CONSTRAINT Order_FK1 FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
CONSTRAINT Order_FK2 FOREIGN KEY (ShipmentID) REFERENCES Shipment(ShipmentID),
CONSTRAINT Order_FK3 FOREIGN KEY (WineMartID) REFERENCES WineMart(WineMartID),
CONSTRAINT Orders_atleast_one CHECK ((ShipmentID is null and WineMartID is not null) or (WineMartID is null and ShipmentID is not null))
);

--Orders need to have a shipment ID or a WineMart ID which shows that they are either online orders or winemart orders 

CREATE TABLE Invoice
(
InvoiceID int not null IDENTITY(1,1),
OrderID int not null,
InvoiceGeneratedTime datetime DEFAULT GETDATE(),
FinalPrice int not null,
PaymentMethod varchar(20) NOT NULL,
CONSTRAINT Invoice_PK1 primary key (InvoiceID),
CONSTRAINT Invoice_FK1 FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
CONSTRAINT check_payment_method1 CHECK (PaymentMethod IN ('Credit Card','Debit Card', 'Cash'))
);

-- Sample Invoice table with Inserts via the order line table

-- CREATE TABLE Invoice
-- (
-- InvoiceID int not null IDENTITY(1,1),
-- OrderID int not null,
-- InvoiceGeneratedTime datetime DEFAULT GETDATE(),
-- FinalPrice int not null,
-- PaymentMethod varchar(20) DEFAULT 'Credit Card'
-- );

-- INSERT INTO Invoice (OrderID, FinalPrice)
-- select OrderID,SUM((UnitPrice)*OrderedQuantity) AS TotalPrice from OrderLine
-- GROUP BY OrderID


CREATE TABLE WineCategory
(
WineID int not null,
CategoryName varchar(25) not null,
RegionOfManufacture varchar(20) not null,
CONSTRAINT WineCategory_PK primary key (WineID)
);

CREATE TABLE Product
(
ProductID int not null IDENTITY(6000,1),
WineID int not null,
ManufacturedDate date NOT NULL,
AlcoholPercentage decimal(5,2) not null,
BottleVolume int not null,
YearProduced AS year(ManufacturedDate),
UnitPrice int not null,
QuantityInStock int not null,
CONSTRAINT Product_PK primary key (ProductID),
CONSTRAINT Product_FK FOREIGN KEY (WineID) REFERENCES WineCategory(WineID),
CONSTRAINT Product_Stock_Check CHECK (QuantityInStock >= 0)
);

--Product_Stock_Check constraint makes sure that there is no order in the orderline table that requires more product than the available stock


CREATE TABLE OrderLine
(
OrderID int not null,
ProductID int not null,
OrderedQuantity int not null,
CONSTRAINT OrderLine_PK primary key (OrderID,ProductID),
CONSTRAINT OrderLine_FK1 FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
CONSTRAINT OrderLine_FK2 FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

CREATE TABLE Country
(
CountryID int not null,
CountryName varchar(50) not null,
CONSTRAINT Country_PK primary key (CountryID)
);


CREATE TABLE City
(
CityID int not null,
CityName varchar(50) not null,
PostalCode char(6) not null,
CountryID int not null,
CONSTRAINT City_PK primary key (CityID),
CONSTRAINT City_FK FOREIGN KEY (CountryID) REFERENCES Country(CountryID)
);

CREATE TABLE Vineyard
(
VineyardID int not null IDENTITY(243,1),
JuiceYieldPerAcre decimal(5,2) not null,
GrapeName varchar(20) not null,
CityID int not null,
CONSTRAINT Vineyard_PK primary key (VineyardID),
CONSTRAINT Vineyard_FK FOREIGN KEY (CityID) REFERENCES City(CityID)
);


-- CREATE TABLE Inventory
-- (
-- ProductID int not null,
-- VineyardID int not null,
-- QuantityInStock int not null,
-- CONSTRAINT Inventory_PK primary key (ProductID,VineyardID),
-- CONSTRAINT Inventory_FK1 FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
-- CONSTRAINT Inventory_FK2 FOREIGN KEY (VineyardID) REFERENCES Vineyard(VineyardID)
-- );

CREATE TABLE Employee
(
EmployeeID int not null IDENTITY(15250,1),
EmployeeName varchar(25) not null,
EmployeeAddress varchar(50) not null,
DateOfBirth date not null,
DateOfJoining date DEFAULT GETDATE(),
VineyardID int,
WineMartID int,
EmployeeAge AS (year(CURRENT_TIMESTAMP) - year(DateOfBirth)),
NumberOfYearsEmployed AS (year(CURRENT_TIMESTAMP) - year(DateOfJoining)),
CONSTRAINT Employee_PK primary key (EmployeeID),
CONSTRAINT Employee_FK1 FOREIGN KEY (VineyardID) REFERENCES Vineyard(VineyardID),
CONSTRAINT Employee_FK2 FOREIGN KEY (WineMartID) REFERENCES WineMart(WineMartID),
CONSTRAINT Emp_only_one CHECK ((VineyardID is null and WineMartID is not null) or (WineMartID is null and VineyardID is not null) or (WineMartID is null and VineyardID is null)), 
CONSTRAINT check_employee_date_of_birth CHECK (DateOfBirth BETWEEN '1961-01-01' AND GETDATE())
);

--The Emp_only_one constraint makes sure that the employee is only working in the WineMart or the Vineyard or has not yet been assigned. It ensures that the employee only works in one of the available options.

CREATE TABLE RawMaterialSupplier
(
SupplierID int not null,
SupplierName varchar(50) not null,
SupplierPhone char(10) not null,
CONSTRAINT RawMaterialSupplier_PK primary key (SupplierID),
CONSTRAINT valid_phone_number_raw_material_supplier CHECK (SupplierPhone like '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);



CREATE TABLE RawMaterials
(
MaterialID int not null,
MaterialName varchar(50) not null,
Price int not null,
[Description] varchar(255) NOT NULL,
CONSTRAINT RawMaterials_PK primary key (MaterialID)
);


CREATE TABLE SupplyLine
(
MaterialID int not null,
VineyardID int not null,
SupplierID int not null,
OrderedQuantity int not null,
SupplyDate date not null,
CONSTRAINT SupplyLine_PK primary key (MaterialID,VineyardID),
CONSTRAINT SupplyLine_FK1 FOREIGN KEY (MaterialID) REFERENCES RawMaterials(MaterialID),
CONSTRAINT SupplyLine_FK2 FOREIGN KEY (VineyardID) REFERENCES Vineyard(VineyardID),
CONSTRAINT SupplyLine_FK3 FOREIGN KEY (SupplierID) REFERENCES RawMaterialSupplier(SupplierID)
);



