CREATE TABLE [dbo].[Clientes](
	[Id] [uniqueidentifier] NOT NULL,
	[SucursalId] [int] NULL,
	[Cuenta] [int] NULL,
	[Denominacion] [nvarchar](80) NULL,
	[Domicilio] [nchar](100) NULL,
	[DomicilioDoc] [nchar](100) NULL,
	[Telefono] [nchar](40) NULL,
	[Celular] [nchar](15) NULL,
	[Fax] [nchar](15) NULL,
	[Cuit] [nvarchar](11) NULL,
	[Mail] [nchar](40) NULL,
	[VendedorId] [int] NULL,
	[ProvinciaId] [int] NULL,
	[LocalidadId] [int] NULL,
	[CondicionVentaId] [int] NULL,
	[FechaNacimiento] [datetime] NULL,
	[PagoLocal] [bit] NULL,
	[ZonaId] [int] NULL,
	[TipoDocumentoId] [int] NULL,
	[CondicionIvaId] [int] NULL,
	[Contacto] [varchar](50) NULL,
	[ProfesionId] [int] NULL,
	[EspecialidadId] [int] NULL,
	[EstadoClienteId] [int] NULL,
	[AceptaConsig] [bit] NULL,
	[Imagen] [nvarchar](100) NULL,
	[Comentarios] [ntext] NULL,
	[Temp] [bit] NULL,
	[Recargo] [real] NULL,
	[Activo] [bit] NULL,
	[FechaAlta] [datetime] NULL,
	[OperadorAltaId] [uniqueidentifier] NULL,
	[SucursalAltaId] [int] NULL,
	[FechaModificacion] [datetime] NULL,
	[OperadorModificacionId] [uniqueidentifier] NULL,
	[SucursalModificacionId] [int] NULL,
	[MandarMail] [bit] NULL,
	[Llamar] [bit] NULL,
 CONSTRAINT [PK_s00Clientes_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO



ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [DF_Clientes_Id]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_CondicionIva] FOREIGN KEY([CondicionIvaId])
REFERENCES [dbo].[CondicionesIVA] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_CondicionIva]
GO

ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_CondicionVenta] FOREIGN KEY([CondicionVentaId])
REFERENCES [dbo].[CondicionesVenta] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_CondicionVenta]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_Especialidad] FOREIGN KEY([EspecialidadId])
REFERENCES [dbo].[Especialidades] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Especialidad]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_EstadoClienteId] FOREIGN KEY([EstadoClienteId])
REFERENCES [dbo].[EstadosCliente] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_EstadoClienteId]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_Localidad] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Localidad]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_OperadorAlta] FOREIGN KEY([OperadorAltaId])
REFERENCES [dbo].[Operadores] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_OperadorAlta]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_OperadorModificacion] FOREIGN KEY([OperadorModificacionId])
REFERENCES [dbo].[Operadores] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_OperadorModificacion]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_Profesion] FOREIGN KEY([ProfesionId])
REFERENCES [dbo].[Profesiones] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Profesion]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_Provincia] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Provincia]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_SucursalAlta] FOREIGN KEY([SucursalAltaId])
REFERENCES [dbo].[Sucursales] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_SucursalAlta]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_Sucursales] FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursales] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Sucursales]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_SucursalModificacion] FOREIGN KEY([SucursalModificacionId])
REFERENCES [dbo].[Sucursales] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_SucursalModificacion]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_TipoDocumento] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TiposDocumentosIdentidad] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_TipoDocumento]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_Vendedores] FOREIGN KEY([VendedorId])
REFERENCES [dbo].[Vendedores] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Vendedores]
GO

ALTER TABLE [dbo].[Clientes]  WITH NOCHECK ADD  CONSTRAINT [FK_Clientes_Zona] FOREIGN KEY([ZonaId])
REFERENCES [dbo].[Zonas] ([Id])
GO

ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Zona]
GO