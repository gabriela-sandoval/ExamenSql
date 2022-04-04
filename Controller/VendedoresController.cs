using BusinessLogic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controller
{
    public class VendedoresController
    {
        public List<Vendedores> GetVendedoresMismoEstado()
        {
            VendedoresDAO vendedoresDAO = new VendedoresDAO();
            List<Vendedores> vendedores = vendedoresDAO.GetVendedoresMismoEstado();
            return vendedores;
        }

        public List<Vendedores> GetVendedoresImporteFacturadoSuperaMedia()
        {
            VendedoresDAO vendedoresDAO = new VendedoresDAO();
            List<Vendedores> vendedores = vendedoresDAO.GetVendedoresImporteFacturadoSuperaMedia();
            return vendedores;
        }

        public Vendedores GetTotalRegistroVendedores()
        {
            VendedoresDAO vendedoresDAO = new VendedoresDAO();
            Vendedores vendedores = vendedoresDAO.GetTotalRegistroVendedores();
            return vendedores;
        }
    }
}
