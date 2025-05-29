SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eliminados_Audit](
	[EliminadosAudit_Id] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[ZombieId] [int] NOT NULL,
	[SimulacionId] [int] NOT NULL,
	[PuntosObtenidos] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[DateAudit] [datetime] NOT NULL,
 CONSTRAINT [PK_Eliminados_Audit] PRIMARY KEY CLUSTERED 
(
	[EliminadosAudit_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO