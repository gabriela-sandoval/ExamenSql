using BusinessLogic;
using Controller;
using System.Collections.Generic;
using System.Windows;

namespace ExamenSql
{
    /// <summary>
    /// Lógica de interacción para Clientes.xaml
    /// </summary>
    public partial class ClientesView : Window
    {
        
        public ClientesView()
        {
            InitializeComponent();
            LlenarGridClientesComprasMeses();
            LlenarGridClientesSuperanTotalArticulos();
            LlenarGridClientesCompranLunesMartes();
            LlenarGridClientesCompranCiudadesDistintas();
            LlenarGridClientesGuanajuatoFacturacion();
        }

       private void LlenarGridClientesComprasMeses()
        {
            dtg_ClientesComprasMeses.ItemsSource = null;
            ClientesController clientesController = new ClientesController();
            List<Clientes> clientes = clientesController.GetClientesComprasMeses();
            dtg_ClientesComprasMeses.ItemsSource = clientes;
        }

        private void LlenarGridClientesSuperanTotalArticulos()
        {
            dtg_ClientesSuperanTotalArticulos.ItemsSource = null;
            ClientesController clientesController = new ClientesController();
            List<Clientes> clientes = clientesController.GetClientesSuperanTotalArticulos();
            dtg_ClientesSuperanTotalArticulos.ItemsSource = clientes;
        }

        private void LlenarGridClientesCompranLunesMartes()
        {
            dtg_ClientesCompranLunesMartes.ItemsSource = null;
            ClientesController clientesController = new ClientesController();
            List<Clientes> clientes = clientesController.GetClientesCompranLunesMartes();
            dtg_ClientesCompranLunesMartes.ItemsSource = clientes;
        }

        private void LlenarGridClientesCompranCiudadesDistintas()
        {
            dtg_ClientesCompranCiudadesDistintas.ItemsSource = null;
            ClientesController clientesController = new ClientesController();
            List<Clientes> clientes = clientesController.GetClientesCompranCiudadesDistintas();
            dtg_ClientesCompranCiudadesDistintas.ItemsSource = clientes;
        }

        private void LlenarGridClientesGuanajuatoFacturacion()
        {
            dtg_ClientesGuanajuatoFacturacion.ItemsSource = null;
            ClientesController clientesController = new ClientesController();
            List<Clientes> clientes = clientesController.GetClientesGuanajuatoFacturacion();
            dtg_ClientesGuanajuatoFacturacion.ItemsSource = clientes;
        }
    }
}