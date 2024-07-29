CREATE PROCEDURE [dbo].[spExperienceDetail_Update]
	@Id INT,
	@ExperienceId INT,
	@Detail NVARCHAR(500)
AS
BEGIN
	UPDATE
		dbo.ExperienceDetail
	SET
	[Detail] = @Detail
	WHERE
		[Id] = @Id
		AND [ExperienceId] = @ExperienceId
END
