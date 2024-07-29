CREATE PROCEDURE [dbo].[spExperience_GetAllByResume]
	@ResumeId INT
AS
BEGIN
	SELECT
		[Id], [ResumeId], [Company], [Location]
	FROM
		dbo.Experience
	WHERE
		[ResumeId] = @ResumeId
END
