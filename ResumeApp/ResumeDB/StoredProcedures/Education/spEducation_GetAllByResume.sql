CREATE PROCEDURE [dbo].[spEducation_GetAllByResume]
	@ResumeId int
AS
BEGIN
	SELECT
		[Id], [ResumeId], [School], [Degree], [Major], [GraduationDate]
	FROM
		dbo.Education
	WHERE
		[ResumeId] = @ResumeId
END
