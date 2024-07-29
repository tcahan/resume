CREATE PROCEDURE [dbo].[spCoreSkill_DeleteAllByResume]
	@ResumeId int
AS
BEGIN
	DELETE FROM
		dbo.CoreSkill
	WHERE
		[ResumeId] = @ResumeId
END