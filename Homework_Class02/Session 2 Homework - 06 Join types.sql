/*
List all possible combinations of Courses names and AchievementType names that can be passed by student
List all Teachers that has any exam Grade
List all Teachers without exam Grade
List all Students without exam Grade (using Right Join)
*/


SELECT c.Name as CoursesName , a.Name as AchievementTypeName
FROM dbo.Course c
CROSS JOIN dbo.AchievementType a
GO

SELECT DISTINCT t.FirstName as Teacher
FROM dbo.Grade g
INNER JOIN  dbo.Teacher t on g.Grade = t.ID
GO

SELECT DISTINCT  t.FirstName as Teacher
FROM dbo.Teacher t
LEFT JOIN dbo.Grade g on t.ID =  g.TeacherID
WHERE  g.TeacherID is null
GO

SELECT DISTINCT s.FirstName 
FROM dbo.Grade g 
right join dbo.Student s on g.StudentID = s.ID
WHERE g.StudentID is null
GO