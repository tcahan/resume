CREATE PROCEDURE [dbo].[spProficiency_Delete]
	@Id INT
AS
BEGIN
	BEGIN TRANSACTION
		EXEC spProficiencySkill_DeleteAllByProficiency @ProficiencyId = @Id;

		DELETE FROM
		dbo.Proficiency
	WHERE
		[Id] = @Id

	COMMIT TRANSACTION;	
END
