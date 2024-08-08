using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class ProficiencySkillModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[Range(0, int.MaxValue)]
	public int ProficiencyId { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Skill cannot exceed 100 characters")]
	public string? Skill { get; set; }
}