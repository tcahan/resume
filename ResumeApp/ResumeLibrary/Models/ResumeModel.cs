namespace ResumeLibrary.Models;

/// <summary>
/// Model for the resume
/// </summary>
public class ResumeModel
{
	public int Id { get; set; }
	public string Description { get; set; }
	public string Name { get; set; }
	public string Location { get; set; }
	public string Email { get; set; }
	public string Phone { get; set; }
	public string LinkedIn { get; set; }
	public string Github { get; set; }
	public string Objective { get; set; }
}
