using ResumeLibrary.Models;

namespace ResumeLibrary.Data
{
	public interface ICoreSkillData
	{
		Task DeleteAllCoreSkillsByResume(int resumeId);
		Task DeleteCoreSkill(int id);
		Task<IEnumerable<CoreSkillModel>> GetAllCoreSkills();
		Task<IEnumerable<CoreSkillModel>> GetCoreSkill(int id);
		Task<IEnumerable<CoreSkillModel>> GetCoreSkillsByResume(int resumeId);
		Task InsertCoreSkill(CoreSkillModel coreSkill);
		Task UpdateCoreSkill(CoreSkillModel coreSkill);
	}
}