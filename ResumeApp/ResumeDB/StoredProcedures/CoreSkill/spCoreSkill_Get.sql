CREATE PROCEDURE [dbo].[spCoreSkill_Get]
	@Id int
AS
BEGIN
	SELECT
		[Id], [ResumeId], [Skill]
	FROM
		dbo.CoreSkill
	WHERE
		[Id] = @Id
END