using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class ProficiencySkilLData
{
	private readonly ISqlDataAccess _sql;

	public ProficiencySkilLData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public async Task<IEnumerable<ProficiencySkillModel>> GetProficienySkillsByProficiency(int proficiencyId)
	{
		var output = await _sql.LoadDataAsync<ProficiencySkillModel, dynamic>(StoredProcedureConstant.ProficiencySkill.ProficiencySkill_GetAllByProficiency, new { ProficiencyId = proficiencyId });

		return output;
	}

	public async Task<IEnumerable<ProficiencySkillModel>> GetProficiencySkill(int id)
	{
		var output = await _sql.LoadDataAsync<ProficiencySkillModel, dynamic>(StoredProcedureConstant.ProficiencySkill.ProficiencySkill_Get, new { Id = id });

		return output;
	}

	public async Task UpdateProficiencySkill(ProficiencySkillModel proficiencySkill)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ProficiencySkill.ProficiencySkill_Update, proficiencySkill);
	}

	public async Task InsertProficiencySkill(ProficiencySkillModel proficiencySkill)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ProficiencySkill.ProficiencySkill_Insert,
			new { proficiencySkill.ProficiencyId, proficiencySkill.Skill });
	}

	public async Task DeleteProficiencySkill(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ProficiencySkill.ProficiencySkill_Delete, new { Id = id });
	}

	public async Task DeleteAllProficiencySkillsByProficiency(int proficiencyId)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ProficiencySkill.ProficiencySkill_DeleteAllByProficiency, new { ProficiencyId = proficiencyId });
	}
}
