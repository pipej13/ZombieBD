SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eliminados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ZombieId] [int] NOT NULL,
	[SimulacionId] [int] NOT NULL,
	[PuntosObtenidos] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Eliminados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Eliminados] ADD  CONSTRAINT [DF_Eliminados_Timestamp]  DEFAULT (getdate()) FOR [Timestamp]
GO
ALTER TABLE [dbo].[Eliminados]  WITH CHECK ADD  CONSTRAINT [FK_Eliminados_Simulaciones] FOREIGN KEY([SimulacionId])
REFERENCES [dbo].[Simulaciones] ([Id])
GO
ALTER TABLE [dbo].[Eliminados] CHECK CONSTRAINT [FK_Eliminados_Simulaciones]
GO
ALTER TABLE [dbo].[Eliminados]  WITH CHECK ADD  CONSTRAINT [FK_Eliminados_Zombies] FOREIGN KEY([ZombieId])
REFERENCES [dbo].[Zombies] ([Id])
GO
ALTER TABLE [dbo].[Eliminados] CHECK CONSTRAINT [FK_Eliminados_Zombies]
GO
USE [master]
GO
ALTER DATABASE [ZombieDB] SET  READ_WRITE 
GO