namespace ResumeLibrary.Constants;

public static class StoredProcedureConstant
{
	public static class Resume
	{
		public const string Resume_GetAll = "dbo.spResume_GetAll";
		public const string Resume_Get = "dbo.spResume_Get";
		public const string Resume_Insert = "dbo.spResume_Insert";
		public const string Resume_Update = "dbo.spResume_Update";
		public const string Resume_Delete = "dbo.spResume_Delete";
	}

	public static class CoreSkill
	{
		public const string CoreSkill_GetAll = "dbo.spCoreSkill_GetAll";
		public const string CoreSkill_GetAllByResume = "dbo.spCoreSkill_GetAllByResume";
		public const string CoreSkill_Get = "dbo.spCoreSkill_Get";
		public const string CoreSkill_Insert = "dbo.spCoreSkill_Insert";
		public const string CoreSkill_Update = "dbo.spCoreSkill_Update";
		public const string CoreSkill_Delete = "dbo.spCoreSkill_Delete";
		public const string CoreSkill_DeleteAllByResume = "dbo.spCoreSkill_DeleteAllByResume";
	}

	public static class Education
	{
		public const string Education_GetAll = "dbo.spEducation_GetAll";
		public const string Education_GetAllByResume = "dbo.spEducation_GetAllByResume";
		//public const string Education_Get = "dbo.spEducation_Get"; // Not used at this time; may need to add later for edits
		public const string Education_Insert = "dbo.spEducation_Insert";
		public const string Education_Update = "dbo.spEducation_Update";
		public const string Education_Delete = "dbo.spEducation_Delete";
		public const string Education_DeleteAllByResume = "dbo.spEducation_DeleteAllByResume";
	}

	public static class Experience
	{
		public const string Experience_GetAllByResume = "dbo.spExperience_GetAllByResume";
		public const string Experience_Get = "dbo.spExperience_Get";
		public const string Experience_Insert = "dbo.spExperience_Insert";
		public const string Experience_Update = "dbo.spExperience_Update";
		public const string Experience_Delete = "dbo.spExperience_Delete";
		public const string Experience_DeleteAllByResume = "dbo.spExperience_DeleteAllByResume";
	}

	public static class ExperienceDetail
	{
		public const string ExperienceDetail_GetAllByExperience = "dbo.spExperienceDetail_GetAllByExperience";
		public const string ExperienceDetail_Get = "dbo.spExperienceDetail_Get";
		public const string ExperienceDetail_Insert = "dbo.spExperienceDetail_Insert";
		public const string ExperienceDetail_Update = "dbo.spExperienceDetail_Update";
		public const string ExperienceDetail_Delete = "dbo.spExperienceDetail_Delete";
		public const string ExperienceDetail_DeleteAllByExperience = "dbo.spExperienceDetail_DeleteAllByExperience";
	}

	public static class ExperienceTitle
	{
		public const string ExperienceTitle_GetAllByExperience = "dbo.spExperienceTitle_GetAllByExperience";
		public const string ExperienceTitle_Get = "dbo.spExperienceTitle_Get";
		public const string ExperienceTitle_Insert = "dbo.spExperienceTitle_Insert";
		public const string ExperienceTitle_Update = "dbo.spExperienceTitle_Update";
		public const string ExperienceTitle_Delete = "dbo.spExperienceTitle_Delete";
		public const string ExperienceTitle_DeleteAllByExperience = "dbo.spExperienceTitle_DeleteAllByExperience";
	}

	public static class Proficiency
	{
		public const string Proficiency_GetAllByResume = "dbo.spProficiency_GetAllByResume";
		public const string Proficiency_Get = "dbo.spProficiency_Get";
		public const string Proficiency_Insert = "dbo.spProficiency_Insert";
		public const string Proficiency_Update = "dbo.spProficiency_Update";
		public const string Proficiency_Delete = "dbo.spProficiency_Delete";
		public const string Proficiency_DeleteAllByResume = "dbo.spProficiency_DeleteAllByResume";
	}
}
