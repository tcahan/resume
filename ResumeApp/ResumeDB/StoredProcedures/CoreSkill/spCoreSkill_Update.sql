CREATE PROCEDURE [dbo].[spCoreSkill_Update]
	@Id int,
	@ResumeId int,
	@Skill NVARCHAR(100)
AS
BEGIN
	UPDATE
		dbo.CoreSkill
	SET
		[Skill] = @Skill
	WHERE
		[Id] = @Id
		AND [ResumeId] = @ResumeId
END
