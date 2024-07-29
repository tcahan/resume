CREATE PROCEDURE [dbo].[spExperienceTitle_Insert]
	@ExperienceId INT,
	@Title NVARCHAR(100),
	@StartDate DATE,
	@EndDate DATE
AS
BEGIN
	INSERT INTO
		dbo.ExperienceTitle
			([ExperienceId], [Title], [StartDate], [EndDate])
	VALUES
		(@ExperienceId, @Title, @StartDate, @EndDate)
END
