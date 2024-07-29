CREATE PROCEDURE [dbo].[spExperience_DeleteAllByResume]
	@ResumeId int
AS
BEGIN
	BEGIN TRANSACTION
		BEGIN TRY
			DELETE FROM
				dbo.ExperienceDetail
			WHERE
				[ExperienceId] IN (SELECT [Id] FROM dbo.Experience WHERE [ResumeId] = @ResumeId);

			DELETE FROM
				dbo.ExperienceTitle
			WHERE
				[ExperienceId] IN (SELECT [Id] FROM dbo.Experience WHERE [ResumeId] = @ResumeId);

			DELETE FROM
				dbo.Experience
			WHERE
				[ResumeId] = @ResumeId;

			COMMIT TRANSACTION;
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION;
		END CATCH
END
