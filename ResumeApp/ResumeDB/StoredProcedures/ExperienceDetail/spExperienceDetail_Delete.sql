CREATE PROCEDURE [dbo].[spExperienceDetail_Delete]
	@Id int
AS
BEGIN
	DELETE FROM
		dbo.ExperienceDetail
	WHERE
		[Id] = @Id;
END