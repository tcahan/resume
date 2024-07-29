CREATE PROCEDURE [dbo].[spEducation_Delete]
	@Id int
AS
BEGIN
	DELETE FROM
		dbo.Education
	WHERE
		[Id] = @Id
END
