USE master;  
GO 
	/***************************************
	*Descripcion: SYSDATABASES dbschedule
	*Fecha Crea: 30/10/2017
	*Fecha Mod: 30/10/2017
	*Descripcion:  Elimina la base de datos dbschedule
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Proceso  
	*****************************************/
IF EXISTS(SELECT * FROM DBO.SYSDATABASES WHERE NAME = 'dbschedule')
DROP DATABASE dbschedule
