CREATE TABLE [dbo].[ExperienceTitle]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[ExperienceId] INT NOT NULL,
	[Title] NVARCHAR(100) NOT NULL,
	[StartDate] DATE NOT NULL,
	[EndDate] DATE NULL,
)
