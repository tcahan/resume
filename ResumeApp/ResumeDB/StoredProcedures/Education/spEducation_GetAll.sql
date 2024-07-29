CREATE PROCEDURE [dbo].[spEducation_GetAll]
AS
BEGIN
	SELECT
		[Id], [ResumeId], [School], [Degree], [Major], [GraduationDate], [Location]
	FROM
		dbo.Education
END
