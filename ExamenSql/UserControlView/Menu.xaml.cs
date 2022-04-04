using System.Windows;
using System.Windows.Controls;

namespace ExamenSql.UserControlView
{
    /// <summary>
    /// Lógica de interacción para Menu.xaml
    /// </summary>
    public partial class Menu : UserControl
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void ButtonFacturacion_Click(object sender, RoutedEventArgs e)
        {
            FacturacionView facturacion = new FacturacionView();
            abrirVentana(facturacion);
        }

        private void ButtonVendedores_Click(object sender, RoutedEventArgs e)
        {
            VendedoresView vendedores = new VendedoresView();
            abrirVentana(vendedores);
        }

        private void ButtonClientes_Click(object sender, RoutedEventArgs e)
        {
            ClientesView clientes = new ClientesView();
            abrirVentana(clientes);
        }

        private void ButtonArticulos_Click(object sender, RoutedEventArgs e)
        {
            ArticulosView articulos = new ArticulosView();
            abrirVentana(articulos);
        }

        public void abrirVentana(Window window)
        {
            window.Show();
            var myWindow = Window.GetWindow(this);
            myWindow.Close();
        }

        private void ButtonInicio_Click(object sender, RoutedEventArgs e)
        {
            Inicio inicio = new Inicio();
            abrirVentana(inicio);
        }
    }
}
