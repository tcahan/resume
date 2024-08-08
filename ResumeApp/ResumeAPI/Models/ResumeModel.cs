using System.ComponentModel.DataAnnotations;

namespace ResumeAPI.Models;

public class ResumeModel
{
	[Required]
	[Range(0, int.MaxValue)]
	public int Id { get; set; }

	[Required]
	[MaxLength(100, ErrorMessage = "Description cannot exceed 100 characters")]
	public string? Description { get; set; }

	[MaxLength(100, ErrorMessage = "Name cannot exceed 100 characters")]
	public string? Name { get; set; }

	[MaxLength(100, ErrorMessage = "Location cannot exceed 100 characters")]
	public string? Location { get; set; }

	[EmailAddress]
	[MaxLength(100, ErrorMessage = "Email cannot exceed 100 characters")]
	public string? Email { get; set; }

	[Phone]
	[MaxLength(20, ErrorMessage = "Phone cannot exceed 20 characters")]
	public string? Phone { get; set; }

	[Url]
	[MaxLength(100, ErrorMessage = "LinkedIn url cannot exceed 100 characters")]
	public string? LinkedIn { get; set; }

	[Url]
	[MaxLength(100, ErrorMessage = "GitHub url cannot exceed 100 characters")]
	public string? Github { get; set; }

	[MaxLength(2000, ErrorMessage = "Objective cannot exceed 2000 characters")]
	public string? Objective { get; set; }

	public List<EducationModel>? Educations { get; set; }

	public List<ExperienceModel>? Experiences { get; set; }

	public List<CoreSkillModel>? CoreSkills { get; set; }

	public List<ProficiencyModel>? Proficiencies { get; set; }
}
