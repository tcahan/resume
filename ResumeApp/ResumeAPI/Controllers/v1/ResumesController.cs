using Asp.Versioning;
using Microsoft.AspNetCore.Mvc;

namespace ResumeAPI.Controllers.v1;

[Route("api/v{version:ApiVersion}/[controller]")]
[ApiController]
[ApiVersion("1.0", Deprecated = true)]
public class ResumesController : ControllerBase
{
	// GET: api/v1/Resumes
	[HttpGet]
	public IEnumerable<string> Get()
	{
		return new string[] { "value1", "value2" };
	}

	// GET api/v1/Resumes/5
	[HttpGet("{id}")]
	public string Get(int id)
	{
		return "value";
	}

	// POST api/v1/Resumes
	[HttpPost]
	public void Post([FromBody] string value)
	{
	}

	// PUT api/v1/Resumes/5
	[HttpPut("{id}")]
	public void Put(int id, [FromBody] string value)
	{
	}

	// DELETE api/v1/Resumes/5
	[HttpDelete("{id}")]
	public void Delete(int id)
	{
	}
}
