CREATE PROCEDURE [dbo].[spResume_GetAll]
AS
BEGIN
	SELECT
		[Id], [Description], [Name], [Location], [Email], [Phone], [LinkedIn], [GitHub], [Objective]
	FROM
		dbo.Resume
END
