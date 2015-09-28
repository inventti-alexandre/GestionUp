CREATE TABLE [dbo].[Operadores](
	[Id] [uniqueidentifier] NOT NULL,
	[Usuario] [nvarchar](10) NOT NULL,
	[Clave] [nvarchar](64) NULL,
	[VigenteDesde] [datetime] NULL,
	[VigenteHasta] [datetime] NULL,
	[PersonalId] [uniqueidentifier] NULL,
	[FechaAlta] [datetime] NULL,
	[SucursalAltaId] [int] NULL,
	[OperadorAltaId] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[OperadorModificacionId] [uniqueidentifier] NULL,
	[SucursalModificacionId] [int] NULL,
	[Habilitado] [bit] NOT NULL,
 CONSTRAINT [PK_Operadores_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Operadores] ADD  DEFAULT ((1)) FOR [Habilitado]
GO

ALTER TABLE [dbo].[Operadores]  WITH NOCHECK ADD  CONSTRAINT [FK_Operadores_Personal] FOREIGN KEY([PersonalId])
REFERENCES [dbo].[Personal] ([Id])
GO

ALTER TABLE [dbo].[Operadores] CHECK CONSTRAINT [FK_Operadores_Personal]
GO
