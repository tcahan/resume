CREATE PROCEDURE [dbo].[spEducation_Update]
	@Id INT,
	@ResumeId INT,
	@School NVARCHAR(100),
	@Degree NVARCHAR(100),
	@Major NVARCHAR(100),
	@GraduationDate DATE
AS
BEGIN
	UPDATE
		dbo.Education
	SET
		[School] = @School,
		[Degree] = @Degree,
		[Major] = @Major,
		[GraduationDate] = @GraduationDate
	WHERE
		[Id] = @Id
		AND [ResumeId] = @ResumeId
END
