using System.Collections.Generic;

namespace BusinessLogic
{
    interface IFactura
    {
        List<Facturas> GetFacturasMayorImporte();
        Facturas GetTotalRegistroFacturas();
    }
}
