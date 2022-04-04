using System;
using DatabaseConnection;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace BusinessLogic
{
    public class VendedoresDAO : IVendedores
    {
        public List<Vendedores> GetVendedoresMismoEstado()
        {
            List<Vendedores> listaVendedores = new List<Vendedores>();
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
                    "SELECT DISTINCT dbo.Factura.IdVendedor, dbo.Vendedores.Nombre " +
                    "FROM dbo.Factura " +
                    "INNER JOIN dbo.Vendedores " +
                    "ON Factura.IdVendedor = Vendedores.IdVendedor " +
                    "INNER JOIN dbo.Clientes " +
                    "ON Factura.IdCliente = Clientes.IdCliente " +
                    "WHERE dbo.Vendedores.IdCiudad = dbo.Clientes.IdCiudad", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Vendedores vendedores = new Vendedores();
                        vendedores.IdVendedor = Convert.ToInt32(reader["IdVendedor"].ToString());
                        vendedores.Nombre = reader["Nombre"].ToString();
                        listaVendedores.Add(vendedores);
                    }
                }
                connection.Close();
            }
            return listaVendedores;
        }

        public List<Vendedores> GetVendedoresImporteFacturadoSuperaMedia()
        {
            List<Vendedores> listaVendedores = new List<Vendedores>();
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
                    "SELECT dbo.Vendedores.IdVendedor, dbo.Vendedores.Nombre " +
                    "FROM dbo.Vendedores JOIN dbo.Factura ON Factura.IdVendedor = Vendedores.IdVendedor " +
                    "JOIN dbo.FacturaDetalle ON FacturaDetalle.IdFactura = Factura.IdFactura " +
                    "WHERE YEAR(Factura.Fecha) = 2021 " +
                    "GROUP BY Vendedores.IdVendedor, Vendedores.Nombre " +
                    "HAVING SUM(FacturaDetalle.Total) > (SELECT 1.1 * AVG(FacturaDetalle2.Total) " +
                    "FROM Vendedores AS Vendedores2 JOIN dbo.Factura AS Factura2 ON Vendedores2.IdVendedor = Factura2.IdVendedor " +
                    "JOIN dbo.FacturaDetalle AS FacturaDetalle2 ON FacturaDetalle2.IdFactura = Factura2.IdFactura " +
                    "WHERE YEAR(Factura2.Fecha) = 2021) ORDER BY Vendedores.IdVendedor", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Vendedores vendedores = new Vendedores();
                        vendedores.IdVendedor = Convert.ToInt32(reader["IdVendedor"].ToString());
                        vendedores.Nombre = reader["Nombre"].ToString();
                        listaVendedores.Add(vendedores);
                    }
                }
                connection.Close();
            }
            return listaVendedores;
        }

        public Vendedores GetTotalRegistroVendedores()
        {
            Vendedores vendedores = new Vendedores();
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
                    "SELECT COUNT(IdVendedor) AS TotalRegistroVendedores " +
                    "FROM dbo.Vendedores", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        vendedores.TotalRegistroVendedores = Convert.ToInt32(reader["TotalRegistroVendedores"].ToString());
                    }
                }
                connection.Close();
            }
            return vendedores;
        }

    }
}