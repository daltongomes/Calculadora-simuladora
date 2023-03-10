USE [calculadora_simuladora]
GO
/****** Object:  Table [dbo].[simulacao_calculadora_juros]    Script Date: 23/02/2023 22:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[simulacao_calculadora_juros](
	[id_simulacao] [int] IDENTITY(1,1) NOT NULL,
	[valor_inicial] [decimal](15, 2) NOT NULL,
	[valor_aporte_mensal] [decimal](15, 2) NOT NULL,
	[taxa_juros] [decimal](10, 4) NOT NULL,
	[quantidade_tempo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_simulacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_simulacao]    Script Date: 23/02/2023 22:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_simulacao](
	[id_simulacao] [int] NOT NULL,
	[nome_pessoa] [varchar](100) NOT NULL,
	[descricao] [varchar](200) NULL,
	[data_simulacao] [date] NOT NULL
) ON [PRIMARY]
GO
