using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class CoreSkillModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[Range(0, int.MaxValue)]
	public int ResumeId { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Skill cannot exceed 100 characters")]
	public string? Skill { get; set; }
}
