using System.ComponentModel.DataAnnotations;

namespace ResumeLibrary.Models;

/// <summary>
/// Model for the Experience table
/// </summary>
public class ExperienceModel
{
	public int Id { get; set; }
	public int ResumeId { get; set; }
	public string Company { get; set; }
	public string Location { get; set; }
}