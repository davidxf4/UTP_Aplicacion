USE [dbschedule]
GO
/****** Object:  Table [dbo].[tbaula]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbclase]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbclase](
	[Id] [int] NOT NULL,
	[Profesor] [int] NOT NULL,
	[Curso] [int] NOT NULL,
	[Duracion] [int] NOT NULL,
	[Laboratorio] [tinyint] NOT NULL,
	[Activo] [tinyint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbclasegrupo]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbclasegrupo](
	[Clase] [int] NOT NULL,
	[Grupo] [int] NOT NULL,
	[Activo] [tinyint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbcurso]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbcurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[activo] [tinyint] NOT NULL CONSTRAINT [DF_tbcurso_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_tbcurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbgrupoestudiante]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbhorario]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbhorario](
	[Id] [int] NOT NULL,
	[idAula] [int] NOT NULL,
	[idClaseCurso] [int] NOT NULL,
	[hora] [time](7) NOT NULL,
	[dia] [date] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbprofesor]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbprofesor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](150) NOT NULL,
	[activo] [tinyint] NOT NULL CONSTRAINT [DF_tbprofesor_activo]  DEFAULT ((1)),
 CONSTRAINT [PK_tbprofesor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbusuario]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[cambiarClave]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[cambiarClave]
	@id int,
	@claveanterior varchar(50),
	@clavenueva varchar(50),
	@msg as varchar(100) OUTPUT

AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
	if (select count(*) from  tbusuario where PWDCOMPARE(@claveanterior,clave_us) = 1  and id_us = @id) = 1
	begin
	    update tbusuario set clave_us = PWDENCRYPT(@clavenueva) where id_us = @id;
	end
	COMMIT TRAN trans
	END TRY
	BEGIN CATCH
       Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[existeUsuario]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[existeUsuario]
(
	@email varchar(50),
	@clave varchar(16)
)
as
begin
	select 1 from tbusuario where email_us=@email and  PWDCOMPARE(@clave, clave_us) = 1
end
GO
/****** Object:  StoredProcedure [dbo].[insertAula]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertAula]
	@nombre varchar(150),
	@laboratorio tinyint,
	@nroAsientos int,
	@msg as varchar(100) OUTPUT
AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		insert into tbAula(nombre,laboratorio,nroAsientos)
			values(@nombre,@laboratorio,@nroAsientos)
        COMMIT TRAN trans
	END TRY
	BEGIN CATCH
        Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[insertCurso]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertCurso]
	@nombre varchar(150),
	@msg as varchar(100) OUTPUT
AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		insert into tbcurso(nombre)
			values(@nombre)
        COMMIT TRAN trans
	END TRY
	BEGIN CATCH
        Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[insertGrupoEstudiante]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertGrupoEstudiante]
	@nombre varchar(150),
	@nroestudiante int,
	@msg as varchar(100) OUTPUT
AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		insert into tbgrupoestudiante(nombre,nroEstudiante)
			values(@nombre,@nroestudiante)
        COMMIT TRAN trans
	END TRY
	BEGIN CATCH
        Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[insertProfesor]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertProfesor]
	@nombre varchar(150),
	@msg as varchar(100) OUTPUT
AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		insert into tbProfesor(nombre)
			values(@nombre)
        COMMIT TRAN trans
	END TRY
	BEGIN CATCH
        Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[insertUsuario]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertUsuario]
	@nombres varchar(250),
	@apellidos varchar(250),
	@dni varchar(8),
	@email varchar(50),
	@clave varchar(16),
	@msg as varchar(100) OUTPUT
AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		insert into tbusuario(nombres_us, apellidos_us, dni_us, email_us, clave_us)
			values(@nombres, @apellidos, @dni, @email, PWDENCRYPT(@clave))
        COMMIT TRAN trans
	END TRY
	BEGIN CATCH
        Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[loginUsuario]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[loginUsuario]
(
	@email varchar(50),
	@clave varchar(16)
)
as
begin
	if exists(select 1 from tbusuario where email_us=@email and  PWDCOMPARE(@clave, clave_us) = 1) 
	begin
		select id_us, nombres_us, apellidos_us, dni_us, email_us 
		from tbusuario where email_us=@email and  PWDCOMPARE(@clave, clave_us) = 1
	end
end
GO
/****** Object:  StoredProcedure [dbo].[selectAula]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectAula]	 
AS
BEGIN
	SELECT  Id, nombre as 'Nombre Aula', 
	"Laboratorio" =
	CASE
	  WHEN laboratorio = 1 THEN 'Si'
	  WHEN laboratorio = 0 THEN 'No'
	END,
	nroAsientos as 'Nro Asientos',
	"Activo" =
	CASE
	  WHEN Activo = 1 THEN 'Si'
	  WHEN Activo = 0 THEN 'No'
	END
	FROM tbAula order by Id asc
END

GO
/****** Object:  StoredProcedure [dbo].[selectClaseGrupo]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectClaseGrupo]
	@clase int
AS
BEGIN
	SELECT  dbo.tbclasegrupo.Clase, dbo.tbclasegrupo.Grupo , tbgrupoestudiante.nombre , dbo.tbclasegrupo.activo
	FROM   dbo.tbclasegrupo
	INNER JOIN dbo.tbgrupoestudiante on dbo.tbclasegrupo.Grupo=dbo.tbgrupoestudiante.Id
	where dbo.tbclasegrupo.Clase = @clase order by dbo.tbclasegrupo.Grupo
END
GO
/****** Object:  StoredProcedure [dbo].[selectCurso]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectCurso]	 
AS
BEGIN
	SELECT  Id, nombre as 'Nombre Curso', "Activo" =
	 CASE
	  WHEN activo = 1 THEN 'Si'
	  WHEN activo = 0 THEN 'No'
	END
	FROM tbcurso  order by Id asc
END

GO
/****** Object:  StoredProcedure [dbo].[selectGrupoEstudiante]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectGrupoEstudiante]	 
AS
BEGIN
	SELECT  Id, nombre as 'Nombre GrupoEstudiante',nroEstudiante as 'Nro Estudiante', "Activo" =
	 CASE
	  WHEN activo = 1 THEN 'Si'
	  WHEN activo = 0 THEN 'No'
	END
	FROM tbgrupoestudiante  order by Id asc
END
GO
/****** Object:  StoredProcedure [dbo].[selectListadeClases]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectListadeClases]	 
AS
BEGIN
	SELECT tbcurso.nombre + '  -------  ' + tbprofesor.nombre AS ListadeClases, tbclase.Id,tbclase.Curso,tbclase.Profesor,tbclase.Duracion,tbclase.Laboratorio,tbclase.Activo
	FROM tbclase INNER JOIN
    tbcurso ON tbclase.Curso = tbcurso.Id INNER JOIN
    tbprofesor ON tbClase.Profesor = tbprofesor.Id
END

GO
/****** Object:  StoredProcedure [dbo].[selectProfesor]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[selectProfesor]	 
AS
BEGIN
	SELECT  Id, nombre as 'Nombre Profesor', "Activo" =
	CASE
	  WHEN activo = 1 THEN 'Si'
	  WHEN activo = 0 THEN 'No'
	END
	FROM tbprofesor order by Id asc
END

GO
/****** Object:  StoredProcedure [dbo].[updateAula]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateAula]
	@id int,
	@nombre varchar(150),
	@laboratorio tinyint,
	@nroAsientos int,
	@activo tinyint,
	@msg as varchar(100) OUTPUT
AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		update tbAula set nombre = @nombre,laboratorio=@laboratorio, nroAsientos=@nroAsientos, activo=@activo
		where Id = @id	
		COMMIT TRAN trans
	END TRY
	BEGIN CATCH
         Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[updateClaseGrupo]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateClaseGrupo]
	@clase int,
	@grupo int,
	@activo int,
	@msg as varchar(100) OUTPUT
AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		update tbclasegrupo set Activo = @activo
		where Clase = @clase and Grupo = @grupo	
		COMMIT TRAN trans
	END TRY
	BEGIN CATCH
         Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[updateCurso]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateCurso]
	@id int,
	@nombre varchar(250),
	@activo tinyint,
	@msg as varchar(100) OUTPUT

AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		update tbcurso set nombre = @nombre, activo =@activo
		where Id = @id	
		COMMIT TRAN trans
	END TRY
	BEGIN CATCH
         Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[updateGrupoEstudiante]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateGrupoEstudiante]
	@id int,
	@nombre varchar(150),
	@nroestudiante int,
	@activo tinyint,
	@msg as varchar(100) OUTPUT

AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		update tbgrupoestudiante set nombre = @nombre, nroEstudiante = @nroestudiante , activo =@activo
		where Id = @id	
		COMMIT TRAN trans
	END TRY
	BEGIN CATCH
         Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[updateProfesor]    Script Date: 5/08/2017 17:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateProfesor]
	@id int,
	@nombre varchar(250),
	@activo tinyint,
	@msg as varchar(100) OUTPUT

AS
BEGIN
	BEGIN TRAN trans
	BEGIN TRY
		update tbprofesor set nombre = @nombre, activo =@activo
		where Id = @id	
		COMMIT TRAN trans
	END TRY
	BEGIN CATCH
         Rollback TRAN trans
		SET @msg = ERROR_MESSAGE();
	END CATCH
END
GO
