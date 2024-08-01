CREATE PROCEDURE [dbo].[spProficiencySkill_Get]
	@ID INT
AS
BEGIN
	SELECT
		[Id], [ProficiencyId], [Skill]
	FROM
		dbo.ProficiencySkill
	WHERE
		[ID] = @ID
END

