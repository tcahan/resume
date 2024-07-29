CREATE PROCEDURE [dbo].[spResume_Get]
	@Id int
AS
BEGIN
	SELECT
		[Id], [Description], [Name], [City], [State], [Email], [Phone], [LinkedIn], [GitHub], [Objective]
	FROM
		dbo.Resume
	WHERE
		[Id] = @Id
END