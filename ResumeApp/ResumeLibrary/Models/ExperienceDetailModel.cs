namespace ResumeLibrary.Models;

/// <summary>
/// Model for the Experience Detail table
/// </summary>
public class ExperienceDetailModel
{
	public int Id { get; set; }
	public int ExperienceId { get; set; }
	public string Detail { get; set; }
}
