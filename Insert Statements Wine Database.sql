USE WineDatabaseProjectTeam3

--Customer table insert statements

INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Kaylee English','1794432100','kaylee.english@msn.com','8786 Fulton Rd,Hollis,NY,11423');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Corene Wall','8598107830','corene.wall@msn.com','9601 Ocean Rd,Atwater,CA,95301');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Regenia Vaughan','9190159605','regenia.vaughan@gmail.com','44 Stonybrook Street ,Mahopac,NY,10541');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Theo Reese','8655066646','theo.reese@gmail.com','8755 West Wild Horse St ,Long Beach,NY,11561');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Santos Valencia','9944525337','santos.valencia@yahoo.com','7479 Carpenter Street,Sunnyside,NY,11104');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Jeanice Frost','9848286566','jeanice.frost@hotmail.com','76 Devon Lane,Ossining,NY,10562');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Syreeta Hendricks','7168896316','syreeta.hendricks@msn.com','193 Spruce Road,Mahopac,NY,10541');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Jamaal Albert','8855748502','jamaal.albert@gmail.com','853 Stonybrook Street,Torrance,CA,90505');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Williemae Holloway','6516741742','williemae.holloway@msn.com','69 Cypress St,Oakland,CA,94603');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Araceli Golden','8430867133','araceli.golden@msn.com','12 Ridgeview Ave,Fullerton,CA,92831');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Deloris Burke','7004691331','deloris.burke@hotmail.com','895 Edgemont Drive,Palos Verdes Peninsula,CA,90274');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Brittney Woodward','9850346843','brittney.woodward@aol.com','960 River St,East Northport,NY,11731');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Guillermina Noble','8782321066','guillermina.noble@msn.com','6 Del Monte Lane ,Baldwinsville,NY,13027');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Bernita Mcdaniel','8456868479','bernita.mcdaniel@hotmail.com','2 Peg Shop Ave,Liverpool,NY,13090');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Melia Brady','6176164508','melia.brady@gmail.com','907 Shirley Rd,Maspeth,NY,11378');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Zelma Browning','7141571360','zelma.browning@aol.com','296 Second Street,Astoria,NY,11102');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Janetta Aguirre','9129540206','janetta.aguirre@aol.com','214 Second Court,Lancaster,NY,14086');
INSERT INTO Customer(CustomerName, CustomerPhone, CustomerEmail, CustomerAddress) VALUES('Ronna Butler','6625527546','ronna.butler@gmail.com','9438 Plymouth Court,Encino,CA,91316');


--Winemart table insert statements


INSERT INTO WineMart(WineMartID, WineMartName, WineMartAddress, WineMartPhone, WineMartEmail)
VALUES
(1800406501, 'Good Grapes', '97 South Green Lake Road Downers Grove, IL 60515', '9952291905', 'kisaday174@nefacility.com'),
(1922311807, 'A World of Wines', '541 Prospect Rd. Pomona, CA 91768', '9192696376', 'chase80@hagenes.biz'),
(1899975471, 'Velvet Vinos', '233 Market Lane Sun City, AZ 85351', '7847861953', 'farmstrong@hagenes.com'),
(1819678454, 'Silky Sips', '8204 Oakland Street Waldorf, MD 20601', '9582750883', 'hammes.ashton@roberts.net'),
(1930924874, 'Fine Vines n’ Wines', '8727 S. Market Lane Sandusky, OH 44870', '7516124993', 'gsteuber@hotmail.com'),
(1870158961, 'Utterly Uncorked', '7442 East School Road Valrico, FL 33594', '8818084219', 'fyundt@bergnaum.biz'),
(1924399193, 'Vintage Vinos', '69 Charles Street Metairie, LA 70001', '8004241561', 'weber.milan@yahoo.com'),
(1974776757, 'The Grape Gurus', '4 Parker Dr. Mishawaka, IN 46544', '7983573213', 'mann.elvie@stamm.org'),
(1808407376, 'Straight from the Vine', '9676 Marconi Street San Angelo, TX 76901', '8435408872', 'kyle36@grimes.com'),
(1923913571, 'We Worship Wine', '7297 Kingston Street Deerfield, IL 60015', '9617851212', 'iryan@emard.com'),
(1826911917, 'Grapes By the Glass', '816 Indian Summer Court Panama City, FL 32404', '8424393992', 'pagac.octavia@johnson.com'),
(1972621305, 'Your Secret Wine Cellar', '23 South Myers Street Enterprise, AL 36330', '9084276234', 'rosie16@yahoo.com'),
(1898419931, 'The Queen o’ Vino', '97 North Bow Ridge Ave. Eau Claire, WI 54701', '6875345546', 'earnest31@hotmail.com'),
(1983680630, 'Red White and Poured', '387 Hilltop Court Garfield, NJ 07026', '9275996718', 'dtrantow@bergnaum.com'),
(1976414586, 'Time for Wine', '207 S. Van Dyke St. Hampton, VA 23666', '8541572476', 'bmcglynn@yost.info')



--Shipment table insert statements

INSERT INTO SHIPMENT
VALUES
('Road','Shipped','12/23/18','12/24/18','UPS'),
('Ship','Not Yet Shipped','12/24/18','12/25/18','Fedex'),
('Flight','Shipped','12/25/18','12/26/18','Fedex'),
('Flight','Expected Delivery Tomorrow','12/26/18','12/27/18','Bluedart'),
('Ship','Not Yet Shipped','12/27/18','12/28/18','Bluedart'),
('Road','Shipped','12/28/18','12/29/18','UPS'),
('Flight','Expected Delivery Tomorrow','12/29/18','12/30/18','Fedex'),
('Road','Not Yet Shipped','12/30/18','12/31/18','UPS'),
('Road','Not Yet Shipped','12/31/18','1/1/19','Fedex'),
('Ship','Expected Delivery Tomorrow','1/1/19','1/2/19','UPS'),
('Flight','Expected Delivery Tomorrow','1/2/19','1/3/19','Bluedart'),
('Ship','Not Yet Shipped','1/3/19','1/4/19','UPS'),
('Flight','Not Yet Shipped','1/4/19','1/5/19','UPS'),
('Road','Not Yet Shipped','1/5/19','1/6/19','Fedex'),
('Road','Not Yet Shipped','1/6/19','1/7/19','Fedex'),
('Ship','Shipped','1/7/19','1/8/19','UPS'),
('Flight','Shipped','1/8/19','1/9/19','Bluedart'),
('Ship','Not Yet Shipped','1/9/19','1/10/19','UPS'),
('Flight','Not Yet Shipped','1/10/19','1/11/19','UPS'),
('Road','Not Yet Shipped','1/11/19','1/12/19','Fedex')


--Default Value for shipment

INSERT INTO SHIPMENT(ShipmentType, DepartureDate, ExpectedArrivalDate, CarrierName) VALUES ('Road','1/11/19','1/12/19','Fedex')


--Insert into Wine Category Statements

INSERT INTO WineCategory
VALUES
('12','Red Wines','Central Coast AVA'),
('13','White Wines','Livermore Valley AVA'),
('14','Rosé Wines','Paso Robles AVA'),
('15','Sparkling Wines','York Mountain AVA'),
('16','Dessert Wines','Central Valley'),
('17','Fortified Wines','Lodi AVA'),
('23','Tannins','North Coast AVA'),
('35','Aging','Mendocino AVA'),
('46','Taste','Napa Valley AVA'),
('38','Varietals','Sonoma County'),
('89','Bordeaux','Sierra Foothills AVA'),
('76','Chianti','South Coast AVA'),
('54','Rioja','Colorado'),
('58','Syrah','Michigan'),
('59','Primitivo','Missouri'),
('30','Beaujolai','New Jersey'),
('60','Pinot Grigio','New Mexico'),
('61','Sauvignon Blanc','New York'),
('62','Riesling','Ohio'),
('63','Chardonnay','Oregon')

--Insert into Country Statements

INSERT INTO Country
VALUES
(301, 'United States of America'),
(302, 'India'),
(303, 'China'),
(304, 'Indonesia'),
(305, 'Pakistan'),
(306, 'Brazil'),
(307, 'Nigeria'),
(308, 'Bangladesh'),
(309, 'Canada'),
(310, 'Mexico')

--Insert into City Statements

INSERT INTO City(CityID, CityName, PostalCode, CountryID) 
VALUES 
(122,'New York City','16101', 301),
(133,'Los Angeles','08859', 301),
(144,'Chicago','27530', 301),
(155,'Houston','60046', 301),
(166,'Phoenix','08759', 301),
(177,'Philadelphia','11762', 301),
(238,'San Antonio','14304', 301),
(359,'San Diego','34711',301),
(465,'Dallas','45324', 301),
(384,'Austin','15068', 301),
(893,'San Jose','94603', 301),
(762,'Toronto','07003', 309),
(544,'Montréal','07076', 309),
(586,'Vancouver','07011', 309),
(597,'Ottawa','08075', 309),
(320,'Mexico City','60031', 310),
(605,'Tijuana','27893', 310),
(616,'Ecatepec','21133', 310),
(622,'León','08075', 310),
(632,'Puebla','07093', 310)

--Insert into Orders Statements

INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100000, '11/12/18', '4001')
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100000, '9/23/18', '4002') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100002, '8/21/18', '4005') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100003, '7/14/18', '4006') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100004, '6/16/18', '4007') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100005, '6/17/18', '4008') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100006, '6/19/18', '4009') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100006, '6/26/18', '4010') 
INSERT INTO Orders (CustomerID, OrderDate, WineMartID) VALUES (100006, '6/30/18','1800406501')  
INSERT INTO Orders (CustomerID, OrderDate, WineMartID) VALUES (100007, '4/21/18','1819678454') 
INSERT INTO Orders (CustomerID, OrderDate, WineMartID) VALUES (100008, '3/22/18','1923913571') 
INSERT INTO Orders (CustomerID, OrderDate, WineMartID) VALUES (100012, '8/11/18','1930924874') 
INSERT INTO Orders (CustomerID, OrderDate, WineMartID) VALUES (100011, '12/19/18','1930924874') 
INSERT INTO Orders (CustomerID, OrderDate, WineMartID) VALUES (100011, '12/15/18','1930924874') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100001, '10/1/18', '4013') 
INSERT INTO Orders (CustomerID, OrderDate, ShipmentID) VALUES (100015, '10/2/18', '4013') 

-- Insert into Invoice Statements

INSERT INTO INVOICE(OrderID, FinalPrice, PaymentMethod) 
VALUES 
(1000, 150, 'Credit Card'),
(1001, 90, 'Debit Card'),
(1002, 20, 'Debit Card'),
(1003, 90, 'Debit Card'),
(1004, 30, 'Credit Card'),
(1005, 270, 'Credit Card'),
(1006, 90, 'Credit Card'),
(1007, 45, 'Debit Card'),
(1008, 225, 'Credit Card'),
(1009, 180, 'Credit Card'),
(1010, 70, 'Cash'),
(1011, 90, 'Credit Card'),
(1012, 30, 'Credit Card'),
(1013, 30, 'Cash'),
(1014, 20, 'Cash'),
(1015, 20, 'Cash')

--Insert into Product Statements

INSERT INTO Product(WineID, ManufacturedDate, AlcoholPercentage, BottleVolume, UnitPrice, QuantityInStock) 
VALUES 
(12, '12-8-14', 5.5,750, 10, 25),
(12, '12-23-15', 16,1500, 20, 20),
(13, '9-25-15', 11.6,750, 30, 30),
(14, '9-11-15', 12.5,1500, 15, 35),
(14, '9-12-15', 5.5,750, 25, 20),
(23, '6-23-14', 16,1500, 45, 50),
(30, '5-9-14', 16,750, 25, 120),
(35, '4-8-14', 5.5,750, 30, 118),
(38, '6-6-14', 16,1500, 35, 24),
(46, '2-5-16', 5.5,750, 45, 35),
(54, '1-14-14', 11.6,750, 100, 75),
(54, '1-17-14', 16,750, 80, 80),
(58, '1-18-16', 11.6,1500, 90, 12),
(60, '5-24-16', 5.5,750, 65, 3),
(63, '6-22-14', 11.6,750, 70, 3),
(63, '6-11-14', 5.5,750, 20, 4),
(76, '4-13-16', 12.5,1500, 25, 65),
(89, '3-8-14', 16,1500, 15, 21)


--Insert into OrderLine Statements

INSERT INTO OrderLine(OrderID, ProductID, OrderedQuantity) 
VALUES 
(1000, 6000, 1),
(1000, 6007, 2),
(1000, 6008, 1),
(1000, 6009, 1),
(1001, 6012, 1),
(1002, 6000, 2),
(1003, 6002, 3),
(1004, 6003, 2),
(1005, 6004, 2),
(1005, 6007, 2),
(1005, 6008, 2),
(1005, 6009, 2),
(1006, 6005, 2),
(1007, 6005, 1),
(1008, 6005, 5),
(1009, 6007, 6),
(1010, 6008, 2),
(1011, 6009, 2),
(1012, 6002, 1),
(1013, 6002, 1),
(1014, 6001, 1),
(1015, 6001, 1)

--Insert into Vineyard Statements

INSERT INTO Vineyard(JuiceYieldPerAcre, GrapeName, CityID) 
VALUES 
(5.3,'Red Wine Grapes',122),
(6.5,'Merlot',122),
(2.5,'Pinot Noir',133),
(2.3,'Cabernet Sauvignon',177),
(5.3,'Syrah',133),
(7.1,'Grenache',155),
(2.9,'Gamay',122),
(3.4,'Tempranillo',320),
(4.5,'Sangiovese',359),
(6.2,'Zinfandel',320),
(3.4,'Pinotage',384),
(6.5,'Carménère',122),
(4.5,'Malbec',544),
(5.3,'White Wine Grapes',632),
(3.4,'Chardonnay',762),
(4.5,'Sauvignon Blanc',893),
(6.5,'Pinot Grigio',133),
(4.5,'Verdicchio',597),
(3.4,'Viognier',605),
(6.5,'Albarino',616)

--Insert into Employee (Employees working at Vineyards) Statements

INSERT INTO Employee(EmployeeName, EmployeeAddress, DateOfBirth, DateOfJoining, VineyardID)
VALUES
('Fikriye Gerolf','862 Lake View Court Lorain, OH 44052','12/01/84', '07/11/19', 249),
('Raguel Ghjuvanni','464 Saxton St. Canal Winchester, OH 43110','10/01/92', '04/10/19', 250),
('Kristina Kavita','588 Maiden Ave. Solon, OH 44139','01/08/85', '12/12/18', 251),
('Victor Julinha','262 8th St. Summerville, SC 29483','01/19/92', '03/26/18', 252),
('Euryalus Krista','8770 Catherine Street Williamsburg, VA 23185','06/28/92', '11/15/18', 253),
('Nabila Noburu','9153 Rock Maple St. Glasgow, KY 42141','03/31/94', '11/15/18', 254),
('Alojzia Franco','959 Pilgrim Street Piedmont, SC 29673','08/14/99', '12/12/18', 255),
('Teodors Ester','8030 Sheffield Drive Liverpool, NY 13090','09/17/97', '12/29/17', 256),
('Oto Heraclitus','8 South Van Dyke Lane Whitestone, NY 11357','06/28/92', '11/15/18', 257),
('Tethys Trang','7855 South Colonial Dr. Marcus Hook, PA 19061','08/14/99', '12/12/18', 258),
('Milena Carminho','13 Joy Ridge Dr. Pittsfield, MA 01201','09/17/97', '03/26/18', 258),
('Gunda Ilana','1 Grandrose St. Mesa, AZ 85203','05/20/95', '12/12/18', 260),
('Karlene Akinyi','28 St Paul Drive Poyersford, PA 19468','06/21/02', '04/05/18', 261),
('Inta Phaedra','656 Fordham Street North Olmsted, OH 44070','06/28/92', '03/26/18', 262),
('Ismael Günay','9284 Brookside Drive Lawrenceville, GA 30043','12/01/84', '03/26/18', 248),
('Leeann Loui','92 Greenview St. Mechanicsburg, PA 17050','01/15/00', '04/05/18', 247),
('Hesiodos Slava','63 Evergreen Street Brooklyn, NY 11201','12/19/86', '12/12/18', 246),
('Milogost Vico','7553 1st St. Burbank, IL 60459','07/07/88', '10/14/18', 245),
('Yijun Aisha','8215 Clinton Ave. Roswell, GA 30075','03/31/94', '10/14/18', 244),
('Ophiuchus Lottie','8237 Orange Court Piqua, OH 45356','12/01/84', '04/05/18',243)

--Insert into Employee (Employees working at WineMarts) Statements

INSERT INTO Employee(EmployeeName, EmployeeAddress, DateOfBirth, DateOfJoining, WineMartID)
VALUES
('Erika Greene','12 Lake View Court Lorain, OH 44052','11/01/84', '07/11/19', 1800406501),
('Dennis Cooley','23 Saxton St. Canal Winchester, OH 43110','9/01/92', '04/10/19', 1808407376),
('Luciano Harrell','34 Maiden Ave. Solon, OH 44139','01/08/85', '10/4/18', 1819678454),
('Princess Cooke','564 8th St. Summerville, SC 29483','01/19/92', '05/5/18', 1826911917),
('Alonso Braun','1234 Catherine Street Williamsburg, VA 23185','06/28/92', '11/15/18', 1870158961),
('Scarlett Cobb','4523 Rock Maple St. Glasgow, KY 42141','4/22/94', '11/15/18', 1898419931),
('Dominique Escobar','123 Pilgrim Street Piedmont, SC 29673','08/14/99', '12/12/18', 1899975471),
('Kendall Cole','123 Sheffield Drive Liverpool, NY 13090','5/17/97', '12/21/17', 1922311807),
('Leia Pratt','4 South Van Dyke Lane Whitestone, NY 11357','06/28/92', '11/21/18', 1923913571),
('Marina Bray','1 South Colonial Dr. Marcus Hook, PA 19061','08/14/99', '12/12/18', 1924399193),
('Desmond Graham','4 Joy Ridge Dr. Pittsfield, MA 01201','09/17/97', '03/26/18', 1930924874),
('Isaac Chandler','234 Grandrose St. Mesa, AZ 85203','05/20/95', '12/12/18', 1972621305),
('Jerry Sellers','5423 St Paul Drive Poyersford, PA 19468','6/21/02', '04/05/18', 1974776757),
('Frances Chase','123 Fordham Street North Olmsted, OH 44070','06/28/92', '03/4/18', 1976414586),
('Marian Nora','34 Charles Dr Lagrange, GA 30240','11/02/97', '03/26/17', 1899975471),
('Brigita Nasib','9758 Deerfield Street Bolingbrook, IL 60440','09/21/95', '12/12/15', 1899975471),
('Ivan Hubertus','2 Harvey St. Elgin, IL 60120','12/30/98', '04/05/19', 1899975471),
('Gaye Rahim','9834 West Evergreen Drive Natchez, MS 39120','4/3/93', '03/4/20', 1899975471),
('Jolie Henry','12 Brookside Drive Lawrenceville, GA 30043','12/01/84', '03/26/18', 1983680630)


-- Insert into RawMaterialSupplier Statements

INSERT INTO RawMaterialSupplier
VALUES
(5500, 'Chosen wine', 9536633893),
(5501, 'Jupiter wine', 7874404145),
(5502, 'Para wine', 7349720375),
(5503, 'Rockland wine', 9547701300),
(5504, 'Component wine', 6826684914),
(5505, 'Pangae wine', 7263165777),
(5506, 'Endurance wine', 7130926828),
(5507, 'BestPrice wine', 9160481768),
(5508, 'Ardent wine', 7631701221),
(5509, 'Platinum wine', 8481673964),
(5510, 'Silverlake wine', 8943337492)

-- Insert into RawMaterials Statements

INSERT INTO RawMaterials
VALUES
(6500, 'Red Grapes', 20, 'Red table grapes come in many varieties, some with colorful names like Scarlet Royal and Flame'),
(6501, 'Grape Stalks', 15, 'The stalk extending out to hold the grape cluster is known as the bunchstem while the stem of the individual grape berry is the pedicel. '),
(6502, 'Grape Pomace', 20, 'Pomace or marc is the solid remains of grapes, olives, or other fruit after pressing for juice or oil.'),
(6503, 'Grape Peels', 35, 'Red grape skins contain an array of bioflavonoids (quercetin, catechins, flavonols, and anthocyanidins) and nonbioflavonoid polyphenols (acid derivatives).'),
(6504, 'Grape Seeds', 15, 'Grape seeds are small, crunchy, pear-shaped seeds found in the middle of seeded grapes.'),
(6505, 'Wine Lees', 20, 'If wine ages in contact with its fine lees for a considerable time, it develops pronounced round, full, creamy flavors that may present as nutty'),
(6506, 'lignocellulosic materials', 20, 'Lignocellulosic materials consist of cellulose, hemicellulose, and lignin. '),
(6507, 'hemicellulose', 35, 'A hemicellulose (also known as polyose) is one of a number of heteropolymers'),
(6508, 'Ethanol', 15, 'Ethanol (also called ethyl alcohol, grain alcohol, drinking alcohol, or simply alcohol) is an organic chemical compound.'),
(6509, 'Lactic Acid', 20, 'Lactic acid is an alpha-hydroxy acid (AHA)'),
(6510, 'Succinic Acid', 10, 'The name derives from Latin succinum, meaning amber')

-- Insert into SupplyLine Statements

INSERT INTO SupplyLine
VALUES
(6500, 243 , 5500, 3, '11/21/2021'),
(6501, 244 , 5501, 2, '10/24/2021'),
(6502, 245 , 5502, 10, '9/1/2021'),
(6503, 246 , 5503, 5, '9/8/2021'),
(6504, 247 , 5504, 3, '8/6/2021'),
(6505, 248 , 5505, 4, '6/14/2021'),
(6506, 249 , 5506, 2, '5/13/2021'),
(6507, 250 , 5507, 3, '8/16/2021'),
(6508, 251 , 5508, 1, '9/21/2021'),
(6509, 252 , 5509, 3, '7/29/2021'),
(6510, 253 , 5510, 4, '7/28/2021')


