USE [ExamenSql]
GO
/****** Object:  User [examen]    Script Date: 4/4/2022 12:32:11 AM ******/
CREATE USER [examen] FOR LOGIN [examen] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [examen]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [examen]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 4/4/2022 12:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[IdArticulo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](70) NOT NULL,
	[Precio] [float] NOT NULL,
	[Stock] [int] NOT NULL,
	[StockMinimo] [int] NOT NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[IdArticulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ciudades]    Script Date: 4/4/2022 12:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudades](
	[IdCiudad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[IdEstado] [int] NOT NULL,
 CONSTRAINT [PK_Ciudades] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 4/4/2022 12:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[CodigoPostal] [nvarchar](5) NOT NULL,
	[IdCiudad] [int] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 4/4/2022 12:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 4/4/2022 12:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[IdFactura] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NOT NULL,
	[Iva] [float] NOT NULL,
	[DescuentoGlobal] [float] NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdVendedor] [int] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[IdFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FacturaDetalle]    Script Date: 4/4/2022 12:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacturaDetalle](
	[NumLinea] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [float] NOT NULL,
	[Total] [float] NOT NULL,
	[IdFactura] [int] NOT NULL,
	[IdArticulo] [int] NOT NULL,
 CONSTRAINT [PK_FacturaDetalle] PRIMARY KEY CLUSTERED 
(
	[NumLinea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedores]    Script Date: 4/4/2022 12:32:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedores](
	[IdVendedor] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Direccion] [nvarchar](50) NOT NULL,
	[CodigoPostal] [nvarchar](5) NOT NULL,
	[IdCiudad] [int] NOT NULL,
	[IdVendedorSupervisor] [int] NULL,
 CONSTRAINT [PK_Vendedores] PRIMARY KEY CLUSTERED 
(
	[IdVendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON 

INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Precio], [Stock], [StockMinimo]) VALUES (1, N'Jabón', 20.5, 10, 3)
INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Precio], [Stock], [StockMinimo]) VALUES (2, N'Escoba', 35, 8, 3)
INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Precio], [Stock], [StockMinimo]) VALUES (3, N'Silla', 245.99, 12, 6)
INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Precio], [Stock], [StockMinimo]) VALUES (4, N'Escritorio', 550, 5, 2)
INSERT [dbo].[Articulos] ([IdArticulo], [Descripcion], [Precio], [Stock], [StockMinimo]) VALUES (5, N'Paquete de hojas blancas', 84.8, 20, 5)
SET IDENTITY_INSERT [dbo].[Articulos] OFF
GO
SET IDENTITY_INSERT [dbo].[Ciudades] ON 

INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (1, N'Aguascalientes', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (2, N'Asientos', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (3, N'Calvillo', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (4, N'Cosío', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (5, N'Jesús María', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (6, N'Pabellón de Arteaga', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (7, N'Rincón de Romos', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (8, N'San José de Gracia', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (9, N'Tepezalá', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (10, N'El Llano', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (11, N'San Francisco de los Romo', 1)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (12, N'Ensenada', 2)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (13, N'Mexicali', 2)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (14, N'Tecate', 2)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (15, N'Tijuana', 2)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (16, N'Playas de Rosarito', 2)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (17, N'San Quintín', 2)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (18, N'Comondú', 3)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (19, N'Mulegé', 3)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (20, N'La Paz', 3)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (21, N'Los Cabos', 3)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (22, N'Loreto', 3)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (23, N'Calkiní', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (24, N'Campeche', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (25, N'Carmen', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (26, N'Champotón', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (27, N'Hecelchakán', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (28, N'Hopelchén', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (29, N'Palizada', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (30, N'Tenabo', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (31, N'Escárcega', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (32, N'Calakmul', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (33, N'Candelaria', 4)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (34, N'Abasolo', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (35, N'Acuña', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (36, N'Allende', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (37, N'Arteaga', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (38, N'Candela', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (39, N'Castaños', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (40, N'Cuatro Ciénegas', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (41, N'Escobedo', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (42, N'Francisco I. Madero', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (43, N'Frontera', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (44, N'General Cepeda', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (45, N'Guerrero', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (46, N'Hidalgo', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (47, N'Jiménez', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (48, N'Juárez', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (49, N'Lamadrid', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (50, N'Matamoros', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (51, N'Monclova', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (52, N'Morelos', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (53, N'Múzquiz', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (54, N'Nadadores', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (55, N'Nava', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (56, N'Ocampo', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (57, N'Parras', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (58, N'Piedras Negras', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (59, N'Progreso', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (60, N'Ramos Arizpe', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (61, N'Sabinas', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (62, N'Sacramento', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (63, N'Saltillo', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (64, N'San Buenaventura', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (65, N'San Juan de Sabinas', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (66, N'San Pedro', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (67, N'Sierra Mojada', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (68, N'Torreón', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (69, N'Viesca', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (70, N'Villa Unión', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (71, N'Zaragoza', 5)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (72, N'Armería', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (73, N'Colima', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (74, N'Comala', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (75, N'Coquimatlán', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (76, N'Cuauhtémoc', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (77, N'Ixtlahuacán', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (78, N'Manzanillo', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (79, N'Minatitlán', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (80, N'Tecomán', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (81, N'Villa de Álvarez', 6)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (82, N'Acacoyagua', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (83, N'Acala', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (84, N'Acapetahua', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (85, N'Altamirano', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (86, N'Amatán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (87, N'Amatenango de la Frontera', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (88, N'Amatenango del Valle', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (89, N'Angel Albino Corzo', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (90, N'Arriaga', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (91, N'Bejucal de Ocampo', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (92, N'Bella Vista', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (93, N'Berriozábal', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (94, N'Bochil', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (95, N'El Bosque', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (96, N'Cacahoatán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (97, N'Catazajá', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (98, N'Cintalapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (99, N'Coapilla', 7)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (100, N'Comitán de Domínguez', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (101, N'La Concordia', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (102, N'Copainalá', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (103, N'Chalchihuitán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (104, N'Chamula', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (105, N'Chanal', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (106, N'Chapultenango', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (107, N'Chenalhó', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (108, N'Chiapa de Corzo', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (109, N'Chiapilla', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (110, N'Chicoasén', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (111, N'Chicomuselo', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (112, N'Chilón', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (113, N'Escuintla', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (114, N'Francisco León', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (115, N'Frontera Comalapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (116, N'Frontera Hidalgo', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (117, N'La Grandeza', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (118, N'Huehuetán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (119, N'Huixtán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (120, N'Huitiupán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (121, N'Huixtla', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (122, N'La Independencia', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (123, N'Ixhuatán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (124, N'Ixtacomitán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (125, N'Ixtapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (126, N'Ixtapangajoya', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (127, N'Jiquipilas', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (128, N'Jitotol', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (129, N'Juárez', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (130, N'Larráinzar', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (131, N'La Libertad', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (132, N'Mapastepec', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (133, N'Las Margaritas', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (134, N'Mazapa de Madero', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (135, N'Mazatán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (136, N'Metapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (137, N'Mitontic', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (138, N'Motozintla', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (139, N'Nicolás Ruíz', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (140, N'Ocosingo', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (141, N'Ocotepec', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (142, N'Ocozocoautla de Espinosa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (143, N'Ostuacán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (144, N'Osumacinta', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (145, N'Oxchuc', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (146, N'Palenque', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (147, N'Pantelhó', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (148, N'Pantepec', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (149, N'Pichucalco', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (150, N'Pijijiapan', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (151, N'El Porvenir', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (152, N'Villa Comaltitlán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (153, N'Pueblo Nuevo Solistahuacán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (154, N'Rayón', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (155, N'Reforma', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (156, N'Las Rosas', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (157, N'Sabanilla', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (158, N'Salto de Agua', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (159, N'San Cristóbal de las Casas', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (160, N'San Fernando', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (161, N'Siltepec', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (162, N'Simojovel', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (163, N'Sitalá', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (164, N'Socoltenango', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (165, N'Solosuchiapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (166, N'Soyaló', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (167, N'Suchiapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (168, N'Suchiate', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (169, N'Sunuapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (170, N'Tapachula', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (171, N'Tapalapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (172, N'Tapilula', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (173, N'Tecpatán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (174, N'Tenejapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (175, N'Teopisca', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (176, N'Tila', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (177, N'Tonalá', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (178, N'Totolapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (179, N'La Trinitaria', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (180, N'Tumbalá', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (181, N'Tuxtla Gutiérrez', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (182, N'Tuxtla Chico', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (183, N'Tuzantán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (184, N'Tzimol', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (185, N'Unión Juárez', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (186, N'Venustiano Carranza', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (187, N'Villa Corzo', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (188, N'Villaflores', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (189, N'Yajalón', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (190, N'San Lucas', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (191, N'Zinacantán', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (192, N'San Juan Cancuc', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (193, N'Aldama', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (194, N'Benemérito de las Américas', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (195, N'Maravilla Tenejapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (196, N'Marqués de Comillas', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (197, N'Montecristo de Guerrero', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (198, N'San Andrés Duraznal', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (199, N'Santiago el Pinar', 7)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (200, N'Capitán Luis Ángel Vidal', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (201, N'Rincón Chamula San Pedro', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (202, N'El Parral', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (203, N'Emiliano Zapata', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (204, N'Mezcalapa', 7)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (205, N'Ahumada', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (206, N'Aldama', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (207, N'Allende', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (208, N'Aquiles Serdán', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (209, N'Ascensión', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (210, N'Bachíniva', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (211, N'Balleza', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (212, N'Batopilas de Manuel Gómez Morín', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (213, N'Bocoyna', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (214, N'Buenaventura', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (215, N'Camargo', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (216, N'Carichí', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (217, N'Casas Grandes', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (218, N'Coronado', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (219, N'Coyame del Sotol', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (220, N'La Cruz', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (221, N'Cuauhtémoc', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (222, N'Cusihuiriachi', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (223, N'Chihuahua', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (224, N'Chínipas', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (225, N'Delicias', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (226, N'Dr. Belisario Domínguez', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (227, N'Galeana', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (228, N'Santa Isabel', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (229, N'Gómez Farías', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (230, N'Gran Morelos', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (231, N'Guachochi', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (232, N'Guadalupe', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (233, N'Guadalupe y Calvo', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (234, N'Guazapares', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (235, N'Guerrero', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (236, N'Hidalgo del Parral', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (237, N'Huejotitán', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (238, N'Ignacio Zaragoza', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (239, N'Janos', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (240, N'Jiménez', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (241, N'Juárez', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (242, N'Julimes', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (243, N'López', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (244, N'Madera', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (245, N'Maguarichi', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (246, N'Manuel Benavides', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (247, N'Matachí', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (248, N'Matamoros', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (249, N'Meoqui', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (250, N'Morelos', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (251, N'Moris', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (252, N'Namiquipa', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (253, N'Nonoava', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (254, N'Nuevo Casas Grandes', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (255, N'Ocampo', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (256, N'Ojinaga', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (257, N'Praxedis G. Guerrero', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (258, N'Riva Palacio', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (259, N'Rosales', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (260, N'Rosario', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (261, N'San Francisco de Borja', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (262, N'San Francisco de Conchos', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (263, N'San Francisco del Oro', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (264, N'Santa Bárbara', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (265, N'Satevó', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (266, N'Saucillo', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (267, N'Temósachic', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (268, N'El Tule', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (269, N'Urique', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (270, N'Uruachi', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (271, N'Valle de Zaragoza', 8)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (272, N'Azcapotzalco', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (273, N'Coyoacán', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (274, N'Cuajimalpa de Morelos', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (275, N'Gustavo A. Madero', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (276, N'Iztacalco', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (277, N'Iztapalapa', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (278, N'La Magdalena Contreras', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (279, N'Milpa Alta', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (280, N'Álvaro Obregón', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (281, N'Tláhuac', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (282, N'Tlalpan', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (283, N'Xochimilco', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (284, N'Benito Juárez', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (285, N'Cuauhtémoc', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (286, N'Miguel Hidalgo', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (287, N'Venustiano Carranza', 9)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (288, N'Abasolo', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (289, N'Acámbaro', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (290, N'San Miguel de Allende', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (291, N'Apaseo el Alto', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (292, N'Apaseo el Grande', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (293, N'Atarjea', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (294, N'Celaya', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (295, N'Manuel Doblado', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (296, N'Comonfort', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (297, N'Coroneo', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (298, N'Cortazar', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (299, N'Cuerámaro', 11)
GO
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (300, N'Doctor Mora', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (301, N'Dolores Hidalgo Cuna de la Independencia Nacional', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (302, N'Guanajuato', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (303, N'Huanímaro', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (304, N'Irapuato', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (305, N'Jaral del Progreso', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (306, N'Jerécuaro', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (307, N'León', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (308, N'Moroleón', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (309, N'Ocampo', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (310, N'Pénjamo', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (311, N'Pueblo Nuevo', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (312, N'Purísima del Rincón', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (313, N'Romita', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (314, N'Salamanca', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (315, N'Salvatierra', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (316, N'San Diego de la Unión', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (317, N'San Felipe', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (318, N'San Francisco del Rincón', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (319, N'San José Iturbide', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (320, N'San Luis de la Paz', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (321, N'Santa Catarina', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (322, N'Santa Cruz de Juventino Rosas', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (323, N'Santiago Maravatío', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (324, N'Silao de la Victoria', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (325, N'Tarandacuao', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (326, N'Tarimoro', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (327, N'Tierra Blanca', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (328, N'Uriangato', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (329, N'Valle de Santiago', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (330, N'Victoria', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (331, N'Villagrán', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (332, N'Xichú', 11)
INSERT [dbo].[Ciudades] ([IdCiudad], [Nombre], [IdEstado]) VALUES (333, N'Yuriria', 11)
SET IDENTITY_INSERT [dbo].[Ciudades] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Direccion], [CodigoPostal], [IdCiudad]) VALUES (6, N'Gabriela Sandoval Cruz', N'Paseo del bajio s/n Jardines de Celaya', N'38080', 294)
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Direccion], [CodigoPostal], [IdCiudad]) VALUES (7, N'Juan Hernandez Solis', N'La mancha 32-B Puentesillas', N'36250', 302)
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Direccion], [CodigoPostal], [IdCiudad]) VALUES (8, N'Lorena Martinez Perez', N'Mariano Escobedo 3513 PTE, J. F. Kennedy', N'37410', 307)
INSERT [dbo].[Clientes] ([IdCliente], [Nombre], [Direccion], [CodigoPostal], [IdCiudad]) VALUES (1002, N'Jacinto Rojas Cruz', N'Paseo del Bajio 426 Jardines de Celaya', N'38080', 294)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Estados] ON 

INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (1, N'Aguascalientes')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (2, N'Baja California')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (3, N'Baja California Sur')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (4, N'Campeche')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (5, N'Coahuila de Zaragoza')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (6, N'Colima')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (7, N'Chiapas')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (8, N'Chihuahua')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (9, N'Distrito Federal')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (10, N'Durango')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (11, N'Guanajuato')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (12, N'Guerrero')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (13, N'Hidalgo')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (14, N'Jalisco')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (15, N'México')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (16, N'Michoacán de Ocampo')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (17, N'Morelos')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (18, N'Nayarit')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (19, N'Nuevo León')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (20, N'Oaxaca de Juárez')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (21, N'Puebla')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (22, N'Querétaro')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (23, N'Quintana Roo')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (24, N'San Luis Potosí')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (25, N'Sinaloa')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (26, N'Sonora')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (27, N'Tabasco')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (28, N'Tamaulipas')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (29, N'Tlaxcala')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (30, N'Veracruz de Ignacio de la Llave')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (31, N'Yucatán')
INSERT [dbo].[Estados] ([IdEstado], [Nombre]) VALUES (32, N'Zacatecas')
SET IDENTITY_INSERT [dbo].[Estados] OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON 

INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1, CAST(N'2021-12-02' AS Date), 0.16, 0, 6, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (2, CAST(N'2021-03-03' AS Date), 0.16, 0, 7, 3)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (3, CAST(N'2021-12-03' AS Date), 0.16, 0, 6, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (4, CAST(N'2021-09-03' AS Date), 0.16, 0, 6, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1002, CAST(N'2021-10-04' AS Date), 0.16, 0, 8, 4)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1003, CAST(N'2021-08-11' AS Date), 0.16, 0, 8, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1004, CAST(N'2021-01-27' AS Date), 0.16, 0, 8, 3)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1005, CAST(N'2021-01-15' AS Date), 0.16, 0, 1002, 1)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1006, CAST(N'2021-02-15' AS Date), 0.16, 0, 1002, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1007, CAST(N'2021-03-15' AS Date), 0.16, 0, 1002, 1)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1008, CAST(N'2021-04-15' AS Date), 0.16, 0, 1002, 1)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1009, CAST(N'2021-05-15' AS Date), 0.16, 0, 1002, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1010, CAST(N'2021-05-15' AS Date), 0.16, 0, 1002, 1)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1011, CAST(N'2021-07-15' AS Date), 0.16, 0, 1002, 1)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1012, CAST(N'2021-08-15' AS Date), 0.16, 0, 1002, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1013, CAST(N'2021-09-15' AS Date), 0.16, 0, 1002, 1)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1014, CAST(N'2021-10-15' AS Date), 0.16, 0, 1002, 1)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1015, CAST(N'2021-11-15' AS Date), 0.16, 0, 1002, 2)
INSERT [dbo].[Factura] ([IdFactura], [Fecha], [Iva], [DescuentoGlobal], [IdCliente], [IdVendedor]) VALUES (1016, CAST(N'2021-12-15' AS Date), 0.16, 0, 1002, 1)
SET IDENTITY_INSERT [dbo].[Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[FacturaDetalle] ON 

INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1, 3, 20.5, 61.5, 1, 1)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (3, 2, 35, 70, 1, 2)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (4, 2, 245.99, 491.98, 2, 3)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1002, 10, 550, 5500, 1002, 4)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1003, 25, 84.8, 2120, 1003, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1004, 8, 84.8, 678.4, 1004, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1005, 25, 84.8, 2120, 1005, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1006, 8, 84.8, 678.4, 1006, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1007, 25, 84.8, 2120, 1007, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1008, 8, 84.8, 678.4, 1008, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1009, 25, 84.8, 2120, 1009, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1010, 8, 84.8, 678.4, 1010, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1011, 25, 84.8, 2120, 1011, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1012, 8, 84.8, 678.4, 1012, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1013, 25, 84.8, 2120, 1013, 5)
INSERT [dbo].[FacturaDetalle] ([NumLinea], [Cantidad], [Precio], [Total], [IdFactura], [IdArticulo]) VALUES (1014, 8, 84.8, 678.4, 1014, 5)
SET IDENTITY_INSERT [dbo].[FacturaDetalle] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendedores] ON 

INSERT [dbo].[Vendedores] ([IdVendedor], [Nombre], [Direccion], [CodigoPostal], [IdCiudad], [IdVendedorSupervisor]) VALUES (1, N'Margarita Saldaña Gutierrez', N'Paseo del Bajio 426 Jardines de Celaya', N'38080', 294, NULL)
INSERT [dbo].[Vendedores] ([IdVendedor], [Nombre], [Direccion], [CodigoPostal], [IdCiudad], [IdVendedorSupervisor]) VALUES (2, N'Maria Sanchez Ocaña', N'Paseo del Bajio 596 Jardines de Celaya', N'38080', 294, 2)
INSERT [dbo].[Vendedores] ([IdVendedor], [Nombre], [Direccion], [CodigoPostal], [IdCiudad], [IdVendedorSupervisor]) VALUES (3, N'Luis Sangabriel Araujo', N'La mancha 345 Puentesillas', N'36250', 302, 3)
INSERT [dbo].[Vendedores] ([IdVendedor], [Nombre], [Direccion], [CodigoPostal], [IdCiudad], [IdVendedorSupervisor]) VALUES (4, N'Alondra Fernandez Luján', N'Mariano Escobedo 79 PTE, J. F. Kennedy', N'37410', 307, 4)
SET IDENTITY_INSERT [dbo].[Vendedores] OFF
GO
ALTER TABLE [dbo].[Ciudades]  WITH CHECK ADD  CONSTRAINT [FK_Ciudades_Estados1] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estados] ([IdEstado])
GO
ALTER TABLE [dbo].[Ciudades] CHECK CONSTRAINT [FK_Ciudades_Estados1]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Ciudades1] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Ciudades1]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Clientes1] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Clientes1]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Vendedores1] FOREIGN KEY([IdVendedor])
REFERENCES [dbo].[Vendedores] ([IdVendedor])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Vendedores1]
GO
ALTER TABLE [dbo].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturaDetalle_Articulos1] FOREIGN KEY([IdArticulo])
REFERENCES [dbo].[Articulos] ([IdArticulo])
GO
ALTER TABLE [dbo].[FacturaDetalle] CHECK CONSTRAINT [FK_FacturaDetalle_Articulos1]
GO
ALTER TABLE [dbo].[FacturaDetalle]  WITH CHECK ADD  CONSTRAINT [FK_FacturaDetalle_Factura1] FOREIGN KEY([IdFactura])
REFERENCES [dbo].[Factura] ([IdFactura])
GO
ALTER TABLE [dbo].[FacturaDetalle] CHECK CONSTRAINT [FK_FacturaDetalle_Factura1]
GO
ALTER TABLE [dbo].[Vendedores]  WITH CHECK ADD  CONSTRAINT [FK_Vendedores_Ciudades1] FOREIGN KEY([IdCiudad])
REFERENCES [dbo].[Ciudades] ([IdCiudad])
GO
ALTER TABLE [dbo].[Vendedores] CHECK CONSTRAINT [FK_Vendedores_Ciudades1]
GO
ALTER TABLE [dbo].[Vendedores]  WITH CHECK ADD  CONSTRAINT [FK_Vendedores_Vendedores1] FOREIGN KEY([IdVendedorSupervisor])
REFERENCES [dbo].[Vendedores] ([IdVendedor])
GO
ALTER TABLE [dbo].[Vendedores] CHECK CONSTRAINT [FK_Vendedores_Vendedores1]
GO
