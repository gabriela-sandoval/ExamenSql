using BusinessLogic;
using System.Collections.Generic;

namespace Controller
{
    public class FacturasController
    {
        public List<Facturas> GetFacturasMayorImporte()
        {
            FacturaDAO facturaDAO = new FacturaDAO();
            List<Facturas> facturas = facturaDAO.GetFacturasMayorImporte();
            return facturas;
        }

        public Facturas GetTotalRegistroFacturas()
        {
            FacturaDAO facturaDAO = new FacturaDAO();
            Facturas facturas = facturaDAO.GetTotalRegistroFacturas();
            return facturas;
        }
    }
}