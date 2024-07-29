CREATE PROCEDURE [dbo].[spResume_Update]
	@Id int,
	@Description NVARCHAR(100),
	@Name NVARCHAR(100),
	@City NVARCHAR(50) = NULL,
	@State NVARCHAR(2) = NULL,
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
		[City] = @City,
		[State] = @State,
		[Email] = @Email,
		[Phone] = @Phone,
		[LinkedIn] = @LinkedIn,
		[GitHub] = @GitHub,
		[Objective] = @Objective
	WHERE
		[Id] = @Id
END
