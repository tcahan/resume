CREATE PROCEDURE [dbo].[spProficiency_Delete]
	@Id INT
AS
BEGIN
	DELETE FROM
		dbo.Proficiency
	WHERE
		[Id] = @Id
END
