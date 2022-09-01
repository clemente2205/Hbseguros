CREATE TABLE tblUsuarios(
	idUsuario INT iDENTITY(1,1),
	Nombre VARCHAR(30),
	ApellidoPaterno VARCHAR(30),
	ApellidoMaterno VARCHAR(30),
	Edad INT,
	TipoUsuario INT,
	Imagen VARBINARY(MAX),
	Correo VARCHAR(50)
);