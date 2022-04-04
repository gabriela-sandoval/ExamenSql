using System.Collections.Generic;

namespace BusinessLogic
{
    interface ICliente
    {
        List<Clientes> GetClientes();
        List<Clientes> GetClientesComprasMeses();
        List<Clientes> GetClientesSuperanTotalArticulos();
        List<Clientes> GetClientesCompranLunesMartes();
        List<Clientes> GetClientesCompranCiudadesDistintas();
        List<Clientes> GetClientesGuanajuatoFacturacion();
        Clientes GetTotalRegistroClientes();
    }
}
