CREATE PROCEDURE [dbo].[spProficiencySkill_Insert]
	@ProficiencyId INT,
	@Skill NVARCHAR(100)
AS
BEGIN
	INSERT INTO
		dbo.ProficiencySkill
			([ProficiencyId], [Skill])
	VALUES
		(@ProficiencyId, @Skill)
END
