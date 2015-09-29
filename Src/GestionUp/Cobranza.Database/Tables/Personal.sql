CREATE TABLE [dbo].[Personal](
	[Id] [uniqueidentifier] NOT NULL,
	[ContactoId] [uniqueidentifier] NULL,
	[Nombre] [nvarchar](50) NULL,
	[Cuit] [nvarchar](50) NULL,
	[Domicilio] [nvarchar](100) NULL,
	[ProvinciaId] [int] NULL,
	[LocalidadId] [int] NULL,
	[CategoriaId] [int] NULL,
	[SucursalId] [int] NULL,
	[TipoLiquidacionId] [int] NULL,
	[Telefono] [nvarchar](50) NULL,
	[Celular] [nvarchar](50) NULL,
	[Fax] [nvarchar](50) NULL,
	[FechaAlta] [datetime] NULL,
	[HoraDesdeM] [char](4) NULL,
	[HoraHastaM] [char](4) NULL,
	[HoraDesdeT] [char](4) NULL,
	[HoraHastaT] [char](4) NULL,
	[OperadorAltaId] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[OperadorModificacionId] [uniqueidentifier] NULL,
	[SucursalAltaId] [int] NULL,
	[SucursalModificacionId] [int] NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_CategoriasOperadores] FOREIGN KEY([CategoriaId])
REFERENCES [dbo].[CategoriasOperadores] ([Id])
GO

ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_CategoriasOperadores]
GO