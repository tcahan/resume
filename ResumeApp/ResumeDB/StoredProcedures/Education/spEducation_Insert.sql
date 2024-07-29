CREATE PROCEDURE [dbo].[spEducation_Insert]
	@ResumeId INT,
	@School NVARCHAR(100),
	@Degree NVARCHAR(100),
	@Major NVARCHAR(100),
	@GraduationDate DATE,
	@Location NVARCHAR(100)
AS
BEGIN
	INSERT INTO
		dbo.Education
			([ResumeId], [School], [Degree], [Major], [GraduationDate], [Location])
	VALUES
		(@ResumeId,	@School, @Degree, @Major, @GraduationDate, @Location);
	
	RETURN SCOPE_IDENTITY();
END
