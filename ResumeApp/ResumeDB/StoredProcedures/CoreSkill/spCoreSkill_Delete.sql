CREATE PROCEDURE [dbo].[spCoreSkill_Delete]
	@Id int
AS
BEGIN
	DELETE FROM
		dbo.CoreSkill
	WHERE
		[Id] = @Id
END