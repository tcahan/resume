CREATE PROCEDURE [dbo].[spProficiency_DeleteAllByResume]
	@ResumeId INT
AS
BEGIN
	BEGIN TRANSACTION
		BEGIN TRY
			DELETE FROM
				dbo.ProficiencySkill
			WHERE
				[ProficiencyId] IN (SELECT [Id] FROM dbo.Proficiency WHERE [ResumeId] = @ResumeId);

			DELETE FROM
				dbo.Proficiency
			WHERE
				[ResumeId] = @ResumeId

			COMMIT TRANSACTION;
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION;
		END CATCH
END
