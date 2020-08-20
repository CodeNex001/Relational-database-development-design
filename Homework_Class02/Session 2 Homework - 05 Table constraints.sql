/*
Create Foreign key constraints from diagram or with script
*/

ALTER TABLE [dbo].[Grade] WITH CHECK
ADD CONSTRAINT [FK_Grade_Student]
FOREIGN KEY ([StudentId])
REFERENCES [dbo].[Student]([Id])
GO

ALTER TABLE [dbo].[GradeDetails] WITH CHECK
ADD CONSTRAINT [FK_GradeDetails_Grade]
FOREIGN KEY ([GradeId])
REFERENCES [dbo].[Grade]([Id])
GO

