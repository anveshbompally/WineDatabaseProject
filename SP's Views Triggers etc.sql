USE WineDatabaseProjectTeam3


--Stored Procedures

-- Stored Procedure 1 (AllDetailsAboutShipmentOrders) will show up all the details about the order if any customer needs help on tracking their order or needs any information related to their order

CREATE Procedure AllDetailsAboutShipmentOrders @orderid int AS
BEGIN
    select Orders.OrderID, Orders.CustomerID, Orders.OrderDate, Orders.ShipmentID, Customer.CustomerName, Customer.CustomerAddress, Customer.CustomerEmail, Customer.CustomerPhone, Shipment.ShipmentType, Shipment.[Status], Shipment.DepartureDate, Shipment.ExpectedArrivalDate, Shipment.CarrierName from --Remove * and write necessary columns
    Orders LEFT JOIN Customer on Orders.CustomerID = Customer.CustomerID
    JOIN Shipment on Orders.ShipmentID = Shipment.ShipmentID
    WHERE OrderID = @orderid
END

--Sample command for SP1

EXEC AllDetailsAboutShipmentOrders 1004

-- Stored Procedure 2 (GetEmployeeDetails) will show the list of the employees working in that particular WineMart

CREATE Procedure GetEmployeeDetails @winemartid int AS
BEGIN

    select * from Employee
    WHERE WineMartID = @winemartid

END

--Sample command for SP2

EXEC GetEmployeeDetails 1899975471


-- Stored Procedure 3 (GetStockDetails) will show the stock left for the Product ID which has been entered

CREATE PROCEDURE GetStockDetails @productid int, @stock int OUTPUT AS
BEGIN 

    SELECT @stock = QuantityInStock from Product
    where ProductID = @productid

END

--Sample command for SP3

DECLARE @count INT;
EXEC GetStockDetails 6001, @stock = @count OUTPUT;
SELECT @count AS 'Number of products found in Inventory';

-- Stored Procedure 4 (SalesInWineMart) will show the sales for a particular winemart during a particular period that we passed in as parameters to the stored procedure


CREATE Procedure SalesInWineMart @winemartid int, @startdate date, @enddate date, @numberoforders int OUTPUT AS
BEGIN
    SELECT @numberoforders = COUNT(*) from Orders JOIN WineMart on Orders.WineMartID = WineMart.WineMartID
    WHERE (WineMart.WineMartID = @winemartid) AND (OrderDate BETWEEN @startdate AND @enddate)
END

--Sample command for SP4

DECLARE @sales int
EXEC SalesInWineMart 1930924874, '2018-12-01', '2018-12-31', @numberoforders = @sales OUTPUT
SELECT @sales AS 'Number of orders'


-- Stored Procedure 5 (OrdersByMonth) will show the number of Orders placed during a month of the specified year

CREATE Procedure OrdersByMonth @month int, @year int, @numberoforders int OUTPUT AS
BEGIN
    SELECT @numberoforders = count(*) from Orders
    where MONTH(OrderDate) = @month and YEAR(OrderDate) = @year
END

--Sample command for SP5

DECLARE @salesbymonth int
EXEC OrdersByMonth 6,2018, @numberoforders = @salesbymonth OUTPUT
SELECT @salesbymonth AS 'Number of orders'

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Views

-- View 1 --> Get a list of the top 10 WineMarts in terms of Sales

CREATE TABLE TopWineMarts(
    NumberOfOrders int not null,
    WineMartID int not null,
    CONSTRAINT TopWineMarts_FK FOREIGN KEY (WineMartID) REFERENCES Winemart(WineMartID)
)

insert into TopWineMarts
SELECT Count(*) AS NumberOfOrders, Orders.WineMartID from Orders left join WineMart on Orders.WineMartID = WineMart.WineMartID
GROUP BY Orders.WineMartID
HAVING Orders.WineMartID IS NOT NULL

CREATE VIEW TopPerformingWineMarts AS
SELECT TOP 10 NumberOfOrders, TopWineMarts.WineMartID, WineMartName, WineMartAddress, WineMartPhone, WineMartEmail from TopWineMarts
JOIN WineMart on TopWineMarts.WineMartID = WineMart.WineMartID


select * from TopPerformingWineMarts
ORDER BY NumberOfOrders DESC

-- View 2 --> Juice yield of all the grapes combined on a city level and also a country level



CREATE VIEW JuiceYieldByCity AS
select SUM(JuiceYieldPerAcre) AS JuiceYieldPerCity, CityName from Vineyard JOIN City on Vineyard.CityID = City.CityID
GROUP BY CityName

SELECT * from JuiceYieldByCity
ORDER BY JuiceYieldPerCity DESC




CREATE VIEW JuiceYieldByCountry AS
select SUM(JuiceYieldPerAcre) AS JuiceYieldPerCountry, CountryName from Vineyard JOIN City on Vineyard.CityID = City.CityID JOIN Country on City.CountryID = Country.CountryID
GROUP BY CountryName

select * from JuiceYieldByCountry
ORDER BY JuiceYieldPerCountry DESC


-- View 3 --> Get a list of all Customers according to State (NY and CA)


select * from 
(SELECT *
   -- The following section breaks down the "CustomerAddress" column into four columns.
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 1)) AS Street
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 2)) AS City
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 3)) AS State
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 4)) AS ZipCode
FROM Customer) AS CustomerDetailedAddress
WHERE [State] = 'NY'


select * from 
(SELECT *
   -- The following section breaks down the "CustomerAddress" column into four columns.
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 1)) AS Street
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 2)) AS City
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 3)) AS State
   , REVERSE(PARSENAME(REPLACE(REVERSE(CustomerAddress), ',', '.'), 4)) AS ZipCode
FROM Customer) AS CustomerDetailedAddress 
WHERE [State] = 'CA'


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- Triggers

-- Trigger 1 (This trigger fires whenever a record is inserted into the OrderLine table, it will reduce the stock by the quantity which has been ordered)

CREATE trigger QuantityDeduction ON OrderLine
AFTER INSERT AS

BEGIN 
    update Product
    set QuantityInStock = QuantityInStock - OrderedQuantity
    from inserted inner join Product ON Product.ProductID = inserted.ProductID 
    where Product.ProductID = inserted.ProductID; 
END


select * from Orders
select * from OrderLine
select * from Product

--Sample command for Trigger 1

INSERT INTO OrderLine(OrderID, ProductID, OrderedQuantity) VALUES (1015, 6000, 5)

select * from Product where ProductID = 6000

INSERT INTO OrderLine(OrderID, ProductID, OrderedQuantity) VALUES (1007, 6006, 25)

select * from Product where ProductID = 6006

INSERT INTO OrderLine(OrderID, ProductID, OrderedQuantity) VALUES (1007, 6000, 30) -- Trying to demonstrate what would happen if we place an order of quantity which is larger than the available stock 



--Trigger 2 (This trigger is used to maintain an Audit trail of the changes made to the Customer Database)


CREATE TABLE [dbo].[CustomerAudit](
    [CustomerIDAudit] int  not null primary key identity(1,1),
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](25) NOT NULL,
	[CustomerAddress] [varchar](50) NOT NULL,
	[CustomerEmail] [varchar](50) NOT NULL,
	[CustomerPhone] [char](10) NOT NULL,
    [UpdateTime] DATETIME,
    [ActionPerformed] VARCHAR(50)
) 

-- Statements to create the Trigger 2

CREATE TRIGGER CustomerUpdateTrigger on [Customer]
FOR UPDATE 
AS DECLARE @CustomerID INT,
        @CustomerName VARCHAR(25),
	   @CustomerAddress VARCHAR(50),
	   @CustomerEmail VARCHAR(50),
	   @CustomerPhone char (10),
       @ActionPeformed VARCHAR(50);

SELECT @CustomerID = ins.CustomerID FROM INSERTED ins;
SELECT @CustomerName = ins.CustomerName FROM INSERTED ins;
SELECT @CustomerAddress = ins.CustomerAddress FROM INSERTED ins;
SELECT @CustomerEmail = ins.CustomerEmail FROM INSERTED ins;
SELECT @CustomerPhone = ins.CustomerPhone FROM INSERTED ins;
  
IF UPDATE(CustomerName)
BEGIN
     SET @ActionPeformed = 'Updated Customer Name'
END
 
IF UPDATE(CustomerAddress)
BEGIN
      SET @ActionPeformed = 'Updated Customer Address'
END

IF UPDATE(CustomerEmail)
BEGIN
      SET @ActionPeformed = 'Updated Customer Email'
END

IF UPDATE(CustomerPhone)
BEGIN
      SET @ActionPeformed = 'Updated Customer Phone'
END

INSERT INTO [CustomerAudit]
VALUES (@CustomerID,
        @CustomerName,
	@CustomerAddress,
	@CustomerEmail,
	@CustomerPhone,
	GETDATE(),
	@ActionPeformed);
GO

--Sample command for Trigger 2

UPDATE Customer
SET CustomerName = 'Ravi Shankar'
WHERE CustomerID = 100000

SELECT * from CustomerAudit

--Trigger 3 (This trigger is used to maintain logs about what non clustered indexes have been created and created by whom)

CREATE TABLE Index_logs (
    log_id INT IDENTITY PRIMARY KEY,
    event_data XML NOT NULL,
    changed_by SYSNAME NOT NULL
); -- This table is used to maintain all the logs about the non clustered indexes which have been created, by whom they were created and other details as well

-- Statements to create the Trigger 3

CREATE TRIGGER nonclustered_index_trigger
ON database
FOR	
    CREATE_INDEX,
    ALTER_INDEX, 
    DROP_INDEX
AS
BEGIN
    INSERT INTO Index_logs (
        event_data,
        changed_by
    )
    VALUES (
        EVENTDATA(),
        USER
    );
END --Logic for the trigger which gets fired whenever a non clustered index is created 


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- Creating 2 Non Clustered Indexes

CREATE NONCLUSTERED INDEX idx_cust_name
ON Customer(CustomerName);
GO

--The logs have also been stored in the Index_logs table

CREATE NONCLUSTERED INDEX idx_emp_name
ON Employee(EmployeeName);

--Sample command for Trigger 3

select * from Index_logs

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


--ENCRYPTION

--Creating a Username and Password column for each customer in the customer database and encrypting their passwords using AES256 encryption

ALTER TABLE Customer add Username varchar(50), [Password]  varbinary(400)

create MASTER KEY
ENCRYPTION BY PASSWORD = 'DAMGProject3';

CREATE CERTIFICATE CustPass  
   WITH SUBJECT = 'Customer Sample Password'; 

CREATE SYMMETRIC KEY CustPass_SM 
    WITH ALGORITHM = AES_256  
    ENCRYPTION BY CERTIFICATE CustPass; 


OPEN SYMMETRIC KEY CustPass_SM  
   DECRYPTION BY CERTIFICATE CustPass; 

UPDATE Customer set  [username] = CustomerEmail
, [Password] = EncryptByKey(Key_GUID('CustPass_SM'),  convert(varbinary,'Password@123')) 
GO

select * from Customer

OPEN SYMMETRIC KEY CustPass_SM  
   DECRYPTION BY CERTIFICATE CustPass;

SELECT *, 
    CONVERT(varchar, DecryptByKey([Password]))   
    AS 'Decrypted password'  
    FROM Customer;  

CLOSE SYMMETRIC KEY CustPass_SM;

select * from Customer

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--User Defined Function to Calculate the discounted Price during a sale

CREATE FUNCTION DiscountedPrice( 
    @price float, 
    @discount float 
    ) 
RETURNS float
AS
BEGIN
  RETURN (@price - ((@discount/100) * (@price)));
END;


select [dbo].DiscountedPrice(85, 20) AS DiscountedPrice

--Display discounted price of all the Products if they are discounted by 20%

SELECT ProductID, QuantityInStock, AlcoholPercentage, BottleVolume ,[dbo].DiscountedPrice(UnitPrice, 20) AS DiscountedPrice from Product

--Another Use case is to discount all the prices of the bottles which we have a lot of stock

SELECT ProductID, WineCategory.CategoryName, QuantityInStock, AlcoholPercentage, BottleVolume ,[dbo].DiscountedPrice(UnitPrice, 20) AS DiscountedPrice from Product JOIN WineCategory on Product.WineID = WineCategory.WineID
WHERE QuantityInStock > 30


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
