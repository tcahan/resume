CREATE PROCEDURE [dbo].[spCoreSkill_GetAllByResume]
	@ResumeId int
AS
BEGIN
	SELECT
		[Id], [ResumeId], [Skill]
	FROM
		dbo.CoreSkill
	WHERE
		[ResumeId] = @ResumeId
END