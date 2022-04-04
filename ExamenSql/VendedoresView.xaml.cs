using BusinessLogic;
using Controller;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace ExamenSql
{
    /// <summary>
    /// Lógica de interacción para Vendedores.xaml
    /// </summary>
    public partial class VendedoresView : Window
    {
        public VendedoresView()
        {
            InitializeComponent();
            LlenarGridVendedoresMismoEstado();
            LlenarGridVendedoresImporteFacturadoSuperaMedia();
        }

        private void LlenarGridVendedoresMismoEstado()
        {
            dtg_VendedoresMismoEstado.ItemsSource = null;
            VendedoresController vendedoresController = new VendedoresController();
            List<Vendedores> vendedores = vendedoresController.GetVendedoresMismoEstado();
            dtg_VendedoresMismoEstado.ItemsSource = vendedores;
        }

        private void LlenarGridVendedoresImporteFacturadoSuperaMedia()
        {
            dtg_VendedoresImporteFacturadoSuperaMedia.ItemsSource = null;
            VendedoresController vendedoresController = new VendedoresController();
            List<Vendedores> vendedores = vendedoresController.GetVendedoresImporteFacturadoSuperaMedia();
            dtg_VendedoresImporteFacturadoSuperaMedia.ItemsSource = vendedores;
        }
    }
}