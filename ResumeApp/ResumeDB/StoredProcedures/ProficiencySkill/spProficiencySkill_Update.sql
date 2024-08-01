CREATE PROCEDURE [dbo].[spProficiencySkill_Update]
	@Id INT,
	@ProficiencyId INT,
	@Skill NVARCHAR(100)
AS
BEGIN
	UPDATE
		dbo.ProficiencySkill
	SET
		[Skill] = @Skill
	WHERE
		[Id] = @Id
		AND [ProficiencyId] = @ProficiencyId
END

