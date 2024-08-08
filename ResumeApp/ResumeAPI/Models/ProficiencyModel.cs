using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class ProficiencyModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[Range(0, int.MaxValue)]
	public int ResumeId { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Category cannot exceed 100 characters")]
	public string? Category { get; set; }

	public List<ProficiencySkillModel>? ProficiencySkills { get; set; }
}