using System;

namespace BusinessLogic
{
    public class Articulos
    {
        public int IdArticulo { get; set; }
        public String Descripcion { get; set; }
        public float Precio { get; set; }
        public int Stock { get; set; }
        public int StockMinimo { get; set; }
        public int TotalRegistroArticulos { get; set; }

        public Articulos()
        {

        }

    }
}
