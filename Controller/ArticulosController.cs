using BusinessLogic;
using System.Collections.Generic;

namespace Controller
{
    public class ArticulosController
    {
        public List<Articulos> GetArticulosCompradosMasDiezClientes()
        {
            ArticulosDAO articulosDAO = new ArticulosDAO();
            List<Articulos> articulos = articulosDAO.GetArticulosCompradosMasDiezClientes();
            return articulos;
        }

        public Articulos GetTotalRegistroArticulos()
        {
            ArticulosDAO articulosDAO = new ArticulosDAO();
            Articulos articulos = articulosDAO.GetTotalRegistroArticulos();
            return articulos;
        }
    }
}
