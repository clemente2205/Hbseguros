USE [Bangladesh]
GO

SET IDENTITY_INSERT [dbo].[tblTiposUsuarios] ON 
GO
INSERT [dbo].[tblTiposUsuarios] ([IdTipoUsuario], [Descripcion]) VALUES (1, N'Administrador')
GO
INSERT [dbo].[tblTiposUsuarios] ([IdTipoUsuario], [Descripcion]) VALUES (2, N'Ejecutivo')
GO
INSERT [dbo].[tblTiposUsuarios] ([IdTipoUsuario], [Descripcion]) VALUES (3, N'Agente')
GO
SET IDENTITY_INSERT [dbo].[tblTiposUsuarios] OFF
GO