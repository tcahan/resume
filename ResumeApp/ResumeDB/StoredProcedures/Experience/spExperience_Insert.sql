CREATE PROCEDURE [dbo].[spExperience_Insert]
	@ResumeId INT,
	@Company NVARCHAR(100),
	@Location NVARCHAR(100)
AS
BEGIN
	INSERT INTO
		dbo.Experience
			([ResumeId], [Company], [Location])
		VALUES
			(@ResumeId, @Company, @Location);

		RETURN SCOPE_IDENTITY();
END
