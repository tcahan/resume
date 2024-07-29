CREATE PROCEDURE [dbo].[spResume_Delete]
	@Id int
AS
BEGIN
	BEGIN TRANSACTION
		BEGIN TRY
			EXEC spCoreSkill_DeleteAllByResume @ResumeId = @Id;

			EXEC spEducation_DeleteAllByResume @ResumeId = @Id;

			EXEC spExperience_DeleteAllByResume @ResumeId = @Id;

			EXEC spProficiency_DeleteAllByResume @ResumeId = @Id;

			DELETE FROM
				dbo.Resume
			WHERE
				[Id] = @Id;

			COMMIT TRANSACTION;
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION;
		END CATCH
END
