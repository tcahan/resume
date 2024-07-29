CREATE PROCEDURE [dbo].[spExperience_Delete]
	@Id int
AS
BEGIN
	BEGIN TRANSACTION
		EXEC spExperienceDetail_DeleteAllByExperience @ExperienceId = @Id;

		EXEC spExperienceTitle_DeleteAllByExperience @ExperienceId = @Id;

		DELETE FROM
			dbo.Experience
		WHERE
			[Id] = @Id;

	COMMIT TRANSACTION;
END