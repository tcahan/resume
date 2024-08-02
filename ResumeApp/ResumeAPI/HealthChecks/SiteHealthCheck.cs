using Microsoft.Extensions.Diagnostics.HealthChecks;

namespace ResumeAPI.HealthChecks;

/// <summary>
/// This class is a custom health check that simulates a healthy response time.
/// </summary>
public class SiteHealthCheck : IHealthCheck
{
	public Task<HealthCheckResult> CheckHealthAsync(HealthCheckContext context, CancellationToken cancellationToken = default)
	{
		int responseTimeInMs = Random.Shared.Next(100);

		return Task.FromResult(HealthCheckResult.Healthy($"This is a sample, custom health check. The simulated response time is excellent ({responseTimeInMs}ms)"));
	}
}
