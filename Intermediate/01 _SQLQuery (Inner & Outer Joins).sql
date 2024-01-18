--CREATE TABLE EmployeeDemograhics
--(
--EmployeeID int,
--FirstName varchar(50),
--LastName varchar(50),
--Age int,
--Gender varchar(50)
--)

--CREATE TABLE EmployeeSalary
--(
--EmployeeID int,
--JobTitle varchar(50),
--Salary int
--)

/*
Insert into EmployeeDemograhics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 31, 'Male')

INSERT INTO EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)
*/

SELECT *
FROM EmployeeDemograhics

SELECT *
FROM EmployeeSalary

--Inner joins, Full/Left/Right Outer Joins

/*
INNER JOIN is used to combine rows from two or 
more tables based on a related column between 
them. It returns only the rows where there is 
a match in the specified columns of both tables. The result set of an INNER JOIN includes only the common records that satisfy the join condition.
*/

SELECT *
FROM EmployeeDemograhics
INNER JOIN EmployeeSalary
	ON EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID

/*

A FULL OUTER JOIN in SQL is used to combine rows
from two or more tables based on a related 
column, and it returns all rows from both 
tables, including unmatched rows. If there 
is no match for a particular row in one of 
the tables, the result will still include 
that row with NULL values for columns from 
the table without a match.
*/

SELECT *
FROM EmployeeDemograhics
FULL OUTER JOIN EmployeeSalary
	ON EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID

/*
RIGHT OUTER JOIN retrieves all the rows from 
the table specified on the right side of the 
JOIN clause and includes matching rows from 
the table specified on the left side. 
If there is no match in the left table, the 
result will still include those rows with NULL 
values for columns from the left table.
*/

SELECT *
FROM EmployeeDemograhics -- Left Table
RIGHT OUTER JOIN EmployeeSalary -- Right Table
	ON EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID

/*
A LEFT OUTER JOIN in SQL is used to combine rows
from two tables based on a related column and 
returns all the rows from the left table and 
the matching rows from the right table. 
If there is no match for a particular row in 
the right table, the result will still include 
that row with NULL values for columns from the 
right table.
*/

SELECT *
FROM EmployeeDemograhics -- Left Table
LEFT OUTER JOIN EmployeeSalary -- Right Table
	ON EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID

/*
the result of this query will include all rows 
from the "EmployeeSalary" table and the matching
rows from the "EmployeeDemograhics" table. 
If there is no match in the "EmployeeDemograhics"
table for a specific EmployeeID, the result will
still include that row with NULL values for the 
columns from the "EmployeeDemograhics" table.
*/

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemograhics -- Left Table
RIGHT OUTER JOIN EmployeeSalary -- Right Table
	ON EmployeeDemograhics.EmployeeID = EmployeeSalary.EmployeeID



