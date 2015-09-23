CREATE TABLE [dbo].[CategoriasOperadores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Abreviatura] [nvarchar](10) NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Prioridad] [int] NULL,
	[FechaAlta] [datetime] NULL,
	[SucursalAltaId] [int] NULL,
	[OperadorAltaId] [uniqueidentifier] NULL,
	[FechaModificacion] [datetime] NULL,
	[SucursalModificacionId] [int] NULL,
	[OperadorModificacionId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_CategoriasOperadores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO