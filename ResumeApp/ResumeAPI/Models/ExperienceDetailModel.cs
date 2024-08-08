using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class ExperienceDetailModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[Range(0, int.MaxValue)]
	public int ExperienceId { get; set; }

	[Required]
	[MaxLength(500, ErrorMessage = "Experience Detail cannot exceed 100 characters")]
	public string? Detail { get; set; }
}