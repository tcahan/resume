using ResumeLibrary.Models;

namespace ResumeLibrary.Data
{
	public interface IProficiencyData
	{
		Task DeleteAllProficienciesByResume(int resumeId);
		Task DeleteProficiency(int id);
		Task<IEnumerable<ProficiencyModel>> GetProficienciesByResume(int resumeId);
		Task<IEnumerable<ProficiencyModel>> GetProficiency(int id);
		Task InsertProficiency(ProficiencyModel proficiency);
		Task UpdateProficiency(ProficiencyModel proficiency);
	}
}