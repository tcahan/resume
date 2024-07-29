CREATE PROCEDURE [dbo].[spEducation_DeleteAllByResume]
	@ResumeId int
AS
BEGIN
	DELETE FROM
		dbo.Education
	WHERE
		[ResumeId] = @ResumeId
END
