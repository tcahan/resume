using AspNetCoreRateLimit;
using Microsoft.OpenApi.Models;
using ResumeAPI.StartupConfig;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.AddSwaggerServices();
builder.Services.AddResponseCaching();
builder.AddVersioningServices();
builder.AddRateLimitServices();

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
	app.UseSwagger();
	app.UseSwaggerUI(opts =>
	{
		opts.SwaggerEndpoint("/swagger/v2/swagger.json", "v2");
		opts.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
	});
}

app.UseHttpsRedirection();

app.UseResponseCaching();

app.UseAuthorization();

app.MapControllers();

app.UseIpRateLimiting();

app.Run();
