CREATE PROCEDURE [dbo].[spResume_GetAll]
AS
BEGIN
	SELECT
		[Id], [Description], [Name], [City], [State], [Email], [Phone], [LinkedIn], [GitHub], [Objective]
	FROM
		dbo.Resume
END
