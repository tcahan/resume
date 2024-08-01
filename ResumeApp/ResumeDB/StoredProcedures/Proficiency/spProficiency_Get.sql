CREATE PROCEDURE [dbo].[spProficiency_Get]
	@ID INT
AS
BEGIN
	SELECT
		[Id], [ResumeId], [Category]
	FROM
		dbo.Proficiency
	WHERE
		[ID] = @ID
END
