using ResumeLibrary.Constants;
using ResumeLibrary.Models;

namespace ResumeLibrary.Data;

public class ResumeData : IResumeData
{
	private readonly ISqlDataAccess _sql;

	public ResumeData(ISqlDataAccess sql)
	{
		_sql = sql;
	}

	public async Task<IEnumerable<ResumeModel>> GetAllResumes()
	{
		var output = await _sql.LoadDataAsync<ResumeModel, dynamic>(StoredProcedureConstant.Resume.Resume_GetAll, new { });

		return output;
	}

	public async Task<IEnumerable<ResumeModel>> GetResume(int id)
	{
		var output = await _sql.LoadDataAsync<ResumeModel, dynamic>(StoredProcedureConstant.Resume.Resume_Get, new { Id = id });

		return output;
	}

	public async Task UpdateResume(ResumeModel resume)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Resume.Resume_Update, resume);
	}

	public async Task InsertResume(ResumeModel resume)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Resume.Resume_Insert,
			new { resume.Description, resume.Name, resume.Location, resume.Email, resume.Phone, resume.LinkedIn, resume.Github, resume.Objective });
	}

	public async Task DeleteResume(int id)
	{
		await _sql.SaveDataAsync(StoredProcedureConstant.Resume.Resume_Delete, new { Id = id });
	}
}
