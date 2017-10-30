USE [dbschedule]
GO
IF EXISTS(SELECT * FROM sys.triggers WHERE name = 'TRSW_INSERTCLASEGRUPO')
DROP TRIGGER dbo.TRSW_INSERTCLASEGRUPO;
BEGIN
		EXEC('CREATE trigger [dbo].[TRSW_INSERTCLASEGRUPO] on [dbo].[tbClase] for insert
		AS
		BEGIN
			declare @id int
			select @id = inserted.id from inserted
			insert into tbclasegrupo  
			select @id, id, Activo from tbgrupoestudiante
		END')
END
GO
IF  EXISTS(SELECT * FROM sys.triggers WHERE name = 'TRSW_INSERTGRUPOCLASE')
DROP TRIGGER dbo.TRSW_INSERTGRUPOCLASE;
BEGIN 

		EXEC('CREATE trigger [dbo].[TRSW_INSERTGRUPOCLASE] on [dbo].[tbgrupoestudiante] for insert
			AS
			BEGIN
				declare @id int
				select @id = inserted.id from inserted
				insert into tbclasegrupo 
				select 
					c.Id, @id, 1
				from
					(select clase from tbclasegrupo
					group by clase) base
				right join tbClase c on base.Clase != c.Id
				union(
					select 
						base.Clase, @id, 1
					from
						(select clase from tbclasegrupo
						group by clase) base
				)
			END ')
END