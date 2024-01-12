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

--Insert into EmployeeDemograhics VALUES
--(1001, 'Jim', 'Halpert', 30, 'Male'),
--(1002, 'Pam', 'Beasley', 30, 'Female'),
--(1003, 'Dwight', 'Schrute', 29, 'Male'),
--(1004, 'Angela', 'Martin', 31, 'Female'),
--(1005, 'Toby', 'Flenderson', 32, 'Male'),
--(1006, 'Michael', 'Scott', 35, 'Male'),
--(1007, 'Meredith', 'Palmer', 32, 'Female'),
--(1008, 'Stanley', 'Hudson', 38, 'Male'),
--(1009, 'Kevin', 'Malone', 31, 'Male')

--INSERT INTO EmployeeSalary VALUES
--(1001, 'Salesman', 45000),
--(1002, 'Receptionist', 36000),
--(1003, 'Salesman', 63000),
--(1004, 'Accountant', 47000),
--(1005, 'HR', 50000),
--(1006, 'Regional Manager', 65000),
--(1007, 'Supplier Relations', 41000),
--(1008, 'Salesman', 48000),
--(1009, 'Accountant', 42000)

/*
Group By & Order By
*/

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemograhics
GROUP BY Gender, Age

/*
The GROUP BY clause in SQL is used to group rows
that have the same values in specified 
columns into summary rows, like "total" or 
"average." It is often used in conjunction 
with aggregate functions 
(such as COUNT, SUM, AVG, MAX, or MIN) 
to perform operations on each group of rows 
rather than on individual rows.
*/

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemograhics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC

/*
The ORDER BY clause in SQL is used to sort the 
result set of a query based on one or more 
columns. It allows you to specify the order in
which the rows should be returned, whether in 
ascending (ASC) or descending (DESC) order.
ASC is Default
*/

SELECT *
FROM EmployeeDemograhics
ORDER BY Age

SELECT FirstName, LastName
FROM EmployeeDemograhics
ORDER BY LastName ASC, FirstName DESC;

SELECT *
FROM EmployeeDemograhics
ORDER BY 4 DESC, 5 DESC

/*
In SQL, particularly when referring to the 
index of columns in the context of result 
sets or queries, the index typically starts 
from 1.
*/
