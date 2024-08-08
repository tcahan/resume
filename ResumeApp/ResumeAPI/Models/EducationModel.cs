using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class EducationModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[Range(0, int.MaxValue)]
	public int ResumeId { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "School cannot exceed 100 characters")]
	public string? School { get; set; }

	public string? Location { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Degree cannot exceed 100 characters")]
	public string? Degree { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Major cannot exceed 100 characters")]
	public string? Major { get; set; }

	public DateTime GraduationDate { get; set; }
}
