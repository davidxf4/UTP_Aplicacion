USE master;  
GO 
	/***************************************
	*Descripcion: SYSDATABASES dbschedule
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Descripcion:  Crea la tabla dbschedule
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
IF EXISTS(SELECT * FROM DBO.SYSDATABASES WHERE NAME = 'dbschedule')
DROP DATABASE dbschedule
CREATE DATABASE dbschedule
ON
( NAME = schedule_dat,  
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\scheduledat.mdf',  
    SIZE = 10,  
    MAXSIZE = 50,  
    FILEGROWTH = 5 )  
LOG ON  
( NAME = schedule_log,  
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\schedulelog.ldf',  
    SIZE = 5MB,  
    MAXSIZE = 25MB,  
    FILEGROWTH = 5MB ) ;
GO