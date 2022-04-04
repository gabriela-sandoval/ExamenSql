using System;
using DatabaseConnection;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace BusinessLogic
{
    public class ArticulosDAO : IArticulos
    {
        public List<Articulos> GetArticulosCompradosMasDiezClientes()
        {
            List<Articulos> listaArticulos = new List<Articulos>();
            DbConnection dbconnection = new DbConnection();

            using (SqlConnection connection = dbconnection.GetConnection())
            {
                try
                {
                    connection.Open();
                }
                catch (SqlException ex)
                {
                    throw (ex);
                }

                using (SqlCommand command = new SqlCommand("" +
                    "SELECT DISTINCT dbo.Articulos.IdArticulo, dbo.Articulos.Descripcion " +
                    "FROM dbo.Articulos " +
                    "INNER JOIN dbo.FacturaDetalle ON dbo.Articulos.IdArticulo = dbo.FacturaDetalle.IdArticulo " +
                    "INNER JOIN dbo.Factura ON dbo.Factura.IdFactura = dbo.FacturaDetalle.IdFactura " +
                    "INNER JOIN dbo.Clientes ON dbo.Clientes.IdCliente = dbo.Factura.IdCliente " +
                    "WHERE 1 = CASE WHEN (((SELECT COUNT(DISTINCT dbo.Factura.IdCliente) FROM dbo.Factura) > 1) " +
                    "AND dbo.Articulos.Descripcion LIKE '_a%' " +
                    "AND YEAR(dbo.Factura.Fecha) = 2021 " +
                    "AND MONTH(dbo.Factura.Fecha) >= 6) " +
                    "THEN 1 ELSE 0 END", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Articulos articulos = new Articulos();
                        articulos.IdArticulo = Convert.ToInt32(reader["IdArticulo"].ToString());
                        articulos.Descripcion = reader["Descripcion"].ToString();
                        listaArticulos.Add(articulos);
                    }
                }
                connection.Close();
            }
            return listaArticulos;
        }

        public Articulos GetTotalRegistroArticulos()
        {
            Articulos articulos = new Articulos();
            DbConnection dbconnection = new DbConnection();

            using (SqlConnection connection = dbconnection.GetConnection())
            {
                try
                {
                    connection.Open();
                }
                catch (SqlException ex)
                {
                    throw (ex);
                }

                using (SqlCommand command = new SqlCommand(
                    "SELECT COUNT(IdArticulo) AS TotalRegistroArticulos " +
                    "FROM dbo.Articulos", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        articulos.TotalRegistroArticulos = Convert.ToInt32(reader["TotalRegistroArticulos"].ToString());
                    }
                }
                connection.Close();
            }
            return articulos;
        }
    }
}
