using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class ExperienceData : IExperienceData
{
	private readonly ISqlDataAccess _sql;

	public ExperienceData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public async Task<IEnumerable<ExperienceModel>> GetExperiencesByResume(int resumeId)
	{
		var output = await _sql.LoadDataAsync<ExperienceModel, dynamic>(StoredProcedureConstant.Experience.Experience_GetAllByResume, new { ResumeId = resumeId });

		return output;
	}

	public async Task<IEnumerable<ExperienceModel>> GetExperience(int id)
	{
		var output = await _sql.LoadDataAsync<ExperienceModel, dynamic>(StoredProcedureConstant.Experience.Experience_Get, new { Id = id });

		return output;
	}

	public async Task UpdateExperience(ExperienceModel experience)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Experience.Experience_Update, experience);
	}

	public async Task InsertExperience(ExperienceModel experience)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Experience.Experience_Insert,
			new { experience.ResumeId, experience.Company, experience.Location });
	}

	public async Task DeleteExperience(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Experience.Experience_Delete, new { Id = id });
	}

	public async Task DeleteAllExperiencesByResume(int resumeId)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Experience.Experience_DeleteAllByResume, new { ResumeId = resumeId });
	}
}
