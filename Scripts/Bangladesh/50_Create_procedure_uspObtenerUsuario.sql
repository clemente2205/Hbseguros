IF EXISTS (SELECT * FROM SYSOBJECTS WHERE NAME = 'uspObtenerUsuario')
	DROP PROCEDURE uspObtenerUsuario
GO
CREATE PROCEDURE uspObtenerUsuario
(
	@usuario  VARCHAR(30),
	@contrasena VARCHAR(30)
)
AS

DECLARE @CodigoError INT = 0
DECLARE @CodigoDescripcion VARCHAR(500) = 'Operacion ejecutada exitosamente.'

IF(@usuario = '' OR @usuario IS NULL)
BEGIN 
	SET @CodigoError = 1;
	SET @CodigoDescripcion = 'El campo usuario se encuentra vacío.'
	GOTO Fin
END

IF(@contrasena = '' OR @contrasena IS NULL)
BEGIN 
	SET @CodigoError = 1;
	SET @CodigoDescripcion = 'El campo contraseña se encuentra vacío.'
	GOTO Fin
END

IF NOT EXISTS(SELECT * FROM tblUsuarios WHERE NombreUsuario = @usuario and Contrasena = @contrasena)
BEGIN
	SET @CodigoError = 1;
	SET @CodigoDescripcion = 'Favor de verificar su usuario.'
	GOTO Fin
END

	SELECT 
		@CodigoError AS CodigoError, @CodigoDescripcion AS CodigoDescripcion,
		Nombre, ApellidoPaterno, ApellidoMaterno, IdTipoUsuario, IdTipoPermiso 
	FROM tblUsuarios 
	WHERE NombreUsuario = @usuario and Contrasena = @contrasena

Fin:
	IF @CodigoError <> 0
	BEGIN
		SELECT @CodigoError AS CodigoError, @CodigoDescripcion AS CodigoDescripcion
	END
GO
