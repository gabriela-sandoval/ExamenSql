   M S B A M L   `   `   `  ����D  @ExamenSql, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ExamenSql	ExamenSql  5   	   E'clr-namespace:ExamenSql.UserControlViewExamenSql.UserControlView  5   	       ExamenSql.FacturacionView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ExamenSql     5   	   CUserControlView'clr-namespace:ExamenSql.UserControlView     5   	     � Title$  Facturacion��5	   	   $	��658��6   $
��1290��6*   $
��1290��67   $	��658��6G   $��Center=�6W   $��Center=�6t    � Icon$ Recursos/iconoFactura.png��6�    � SizeToContent$ WidthAndHeight=�6�    � WindowStartupLocation$ CenterScreen=�6�    � WindowState$ 	Maximized=�6�   ���	#FF073B4C.��5
      �  � RowDefinitions 5   
   �� 5      .+�5   
   �� $
��Left=�6   $	��630��6/   $��0,0,-1.667,-1.333q�6<   $��5��6W    �� StrokeLineJoin$ Round=�6k   $	��Top=�6�   $
��1285��6�   ���	#FF010A136�   �� 5   
   $��FACTURACIÓN��6   $
��Left=�6&   $��
125,18,0,0q�6A   $	��Top=�6U   $��Berlin Sans FB Demi)�6m   $��24(�6�   
���������6�   Z� �� 5   
   $��89,24,1162.333,577.667q�6   $$��Recursos/iconoFacturasAzul.png��60   $��32��6X   $��27��6c   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dtg_FacturasMayorImporte��5      $
��Left=�65   $��109,261,0,0q�6P   $	��Top=�6e      AutoGenerateColumns .  	   CanUserAddRows	 .  
   CanUserDeleteRows
 .     CanUserResizeRows .  ���	#FF010A13$��Center=�6)  $��Berlin Sans FB)�6M  $��14(�6i     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6w     CanUserResizeColumns .  4  .System.Windows.Automation.AutomationProperties   IsColumnHeader .    HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   SelectionUnit$
 Cell=�6     RowBackground �	#FF010A13$��Center=�6A  ��6}   Z� ��6  Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Id Factura��6%      
Foreground
 �����1  +System.Windows.Controls.DataGridBoundColumn   Binding 69   �� *	IdFactura+6W     5      $ 
Id Cliente��6%      
IsReadOnly . 
 ����� 69   �� *	IdCliente+6i     5      $ Id Vendedor��6%    . 
 ����� 6:   �� *
IdVendedor+6k     5      $ Número de artículos��6%    . 
 ����� 6B   �� *NumeroArticulos+6x     5      $ Importe total��6%    . 
 ����� 6<   �� *ImporteTotal+6o   5      �� 5   
   $)��#2. Facturas con mayor importe total��6   $
��Left=�6>   $��104,224,0,0q�6Y   $	��Top=�6n   $��Berlin Sans FB)�6�   $��16(�6�   
�������$	��550��6�   $��Center=�6�   ��6�   Z� 6�   $   ExamenSql.UserControlView.Menu  5   
   $
��Left=�6   $��0,1,0,-2.333q�6:   $	��Top=�6P    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ 	#FF234956��6#      Opacity$	 0.5Q�65      ShadowDepth$ 7Q�6C   5       )	   #ExamenSql.UserControlView.Dashboard	  5!   
   $
��Left=�6$   $��70,65,-0.001,0q�6?   $	��Top=�6W   5"      5#      