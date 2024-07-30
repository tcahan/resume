using ResumeLibrary.Models;

namespace ResumeLibrary.Data
{
	public interface IEducationData
	{
		Task DeleteAllEducationsByResume(int resumeId);
		Task DeleteEducation(int id);
		Task<IEnumerable<EducationModel>> GetAllEducations();
		Task<IEnumerable<EducationModel>> GetEducationsByResume(int resumeId);
		Task InsertEducation(EducationModel education);
		Task UpdateEducation(EducationModel education);
	}
}