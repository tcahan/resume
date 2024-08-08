using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class ExperienceTitleModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[Range(0, int.MaxValue)]
	public int ExperienceId { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Title cannot exceed 100 characters")]
	public string? Title { get; set; }

	[Required]
	public DateTime StartDate { get; set; }

	public DateTime EndDate { get; set; }
}