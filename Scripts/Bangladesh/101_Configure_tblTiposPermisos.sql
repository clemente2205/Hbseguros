USE [Bangladesh]
GO

SET IDENTITY_INSERT [dbo].[tblTiposPermisos] ON 
GO
INSERT [dbo].[tblTiposPermisos] ([IdTipoPermiso], [Descripcion]) VALUES (1, N'Escritura')
GO
INSERT [dbo].[tblTiposPermisos] ([IdTipoPermiso], [Descripcion]) VALUES (2, N'Lectura')
GO
SET IDENTITY_INSERT [dbo].[tblTiposPermisos] OFF
GO