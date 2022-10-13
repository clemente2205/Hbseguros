USE [Bangladesh]
GO

/****** Object:  Table [dbo].[tblTiposPermisos]    Script Date: 12/10/2022 11:39:59 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTiposPermisos](
	[IdTipoPermiso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NULL,
 CONSTRAINT [PK_tblTiposPermisos] PRIMARY KEY CLUSTERED 
(
	[IdTipoPermiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
