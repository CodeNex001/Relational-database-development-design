/*
List all Teacher First Names and Student First Names in single result set with duplicates
List all Teacher Last Names and Student Last Names in single result set. Remove duplicates
List all common First Names for Teachers and Students
*/

SELECT FirstName
FROM Student
UNION ALL 
SELECT FirstName
FROM Teacher
GO

SELECT LastName 
FROM Teacher
UNION
SELECT LastName
FROM Student
GO

SELECT FirstName
FROM Student
INTERSECT
SELECT FirstName
FROM Teacher
GO