CREATE PROCEDURE [dbo].[spExperienceDetail_Get]
	@Id INT
AS
BEGIN
	SELECT
		[Id], [ExperienceId], [Detail]
	FROM
		dbo.ExperienceDetail
	WHERE
		[Id] = @Id
END
