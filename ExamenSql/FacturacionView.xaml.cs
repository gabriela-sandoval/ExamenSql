using BusinessLogic;
using Controller;
using System.Collections.Generic;
using System.Windows;

namespace ExamenSql
{
    /// <summary>
    /// Lógica de interacción para Facturacion.xaml
    /// </summary>
    public partial class FacturacionView : Window
    {
        
        public FacturacionView()
        {
            InitializeComponent();
            LlenarGridFacturasMayorImporte();

        }

        private void LlenarGridFacturasMayorImporte()
        {
            dtg_FacturasMayorImporte.ItemsSource = null;
            FacturasController facturasController = new FacturasController();
            List<Facturas> facturas = facturasController.GetFacturasMayorImporte();
            dtg_FacturasMayorImporte.ItemsSource = facturas;
        }
    }
}
