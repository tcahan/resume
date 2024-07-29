CREATE PROCEDURE [dbo].[spEducation_Insert]
	@ResumeId INT,
	@School NVARCHAR(100),
	@Degree NVARCHAR(100),
	@Major NVARCHAR(100),
	@GraduationDate DATE
AS
BEGIN
	INSERT INTO
		dbo.Education
			([ResumeId], [School], [Degree], [Major], [GraduationDate])
	VALUES
		(@ResumeId,	@School, @Degree, @Major, @GraduationDate);
	
	RETURN SCOPE_IDENTITY();
END
