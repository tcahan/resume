using ResumeLibrary.Models;

namespace ResumeLibrary.Data
{
	public interface IExperienceData
	{
		Task DeleteAllExperiencesByResume(int resumeId);
		Task DeleteExperience(int id);
		Task<IEnumerable<ExperienceModel>> GetExperience(int id);
		Task<IEnumerable<ExperienceModel>> GetExperiencesByResume(int resumeId);
		Task InsertExperience(ExperienceModel experience);
		Task UpdateExperience(ExperienceModel experience);
	}
}