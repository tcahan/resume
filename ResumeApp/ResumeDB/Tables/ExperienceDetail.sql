CREATE TABLE [dbo].[ExperienceDetail]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY,
	[ExperienceId] INT NOT NULL,
	[Detail] NVARCHAR(500) NOT NULL,
)
