using AspNetCoreRateLimit;
using Microsoft.OpenApi.Models;

namespace ResumeAPI.StartupConfig;

public static class DependencyInjectionExtensions
{
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
}
