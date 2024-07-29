CREATE PROCEDURE [dbo].[spProficiency_Update]
	@Id INT,
	@ResumeId INT,
	@Skill NVARCHAR(100)
AS
BEGIN
	UPDATE
		dbo.Proficiency
	SET
		[Skill] = @Skill
	WHERE
		[Id] = @Id
		AND [ResumeId] = @ResumeId
END
