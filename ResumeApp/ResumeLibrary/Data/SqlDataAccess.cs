using Dapper;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace ResumeLibrary.Data;

/// <summary>
/// Data access class to interact with the database using Dapper
/// </summary>
public class SqlDataAccess : ISqlDataAccess
{
	private readonly IConfiguration _config;

	/// <summary>
	/// Constructor
	/// </summary>
	/// <param name="config">Config passed by DI</param>
	public SqlDataAccess(IConfiguration config)
	{
		_config = config;
	}

	/// <summary>
	/// Load data from the database using Dapper and stored procedure
	/// </summary>
	/// <typeparam name="T">Generic type to load</typeparam>
	/// <typeparam name="U">Generic parameters to pass to the stored procedure</typeparam>
	/// <param name="storedProcedure">String name of the stored procedure</param>
	/// <param name="parameters">Generic parameters for the stored procedure</param>
	/// <param name="connectionStringName">Name of the connection string</param>
	/// <returns>IEnumerable of the generic type representing the data from the stored procedure</returns>
	public async Task<IEnumerable<T>> LoadDataAsync<T, U>(string storedProcedure, U parameters, string connectionStringName = "Default")
	{
		string connectionString = _config.GetConnectionString(connectionStringName)!;

		using IDbConnection connection = new SqlConnection(connectionString);

		var data = await connection.QueryAsync<T>(storedProcedure, parameters, commandType: CommandType.StoredProcedure);

		return data;
	}

	/// <summary>
	/// Execute a stored procedure WITHOUT returning data using Dapper
	/// </summary>
	/// <typeparam name="T">Generic parameters to pass to the stored procedure</typeparam>
	/// <param name="storedProcedure">String name of the stored procedure</param>
	/// <param name="parameters">Generic parameters for the stored procedure</param>
	/// <param name="connectionStringName">Name of the connection string</param>
	public async Task SaveDataAsync<T>(string storedProcedure, T parameters, string connectionStringName = "Default")
	{
		string connectionString = _config.GetConnectionString(connectionStringName)!;

		using IDbConnection connection = new SqlConnection(connectionString);

		await connection.ExecuteAsync(storedProcedure, parameters, commandType: CommandType.StoredProcedure);
	}
}
