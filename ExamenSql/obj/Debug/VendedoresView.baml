   M S B A M L   `   `   `  ����D  @ExamenSql, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ExamenSql	ExamenSql  5   	   E'clr-namespace:ExamenSql.UserControlViewExamenSql.UserControlView  5   	       ExamenSql.VendedoresView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ExamenSql     5   	   CUserControlView'clr-namespace:ExamenSql.UserControlView     5   	     � Title$  
Vendedores��5	   	   $	��658��6   $
��1290��6)   $
��1290��66   $	��658��6F   $��Center=�6V   $��Center=�6s    � Icon$ Recursos/iconoFactura.png��6�    � SizeToContent$ WidthAndHeight=�6�    � WindowStartupLocation$ CenterScreen=�6�    � WindowState$ 	Maximized=�6�   .��5
      � .+�5   
   �� $
��Left=�6   $	��630��6/   $��0,0,-1.667,-1.333q�6<   $��5��6W    �� StrokeLineJoin$ Round=�6k   $	��Top=�6�   $
��1285��6�   ���	#FF010A136�   �� 5   
   $��
VENDEDORES��6   $
��Left=�6%   $��
125,18,0,0q�6@   $	��Top=�6T   $��Berlin Sans FB Demi)�6l   $��24(�6�   
���������6�   Z� �� 5   
   $��89,24,1162.332,577.667q�6   $"��Recursos/iconoVendedores.png��60   $��32��6V   $��27��6a   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dtg_VendedoresMismoEstado��5      $
��Left=�66   $��111,285,0,0q�6Q   $	��Top=�6f      AutoGenerateColumns .     CanUserAddRows .  	   CanUserDeleteRows	 .  
   CanUserResizeRows
 .  ���	#FF010A13$��Center=�6*  $��Berlin Sans FB)�6N  $��14(�6j     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6x     CanUserResizeColumns .  4  .System.Windows.Automation.AutomationProperties   IsColumnHeader .    HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   SelectionUnit$
 Cell=�6     RowBackground �	#FF010A13$��Center=�6B  ��6~   Z� ��6  Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id Vendedor��6%      
Foreground
 �����1  +System.Windows.Controls.DataGridBoundColumn   Binding 6:   �� *
IdVendedor+6Y     5      $ Nombre��6%      
IsReadOnly . 
 ����� 65   �� *Nombre+6b   5      �� 5   
   $D��>4. Vendedores que siempre venden a clientes de su mismo estado��6   $
��Left=�6Y   $��104,230,0,0q�6t   $	��Top=�6�   $��Berlin Sans FB)�6�   $��16(�6�   
�������$	��550��6�   $��Center=�6   ��6�   Z� 6   $   ExamenSql.UserControlView.Menu  5   
   $
��Left=�6   $��0,1,0,-2.333q�6:   $	��Top=�6P    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ 	#FF234956��6#      Opacity$	 0.5Q�65      ShadowDepth$ 7Q�6C   5        5   
   -   5        $/ )dtg_VendedoresImporteFacturadoSuperaMedia��5      $
��Left=�6F   $��707,285,0,0q�6a   $	��Top=�6v    .   .  	 .  
 .  ���	#FF010A13$��Center=�6:  $��Berlin Sans FB)�6^  $��14(�6z  $
 Auto 6�   .   . 
 �����
 �����$
 Cell=�6#   �	#FF010A13$��Center=�6R  ��6�   Z� ��6$  Z�  5        5      $ Id Vendedor��6%   
 ����� 6:   �� *
IdVendedor+6Y     5      $ Nombre��6%    . 
 ����� 65   �� *Nombre+6b   5       �� 5!   
   $����6. Vendedores cuyo importe facturado durante el año pasado supera en un 
10% a la media de facturación de los vendedores en dicho año.��6   $
��Left=�6�   $��700,230,0,0q�6�   $	��Top=�6�   $��Berlin Sans FB)�6�   $��16(�6  
�������$	��550��6E  $��Center=�6Q  ��6/  Z� 6Q  )	   #ExamenSql.UserControlView.Dashboard	  5"   
   $
��Left=�6$   $��70,65,-0.001,0q�6?   $	��Top=�6W   5$      5%      