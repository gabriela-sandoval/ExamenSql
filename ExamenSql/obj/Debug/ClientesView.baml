   M S B A M L   `   `   `  ����D  @ExamenSql, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ExamenSql	ExamenSql  5   	   E'clr-namespace:ExamenSql.UserControlViewExamenSql.UserControlView  5   	       ExamenSql.ClientesView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ExamenSql     5   	   CUserControlView'clr-namespace:ExamenSql.UserControlView     5   	     � Title$  Clientes��5	   	   $	��658��6   $
��1290��6'   $
��1290��64   $	��658��6D   $��Center=�6T   $��Center=�6q    � Icon$ Recursos/iconoFactura.png��6�    � SizeToContent$ WidthAndHeight=�6�    � WindowStartupLocation$ CenterScreen=�6�    � WindowState$ 	Maximized=�6�   .��5
      � .+�5   
   �� $
��Left=�6   $	��630��6/   $��0,0,-1.667,-1.333q�6<   $��5��6W    �� StrokeLineJoin$ Round=�6k   $	��Top=�6�   $
��1285��6�   ���	#FF010A13$
��Auto=�6�   $
��Auto=�6�   �� 5   
   $��CLIENTES��6   $
��Left=�6#   $��
125,18,0,0q�6>   $	��Top=�6R   $��Berlin Sans FB Demi)�6j   $��24(�6�   
���������6�   Z� �� 5   
   $��89,24,1162.332,577.667q�6   $ ��Recursos/iconoClientes.png��60   $��32��6T   $��27��6_   $   ExamenSql.UserControlView.Menu  5   
   $
��Left=�6   $��0,1,0,-2.333q�6:   $	��Top=�6P    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ 	#FF234956��6#      Opacity$	 0.5Q�65   	   ShadowDepth$	 7Q�6C   5      &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$
 dtg_ClientesComprasMeses��5      $
��Left=�65   $��120,279,0,0q�6P   $	��Top=�6e      AutoGenerateColumns .     CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .  ���	#FF010A13$��Center=�6)  $��Berlin Sans FB)�6M  $��14(�6i     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6w     CanUserResizeColumns .  4  .System.Windows.Automation.AutomationProperties   IsColumnHeader .    HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   SelectionUnit$
 Cell=�6     RowBackground �	#FF010A13$��Center=�6A  ��6}   Z� ��6  Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      
Foreground
 �����1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *	IdCliente+6O     5      $ Nombre��6%      
IsReadOnly . 
 ����� 65   �� *Nombre+6b   5      �� 5   
   $����3. Clientes con facturas del año pasado, que cumplen que sus compras
 se han concentrado en un único mes o en varios meses consecutivos.��6   $
��Left=�6�   $��115,215,0,0q�6�   $	��Top=�6�   $��Berlin Sans FB)�6�   $��18(�6  
�������$	��550��6G  $��Center=�6S   J� RenderTransformOrigin$ 0.5,0.5&�6u  ��61  Z� 6u    5   
   -   5        $'
 !dtg_ClientesSuperanTotalArticulos��5      $
��Left=�6>   $��695,278,0,0q�6Y   $	��Top=�6n    .   .   .   .  ���	#FF010A13$��Center=�62  $��Berlin Sans FB)�6V  $��14(�6r  $
 Auto 6�   .   . 
 �����
 �����$
 Cell=�6   �	#FF010A13$��Center=�6J  ��6�   Z� ��6  Z�  5        5      $ ID��6%   
 ����� 61   �� *	IdCliente+6O   5      �� 5    
   $z��t8. Clientes cuyas facturas del año pasado siempre superaron un número 
total de artículos pedidos de 50 unidades��6   $
��Left=�6�   $��697,223,0,0q�6�   $	��Top=�6�   $��Berlin Sans FB)�6�   $��18(�6�   
�������$	��550��6/  $��Center=�6;  $ 0.5,0.5&�6]  ��6  Z� 6]    5!   
   -   5        $$
 dtg_ClientesCompranLunesMartes��5!      $
��Left=�6;   $��708,532,0,0q�6V   $	��Top=�6k    .   .   .   .  ���	#FF010A13$��Center=�6/  $��Berlin Sans FB)�6S  $��14(�6o  $
 Auto 6}   .   . 
 �����
 �����$
 Cell=�6   �	#FF010A13$��Center=�6G  ��6�   Z� ��6  Z�  5"        5#      $ ID��6%   
 ����� 61   �� *	IdCliente+6O     5$      $ Nombre��6%    . 
 ����� 65   �� *Nombre+6b   5&      �� 5'   
   $8��210. Clientes que sólo compran los lunes y martes.��6   $
��Left=�6L   $��700,495,0,0q�6g   $	��Top=�6|   $��Berlin Sans FB)�6�   $��18(�6�   
�������$	��550��6�   $��Center=�6�   $ 0.5,0.5&�6  ��6�   Z� 6    5(   
   -   5        $*
 $dtg_ClientesCompranCiudadesDistintas��5(      $
��Left=�6A   $��707,427,0,0q�6\   $	��Top=�6q    .   .   .   .  ���	#FF010A13$��Center=�65  $��Berlin Sans FB)�6Y  $��14(�6u  $
 Auto 6�   .   . 
 �����
 �����$
 Cell=�6   �	#FF010A13$��Center=�6M  ��6�   Z� ��6  Z�  5)        5*      $ ID��6%   
 ����� 61   �� *	IdCliente+6O     5+      $ Nombre��6%    . 
 ����� 65   �� *Nombre+6b   5-      �� 5.   
   $y��s9. Clientes del estado de Guanajuato que han realizado facturas con 
vendedores de más de dos ciudades distintas.��6   $
��Left=�6�   $��699,368,0,0q�6�   $	��Top=�6�   $��Berlin Sans FB)�6�   $��18(�6�   
�������$	��550��60  $��Center=�6<  $ 0.5,0.5&�6^  ��6  Z� 6^    5/   
   -   5        $'
 !dtg_ClientesGuanajuatoFacturacion��5/      $
��Left=�6>   $��127,464,0,0q�6Y   $	��Top=�6n    .   .   .   .  ���	#FF010A13$��Center=�62  $��Berlin Sans FB)�6V  $��14(�6r  $
 Auto 6�   .   . 
 �����
 �����$
 Cell=�6   �	#FF010A13$��Center=�6J  ��6�   Z� ��6  Z�  50        51      $ ID��6%   
 ����� 61   �� *	IdCliente+6O     52      $ Nombre��6%    . 
 ����� 65   �� *Nombre+6b   54      �� 55   
   $����7. Clientes del estado de Guanajuato que durante el año pasado tuvieron 
una facturación de al menos 12,000 pesos y en cada uno de sus meses tuvieron una facturación superior
 a los 600 pesos.��6   $
��Left=�6�   $��119,387,0,0q�6  $	��Top=�6  $��Berlin Sans FB)�65  $��18(�6Q  
�������$	��550��6�  $��Center=�6�  $ 0.5,0.5&�6�  ��6r  Z� 6�  )	   #ExamenSql.UserControlView.Dashboard	  56   
   $
��Left=�6$   $��70,65,-0.001,0q�6?   $	��Top=�6W   57      58      