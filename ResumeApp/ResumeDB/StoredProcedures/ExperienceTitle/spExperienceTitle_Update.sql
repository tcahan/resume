CREATE PROCEDURE [dbo].[spExperienceTitle_Update]
	@Id INT,
	@ExperienceId INT,
	@Title NVARCHAR(100),
	@StartDate DATE,
	@EndDate DATE = NULL
AS
BEGIN
	UPDATE
		dbo.ExperienceTitle
	SET
		[Title] = @Title,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate
	WHERE
		[Id] = @Id
		AND [ExperienceId] = @ExperienceId
END