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
Where Statement
=, <> are not equal, >,<, And, Or, Like, Null, Not Null, In
*/

SELECT *
FROM EmployeeDemograhics
WHERE FirstName = 'Jim'

SELECT *
FROM EmployeeDemograhics
WHERE FirstName <> 'Jim'

SELECT *
FROM EmployeeDemograhics
WHERE Age > 30

SELECT *
FROM EmployeeDemograhics
WHERE Age >= 30

SELECT *
FROM EmployeeDemograhics
WHERE Age < 32

SELECT *
FROM EmployeeDemograhics
WHERE Age <= 32

SELECT *
FROM EmployeeDemograhics
WHERE Age <= 32 AND Gender = 'Male'

SELECT *
FROM EmployeeDemograhics
WHERE Age <= 32 OR Gender = 'Male'

SELECT *
FROM EmployeeDemograhics
WHERE LastName LIKE 'S%' 
/*
WHERE LastName LIKE 'S%': This is a conditional 
statement specifying a filter on the rows 
being selected. It says that only rows where 
the "LastName" column starts with the letter 
'S' should be included. The LIKE operator is 
used for pattern matching, and in this case, 
it checks if the "LastName" begins with the 
letter 'S'.
*/

SELECT *
FROM EmployeeDemograhics
WHERE LastName LIKE '%S%'

/*
WHERE LastName LIKE '%S%': This is the conditional statement. 
Here, the LIKE operator is used with the pattern '%S%'. 
This means that it will select rows where the 
"LastName" column contains the letter 'S' anywhere within the name. 
The percent sign % is a wildcard that matches any sequence of characters, 
so '%S%' matches any string that has 'S' as part of it.
*/
SELECT *
FROM EmployeeDemograhics
WHERE LastName LIKE 'S%o%'

/*
WHERE LastName LIKE 'S%o%': This is the conditional statement. 
Here, the LIKE operator is used with the pattern 'S%o%'. 
It selects rows where the "LastName" column 
starts with the letter 'S', followed by any sequence of 
characters, and then contains the letter 'o' 
anywhere after the initial 'S'.
*/

SELECT *
FROM EmployeeDemograhics
WHERE FirstName is NULL

SELECT *
FROM EmployeeDemograhics
WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemograhics
WHERE FirstName IN ('Jim','Michael')

/*
The IN operator in a WHERE clause is used to 
filter rows based on a specified list of values
*/