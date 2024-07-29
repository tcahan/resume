CREATE PROCEDURE [dbo].[spExperience_Get]
	@Id int
AS
BEGIN
	SELECT
		[Id], [ResumeId], [Company], [Location]
	FROM
		dbo.Experience
	WHERE
		[Id] = @Id
END
