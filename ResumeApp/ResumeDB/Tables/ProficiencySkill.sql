CREATE TABLE [dbo].[ProficiencySkill]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ProficiencyId] INT NOT NULL, 
    [Skill] NVARCHAR(100) NOT NULL
)
