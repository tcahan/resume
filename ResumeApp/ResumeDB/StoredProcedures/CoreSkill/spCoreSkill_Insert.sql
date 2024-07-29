CREATE PROCEDURE [dbo].[spCoreSkill_Insert]
	@ResumeId int,
	@Skill NVARCHAR(100)
AS
BEGIN
	INSERT INTO
		dbo.CoreSkill
			([ResumeId], [Skill])
	VALUES
		(@ResumeId, @Skill);
	
	RETURN SCOPE_IDENTITY();
END
