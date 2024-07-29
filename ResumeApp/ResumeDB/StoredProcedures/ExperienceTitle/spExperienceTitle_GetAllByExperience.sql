CREATE PROCEDURE [dbo].[spExperienceTitle_GetAllByExperience]
	@ExperienceId INT
AS
BEGIN
	SELECT
		[Id], [ExperienceId], [Title], [StartDate], [EndDate]
	FROM
		dbo.ExperienceTitle
	WHERE
		[ExperienceId] = @ExperienceId
END

