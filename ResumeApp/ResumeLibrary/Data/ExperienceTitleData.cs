using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class ExperienceTitleData : IExperienceTitleData
{
	private readonly ISqlDataAccess _sql;

	public ExperienceTitleData(ISqlDataAccess sql)
	{
		_sql = sql;
	}
	public async Task<IEnumerable<ExperienceTitleModel>> GetExperienceTitlesByExperience(int experienceId)
	{
		var output = await _sql.LoadDataAsync<ExperienceTitleModel, dynamic>(StoredProcedureConstant.ExperienceTitle.ExperienceTitle_GetAllByExperience, new { ExperienceId = experienceId });

		return output;
	}

	public async Task<IEnumerable<ExperienceTitleModel>> GetExperienceTitle(int id)
	{
		var output = await _sql.LoadDataAsync<ExperienceTitleModel, dynamic>(StoredProcedureConstant.ExperienceTitle.ExperienceTitle_Get, new { Id = id });

		return output;
	}

	public async Task UpdateExperienceTitle(ExperienceTitleModel experienceTitle)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceTitle.ExperienceTitle_Update, experienceTitle);
	}

	public async Task InsertExperienceTitle(ExperienceTitleModel experienceTitle)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceTitle.ExperienceTitle_Insert,
			new { experienceTitle.ExperienceId, experienceTitle.Title, experienceTitle.StartDate, experienceTitle.EndDate });
	}

	public async Task DeleteExperienceTitle(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceTitle.ExperienceTitle_Delete, new { Id = id });
	}

	public async Task DeleteAllExperienceTitlesByResume(int experienceId)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceTitle.ExperienceTitle_DeleteAllByExperience, new { ExperienceId = experienceId });
	}
}
