using System;

namespace BusinessLogic
{
    public class Facturas
    {
        public int IdFactura { get; set; }
        public DateTime Fecha { get; set; }
        public float Iva { get; set; }
        public float DescuentoGlobal { get; set; }
        public int IdCliente { get; set; }
        public int IdVendedor { get; set; }
        public double NumeroArticulos { get; set; }
        public double ImporteTotal { get; set; }
        public int TotalRegistroFacturas { get; set; }

        public Facturas()
        {

        }
    }
}
