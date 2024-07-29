CREATE PROCEDURE [dbo].[spExperienceTitle_Get]
	@Id INT
AS
BEGIN
	SELECT
		[Id], [ExperienceId], [Title], [StartDate], [EndDate]
	FROM
		dbo.ExperienceTitle
	WHERE
		[Id] = @Id
END
