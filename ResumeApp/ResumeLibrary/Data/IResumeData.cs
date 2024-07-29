using ResumeLibrary.Models;

namespace ResumeLibrary.Data
{
	public interface IResumeData
	{
		Task DeleteResume(int id);
		Task<IEnumerable<ResumeModel>> GetAllResumes();
		Task<IEnumerable<ResumeModel>> GetResume(int id);
		Task InsertResume(ResumeModel resume);
		Task UpdateResume(ResumeModel resume);
	}
}