using ResumeLibrary.Models;

namespace ResumeLibrary.Data
{
	public interface IExperienceDetailData
	{
		Task DeleteAllExperienceDetailsByResume(int experienceId);
		Task DeleteExperienceDetail(int id);
		Task<IEnumerable<ExperienceDetailModel>> GetExperienceDetail(int id);
		Task<IEnumerable<ExperienceDetailModel>> GetExperienceDetailsByExperience(int experienceId);
		Task InsertExperienceDetail(ExperienceDetailModel experienceDetail);
		Task UpdateExperienceDetail(ExperienceDetailModel experienceDetail);
	}
}