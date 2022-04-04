using System;
using DatabaseConnection;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace BusinessLogic
{
    public class FacturaDAO : IFactura
    {
        public List<Facturas> GetFacturasMayorImporte()
        {
            List<Facturas> listaFactura = new List<Facturas>();
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

                using (SqlCommand command = new SqlCommand("SELECT DISTINCT dbo.Factura.IdFactura, IdCliente, IdVendedor, " +
                    "(SELECT COUNT(*) FROM dbo.FacturaDetalle " +
                    "WHERE dbo.FacturaDetalle.IdFactura = dbo.Factura.IdFactura) AS NumeroArticulos, " +
                    " (SELECT SUM(Total) FROM dbo.FacturaDetalle WHERE dbo.FacturaDetalle.IdFactura = dbo.Factura.IdFactura) AS ImporteTotal" +
                    " FROM dbo.Factura INNER JOIN dbo.FacturaDetalle ON dbo.Factura.idFactura = dbo.FacturaDetalle.idFactura " +
                    " ORDER BY ImporteTotal DESC", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Facturas facturas = new Facturas();
                        facturas.IdFactura = Convert.ToInt32(reader["IdFactura"].ToString());
                        facturas.IdCliente = Convert.ToInt32(reader["IdCliente"].ToString());
                        facturas.IdVendedor = Convert.ToInt32(reader["IdVendedor"].ToString());
                        facturas.NumeroArticulos = Convert.ToDouble(reader["NumeroArticulos"].ToString());
                        facturas.ImporteTotal = Convert.ToDouble(reader["ImporteTotal"].ToString());
                        listaFactura.Add(facturas);
                    }
                }
                connection.Close();
            }
            return listaFactura;
        }

        public Facturas GetTotalRegistroFacturas()
        {
            Facturas facturas = new Facturas();
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
                    "SELECT COUNT(IdFactura) AS TotalRegistroFacturas " +
                    "FROM dbo.Factura", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        facturas.TotalRegistroFacturas = Convert.ToInt32(reader["TotalRegistroFacturas"].ToString());
                    }
                }
                connection.Close();
            }
            return facturas;
        }


    }
}
