namespace ResumeLibrary.Models;

/// <summary>
/// Model for Education records
/// </summary>
public class EducationModel
{
	public int Id { get; set; }
	public int ResumeId { get; set; }
	public string School { get; set; }
	public string Location { get; set; }
	public string Degree { get; set; }
	public string Major { get; set; }
	public DateTime GraduationDate { get; set; }
}
