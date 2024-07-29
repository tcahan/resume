CREATE PROCEDURE [dbo].[spExperienceDetail_Insert]
	@ExperienceId INT,
	@Detail NVARCHAR(500)
AS
BEGIN
	INSERT INTO
		dbo.ExperienceDetail
			([ExperienceId], [Detail])
	VALUES
		(@ExperienceId, @Detail)
END
