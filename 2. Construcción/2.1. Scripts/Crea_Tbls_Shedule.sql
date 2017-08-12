USE [dbschedule]
GO
/****** Object:  Table [dbo].[tbaula]    Script Date: 11/08/2017 14:15:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF EXISTS (SELECT * FROM sysobjects WHERE type = 'U' AND name = tbaula)
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
/****** Object:  Table [dbo].[tbclase]    Script Date: 11/08/2017 14:15:29 ******/
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
/****** Object:  Table [dbo].[tbclasegrupo]    Script Date: 11/08/2017 14:15:29 ******/
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
/****** Object:  Table [dbo].[tbcurso]    Script Date: 11/08/2017 14:15:29 ******/
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
/****** Object:  Table [dbo].[tbgrupoestudiante]    Script Date: 11/08/2017 14:15:29 ******/
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
/****** Object:  Table [dbo].[tbhorario]    Script Date: 11/08/2017 14:15:29 ******/
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
/****** Object:  Table [dbo].[tbprofesor]    Script Date: 11/08/2017 14:15:29 ******/
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
/****** Object:  Table [dbo].[tbusuario]    Script Date: 11/08/2017 14:15:29 ******/
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
