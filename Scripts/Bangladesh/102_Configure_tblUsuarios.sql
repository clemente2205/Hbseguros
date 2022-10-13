USE [Bangladesh]
GO

SET IDENTITY_INSERT [dbo].[tblUsuarios] ON 
GO
INSERT [dbo].[tblUsuarios] ([IdUsuario], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Edad], [IdTipoUsuario], [IdTipoPermiso], [Imagen], [Correo], [NombreUsuario], [Contrasena]) VALUES (1, N'Mary', N'Flores', N'Avila', 33, 1, 1, NULL, N'fmary0220@gmail.com', N'mary', N'123')
GO
INSERT [dbo].[tblUsuarios] ([IdUsuario], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Edad], [IdTipoUsuario], [IdTipoPermiso], [Imagen], [Correo], [NombreUsuario], [Contrasena]) VALUES (5, N'Jose ', N'Sandoval', N'Sandoval', 26, 1, 1, NULL, N'fmary0220@gmail.com', N'jose', N'123')
GO
INSERT [dbo].[tblUsuarios] ([IdUsuario], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Edad], [IdTipoUsuario], [IdTipoPermiso], [Imagen], [Correo], [NombreUsuario], [Contrasena]) VALUES (6, N'Ana', N'Flores', N'Avila', 29, 1, 2, NULL, N'famry0220@gmail.com', N'ana', N'123')
GO
INSERT [dbo].[tblUsuarios] ([IdUsuario], [Nombre], [ApellidoPaterno], [ApellidoMaterno], [Edad], [IdTipoUsuario], [IdTipoPermiso], [Imagen], [Correo], [NombreUsuario], [Contrasena]) VALUES (7, N'Alejandra', N'Flores', N'Avila', 26, 1, 2, NULL, N'fmary0220@gmail.com', N'ale', N'123')
GO
SET IDENTITY_INSERT [dbo].[tblUsuarios] OFF
GO