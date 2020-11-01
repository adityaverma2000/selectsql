CREATE TABLE Customer_Table 
 (CustomerID int, 
  CustomerName char(50), 
  ContactName char(50), 
  Address varchar(100), 
  City char(20),  
  PostalCode varchar(20), 
  Country char(50) 
 );

 CREATE TABLE Product_Table
  (ProductID int,
   ProductName char(30),
   SupplierID int,
   CategoryID int,
   Unit varchar(50),
   Price float
  );

INSERT INTO Customer_Table 
VALUES(1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');

INSERT INTO Customer_Table 
VALUES(2,'Ana Trujillo Emparedados y helados','Ana Trujillo','Avda. de la Constiticion 2222','Mexico D.F.','05021','Mexico');

INSERT INTO Customer_Table 
VALUES(3,'Antonio Moreno Taqueria','Antonio Moreno','Matedaros 2312','Mexico D.F.','05023','Mexico');

INSERT INTO Customer_Table 
VALUES(4,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK');

INSERT INTO Customer_Table 
VALUES(5,'Berglunds snabbkop','Christina Berglund','Berguvsvagen 8','Lelua','S-958.22','Sweden');

INSERT INTO Product_Table 
VALUES(1,'Chais',1,1,'10 boxes x 20 bags',18);

INSERT INTO Product_Table 
VALUES(2,'Chang',1,1,'24 - 12 oz bottles',19);

INSERT INTO Product_Table 
VALUES(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10);

INSERT INTO Product_Table 
VALUES(4,'Chef Antons Cajun Seasoning',1,2,'48 - 6 oz jars',22);

INSERT INTO Product_Table 
VALUES(5,'Chef Antons Gumbo Mix',1,2,'36 boxes',21.35);

SELECT * FROM Customer_Table;

SELECT * FROM Product_Table;

SELECT DISTINCT Country
FROM Customer_Table;

SELECT * FROM Product_Table
ORDER BY Price;

SELECT Country, COUNT(*) as Total_Customer
FROM Customer_Table
WHERE Country IS NOT NULL
GROUP BY Country;

SELECT Country, COUNT(*) as Total_Customer
FROM Customer_Table
GROUP BY Country
HAVING COUNT(*)<2;

SELECT CustomerName,Country
FROM Customer_Table
WHERE Country= 'Mexico' AND CustomerID='3';

SELECT MAX(PRICE)
FROM Product_Table;

SELECT * INTO New_Customer
FROM Customer_Table
WHERE Country = 'Mexico';
