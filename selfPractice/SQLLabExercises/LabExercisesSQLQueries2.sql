USE SWCCorp
VALUES (1, 'Consumer', 'Mark', 'Williams', NULL)
INSERT INTO Customer(CustomerID, CustomerType, FirstName, LastName, CompanyName)
VALUES (2, 'Consumer', 'Lee', 'Young', NULL)
INSERT INTO Customer(CustomerID, CustomerType, FirstName, LastName, CompanyName)
VALUES (3, 'Consumer', 'Patricia', 'Martin', NULL)
INSERT INTO Customer(CustomerID, CustomerType, FirstName, LastName, CompanyName)
VALUES (4, 'Consumer', 'Mary', 'Lopez', NULL)
INSERT INTO Customer(CustomerID, CustomerType, FirstName, LastName, CompanyName)
VALUES (5, 'Business', NULL, 'Williams', 'MoreTechnology.com')

-- Update their status field to External.
-- Boston records which aren�t set to $20,000. Please fix them!
-- where the duration is more than 20 hours.
SELECT *
FROM MgmtTraining

DELETE MgmtTraining
	WHERE ClassDurationHours > 20


-- Write a parameterized query to select the grant information from SWCCorp�s Grant
-- table to show grants between a minimum and maximum value.
SELECT * FROM [Grant]

DECLARE @MinValue int
DECLARE @MaxValue int
SET @MinValue = 14000
SET @MaxValue = 19000

SELECT * 
FROM [Grant]
WHERE Amount BETWEEN @MinValue AND @MaxValue


-- SWCCorp needs a stored procedure called GetProductListByCategory that should take in
-- the category name as a parameter.
SELECT * FROM CurrentProducts

CREATE PROCEDURE GetProductListByCategory
(
	@CategoryName nvarchar(20)
) AS

SELECT * 
FROM CurrentProducts
WHERE Category = @CategoryName

GO

DECLARE @CategoryName nvarchar(20)
SET @CategoryName = 'Medium-Stay'

EXEC GetProductListByCategory @CategoryName



-- SWCCorp needs a stored procedure called GetGrantsByEmployee that takes in the
-- LastName as a parameter and returns the EmployeeId, FirstName, LastName,
-- GrantName, and Amount for that employee�s grants.
SELECT LastName FROM Employee INNER JOIN [Grant] ON Employee.EmpID = [Grant].EmpID

CREATE PROCEDURE GetGrantsByEmployee
(
	@LastName nvarchar(20)
) AS

SELECT Employee.EmpID, FirstName, LastName, GrantName, Amount
FROM Employee
INNER JOIN [Grant]
ON Employee.EmpID = [Grant].EmpID
WHERE Employee.LastName = @LastName

GO

DECLARE @LastName nvarchar(20)
SET @LastName = 'Brown'

EXEC GetGrantsByEmployee @LastName