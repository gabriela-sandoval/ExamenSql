using BusinessLogic;
using System.Collections.Generic;

namespace Controller
{
    public class ClientesController
    {
        public List<Clientes> GetClientes()
        {
            ClientesDAO clienteDAO = new ClientesDAO();
            List<Clientes> clientes = clienteDAO.GetClientes();
            return clientes;
        }

        public List<Clientes> GetClientesComprasMeses()
        {
            ClientesDAO clienteDAO = new ClientesDAO();
            List<Clientes> clientes = clienteDAO.GetClientesComprasMeses();
            return clientes;
        }

        public List<Clientes> GetClientesSuperanTotalArticulos()
        {
            ClientesDAO clienteDAO = new ClientesDAO();
            List<Clientes> clientes = clienteDAO.GetClientesSuperanTotalArticulos();
            return clientes;
        }

        public List<Clientes> GetClientesCompranLunesMartes()
        {
            ClientesDAO clienteDAO = new ClientesDAO();
            List<Clientes> clientes = clienteDAO.GetClientesCompranLunesMartes();
            return clientes;
        }

        public List<Clientes> GetClientesCompranCiudadesDistintas()
        {
            ClientesDAO clienteDAO = new ClientesDAO();
            List<Clientes> clientes = clienteDAO.GetClientesCompranCiudadesDistintas();
            return clientes;
        }

        public List<Clientes> GetClientesGuanajuatoFacturacion()
        {
            ClientesDAO clienteDAO = new ClientesDAO();
            List<Clientes> clientes = clienteDAO.GetClientesGuanajuatoFacturacion();
            return clientes;
        }

        public Clientes GetTotalRegistroClientes()
        {
            ClientesDAO clientesDAO = new ClientesDAO();
            Clientes clientes = clientesDAO.GetTotalRegistroClientes();
            return clientes;
        }
    }
}
