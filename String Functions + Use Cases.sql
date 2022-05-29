/*

String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(EmployeeID) as IDLTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(EmployeeID) as IDRTRIM
FROM EmployeeErrors 


-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


-- Using Substring

Select err.FirstName,Substring(err.FirstName,1,3), dem.FirstName, Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)

--GENDER
--LASTNAME
--AGE
--DOB

-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors