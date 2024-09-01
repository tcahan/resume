using AspNetCoreRateLimit;
using HealthChecks.ApplicationStatus.DependencyInjection;
using Microsoft.OpenApi.Models;
using ResumeAPI.HealthChecks;

namespace ResumeAPI.StartupConfig;

/// <summary>
/// Extension methods for adding services to the WebApplicationBuilder to keep 
/// the Program.cs file clean and readable.
/// </summary>
public static class DependencyInjectionExtensions
{
	/// <summary>
	/// Adds health check services to the WebApplicationBuilder
	/// </summary>
	/// <param name="builder">WebApplicationBuilder to be passed in from Program.cs</param>
	public static void AddHealthCheckServices(this WebApplicationBuilder builder)
	{

		builder.Services.AddHealthChecks()
			.AddCheck<SiteHealthCheck>("General Health Check")
			.AddApplicationStatus()
			.AddSqlServer(builder.Configuration.GetConnectionString("Default") ?? "Default")
			.AddDiskStorageHealthCheck(opts =>
			{
				opts.AddDrive("C:\\", 256);
			});

		builder.Services.AddHealthChecksUI(opts =>
		{
			opts.AddHealthCheckEndpoint("api", "/health");
			opts.SetEvaluationTimeInSeconds(60);
			opts.SetMinimumSecondsBetweenFailureNotifications(10);
		}).AddInMemoryStorage();
	}

	/// <summary>
	/// Adds rate limit services to the WebApplicationBuilder
	/// </summary>
	/// <param name="builder">WebApplicationBuilder to be passed in from Program.cs</param>
	public static void AddRateLimitServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddMemoryCache();
		builder.Services.Configure<IpRateLimitOptions>(
		builder.Configuration.GetSection("IpRateLimiting"));
		builder.Services.AddSingleton<IIpPolicyStore, MemoryCacheIpPolicyStore>();
		builder.Services.AddSingleton<IRateLimitCounterStore, MemoryCacheRateLimitCounterStore>();
		builder.Services.AddSingleton<IRateLimitConfiguration, RateLimitConfiguration>();
		builder.Services.AddSingleton<IProcessingStrategy, AsyncKeyLockProcessingStrategy>();
		builder.Services.AddInMemoryRateLimiting();
	}

	/// <summary>
	/// Adds Swagger services to the WebApplicationBuilder
	/// </summary>
	/// <param name="builder">WebApplicationBuilder to be passed in from Program.cs</param>
	public static void AddSwaggerServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddSwaggerGen(opts =>
		{
			var title = "Timothy Cahan Resume App API";
			var description = "This is the set of API endpoints available for the Resume App";

			opts.SwaggerDoc("v1", new OpenApiInfo
			{
				Version = "v1",
				Title = $"{title} v1 (Deprecation Sample)",
				Description = description,
			});

			opts.SwaggerDoc("v2", new OpenApiInfo
			{
				Version = "v2",
				Title = $"{title} v2",
				Description = description,
			});
		});
	}

	/// <summary>
	/// Adds versioning services to the WebApplicationBuilder
	/// </summary>
	/// <param name="builder">WebApplicationBuilder to be passed in from Program.cs</param>
	public static void AddVersioningServices(this WebApplicationBuilder builder)
	{
		builder.Services.AddApiVersioning(opts =>
		{
			opts.AssumeDefaultVersionWhenUnspecified = true;
			opts.DefaultApiVersion = new Asp.Versioning.ApiVersion(2);
			opts.ReportApiVersions = true;
		})
			.AddApiExplorer(opts =>
			{
				opts.GroupNameFormat = "'v'VVV";
				opts.SubstituteApiVersionInUrl = true;
			});
	}

	public static void AddCorsConfiguration(this WebApplicationBuilder builder)
	{
		builder.Services.AddCors(opts =>
		{
			opts.AddDefaultPolicy(policy =>
			{
				var origins = builder.Configuration.GetValue<string>("CorsPolicy:AllowedOrigins");
				var methods = builder.Configuration.GetValue<string>("CorsPolicy:AllowedMethods");
				policy.WithOrigins(origins.Split(','))
					.WithMethods(methods.Split(','))
					.AllowAnyHeader();
			});
		});
	}
}
