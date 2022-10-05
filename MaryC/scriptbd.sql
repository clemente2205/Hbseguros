USE [HBSeguros]
GO
/****** Object:  Table [dbo].[Cotizaciones]    Script Date: 04/10/2022 10:12:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cotizaciones](
	[Asegurado] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblClasificacionCobertura]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblDesgloseCobertura]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblIniciioSesion]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTipoCobertura]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTipoGenero]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTipoMarca]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTipoPersona]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTiposUsuarios]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTipoTransmision]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTipoVehiculo]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblTipoVersion]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  Table [dbo].[tblUsuarios]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
	[Contrasena] [varchar](30) NULL,
UNIQUE NONCLUSTERED 
(
	[NombreUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[uspObtenerTipoGenero]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[uspObtenerTipoPersona]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[uspObtenerTipoTransmision]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[uspObtenerUsuario]    Script Date: 04/10/2022 10:12:45 p. m. ******/
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
