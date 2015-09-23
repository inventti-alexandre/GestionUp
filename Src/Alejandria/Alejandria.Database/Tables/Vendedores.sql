CREATE TABLE [dbo].[Vendedores](
	[Id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Abreviatura] [nvarchar](10) NULL,
	[FechaGeneracion] [datetime] NULL,
	[OperadorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Vendedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]

GO