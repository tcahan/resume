CREATE PROCEDURE [dbo].[spProficiency_Insert]
	@ResumeId INT,
	@Category NVARCHAR(100)
AS
BEGIN
	INSERT INTO
		dbo.Proficiency
			([ResumeId], [Category])
	VALUES
		(@ResumeId, @Category)
END