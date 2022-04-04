using BusinessLogic;
using Controller;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;

namespace ExamenSql
{
    /// <summary>
    /// Lógica de interacción para Articulos.xaml
    /// </summary>
    public partial class ArticulosView : Window
    {
        public ArticulosView()
        {
            InitializeComponent();
            LlenarGridFacturasMayorImporte();
        }

        private void LlenarGridFacturasMayorImporte()
        {
            dtg_ArticulosCompradosMasDiezClientes.ItemsSource = null;
            ArticulosController articulosController = new ArticulosController();
            List<Articulos> articulos = articulosController.GetArticulosCompradosMasDiezClientes();
            dtg_ArticulosCompradosMasDiezClientes.ItemsSource = articulos;
        }
    }
}
