using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class ExperienceModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[Range(0, int.MaxValue)]
	public int ResumeId { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Company cannot exceed 100 characters")]
	public string? Company { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Location cannot exceed 100 characters")]
	public string? Location { get; set; }

	public ExperienceTitleModel? ExperienceTitle { get; set; }

	public List<ExperienceDetailModel>? ExperienceDetails { get; set; }
}