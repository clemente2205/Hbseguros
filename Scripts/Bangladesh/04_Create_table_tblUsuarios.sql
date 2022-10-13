USE [Bangladesh]
GO

/****** Object:  Table [dbo].[tblUsuarios]    Script Date: 12/10/2022 11:41:19 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblUsuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[ApellidoPaterno] [varchar](30) NOT NULL,
	[ApellidoMaterno] [varchar](30) NOT NULL,
	[Edad] [int] NOT NULL,
	[IdTipoUsuario] [int] NOT NULL,
	[IdTipoPermiso] [int] NOT NULL,
	[Imagen] [varbinary](max) NULL,
	[Correo] [varchar](50) NOT NULL,
	[NombreUsuario] [varchar](30) NOT NULL,
	[Contrasena] [varchar](30) NOT NULL,
 CONSTRAINT [PK_tblUsuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tblUsuarios_tblTiposPermisos] FOREIGN KEY([IdTipoPermiso])
REFERENCES [dbo].[tblTiposPermisos] ([IdTipoPermiso])
GO

ALTER TABLE [dbo].[tblUsuarios] CHECK CONSTRAINT [FK_tblUsuarios_tblTiposPermisos]
GO

ALTER TABLE [dbo].[tblUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_tblUsuarios_tblTiposUsuarios] FOREIGN KEY([IdTipoUsuario])
REFERENCES [dbo].[tblTiposUsuarios] ([IdTipoUsuario])
GO

ALTER TABLE [dbo].[tblUsuarios] CHECK CONSTRAINT [FK_tblUsuarios_tblTiposUsuarios]
GO


