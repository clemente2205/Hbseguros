USE [HBSeguros]
GO
/****** Object:  Table [dbo].[Cotizaciones]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cotizaciones](
	[Asegurado] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClasificacionCobertura]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblClasificacionCobertura](
	[IdClasificacion] [int] IDENTITY(1,1) NOT NULL,
	[Clasificacion] [varchar](100) NULL,
	[Descripcion] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDesgloseCobertura]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDesgloseCobertura](
	[IdDesglose] [int] IDENTITY(1,1) NOT NULL,
	[Valor] [varchar](50) NULL,
	[IdClasificacion] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblIniciioSesion]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblIniciioSesion](
	[idUsuarioSesion] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](30) NULL,
	[Contrasena] [varchar](30) NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoCobertura]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoCobertura](
	[idTipoCobertura] [int] IDENTITY(1,1) NOT NULL,
	[TipoCobertura] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoGenero]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoGenero](
	[idTipoGenero] [int] IDENTITY(1,1) NOT NULL,
	[TipoGenero] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoMarca]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoMarca](
	[idMarca] [int] IDENTITY(1,1) NOT NULL,
	[Marca] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL,
	[anoMarca] [int] NULL,
	[idTipoVehiculo] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoPersona]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoPersona](
	[idTipoPersona] [int] IDENTITY(1,1) NOT NULL,
	[TipoPersona] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTiposUsuarios]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTiposUsuarios](
	[idTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[TipoUsuario] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoTransmision]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoTransmision](
	[idTransmision] [int] IDENTITY(1,1) NOT NULL,
	[Transmision] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoVehiculo]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoVehiculo](
	[idTipoVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[TipoVehiculo] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTipoVersion]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTipoVersion](
	[idVersion] [int] IDENTITY(1,1) NOT NULL,
	[VersionV] [varchar](30) NULL,
	[Descripcion] [varchar](30) NULL,
	[idMarca] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsuarios]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsuarios](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NULL,
	[ApellidoPaterno] [varchar](30) NULL,
	[ApellidoMaterno] [varchar](30) NULL,
	[Edad] [int] NULL,
	[TipoUsuario] [int] NULL,
	[Imagen] [varbinary](max) NULL,
	[Correo] [varchar](50) NULL,
	[NombreUsuario] [varchar](30) NULL,
	[Contrasena] [varchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Cotizaciones] ([Asegurado]) VALUES (N'Mary Flores')
GO
SET IDENTITY_INSERT [dbo].[tblClasificacionCobertura] ON 

INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (1, N'Gastos médicos ocupantes', N'Gastos médicos ocupantes')
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (2, N'Deducible daños materiales', N'Deducible daños materiales')
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (3, N'Deducible robo total', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (4, N'Responsabilidad civil por daños a terceros', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (5, N'Auto en agencia', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (6, N'Auto sustituto', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (7, N'Responsabilidad civil complementaria personas', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (8, N'Robo Parcial
', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (9, N'Extension de RC, gastos legales, gastos medicos y asistenciavial al titular', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (10, N'Muerte al conductor por accidente vial', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (11, N'Adaptaciones y/o Equipo especial', NULL)
INSERT [dbo].[tblClasificacionCobertura] ([IdClasificacion], [Clasificacion], [Descripcion]) VALUES (12, N'Cero deducible por colisión o accidente (CADE)', NULL)
SET IDENTITY_INSERT [dbo].[tblClasificacionCobertura] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDesgloseCobertura] ON 

INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (1, N'100000', 1)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (2, N'150000', 1)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (3, N'200000', 1)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (4, N'250000', 1)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (5, N'3', 2)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (6, N'5', 2)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (7, N'10', 2)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (8, N'5', 3)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (9, N'10', 3)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (10, N'20', 3)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (11, N'1000000', 4)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (12, N'1500000', 4)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (13, N'2000000', 4)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (14, N'NO', 5)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (15, N'SI', 5)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (16, N'NO', 6)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (17, N'SI', 6)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (18, N'NO', 7)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (19, N'SI', 7)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (20, N'NO', 8)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (21, N'10000', 8)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (22, N'NO', 9)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (23, N'SI', 9)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (24, N'NO', 10)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (25, N'50000', 10)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (26, N'100000', 10)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (27, N'150000', 10)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (28, N'NO', 11)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (29, N'10000', 11)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (30, N'20000', 11)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (31, N'30000', 11)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (32, N'NO', 12)
INSERT [dbo].[tblDesgloseCobertura] ([IdDesglose], [Valor], [IdClasificacion]) VALUES (33, N'SI', 12)
SET IDENTITY_INSERT [dbo].[tblDesgloseCobertura] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoCobertura] ON 

INSERT [dbo].[tblTipoCobertura] ([idTipoCobertura], [TipoCobertura], [Descripcion]) VALUES (1, N'Amplia', N'Amplia')
INSERT [dbo].[tblTipoCobertura] ([idTipoCobertura], [TipoCobertura], [Descripcion]) VALUES (2, N'Limitada', N'Limitada')
INSERT [dbo].[tblTipoCobertura] ([idTipoCobertura], [TipoCobertura], [Descripcion]) VALUES (3, N'RC', N'Responsabilidad Civil')
SET IDENTITY_INSERT [dbo].[tblTipoCobertura] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoGenero] ON 

INSERT [dbo].[tblTipoGenero] ([idTipoGenero], [TipoGenero], [Descripcion]) VALUES (1, N'Femenino', N'Mujer')
INSERT [dbo].[tblTipoGenero] ([idTipoGenero], [TipoGenero], [Descripcion]) VALUES (2, N'Masculino', N'Hombre')
SET IDENTITY_INSERT [dbo].[tblTipoGenero] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoMarca] ON 

INSERT [dbo].[tblTipoMarca] ([idMarca], [Marca], [Descripcion], [anoMarca], [idTipoVehiculo]) VALUES (1, N'FORD', NULL, NULL, 1)
INSERT [dbo].[tblTipoMarca] ([idMarca], [Marca], [Descripcion], [anoMarca], [idTipoVehiculo]) VALUES (2, N'NISSAN', NULL, NULL, 1)
INSERT [dbo].[tblTipoMarca] ([idMarca], [Marca], [Descripcion], [anoMarca], [idTipoVehiculo]) VALUES (3, N'CHEVROLET', NULL, NULL, 1)
INSERT [dbo].[tblTipoMarca] ([idMarca], [Marca], [Descripcion], [anoMarca], [idTipoVehiculo]) VALUES (4, N'MG', NULL, NULL, 1)
INSERT [dbo].[tblTipoMarca] ([idMarca], [Marca], [Descripcion], [anoMarca], [idTipoVehiculo]) VALUES (5, N'HONDA', NULL, NULL, 1)
INSERT [dbo].[tblTipoMarca] ([idMarca], [Marca], [Descripcion], [anoMarca], [idTipoVehiculo]) VALUES (6, N'HUNDAY', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tblTipoMarca] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoPersona] ON 

INSERT [dbo].[tblTipoPersona] ([idTipoPersona], [TipoPersona], [Descripcion]) VALUES (1, N'Fisica', NULL)
INSERT [dbo].[tblTipoPersona] ([idTipoPersona], [TipoPersona], [Descripcion]) VALUES (2, N'Moral', NULL)
SET IDENTITY_INSERT [dbo].[tblTipoPersona] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTiposUsuarios] ON 

INSERT [dbo].[tblTiposUsuarios] ([idTipoUsuario], [TipoUsuario], [Descripcion]) VALUES (1, N'Administrador', N'Administrador')
INSERT [dbo].[tblTiposUsuarios] ([idTipoUsuario], [TipoUsuario], [Descripcion]) VALUES (2, N'Ejecutivo', N'Ejecutivo')
INSERT [dbo].[tblTiposUsuarios] ([idTipoUsuario], [TipoUsuario], [Descripcion]) VALUES (3, N'Agente', N'Agente')
SET IDENTITY_INSERT [dbo].[tblTiposUsuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoTransmision] ON 

INSERT [dbo].[tblTipoTransmision] ([idTransmision], [Transmision], [Descripcion]) VALUES (1, N'AUT', N'Automatica')
INSERT [dbo].[tblTipoTransmision] ([idTransmision], [Transmision], [Descripcion]) VALUES (2, N'STD', N'Standar')
SET IDENTITY_INSERT [dbo].[tblTipoTransmision] OFF
GO
SET IDENTITY_INSERT [dbo].[tblTipoVehiculo] ON 

INSERT [dbo].[tblTipoVehiculo] ([idTipoVehiculo], [TipoVehiculo], [Descripcion]) VALUES (1, N'Automóviles', NULL)
INSERT [dbo].[tblTipoVehiculo] ([idTipoVehiculo], [TipoVehiculo], [Descripcion]) VALUES (2, N'Motocicletas', NULL)
INSERT [dbo].[tblTipoVehiculo] ([idTipoVehiculo], [TipoVehiculo], [Descripcion]) VALUES (3, N'Pickups', NULL)
INSERT [dbo].[tblTipoVehiculo] ([idTipoVehiculo], [TipoVehiculo], [Descripcion]) VALUES (4, N'Pickups carga', NULL)
INSERT [dbo].[tblTipoVehiculo] ([idTipoVehiculo], [TipoVehiculo], [Descripcion]) VALUES (5, N'Tractocamiones', NULL)
INSERT [dbo].[tblTipoVehiculo] ([idTipoVehiculo], [TipoVehiculo], [Descripcion]) VALUES (6, N'Remolques', NULL)
SET IDENTITY_INSERT [dbo].[tblTipoVehiculo] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsuarios] ON 

INSERT [dbo].[tblUsuarios] ([idUsuario], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Edad], [TipoUsuario], [Imagen], [Correo], [NombreUsuario], [Contrasena]) VALUES (1, N'Mary', N'Flores', N'Avila', 33, 1, NULL, N'fmary0220@gmail.com', N'mary', N'123')
INSERT [dbo].[tblUsuarios] ([idUsuario], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Edad], [TipoUsuario], [Imagen], [Correo], [NombreUsuario], [Contrasena]) VALUES (2, N'Ana', N'Flores', N'Avila', 28, 2, NULL, N'', N'ana', N'123')
INSERT [dbo].[tblUsuarios] ([idUsuario], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Edad], [TipoUsuario], [Imagen], [Correo], [NombreUsuario], [Contrasena]) VALUES (3, N'Ale', N'Flores', N'Avila', 26, 3, NULL, NULL, N'ale', N'123')
SET IDENTITY_INSERT [dbo].[tblUsuarios] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblUsuar__6B0F5AE0F096FE8B]    Script Date: 04/10/2022 10:27:59 p. m. ******/
ALTER TABLE [dbo].[tblUsuarios] ADD UNIQUE NONCLUSTERED 
(
	[NombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[uspObtenerTipoGenero]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[uspObtenerTipoGenero]
as
begin

select idTipoGenero, TipoGenero from tblTipoGenero 
end

GO
/****** Object:  StoredProcedure [dbo].[uspObtenerTipoPersona]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[uspObtenerTipoPersona]
as
begin

select idTipoPersona, TipoPersona from tblTipoPersona 
end

GO
/****** Object:  StoredProcedure [dbo].[uspObtenerTipoTransmision]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[uspObtenerTipoTransmision]
as
begin

select idTransmision, Transmision +'-'+Descripcion AS Transmision from tblTipoTransmision 
end

GO
/****** Object:  StoredProcedure [dbo].[uspObtenerUsuario]    Script Date: 04/10/2022 10:27:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[uspObtenerUsuario]
(
@usuario  varchar(50),
@contrasena varchar(50)
)
as
begin



select Nombre, ApellidoPaterno, ApellidoMaterno, TipoUsuario from tblUsuarios 
where NombreUsuario = @usuario and Contrasena = @contrasena

end

GO
