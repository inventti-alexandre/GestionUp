CREATE TABLE [dbo].[Sucursales](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](30) NULL,
	[NombreCorto] [nvarchar](10) NULL,
	[ProvinciaId] [int] NULL,
	[LocalidadId] [int] NULL,
	[Direccion] [nvarchar](50) NULL,
	[TelPart] [nvarchar](20) NULL,
	[TelCel] [nvarchar](20) NULL,
	[Fax] [nvarchar](20) NULL,
	[Responsable] [nvarchar](30) NULL,
	[OperadorModificacionId] [uniqueidentifier] NULL,
	[FechaAlta] [datetime] NULL,
	[SucursalAltaId] [int] NULL,
	[OperadorAltaId] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[SucursalModificacionId] [int] NULL,
	[MaximoImporteVenta] [money] NOT NULL,
	[MaximoPorcentajeDescuento] [decimal](18, 2) NOT NULL,
	[MaximoNroLineasPorVenta] [int] NOT NULL,
	[SucursalNumero] [int] NULL,
 CONSTRAINT [PK_s00Sucursales] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Sucursales] ADD  DEFAULT ((1000)) FOR [MaximoImporteVenta]
GO

ALTER TABLE [dbo].[Sucursales] ADD  DEFAULT ((0)) FOR [MaximoPorcentajeDescuento]
GO

ALTER TABLE [dbo].[Sucursales] ADD  DEFAULT ((10)) FOR [MaximoNroLineasPorVenta]
GO

ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_Sucursales_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([Id])
GO

ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_Sucursales_Localidades]
GO

ALTER TABLE [dbo].[Sucursales]  WITH CHECK ADD  CONSTRAINT [FK_Sucursales_Provincias] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO

ALTER TABLE [dbo].[Sucursales] CHECK CONSTRAINT [FK_Sucursales_Provincias]
GO
