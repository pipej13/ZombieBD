USE [ZombieDB]
GO
/****** Object:  Trigger [dbo].[trg_EliminadosAudit_Insert]    Script Date: 28/05/2025 9:37:08 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER trigger [dbo].[trg_EliminadosAudit_Insert]
on [dbo].[Eliminados]
after insert
as
begin

insert into Eliminados_Audit(Id,ZombieId,SimulacionId,PuntosObtenidos,Timestamp,DateAudit)
select i.Id,i.ZombieId,i.SimulacionId,i.PuntosObtenidos,i.Timestamp, getdate()
from inserted i;

end;