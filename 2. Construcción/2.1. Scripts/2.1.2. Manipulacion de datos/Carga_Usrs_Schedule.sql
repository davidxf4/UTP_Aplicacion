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
IF EXISTS(SELECT nombres_us FROM tbusuario WHERE nombres_us = 'Admin')
DELETE FROM tbusuario WHERE nombres_us = 'Admin'
SET IDENTITY_INSERT [dbo].[tbusuario] OFF 
INSERT [dbo].[tbusuario] ([nombres_us], [apellidos_us], [dni_us], [email_us], [clave_us]) VALUES (N'Admin', N'Admin', N'71878512', N'admin@admin.com', 0x0200A9CAAC01596662390132B56CB5A3CE9E0BD8EB47D5057604583E4171E6131B9C600A123D3C766261A798812A3397D15957138B4E78CD311FA8279A6C35EE656BB6ACA7C7)
