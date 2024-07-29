using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class EducationData : IEducationData
{
	private readonly ISqlDataAccess _sql;

	public EducationData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public async Task<IEnumerable<EducationModel>> GetAllEducations()
	{
		var output = await _sql.LoadDataAsync<EducationModel, dynamic>(StoredProcedureConstant.Education.Education_GetAll, new { });

		return output;
	}

	public async Task<IEnumerable<EducationModel>> GetEducationsByResume(int resumeId)
	{
		var output = await _sql.LoadDataAsync<EducationModel, dynamic>(StoredProcedureConstant.Education.Education_GetAllByResume, new { ResumeId = resumeId });

		return output;
	}

	public async Task UpdateEducation(EducationModel education)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Education.Education_Update, education);
	}

	public async Task InsertEducation(EducationModel education)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Education.Education_Insert,
			new { education.ResumeId, education.School, education.Major, education.Degree, education.GraduationDate, education.Location });
	}

	public async Task DeleteEducation(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Education.Education_Delete, new { Id = id });
	}

	public async Task DeleteAllEducationsByResume(int resumeId)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Education.Education_DeleteAllByResume, new { ResumeId = resumeId });
	}
}
