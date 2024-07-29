CREATE PROCEDURE [dbo].[spProficiency_DeleteAllByResume]
	@ResumeId INT
AS
BEGIN
	DELETE FROM
		dbo.Proficiency
	WHERE
		[ResumeId] = @ResumeId
END
