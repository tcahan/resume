CREATE PROCEDURE [dbo].[spResume_Update]
	@Id int,
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
	UPDATE
		dbo.Resume
	SET
		[Description] = @Description,
		[Name] = @Name,
		[Location] = @Location,
		[Email] = @Email,
		[Phone] = @Phone,
		[LinkedIn] = @LinkedIn,
		[GitHub] = @GitHub,
		[Objective] = @Objective
	WHERE
		[Id] = @Id
END
