select*from Customers Order by CustomerID asc;
select companyname,City from Customers
SELECT DISTINCT COUNTRY FROM Customers
SELECT COUNT(DISTINCT Country) From Customers
SELECT * FROM Customers WHERE COUNTRY='USA'
SELECT * FROM Customers WHERE CustomerID >'A'
SELECT * FROM Customers oRDER BY Phone
SELECT * FROM Customers ORDER BY PostalCode ASC;
SELECT * FROM Customers ORDER BY Country DESC, City ASC
SELECT * FROM Customers WHERE Country='USA' AND PostalCode > '12'
SELECT * FROM Customers WHERE Country = 'USA' AND (ContactName LIKE 'G%' OR CompanyName LIKE 'R%');
SELECT *FROM Customers WHERE Country = 'Germany' OR Country = 'Spain';
SELECT * FROM Customers WHERE NOT Country = 'USA'
SELECT * FROM Customers WHERE CustomerID NOT LIKE 'A%'
SELECT * FROM CUSTOMERS WHERE CustomerID NOT BETWEEN 'A' AND 'C';
SELECT * FROM CUSTOMERS WHERE CITY NOT IN ('PARIS', 'LONDON');
SELECT * FROM Customers WHERE NOT ContactName > 'B'
SELECT * FROM CUSTOMERS WHERE NOT Country < 'B'
INSERT INTO Customers (CustomerID,CompanyName,ContactName, PostalCode, Phone,Country, City)
VALUES ('Kh','KH','KANWAR', '59320','03136313122','PAKISTAN','DANWRAN')
SELECT ContactName,address from Customers where Address is null
SELECT ContactName, Address
 From Customers WHERE ADDRESS IS NOT NULL;
 Update Customers SET ContactName ='KANWAR ADNAN',Address='Mera ghr' 

 WHERE CustomerID ='KANW';
 DELETE FROM Customers WHERE ContactName = 'Kanwar';
 SELECT TOP 3 * FROM Customers
 SELECT MIN(Country) From Customers
 SELECT MAX(City) FROM Customers
 SELECT MIN(PostalCode) AS SmallestPC FROM Customers
 SELECT MIN(PostalCode) AS SPC, CustomerID FROM Customers Group By CustomerID
 SELECT COUNT(Distinct PostalCode)  AS RECORS  FROM Customers WHERE PostalCode > '12'
 SELECT COUNT(*)  AS RECORS FROM Customers
 SELECT COUNT(*) AS [Number of records], CategoryID
FROM Products
GROUP BY CategoryID;
SELECT SUM(CustomerID)
FROM Customers;
SELECT * FROM Customers Where ContactName LIKE 'a%'
SELECT * FROM Customers WHERE City LIKE 'L_nd__'
SELECT * FROM Customers WHERE ContactName LIKE '[bsp]%'
SELECT * FROM Customers WHERE ContactName LIKE '[a-b]%'
SELECT * FROM Customers WHERE City LIKE 'a__%'
SELECT * FROM Customers WHERE Country IN ('USA', 'UK','Germany')
SELECT * FROM Customers WHERE Country NOT IN ('usa','uk','germany')
SELECT * FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Customers)
SELECT * FROM Customers WHERE City BETWEEN 't' AND 'V'
SELECT * FROM Customers WHERE City BETWEEN 'A' AND 'b' or Country IN ('a','b')
SELECT * FROM Customers WHERE City Between 'A' AND 'B' ORDER BY ContactTitle
SELECT * FROM Customers WHERE City BETWEEN 'L' AND 'M'
SELECT CustomerID AS ID, ContactName AS Name FROM Customers
SELECT City AS [GREAT Cities],PostalCode AS [PC] FROM Customers
SELECT * FROM Orders LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
SELECT Orders.OrderID, Customers.ContactName, Orders.OrderDate
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID=Customers.CustomerID;
SELECT Customers.ContactName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.ContactName;
SELECT A.ContactName AS CustomerName1, B.ContactName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;
SELECT Customers.CompanyName, Sum(Orders.EmployeeID) AS Total
FROM Orders
INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CompanyName;
create database testDB;
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
