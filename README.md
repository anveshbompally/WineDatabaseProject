# WineDatabaseProject
Wine Database Management System Project

<img width="1120" alt="Screen Shot 2021-12-13 at 16 33 13 PM" src="https://user-images.githubusercontent.com/29777087/145892297-53cce76a-96ba-4e8d-a335-b0b0b34c54ff.png">


Introduction:
The wine storage database management system (WSDBMS) has been designed to store details about manufacturing, storing and selling wines to the customers. Customers can place their order for immediate delivery or buy wines from our Wine-Mart, we can provide the wines from our Inventory. Wine-mart are supplied with the wines made in our own vineyards. Collecting all the disparate information and compiling it into one easily accessible database is the goal of our wine storage DBMS. The design of this database is based on information that needs to be collected or has been collected in the past. The driving philosophy behind the database design was to have an efficient, normalized database that would be easy to maintain and expand and allow for easy data entry and access.
 
With this database design, we want to make it easier for the organization to maintain data about all their customers and orders. It also allows us to keep a close track of every step of the delivery process as well. Details about the wine mart and the vineyard which is supplying the processed wine are also being maintained to make sure that the organization can always maintain the right stock level to provide a hassle-free experience to their customers. There are employees who work at the Vineyards or Wine-mart and the details about supply and suppliers of the raw materials that are used, are also tracked in our database.


<img width="1021" alt="Screen Shot 2021-12-13 at 16 35 46 PM" src="https://user-images.githubusercontent.com/29777087/145892629-4853dbac-8133-4e09-8fc8-2915a79d1bf3.png">


![Revised Final ERD](https://user-images.githubusercontent.com/29777087/145892517-12421fe2-b475-4b4a-b1b1-6a2406b5367f.jpg)


List of Entities:
 Customers:
In this table, we have stored all the details about our customers and selected customer_id
as the primary key.

 Order:
The orders table has been designed to maintain all the details about the order given by the customer. Order table is the central processing unit for our database design. Also, details of the delivery process including shipment details and invoice is handled by this entity. For the further convenience we added wine details in the order table to minimize the error from delivering the wrong products to our customers.

 Order Line:
Order Line table acts as a bridge between order placed by the customers and the product details we have like quantities and type. Order Line table make sures the customers get right product and the quantity that has been ordered is whether available in our Wine- Marts.

 Wine-Mart:
The Wine-mart table we store the location of the wine-marts around the globe. Table Wine- mart maintains the details about the contact information of all our inventories throughout the globe. Then in turn Wine-mart table is connected to the employee’s table. Employees maintains the Wine-marts.

 Product:
The product table maintains a portfolio of all the wines that we are offering. It also gives us details about when these wines were manufactured, the category of the wine, manufacture date, volume. Product_id is used as the primary key in this table. We also linked wine_id to ensure that we maintain sufficient stock of all the wines.
 
 Vineyard:
In the vineyard table, we maintain details about each of the vineyards that we are managing. It also consists of details like the juice yield for the vineyard level and the employee_id of the employee maintaining the vineyard. Vineyard table consist of details about the grape that has been used to manufacture our product.

 Wine-category:
Wine categories consist of the details about the type of wine and the unit where it has been manufactured.

 Raw Material:
Since raw material is basic need for our products to manufacture, we keep details of each raw material that we buy and a unit price that is assigned to our raw materials. It also keeps detailed descriptions about the raw materials.

 Raw Material Supplier:
We are also maintaining a table about the suppliers who are supplying the raw materials to our vineyards. In addition, essential details such as the supplier’s name and its address details are being stored to keep track of all the involved suppliers.

 Employee:
The employee table has all details about our employees working for the organization. We used employee_id as the primary key for this table. We added employees working for our vineyards as well as in the Wine-marts. Employee table has details about the amount of time the employee is working for us. It also has Wine-mart ID and Vineyard ID where the employee is currently working at. This will allow the organization to increase the workforce whenever required.

 Invoice:
InvoiceID is the primary key for the invoice table, which is generated after every order. In this table, the final price is decided for each of the orders concerning their customer_id. In addition, customers are provided with an option to choose their payment methods, which in turn is stored in the invoice table.

 Shipment:
Shipment table has a primary key ShipmentID, this table keeps record of the type of shipment that has been used. Basic aim for creating this table is to store all the details related to the delivery. Hence it consists of details such as departure date and arrival date of the shipments. It has carrier details for the shipment.

 Supply Unit:
Supply unit is an associative entity which acts as a bridge between Vineyards, Raw material, and Raw material supplier. The main details that supply unit table maintains are about the supply quantity from the supplier and the date on which supply has been made.

 City:
Since our vineyards are in more than one region, City table keeps it easy for us to handle details about the region in which our vineyard exists. City table consist of city name and address where vineyard is built. Further, it is connected to the country table.

 Country:
Country table consist of details of the country in all the cities where vineyards are operating. For time being we has our vineyards in USA, Canada, and Mexico.

**Database Used:**

An AWS RDS instance has been launched as the backend database for this project. The backend database has been tightly integrated directly with front end UI created using retool. All the rules within the SQL scripts have been run in the database. 

<img width="1697" alt="Screen Shot 2022-01-31 at 3 47 30 AM" src="https://user-images.githubusercontent.com/29777087/151763714-811fdd79-fed2-40e5-a4fc-b62a1189ef52.png">

**Publicly Accesible Links:**

Retool (Front End) - https://winedatabase.retool.com/apps/6f29e334-5b74-11ec-add3-83ede09028f8/WineDatabaseProject?_releaseVersion=latest

**Tableau Dashboard**

<img width="1728" alt="Screen Shot 2022-01-31 at 3 51 36 AM" src="https://user-images.githubusercontent.com/29777087/151765140-f40a5a15-8b0c-4523-af26-256622fc008e.png">




