CREATE PROCEDURE [dbo].[spProficiencySkill_GetAllByProficiency]
	@ProficiencyId INT
AS
BEGIN
	SELECT
		[Id], [ProficiencyId], [Skill]
	FROM
		dbo.ProficiencySkill
	WHERE
		[ProficiencyId] = @ProficiencyId
END
