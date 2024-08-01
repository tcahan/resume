using Asp.Versioning;
using Microsoft.AspNetCore.Mvc;

namespace ResumeAPI.Controllers.v2;

[Route("api/v{version:ApiVersion}/[controller]")]
[ApiController]
[ApiVersion("2.0")]
public class ResumesController : ControllerBase
{
	// GET: api/v2/Resumes
	[HttpGet]
	public IEnumerable<string> Get()
	{
		return new string[] { "value1", "value2" };
	}

	// GET api/v2/Resumes/5
	[HttpGet("{id}")]
	public string Get(int id)
	{
		return "value";
	}

	// POST api/v2/Resumes
	[HttpPost]
	public void Post([FromBody] string value)
	{
	}

	// PUT api/v2/Resumes/5
	[HttpPut("{id}")]
	public void Put(int id, [FromBody] string value)
	{
	}

	// DELETE api/v2/Resumes/5
	[HttpDelete("{id}")]
	public void Delete(int id)
	{
	}

	// GET api/v2/Resumes/test-cached
	[HttpGet("test-cached")]
	[ResponseCache(Duration = 20, Location = ResponseCacheLocation.Any, NoStore = false)]
	public string TestCached()
	{
		return $"The cached value is: {Random.Shared.Next(1, 101).ToString()}";
	}

	// GET api/v2/Resumes/test-uncached
	[HttpGet("test-uncached")]
	public string TestUncached()
	{
		return $"The un-cached value is: {Random.Shared.Next(1, 101).ToString()}";
	}
}
