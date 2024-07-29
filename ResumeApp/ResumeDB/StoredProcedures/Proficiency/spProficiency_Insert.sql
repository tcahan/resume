CREATE PROCEDURE [dbo].[spProficiency_Insert]
	@ResumeId INT,
	@Skill NVARCHAR(100)
AS
BEGIN
	INSERT INTO
		dbo.Proficiency
			([ResumeId], [Skill])
	VALUES
		(@ResumeId, @Skill)
END