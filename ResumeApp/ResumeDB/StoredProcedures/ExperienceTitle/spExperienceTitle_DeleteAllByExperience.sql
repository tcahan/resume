CREATE PROCEDURE [dbo].[spExperienceTitle_DeleteAllByExperience]
	@ExperienceId INT
AS
BEGIN
	DELETE FROM
		dbo.ExperienceTitle
	WHERE
		[ExperienceId] = @ExperienceId
END
