USE [dbschedule]
GO
IF EXISTS(SELECT nombres_us FROM tbusuario WHERE nombres_us = 'Admin')
DELETE FROM tbusuario WHERE nombres_us = 'Admin'
SET IDENTITY_INSERT [dbo].[tbusuario] OFF 
INSERT [dbo].[tbusuario] ([nombres_us], [apellidos_us], [dni_us], [email_us], [clave_us]) VALUES (N'Admin', N'Admin', N'71878512', N'admin@admin.com', 0x0200E4FD32130FA4929CB9DF4E43F4556190054E0F73DD0ACAF486CDEAB77917444CCD73CA8C01C18CEDEEF1799339236FD7C50979D04EBF259EDD1C7F14505970534892E606)
