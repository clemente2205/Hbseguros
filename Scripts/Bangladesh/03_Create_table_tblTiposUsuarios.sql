USE [Bangladesh]
GO

/****** Object:  Table [dbo].[tblTiposUsuarios]    Script Date: 12/10/2022 11:40:58 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTiposUsuarios](
	[IdTipoUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](30) NULL,
 CONSTRAINT [PK_tblTiposUsuarios] PRIMARY KEY CLUSTERED 
(
	[IdTipoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


