CREATE PROCEDURE [dbo].[spProficiency_GetAllByResume]
	@ResumeId INT
AS
BEGIN
	SELECT
		[Id], [ResumeId], [Skill]
	FROM
		dbo.Proficiency
	WHERE
		[ResumeId] = @ResumeId
END