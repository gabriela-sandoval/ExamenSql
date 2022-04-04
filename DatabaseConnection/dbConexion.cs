using System.Configuration;
using System.Data.SqlClient;

namespace DatabaseConnection
{
    public class DbConnection
    {
        private SqlConnection connection;
        private string connectionString;

        public DbConnection()

        {
            connectionString = ConfigurationManager.ConnectionStrings["SqlConnection"].ConnectionString;

            connection = new SqlConnection(connectionString);

        }

        /// <summary>Obtiene la coneccion.</summary>
        /// <returns>La coneccion</returns>
        public SqlConnection GetConnection()
        {
            return connection;
        }

        /// <summary>Cierra la coneccion.</summary>
        public void CloseConnection()
        {
            if (connection != null)
            {
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    connection.Close();
                }
            }
        }
    }
}
