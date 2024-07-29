using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class CoreSkillData : ICoreSkillData
{
	private readonly ISqlDataAccess _sql;

	public CoreSkillData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public async Task<IEnumerable<CoreSkillModel>> GetAllCoreSkills()
	{
		var output = await _sql.LoadDataAsync<CoreSkillModel, dynamic>(StoredProcedureConstant.CoreSkill.CoreSkill_GetAll, new { });

		return output;
	}

	public async Task<IEnumerable<CoreSkillModel>> GetCoreSkillsByResume(int resumeId)
	{
		var output = await _sql.LoadDataAsync<CoreSkillModel, dynamic>(StoredProcedureConstant.CoreSkill.CoreSkill_GetAllByResume, new { ResumeId = resumeId });

		return output;
	}

	public async Task<IEnumerable<CoreSkillModel>> GetCoreSkill(int id)
	{
		var output = await _sql.LoadDataAsync<CoreSkillModel, dynamic>(StoredProcedureConstant.CoreSkill.CoreSkill_Get, new { Id = id });

		return output;
	}

	public async Task UpdateCoreSkill(CoreSkillModel coreSkill)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.CoreSkill.CoreSkill_Update, coreSkill);
	}

	public async Task InsertCoreSkill(CoreSkillModel coreSkill)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.CoreSkill.CoreSkill_Insert,
			new { coreSkill.ResumeId, coreSkill.Skill });
	}

	public async Task DeleteCoreSkill(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.CoreSkill.CoreSkill_Delete, new { Id = id });
	}

	public async Task DeleteAllCoreSkillsByResume(int resumeId)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.CoreSkill.CoreSkill_DeleteAllByResume, new { ResumeId = resumeId });
	}
}
