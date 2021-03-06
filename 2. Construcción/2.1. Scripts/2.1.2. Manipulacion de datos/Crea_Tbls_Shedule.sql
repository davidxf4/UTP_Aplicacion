USE [dbschedule]
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbaula')
DROP TABLE tbaula
BEGIN
	/***************************************
	*Descripcion: Tabla Aula
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	Id :      	  Id Tabla Aula
	*					nombre:  	  Nombre del Aula
	*					laboratorio:  Requiere Laboratorio
	*					Activo:		  Aula se encuentra Activa o Inactiva
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbaula](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NULL,
	[laboratorio] [tinyint] NULL,
	[nroAsientos] [int] NULL,
	[Activo] [tinyint] NULL CONSTRAINT [DF_tbaula_Activo]  DEFAULT ((1)),
 CONSTRAINT [PK_tbaula] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbclase')
DROP TABLE tbclase
BEGIN
	/***************************************
	*Descripcion: Tabla Clase
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	Id :      	  Id Tabla Clase
	*					Profesor:	  (Fk) de la tabla profesor
	*					Curso:        (Fk) de la tabla Curso
 	*					Duracion:  	  Duracion de la clase
	*					Laboratorio:  Requiere Laboratorio
	*					Activo:		  Clase se encuentra Activa o Inactiva
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbclase](
	[Id] [int] NOT NULL,
	[Profesor] [int] NOT NULL,
	[Curso] [int] NOT NULL,
	[Duracion] [int] NOT NULL,
	[Laboratorio] [tinyint] NOT NULL,
	[Activo] [tinyint] NOT NULL
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbclasegrupo')
DROP TABLE tbclasegrupo
BEGIN
	/***************************************
	*Descripcion: Tabla clasegrupo
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	Clase :   	Referencia de la tabla Clase
	*					Grupo:	  	Referencia de la tabla GrupoEstudiante
	*					Activo:		Clase se encuentra Activa o Inactiva
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbclasegrupo](
	[Clase] [int] NOT NULL,
	[Grupo] [int] NOT NULL,
	[Activo] [tinyint] NOT NULL
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbcurso')
DROP TABLE tbcurso
BEGIN
	/***************************************
	*Descripcion: Tabla curso
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	Id :   		Id Tabla curso
	*					nombre:	  	Nombre Curso
	*					activo:		Curso se encuentra Activo o Inactivo
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbcurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[activo] [tinyint] NOT NULL CONSTRAINT [DF_tbcurso_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_tbcurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbgrupoestudiante')
DROP TABLE tbgrupoestudiante
BEGIN
	/***************************************
	*Descripcion: Tabla grupoestudiante
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	Id :   			Id Tabla grupoestudiante
	*					nombre:	  	  	Nombre del grupoestudiante
	*					nroEstudiante:	Nro de estudiantes asignados
	*					activo:			grupoestudiante se encuentra Activo o Inactivo
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbgrupoestudiante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[nroEstudiante] [int] NOT NULL,
	[activo] [tinyint] NOT NULL CONSTRAINT [DF_tbgrupoestudiante_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_tbgrupoestudiante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbhorario')
DROP TABLE tbhorario
BEGIN
	/***************************************
	*Descripcion: Tabla horario
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	Id :   			Id Tabla horario
	*					idAula:	  	  	Referencia de la tabla Aula
	*					idClaseCurso:	Referencia de la tabla Clase
	*					hora:			hora asignada
	*					dia:			dia asignado
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbhorario](
	[Id] [int] NOT NULL,
	[idAula] [int] NOT NULL,
	[idClaseCurso] [int] NOT NULL,
	[hora] [time](7) NOT NULL,
	[dia] [date] NOT NULL
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbprofesor')
DROP TABLE tbprofesor
BEGIN
	/***************************************
	*Descripcion: Tabla profesor
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	Id :   		Id Tabla profesor
	*					nombre:	  	nombre profesor
	*					activo:		profesor se encuentra Activo o Inactivo
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbprofesor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[activo] [tinyint] NOT NULL CONSTRAINT [DF_tbprofesor_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_tbprofesor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbusuario')
DROP TABLE tbusuario
BEGIN
	/***************************************
	*Descripcion: Tabla usuario
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Nombre Columnas: 	id_us :   		Id Tabla usuario
	*					nombres_us:	  	nombre del usuario
	*					apellidos_us:	apellido del usuario
	*					dni_us:			Nro Dni del Usuario
	*					email_us:		Email del Usuario
	*					clave_us:		Clave de acceso del Usuario
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
CREATE TABLE [dbo].[tbusuario](
	[id_us] [int] IDENTITY(1,1) NOT NULL,
	[nombres_us] [varchar](150) NOT NULL,
	[apellidos_us] [varchar](150) NOT NULL,
	[dni_us] [varchar](50) NOT NULL,
	[email_us] [varchar](250) NOT NULL,
	[clave_us] [varbinary](250) NOT NULL,
 CONSTRAINT [PK_tbusuario] PRIMARY KEY CLUSTERED 
(
	[id_us] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = 'tbutilidad')
DROP TABLE tbutilidad
CREATE TABLE [dbo].[tbutilidad](
	[Id_ut] [int] IDENTITY(1,1) NOT NULL,
	[nroAsientos_ut] [tinyint] NOT NULL,
	[nroEstudiante_ut] [tinyint] NOT NULL,
	[durClase_ut] [tinyint] NOT NULL,
	[horClase_ut] [tinyint] NOT NULL,
 CONSTRAINT [PK_tbUtilidad] PRIMARY KEY CLUSTERED 
(
	[Id_ut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO