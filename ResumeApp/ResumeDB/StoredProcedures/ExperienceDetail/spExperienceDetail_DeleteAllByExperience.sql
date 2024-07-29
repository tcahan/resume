CREATE PROCEDURE [dbo].[spExperienceDetail_DeleteAllByExperience]
	@ExperienceId int
AS
BEGIN
	DELETE FROM
		dbo.ExperienceDetail
	WHERE
		[ExperienceId] = @ExperienceId
END
