CREATE PROCEDURE [dbo].[spProficiencySkill_Delete]
	@Id INT
AS
BEGIN
	DELETE FROM
		dbo.ProficiencySkill
	WHERE
		[Id] = @Id
END