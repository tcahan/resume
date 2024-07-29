CREATE PROCEDURE [dbo].[spExperience_Update]
	@Id INT,
	@ResumeId INT,
	@Company NVARCHAR(100),
	@Location NVARCHAR(100)
AS
BEGIN
	UPDATE
		dbo.Experience
	SET
		[Company] = @Company,
		[Location] = @Location
	WHERE
		[Id] = @Id
		AND [ResumeId] = @ResumeId
END