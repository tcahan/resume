CREATE PROCEDURE [dbo].[spCoreSkill_GetAll]
AS
BEGIN
	SELECT
		[Id], [ResumeId], [Skill]
	FROM
		dbo.CoreSkill
END