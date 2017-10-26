USE [dbschedule]
GO
	/***************************************
	*Descripcion: User admin 
	*Fecha Crea: 24/07/2017
	*Fecha Mod: 9/08/2017
	*Descripcion:  Inserta el usuario administrador
	*Autor:	Henry Guzman - David Eguia
	*Cambios Importantes: Estandarizar Tabla  
	*****************************************/
IF EXISTS(SELECT Id_ut FROM tbutilidad WHERE Id_ut = 1)
DELETE FROM tbutilidad WHERE Id_ut = 1
SET IDENTITY_INSERT [dbo].[tbutilidad] ON 
INSERT [dbo].[tbutilidad] ([Id_ut], [nroAsientos_ut], [nroEstudiante_ut], [durClase_ut], [horClase_ut]) VALUES (1, 22, 20, 46, 48)
