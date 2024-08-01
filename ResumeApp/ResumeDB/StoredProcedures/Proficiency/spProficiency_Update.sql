CREATE PROCEDURE [dbo].[spProficiency_Update]
	@Id INT,
	@ResumeId INT,
	@Category NVARCHAR(100)
AS
BEGIN
	UPDATE
		dbo.Proficiency
	SET
		[Category] = @Category
	WHERE
		[Id] = @Id
		AND [ResumeId] = @ResumeId
END
