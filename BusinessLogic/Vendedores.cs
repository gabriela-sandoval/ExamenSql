using System;

namespace BusinessLogic
{
    public class Vendedores
    {
        public int IdVendedor { get; set; }
        public String Nombre { get; set; }
        public String Direccion { get; set; }
        public String CodigoPostal { get; set; }
        public int IdCiudades { get; set; }
        public int TotalRegistroVendedores { get; set; }

        public Vendedores()
        {

        }
    }
}
