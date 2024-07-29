namespace ResumeLibrary.Models;

/// <summary>
/// Model for the Core Skills
/// </summary>
public class CoreSkillModel
{
	public int Id { get; set; }
	public int ResumeId { get; set; }
	public string Skill { get; set; }
}
