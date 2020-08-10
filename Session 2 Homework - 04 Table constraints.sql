/*
Change GradeDetails table always to insert value 100 in AchievementMaxPoints column if no value is provided on insert
Change GradeDetails table to prevent inserting AchievementPoints that will more than AchievementMaxPoints
Change AchievementType table to guarantee unique names across the Achievement types
*/

ALTER TABLE GradeDetails 
ADD CONSTRAINT DF_AchievementMaxPoints
DEFAULT 100 for AchievementMaxPoints
GO

ALTER TABLE GradeDetails
ADD CONSTRAINT CHK_AchievementMaxPoints CHECK (AchievementPoints <= AchievementMaxPoints )
GO

ALTER TABLE AchievementType
ADD CONSTRAINT UC_Name unique (Name)
GO