USE [dbschedule]
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_INSAULA')
BEGIN 

	EXEC('CREATE PROCEDURE [dbo].[SPSW_INSAULA]
		@vchNombre varchar(150),
		@tniLaboratorio tinyint,
		@intNroAsientos int,
		@msg as varchar(100) OUTPUT
	AS
	/***************************************
	*Descripcion: Inserta un registro de aula
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Parametros: 	@vchNombre :      Nombre del Aula
	*				@tniLaboratorio:  Determina si el aula requiere o no laboratorio
	*				@intNroAsientos:  Numero de Asientos del Aula
	*				@msg			  Retorno Mensaje SQL SERVER
	*Autor:	David Eguia
	*Cambios Importantes: Estandarizar Procedimiento  
	*****************************************/
	BEGIN
		BEGIN TRAN trans
		BEGIN TRY
			INSERT INTO tbAula(nombre,laboratorio,nroAsientos)
			VALUES(@vchNombre,@tniLaboratorio,@intNroAsientos)
			COMMIT TRAN trans
		END TRY
		BEGIN CATCH
			Rollback TRAN trans
			SET @msg = ERROR_MESSAGE();
		END CATCH
	END') 
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_INSCURSO')
BEGIN 

		EXEC('CREATE PROCEDURE [dbo].[SPSW_INSCURSO]
			(
				@vchNombre varchar(150),
				@msg as varchar(100) OUTPUT
			)
		AS
		/***************************************
		*Descripcion: Inserta Registro de Curso
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@vchNombre:  Nombre del Curso
		*				@msg:		 Retorno Mensaje SQL SERVER
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			BEGIN TRAN trans
			BEGIN TRY
				INSERT INTO tbcurso(nombre)
				VALUES(@vchNombre)
			COMMIT TRAN trans
			END TRY
			BEGIN CATCH
				ROLLBACK TRAN trans
				SET @msg = ERROR_MESSAGE();
			END CATCH
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_INSGRUPOESTUDIANTE')
BEGIN
	   EXEC('CREATE PROCEDURE [dbo].[SPSW_INSGRUPOESTUDIANTE]
			(
				@vchNombre varchar(150),
				@intNroestudiante int,
				@msg as varchar(100) OUTPUT
			)
		AS
		/***************************************
		*Descripcion: Insertar Registro de un Grupo de Estudiantes
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@vchNombre :        Nombre del grupo de estudiante
		*				@intNroestudiante:  Numero de estudiante
		*				@msg				Retorno Mensaje SQL SERVER
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			BEGIN TRAN trans
			BEGIN TRY
				INSERT INTO tbgrupoestudiante(nombre,nroEstudiante)
				VALUES(@vchNombre,@intNroestudiante)
			COMMIT TRAN trans
			END TRY
			BEGIN CATCH
				ROLLBACK TRAN trans
				SET @msg = ERROR_MESSAGE();
			END CATCH
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'PSW_INSPROFESOR')
BEGIN
  EXEC('CREATE PROCEDURE [dbo].[SPSW_INSPROFESOR]
		(
			@vchNombre varchar(150),
			@msg as varchar(100) OUTPUT
		)
		AS
		/***************************************
		*Descripcion: Insertar Nuevo Registro Profesor
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@vchNombre :    Nombre del Profesor
		*				@msg:			Retorno Mensaje SQL SERVER
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			BEGIN TRAN trans
			BEGIN TRY
				INSERT INTO tbProfesor(nombre)
				VALUES(@vchNombre)
				COMMIT TRAN trans
			END TRY
			BEGIN CATCH
				ROLLBACK TRAN trans
				SET @msg = ERROR_MESSAGE();
			END CATCH
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_INSUSUARIO')
BEGIN
	   EXEC('CREATE PROCEDURE [dbo].[SPSW_INSUSUARIO]
				(
					@vchNombres varchar(250),
					@vchApellidos varchar(250),
					@vchDni varchar(8),
					@vchEmail varchar(50),
					@vchClave varchar(16),
					@msg as varchar(100) OUTPUT
				)
			AS
			/***************************************
			*Descripcion: Actualiza Clave Usuario
			*Fecha Crea: 24/07/2017
			*Fecha Mod: 9/08/2017
			*Parametros: 	@vchNombres :   Nombre Usuario
			*				@vchApellidos:	Apellidos Usuario
			*				@vchDni:	    Dni Usuario
			*				@vchEmail:	    E-mail Usuario
			*				@vvchClave:	    Clave Usuario
			*				@msg			Retorno Mensaje SQL SERVER
			*Autor:	David Eguia
			*Cambios Importantes: Estandarizar Procedimiento  
			*****************************************/
			BEGIN
				BEGIN TRAN trans
				BEGIN TRY
					INSERT INTO tbusuario(nombres_us, apellidos_us, dni_us, email_us, clave_us)
					VALUES(@vchNombres, @vchApellidos, @vchDni, @vchEmail, PWDENCRYPT(@vchClave))
					COMMIT TRAN trans
				END TRY
				BEGIN CATCH
					ROLLBACK TRAN trans
					SET @msg = ERROR_MESSAGE();
				END CATCH
			END')
END

GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_SELAULA')
BEGIN 
		EXEC('CREATE PROCEDURE [dbo].[SPSW_SELAULA]	 
		AS
		/***************************************
		*Descripcion: Seleccionar Aula
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			SELECT  Id, 
					nombre AS ''Nombre Aula'', 
			"Laboratorio" =
			CASE
			  WHEN laboratorio = 1 THEN ''Si''
			  WHEN laboratorio = 0 THEN ''No''
			END,
					 nroAsientos AS ''Nro Asientos'',
			"Activo" =
			CASE
			  WHEN Activo = 1 THEN ''Si''
			  WHEN Activo = 0 THEN ''No''
			END
			FROM tbAula 
			ORDER BY Id ASC
		END')
END

GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_SELCLASEGRUPO')
BEGIN
	   EXEC('CREATE PROCEDURE [dbo].[SPSW_SELCLASEGRUPO]
				(
					@vchClase int
				)
			AS
			/***************************************
			*Descripcion: Seleccionar Clase Grupo
			*Fecha Crea: 24/07/2017
			*Fecha Mod: 9/08/2017
			*Parametros: 	@vchClase :  Id de la Tabla Clase
			*Autor:	David Eguia
			*Cambios Importantes: Estandarizar Procedimiento  
			*****************************************/
			BEGIN
				SELECT  tbclasegrupo.Clase, 
						tbclasegrupo.Grupo , 
						tbgrupoestudiante.nombre , 
						tbclasegrupo.activo
				FROM tbclasegrupo
				INNER JOIN tbgrupoestudiante 
				ON tbclasegrupo.Grupo = 
				tbgrupoestudiante.Id
				WHERE dbo.tbclasegrupo.Clase = @vchClase 
				ORDER BY dbo.tbclasegrupo.Grupo
			END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_SELCLASEPROFESOR')
BEGIN
		EXEC('CREATE PROCEDURE [dbo].[SPSW_SELCLASEPROFESOR]	 
		AS
		/***************************************
		*Descripcion: Seleccionar datos Tabla Clase y Profesor
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			SELECT  tbcurso.nombre + '' -------  '' + tbprofesor.nombre AS ''ListadeClases'', 
					tbclase.Id,
					tbclase.Curso,
					tbclase.Profesor,
					tbclase.Duracion,
					tbclase.Laboratorio,
					tbclase.Activo
			FROM tbclase 
			INNER JOIN tbcurso ON tbclase.Curso = 
			tbcurso.Id 
			INNER JOIN tbprofesor ON tbClase.Profesor = 
			tbprofesor.Id
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_SELCURSO')
BEGIN

		EXEC('CREATE PROCEDURE [dbo].[SPSW_SELCURSO]	 
		AS
		/***************************************
		*Descripcion: Seleccionar datos curso
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			SELECT  Id, 
					nombre AS ''Nombre Curso'', 
					"Activo" =
					CASE
					  WHEN activo = 1 THEN ''Si''
					  WHEN activo = 0 THEN ''No''
					END
			FROM tbcurso  
			ORDER BY Id ASC
		END')

END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'PSW_SELGRUPOESTUDIANTE')
BEGIN
		EXEC('CREATE PROCEDURE [dbo].[SPSW_SELGRUPOESTUDIANTE]	 
		AS
		/***************************************
		*Descripcion: Seleccionar datos grupoEstudiante
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			SELECT  Id, 
					nombre AS ''Nombre GrupoEstudiante'',
					nroEstudiante AS ''Nro Estudiante'', 
					"Activo" =
					CASE
					  WHEN activo = 1 THEN ''Si''
					  WHEN activo = 0 THEN ''No''
					END
			FROM tbgrupoestudiante  
			ORDER BY Id ASC
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_SELPROFESOR')
BEGIN
		EXEC('CREATE PROCEDURE [dbo].[SPSW_SELPROFESOR]	 
		AS
		/***************************************
		*Descripcion: Seleccionar datos Profesor
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			SELECT  Id, 
					nombre as 'Nombre Profesor', 
					"Activo" =
					CASE
					  WHEN activo = 1 THEN 'Si'
					  WHEN activo = 0 THEN 'No'
					END
			FROM tbprofesor 
			ORDER BY Id ASC
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_SELUSUARIO')
BEGIN
		EXEC('CREATE PROCEDURE [dbo].[SPSW_SELUSUARIO]
			(
				@vchEmail varchar(50),
				@vchClave varchar(16)
			)
		AS
		/***************************************
		*Descripcion: Seleccionar informacion del usuario al validar su acceso
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@vchEmail:   Email del Usuario
		*				@vchClave:	 Clave del Usuario
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			if EXISTS(SELECT 1 
					  FROM tbusuario 
					  WHERE email_us = @vchEmail 
					  AND   PWDCOMPARE(@vchClave, clave_us) = 1) 
			BEGIN
				SELECT id_us, 
					   nombres_us, 
					   apellidos_us, 
					   dni_us, 
					   email_us 
				FROM tbusuario 
				WHERE email_us = @vchEmail 
				AND   PWDCOMPARE(@vchClave, clave_us) = 1
			END
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_SELUSUARIOEXISTEUSUARIO')
BEGIN
	EXEC('CREATE PROCEDURE [dbo].[SPSW_SELUSUARIOEXISTEUSUARIO]
			(
				@vchEmail varchar(50),
				@vchClave varchar(16)
			)
		AS
		/***************************************
		*Descripcion: Validar si Existe un Determinado Usuario
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@vchEmail :       Email Usuario
		*				@vchClave:	      Clave Usuario
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			SELECT 1 
			FROM 
			tbusuario 
			WHERE email_us = @vchEmail 
			AND  PWDCOMPARE(@vchClave, clave_us) = 1
		END')
END

GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'PSW_UPDAULA')
BEGIN
		EXEC('CREATE PROCEDURE [dbo].[SPSW_UPDAULA]
			(
				@intIdAula int,
				@vchNombre varchar(150),
				@tniLaboratorio tinyint,
				@intNroAsientos int,
				@tniActivo tinyint,
				@msg as varchar(100) OUTPUT
			)
		AS
		/***************************************
		*Descripcion: Actualiza Aula
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@intIdAula :		Id Aula
		*				@vchNombre:			Nombre Aula
		*				@tniLaboratorio:	Tiene o No Laboratorio
		*				@intNroAsientos:	Numeros de Asientos
		*				@tniActivo:			Determina si el aula esta activa o no
		*				@msg				Retorno Mensaje SQL SERVER
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			BEGIN TRAN trans
			BEGIN TRY
				UPDATE tbAula 
				SET    nombre = @vchNombre,
					   laboratorio=@tniLaboratorio, 
					   nroAsientos=@intNroAsientos, 
					   activo=@tniActivo
				WHERE Id = @intIdAula	
			COMMIT TRAN trans
			END TRY
			BEGIN CATCH
				 ROLLBACK TRAN trans
				SET @msg = ERROR_MESSAGE();
			END CATCH
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'PSW_UPDAULA')
BEGIN
	EXEC('CREATE PROCEDURE [dbo].[SPSW_UPDCLASEGRUPO]
			(
				@intIdClase int,
				@intIdGrupo int,
				@tniActivo int,
				@msg as varchar(100) OUTPUT
			)
		AS
		/***************************************
		*Descripcion: Actualiza Clase Grupo
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@intClase :		Id de Clase
		*				@intGrupo:		Id de Grupo
		*				@tniActivo:		Esta Activo o no el Grupo
		*				@msg			Retorno Mensaje SQL SERVER
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			BEGIN TRAN trans
			BEGIN TRY
				UPDATE  tbclasegrupo 
				SET		Activo = @tniActivo
				WHERE   Clase = @intIdClase 
				AND Grupo = @intIdGrupo	
				COMMIT TRAN trans
			END TRY
			BEGIN CATCH
				 Rollback TRAN trans
				SET @msg = ERROR_MESSAGE();
			END CATCH
		END')
END

GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'PSW_UPDCURSO')
BEGIN
		EXEC('CREATE PROCEDURE [dbo].[SPSW_UPDCURSO]
				(
					@intIdCurso int,
					@vchNombre varchar(250),
					@tniActivo tinyint,
					@msg as varchar(100) OUTPUT
				)
			AS
			/***************************************
			*Descripcion: Actualiza Informacion Curso
			*Fecha Crea: 24/07/2017
			*Fecha Mod: 9/08/2017
			*Parametros: 	@intIdCurso :	Id de Curso
			*				@vchNombre:		Nombre Curso
			*				@tniActivo:		Esta Activo o no el curso
			*				@msg			Retorno Mensaje SQL SERVER
			*Autor:	David Eguia
			*Cambios Importantes: Estandarizar Procedimiento  
			*****************************************/
			BEGIN
				BEGIN TRAN trans
				BEGIN TRY
					UPDATE  tbcurso 
					SET		nombre = @vchNombre, 
							activo = @tniActivo
					WHERE   Id = @intIdCurso	
					COMMIT TRAN trans
				END TRY
				BEGIN CATCH
					 ROLLBACK TRAN trans
					SET @msg = ERROR_MESSAGE();
				END CATCH
			END')
END

GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_UPDGRUPOESTUDIANTE')
BEGIN
	EXEC('CREATE PROCEDURE [dbo].[SPSW_UPDGRUPOESTUDIANTE]
			(	
				@intIdGrupoEstudiante int,
				@vchNombre varchar(150),
				@vchNroestudiante int,
				@tniActivo tinyint,
				@msg as varchar(100) OUTPUT
			)
		AS
		/***************************************
		*Descripcion: Actualizar Informacion Grupo Estudiantes
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@intIdGrupoEstudiante :	Id GrupoEstudiante
		*				@vchNombre:			Nombre Grupo Estudiante
		*				@vchNroestudiante:	Cantidad de Estudiante
		*				@tniActivo:			Esta Activo o no el curso
		*				@msg				Retorno Mensaje SQL SERVER
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			BEGIN TRAN trans
			BEGIN TRY
				UPDATE	tbgrupoestudiante 
				SET		nombre = @vchNombre, 
						nroEstudiante = @vchNroestudiante, 
						activo =@tniActivo
				WHERE	Id = @intIdGrupoEstudiante	
				COMMIT TRAN trans
			END TRY
			BEGIN CATCH
				 ROLLBACK TRAN trans
				SET @msg = ERROR_MESSAGE();
			END CATCH
		END')
END
GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_UPDPROFESOR')
BEGIN
	EXEC('CREATE PROCEDURE [dbo].[SPSW_UPDPROFESOR]
			(	
				@intIdProfesor int,
				@vchNombre varchar(250),
				@tniActivo tinyint,
				@msg as varchar(100) OUTPUT
			)
		AS
		/***************************************
		*Descripcion: Actualizar Informacion Profesor
		*Fecha Crea: 24/07/2017
		*Fecha Mod: 9/08/2017
		*Parametros: 	@intIdProfesor :	Id Profesor
		*				@vchNombre:			Nombre Profesor
		*				@tniActivo:			Esta Activo o no el Profesor
		*				@msg				Retorno Mensaje SQL SERVER
		*Autor:	David Eguia
		*Cambios Importantes: Estandarizar Procedimiento  
		*****************************************/
		BEGIN
			BEGIN TRAN trans
			BEGIN TRY
				UPDATE tbprofesor 
				SET	   nombre = @vchNombre, 
					   activo = @tniActivo
				WHERE  Id = @intIdProfesor	
				COMMIT TRAN trans
			END TRY
			BEGIN CATCH
				 ROLLBACK TRAN trans
				SET @msg = ERROR_MESSAGE();
			END CATCH
		END')
END

GO
IF NOT EXISTS(SELECT * FROM sys.procedures WHERE name = 'SPSW_UPDUSUARIOCAMBIARCLAVE')
BEGIN
		EXEC('CREATE PROCEDURE [dbo].[SPSW_UPDUSUARIOCAMBIARCLAVE]
				( 
					@intIdUsuario int,
					@vchClaveanterior varchar(50),
					@vchClavenueva varchar(50),
					@msg as varchar(100) OUTPUT
				)
			AS
			/***************************************
			*Descripcion: Actualiza Clave Usuario
			*Fecha Crea: 24/07/2017
			*Fecha Mod: 9/08/2017
			*Parametros: 	@intIdUsuario :     Id Usuario
			*				@vchClaveanterior:	Clave Anterior usuario
			*				@vchClavenueva:	    Clave Nueva usuario
			*				@msg				Retorno Mensaje SQL SERVER
			*Autor:	David Eguia
			*Cambios Importantes: Estandarizar Procedimiento  
			*****************************************/
			BEGIN
				BEGIN TRAN trans
				BEGIN TRY
				IF (SELECT COUNT(*) 
					FROM  tbusuario 
					WHERE PWDCOMPARE(@vchClaveanterior,clave_us) = 1 
					AND   id_us = @intIdUsuario) = 1
				BEGIN
					UPDATE tbusuario 
					SET clave_us = PWDENCRYPT(@vchClavenueva)
					WHERE id_us = @intIdUsuario;
				END
				COMMIT TRAN trans
				END TRY
				BEGIN CATCH
				   ROLLBACK TRAN trans
					SET @msg = ERROR_MESSAGE();
				END CATCH
			END')
END
GO
