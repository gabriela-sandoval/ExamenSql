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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace ExamenSql.UserControlView
{
    /// <summary>
    /// Lógica de interacción para Dashboard.xaml
    /// </summary>
    public partial class Dashboard : UserControl
    {
        public Dashboard()
        {
            InitializeComponent();
            LlenarTotalRegistrosFacturas();
            LlenarTotalRegistrosClientes();
            LlenarTotalRegistrosVendedores();
            LlenarTotalRegistrosArticulos();
        }

        private void LlenarTotalRegistrosFacturas()
        {
            FacturasController facturasController = new FacturasController();
            Facturas totalRegistrofacturas = facturasController.GetTotalRegistroFacturas();
            TextBoxTotalRegistrosFacturacion.Text = Convert.ToString(totalRegistrofacturas.TotalRegistroFacturas);
        }

        private void LlenarTotalRegistrosClientes()
        {
            ClientesController clientesController = new ClientesController();
            Clientes totalRegistroClientes = clientesController.GetTotalRegistroClientes();
            TextBoxTotalRegistrosClientes.Text = Convert.ToString(totalRegistroClientes.TotalRegistroClientes);
        }

        private void LlenarTotalRegistrosVendedores()
        {
            VendedoresController vendedoresController = new VendedoresController();
            Vendedores totalRegistroVendedores = vendedoresController.GetTotalRegistroVendedores();
            TextBoxTotalRegistrosVendedores.Text = Convert.ToString(totalRegistroVendedores.TotalRegistroVendedores);
        }

        private void LlenarTotalRegistrosArticulos()
        {
            ArticulosController articulosController = new ArticulosController();
            Articulos totalRegistroArticulos = articulosController.GetTotalRegistroArticulos();
            TextBoxTotalRegistrosArticulos.Text = Convert.ToString(totalRegistroArticulos.TotalRegistroArticulos);
        }
    }
}
