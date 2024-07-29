CREATE PROCEDURE [dbo].[spResume_Insert]
	@Description NVARCHAR(100),
	@Name NVARCHAR(100),
	@Location NVARCHAR(100) = NULL,
	@Email NVARCHAR(100) = NULL,
	@Phone NVARCHAR(20) = NULL,
	@LinkedIn NVARCHAR(100) = NULL,
	@GitHub NVARCHAR(100) = NULL,
	@Objective NVARCHAR(2000) = NULL
AS
BEGIN
	INSERT INTO
		dbo.Resume
			([Description], [Name], [Location], [Email], [Phone], [LinkedIn], [GitHub], [Objective])
	VALUES
		(@Description, @Name, @Location, @Email, @Phone, @LinkedIn, @GitHub, @Objective)
	
	RETURN SCOPE_IDENTITY()
END
