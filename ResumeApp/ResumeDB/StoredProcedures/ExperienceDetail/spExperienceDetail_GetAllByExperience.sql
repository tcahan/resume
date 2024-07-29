CREATE PROCEDURE [dbo].[spExperienceDetail_GetAllByExperience]
	@ExperienceId INT
AS
BEGIN
	SELECT
		[Id], [ExperienceId], [Detail]
	FROM
		dbo.ExperienceDetail
	WHERE
		[ExperienceId] = @ExperienceId
END
