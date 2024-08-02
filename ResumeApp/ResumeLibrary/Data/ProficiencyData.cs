using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class ProficiencyData : IProficiencyData
{
	private readonly ISqlDataAccess _sql;

	public ProficiencyData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public async Task<IEnumerable<ProficiencyModel>> GetProficienciesByResume(int resumeId)
	{
		var output = await _sql.LoadDataAsync<ProficiencyModel, dynamic>(StoredProcedureConstant.Proficiency.Proficiency_GetAllByResume, new { ResumeId = resumeId });

		return output;
	}

	public async Task<IEnumerable<ProficiencyModel>> GetProficiency(int id)
	{
		var output = await _sql.LoadDataAsync<ProficiencyModel, dynamic>(StoredProcedureConstant.Proficiency.Proficiency_Get, new { Id = id });

		return output;
	}

	public async Task UpdateProficiency(ProficiencyModel proficiency)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Proficiency.Proficiency_Update, proficiency);
	}

	public async Task InsertProficiency(ProficiencyModel proficiency)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Proficiency.Proficiency_Insert,
			new { proficiency.ResumeId, proficiency.Category });
	}

	public async Task DeleteProficiency(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Proficiency.Proficiency_Delete, new { Id = id });
	}

	public async Task DeleteAllProficienciesByResume(int resumeId)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Proficiency.Proficiency_DeleteAllByResume, new { ResumeId = resumeId });
	}
}
