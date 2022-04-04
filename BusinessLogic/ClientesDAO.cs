using System;
using DatabaseConnection;
using System.Data.SqlClient;
using System.Collections.Generic;

namespace BusinessLogic
{
    public class ClientesDAO : ICliente
    {
        public List<Clientes> GetClientes()
        {
            List<Clientes> listaClientes = new List<Clientes>();
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
                using (SqlCommand command = new SqlCommand("SELECT *  from dbo.Clientes order by Nombre offset 1 rows fetch next 20 rows only", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Clientes clientes = new Clientes();
                        clientes.IdCliente = Convert.ToInt32(reader["IdCliente"].ToString());
                        clientes.Nombre = reader["Nombre"].ToString();
                        clientes.Direccion = reader["Direccion"].ToString();
                        clientes.CodigoPostal = reader["CodigoPostal"].ToString();
                        listaClientes.Add(clientes);
                    }
                }
                connection.Close();
            }
            return listaClientes;
        }

        public List<Clientes> GetClientesComprasMeses()
        {
            List<Clientes> listaClientes = new List<Clientes>();
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
                    "SELECT dbo.Clientes.IdCliente, dbo.Clientes.Nombre " +
                    "FROM dbo.Clientes " +
                    "JOIN dbo.Factura ON dbo.Factura.IdCliente = dbo.Clientes.IdCliente " +
                    "WHERE YEAR(dbo.Factura.Fecha) = 2021 " +
                    "GROUP BY dbo.Clientes.IdCliente, dbo.Clientes.Nombre " +
                    "HAVING MAX(MONTH(dbo.Factura.Fecha)) - MIN(MONTH(dbo.Factura.Fecha)) + 1 = " +
                    "COUNT(MONTH(dbo.Factura.Fecha)) " +
                    "ORDER BY 2, 1", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Clientes clientes = new Clientes();
                        clientes.IdCliente = Convert.ToInt32(reader["IdCliente"].ToString());
                        clientes.Nombre = reader["Nombre"].ToString();
                        listaClientes.Add(clientes);
                    }
                }
                connection.Close();
            }
            return listaClientes;
        }

        public List<Clientes> GetClientesSuperanTotalArticulos()
        {
            List<Clientes> listaClientes = new List<Clientes>();
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
                using (SqlCommand command = new SqlCommand("SELECT dbo.Clientes.IdCliente " +
                    "FROM dbo.Clientes WHERE dbo.Clientes.IdCliente " +
                    "IN(SELECT dbo.Clientes.IdCliente FROM dbo.Factura " +
                    "JOIN dbo.FacturaDetalle ON FacturaDetalle.IdFactura = Factura.IdFactura " +
                    "WHERE YEAR(Factura.Fecha) = 2021 GROUP BY FacturaDetalle.IdFactura, Factura.IdCliente " +
                    "HAVING SUM(FacturaDetalle.Cantidad) > 2) " +
                    "AND Clientes.IdCliente NOT IN(SELECT Factura.IdCliente " +
                    "FROM dbo.Factura JOIN dbo.FacturaDetalle ON  Factura.IdFactura = FacturaDetalle.IdFactura " +
                    "WHERE YEAR(Factura.Fecha) = 2021 GROUP BY FacturaDetalle.IdFactura, Factura.IdCliente " +
                    "HAVING SUM(FacturaDetalle.Cantidad) <= 2) " +
                    "ORDER BY 1", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Clientes clientes = new Clientes();
                        clientes.IdCliente = Convert.ToInt32(reader["IdCliente"].ToString());
                        listaClientes.Add(clientes);
                    }
                }
                connection.Close();
            }
            return listaClientes;
        }

        public List<Clientes> GetClientesCompranLunesMartes()
        {
            List<Clientes> listaClientes = new List<Clientes>();
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
                    "SELECT dbo.Clientes.IdCliente, dbo.Clientes.Nombre " +
                    "FROM dbo.Clientes WHERE Clientes.IdCliente " +
                    "IN(SELECT Factura.IdCliente FROM Factura " +
                    "JOIN FacturaDetalle ON FacturaDetalle.IdFactura = Factura.IdFactura " +
                    "WHERE DATEPART(dw, Factura.Fecha) = 2) AND Clientes.IdCliente NOT IN( " +
                    "SELECT Factura.IdFactura FROM Factura JOIN FacturaDetalle ON Factura.IdFactura = FacturaDetalle.IdFactura " +
                    "WHERE DATEPART(dw, Factura.Fecha) = 3) ORDER BY 2", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Clientes clientes = new Clientes();
                        clientes.IdCliente = Convert.ToInt32(reader["IdCliente"].ToString());
                        clientes.Nombre = reader["Nombre"].ToString();
                        listaClientes.Add(clientes);
                    }
                }
                connection.Close();
            }
            return listaClientes;
        }

        public List<Clientes> GetClientesCompranCiudadesDistintas()
        {
            List<Clientes> listaClientes = new List<Clientes>();
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
                    "SELECT DISTINCT dbo.Clientes.IdCliente, dbo.Clientes.Nombre FROM dbo.Clientes " +
                    "JOIN Ciudades ON Clientes.IdCiudad = Clientes.IdCiudad WHERE Ciudades.IdEstado = '11' " +
                    "AND 2 < (SELECT COUNT(DISTINCT Ciudades2.IdCiudad) FROM Ciudades AS Ciudades2 " +
                    "JOIN Vendedores ON Vendedores.IdCiudad = Ciudades2.IdCiudad " +
                    "JOIN Factura ON Factura.IdVendedor = Vendedores.IdVendedor " +
                    "WHERE Factura.IdCliente = Clientes.IdCliente) " +
                    "ORDER BY Clientes.Nombre; ", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Clientes clientes = new Clientes();
                        clientes.IdCliente = Convert.ToInt32(reader["IdCliente"].ToString());
                        clientes.Nombre = reader["Nombre"].ToString();
                        listaClientes.Add(clientes);
                    }
                }
                connection.Close();
            }
            return listaClientes;
        }

        public List<Clientes> GetClientesGuanajuatoFacturacion()
        {
            List<Clientes> listaClientes = new List<Clientes>();
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
                    "SELECT dbo.Clientes.IdCliente, dbo.Clientes.Nombre " +
                    "FROM dbo.Clientes JOIN dbo.Factura ON dbo.Clientes.IdCliente = dbo.Factura.IdCliente " +
                    "JOIN dbo.FacturaDetalle ON dbo.FacturaDetalle.IdFactura = dbo.Factura.IdFactura " +
                    "JOIN dbo.Ciudades ON dbo.Ciudades.IdCiudad = dbo.Clientes.IdCiudad " +
                    "WHERE dbo.Ciudades.IdEstado = '11' AND YEAR(dbo.Factura.Fecha) = 2021 " +
                    "AND 12 = (SELECT COUNT(*) FROM dbo.Factura AS Factura2 " +
                    "JOIN dbo.FacturaDetalle AS FacturaDetalle2 ON FacturaDetalle2.IdFactura = Factura.IdFactura " +
                    "WHERE Factura2.IdCliente = Clientes.IdCliente AND YEAR(Factura2.Fecha) = 2021 " +
                    "HAVING SUM(FacturaDetalle2.Total) > 600) GROUP BY YEAR(Factura.Fecha), dbo.Clientes.IdCliente, dbo.Clientes.Nombre " +
                    "HAVING SUM(FacturaDetalle.Total) > 12000 ORDER BY Clientes.Nombre", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        Clientes clientes = new Clientes();
                        clientes.IdCliente = Convert.ToInt32(reader["IdCliente"].ToString());
                        clientes.Nombre = reader["Nombre"].ToString();
                        listaClientes.Add(clientes);
                    }
                }
                connection.Close();
            }
            return listaClientes;
        }

        public Clientes GetTotalRegistroClientes()
        {
            Clientes clientes = new Clientes();
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
                    "SELECT COUNT(IdCliente) AS TotalRegistroClientes " +
                    "FROM dbo.Clientes", connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        clientes.TotalRegistroClientes = Convert.ToInt32(reader["TotalRegistroClientes"].ToString());
                    }
                }
                connection.Close();
            }
            return clientes;
        }
    }
}
