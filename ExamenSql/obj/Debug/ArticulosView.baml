   M S B A M L   `   `   `  ����D  @ExamenSql, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:ExamenSql	ExamenSql  5   	   E'clr-namespace:ExamenSql.UserControlViewExamenSql.UserControlView  5   	       ExamenSql.ArticulosView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:ExamenSql     5   	   CUserControlView'clr-namespace:ExamenSql.UserControlView     5   	     � Title$  	Articulos��5	   	   $	��658��6   $
��1290��6(   $
��1290��65   $	��658��6E   $��Center=�6U   $��Center=�6r    � Icon$ Recursos/iconoFactura.png��6�    � SizeToContent$ WidthAndHeight=�6�    � WindowStartupLocation$ CenterScreen=�6�    � WindowState$ 	Maximized=�6�   .��5
      � .+�5   
   �� $
��Left=�6   $	��630��6/   $��0,0,-1.667,-1.333q�6<   $��5��6W    �� StrokeLineJoin$ Round=�6k   $	��Top=�6�   $
��1285��6�   ���	#FF010A136�   �� 5   
   $��
ARTÍCULOS��6   $
��Left=�6$   $��
125,18,0,0q�6?   $	��Top=�6S   $��Berlin Sans FB Demi)�6k   $��24(�6�   
���������6�   Z� �� 5   
   $��89,24,1162.332,577.667q�6   $!��Recursos/iconoArticulos.png��60   $��32��6U   $��27��6`   $   ExamenSql.UserControlView.Menu  5   
   $
��Left=�6   $��0,1,0,-2.333q�6:   $	��Top=�6P    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ 	#FF234956��6#      Opacity$	 0.5Q�65   	   ShadowDepth$	 7Q�6C   5      &   System.Windows.Controls.DataGrid  5   
   -   5        
  Name$+
 %dtg_ArticulosCompradosMasDiezClientes��5      $
��Left=�6B   $��110,304,0,0q�6]   $	��Top=�6r      AutoGenerateColumns .     CanUserAddRows .     CanUserDeleteRows .     CanUserResizeRows .  ���	#FF010A13$��Center=�66  $��Berlin Sans FB)�6Z  $��14(�6v     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 Auto 6�     CanUserResizeColumns .  4  .System.Windows.Automation.AutomationProperties   IsColumnHeader .    HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   SelectionUnit$
 Cell=�6     RowBackground �	#FF010A13$��Center=�6N  ��6�   Z� ��6   Z�    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Id Articulo��6%      
Foreground
 �����1  +System.Windows.Controls.DataGridBoundColumn   Binding 6:   �� *
IdArticulo+6Y     5      $ Descripcion��6%      
IsReadOnly . 
 ����� 6:   �� *Descripcion+6l   5      �� 5   
   $����5. Artículos cuya segunda letra de la descripción coincida con la primera letra 
del alfabeto, y que durante el segundo semestre del año pasado han sido 
comprados por más de 10 clientes diferentes.��6   $
��Left=�6�   $��104,224,0,0q�6  $	��Top=�6  $��Berlin Sans FB)�61  $��16(�6M  
�������$	��550��6�  $��Center=�6�  ��6n  Z� 6�  )	   #ExamenSql.UserControlView.Dashboard	  5   
   $
��Left=�6$   $��70,65,-0.001,0q�6?   $	��Top=�6W   5      5      