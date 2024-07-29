CREATE PROCEDURE [dbo].[spExperienceTitle_Delete]
	@Id int
AS
BEGIN
	DELETE FROM
		dbo.ExperienceTitle
	WHERE
		[Id] = @Id;
END
