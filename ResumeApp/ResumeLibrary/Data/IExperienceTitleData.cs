using ResumeLibrary.Models;

namespace ResumeLibrary.Data
{
	public interface IExperienceTitleData
	{
		Task DeleteAllExperienceTitlesByResume(int experienceId);
		Task DeleteExperienceTitle(int id);
		Task<IEnumerable<ExperienceTitleModel>> GetExperienceTitle(int id);
		Task<IEnumerable<ExperienceTitleModel>> GetExperienceTitlesByExperience(int experienceId);
		Task InsertExperienceTitle(ExperienceTitleModel experienceTitle);
		Task UpdateExperienceTitle(ExperienceTitleModel experienceTitle);
	}
}