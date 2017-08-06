USE Northwind
GO

-- Select all of the fields and rows.
SELECT *
FROM Products

--Find all the product information for the product with the name Queso Cabrales
SELECT *
FROM Products
WHERE ProductName = 'Queso Cabrales'

-- Using one query, display the name and number of units in stock for the products
-- Laughing Lumberjack Lager, Outback Lager,and Ravioli Angelo.
SELECT ProductName, UnitsInStock
FROM Products
WHERE ProductName IN ('Laughing Lumberjack Lager', 'Outback Lager', 'Ravioli Angelo')



-- Select all the order information for the customer QUEDE. 
SELECT *
FROM Orders
WHERE CustomerID = 'QUEDE'

-- Select the orders whose freight is more than $100.00.