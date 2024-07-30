using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class ExperienceDetailData : IExperienceDetailData
{
	private readonly ISqlDataAccess _sql;

	public ExperienceDetailData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public async Task<IEnumerable<ExperienceDetailModel>> GetExperienceDetailsByExperience(int experienceId)
	{
		var output = await _sql.LoadDataAsync<ExperienceDetailModel, dynamic>(StoredProcedureConstant.ExperienceDetail.ExperienceDetail_GetAllByExperience, new { ExperienceId = experienceId });

		return output;
	}

	public async Task<IEnumerable<ExperienceDetailModel>> GetExperienceDetail(int id)
	{
		var output = await _sql.LoadDataAsync<ExperienceDetailModel, dynamic>(StoredProcedureConstant.ExperienceDetail.ExperienceDetail_Get, new { Id = id });

		return output;
	}

	public async Task UpdateExperienceDetail(ExperienceDetailModel experienceDetail)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceDetail.ExperienceDetail_Update, experienceDetail);
	}

	public async Task InsertExperienceDetail(ExperienceDetailModel experienceDetail)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceDetail.ExperienceDetail_Insert,
			new { experienceDetail.ExperienceId, experienceDetail.Detail });
	}

	public async Task DeleteExperienceDetail(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceDetail.ExperienceDetail_Delete, new { Id = id });
	}

	public async Task DeleteAllExperienceDetailsByResume(int experienceId)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.ExperienceDetail.ExperienceDetail_DeleteAllByExperience, new { ExperienceId = experienceId });
	}
}
