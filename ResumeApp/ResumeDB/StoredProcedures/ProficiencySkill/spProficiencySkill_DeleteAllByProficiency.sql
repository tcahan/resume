CREATE PROCEDURE [dbo].[spProficiencySkill_DeleteAllByProficiency]
	@ProficiencyId INT
AS
BEGIN
	DELETE FROM
		dbo.ProficiencySkill
	WHERE
		[ProficiencyId] = @ProficiencyId
END

