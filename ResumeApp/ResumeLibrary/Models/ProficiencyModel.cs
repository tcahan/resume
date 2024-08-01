namespace ResumeLibrary.Models;

/// <summary>
/// Model for the Proficiencies
/// </summary>
public class ProficiencyModel
{
	public int Id { get; set; }
	public int ResumeId { get; set; }
	public string Category { get; set; }
}
