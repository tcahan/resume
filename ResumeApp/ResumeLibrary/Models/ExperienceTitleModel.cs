namespace ResumeLibrary.Models;

/// <summary>
/// Model for the ExperienceTitle table
/// </summary>
public class ExperienceTitleModel
{
	public int Id { get; set; }
	public int ExperienceId { get; set; }
	public string Title { get; set; }
	public DateTime StartDate { get; set; }
	public DateTime EndDate { get; set; }
}
