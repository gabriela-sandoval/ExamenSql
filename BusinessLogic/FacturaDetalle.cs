namespace BusinessLogic
{
    public class FacturaDetalle
    {
        public int NumLinea { get; set; }
        public int Cantidad { get; set; }
        public float Precio { get; set; }
        public float Total { get; set; }
        public Facturas IdFactura { get; set; }
        public Articulos IdArticulos { get; set; }

        public FacturaDetalle()
        {

        }
    }
}
