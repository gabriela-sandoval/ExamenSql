using System;

namespace BusinessLogic
{
    public class Clientes
    {
        public int IdCliente { get; set; }
        public String Nombre { get; set; }
        public String Direccion { get; set; }
        public String CodigoPostal { get; set; }
        public Ciudades IdCiudad { get; set; }
        public int TotalRegistroClientes { get; set; }

        public Clientes()
        {

        }
    }
}
