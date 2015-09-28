CREATE TABLE [dbo].[Especialidades](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ProfesionId] [int] NOT NULL,
	[FechaAlta] [datetime] NULL,
	[OperadorAltaId] [uniqueidentifier] NULL,
	[SucursalAltaId] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[OperadorModificacionId] [uniqueidentifier] NULL,
	[SucursalModificacionId] [int] NULL,
 CONSTRAINT [PK_EspecialidadesClientes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO



ALTER TABLE [dbo].[Especialidades]  WITH NOCHECK ADD  CONSTRAINT [FK_Especialidades_Profesion] FOREIGN KEY([ProfesionId])
REFERENCES [dbo].[Profesiones] ([Id])
GO

ALTER TABLE [dbo].[Especialidades] CHECK CONSTRAINT [FK_Especialidades_Profesion]
GO
