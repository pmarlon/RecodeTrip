CREATE DATABASE [RecodeTripDB]
GO
USE [RecodeTripDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/12/2021 18:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contato]    Script Date: 20/12/2021 18:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contato](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Telefone] [nvarchar](max) NULL,
	[Assunto] [nvarchar](max) NOT NULL,
	[Mensagem] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Contato] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinos]    Script Date: 20/12/2021 18:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NomeDestino] [nvarchar](max) NOT NULL,
	[Endereco] [nvarchar](max) NOT NULL,
	[LinkImg] [nvarchar](max) NOT NULL,
	[Descricao] [nvarchar](max) NULL,
 CONSTRAINT [PK_Destinos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promocoes]    Script Date: 20/12/2021 18:58:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promocoes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DestinoID] [int] NOT NULL,
	[avaliacao] [int] NOT NULL,
	[desconto] [int] NOT NULL,
	[valor] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Promocoes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211217205414_CriacaoBD', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211218174254_AddContato', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220215329_Correcao', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220215522_Correcao', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[Contato] ON 

INSERT [dbo].[Contato] ([ID], [Nome], [Email], [Telefone], [Assunto], [Mensagem]) VALUES (9, N'Antônio da Silva', N'Antoniosilva@email.com', N'(99) 99999-9999', N'Promoções', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc feugiat aliquet neque, lobortis fermentum justo euismod tristique.')
INSERT [dbo].[Contato] ([ID], [Nome], [Email], [Telefone], [Assunto], [Mensagem]) VALUES (10, N'Patric Marlon', N'pmarlon@email.com', N'99 9999-9999', N'Promoções', N'Gostaria de saber mais sobre as promoções para o fim de ano.')
INSERT [dbo].[Contato] ([ID], [Nome], [Email], [Telefone], [Assunto], [Mensagem]) VALUES (11, N'Ana Clara', N'anaclara@email.com', N'(11) 11111-1111', N'Destino', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc feugiat aliquet neque...')
INSERT [dbo].[Contato] ([ID], [Nome], [Email], [Telefone], [Assunto], [Mensagem]) VALUES (12, N'Samuel Ferreira', N'samufe@email.com', N'(55) 55555-5555', N'Assunto Aleatório', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce suscipit magna id tortor laoreet, eu feugiat ante tristique. Phasellus vel turpis malesuada orci efficitur pellentesque vitae ac ligula. Pellentesque bibendum lobortis sapien vel convallis. ')
SET IDENTITY_INSERT [dbo].[Contato] OFF
GO
SET IDENTITY_INSERT [dbo].[Destinos] ON 

INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (1, N'Praia da Pipa', N'Tibau do Sul, RN', N'https://www.viagenscinematograficas.com.br/wp-content/uploads/2018/03/Praia-de-Pipa-RN-O-que-Fazer-Capa-2.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (2, N'Paraty', N'Paraty, RJ', N'https://guiaviajarmelhor.com.br/cl_resize/5YONlSKlREgdJoyMbpwKisFub0a9ybMvQo-AuUcTQo8/rs:fill:500:0/g:ce/q:70/aHR0cHM6Ly9ndWlhdmlhamFybWVsaG9yLmNvbS5ici93cC1jb250ZW50L3VwbG9hZHMvMjAxOC8wMS9sdWdhcmVzLXBhcmEtY29uaGVjZXItZW0tUGFyYXR5LTYwMHgzMDAuanBn', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (3, N'Jalapão', N'Mateiros, TO', N'https://i2.wp.com/www.guiamundoafora.com/wp-content/uploads/2018/06/fervedouro-bela-vista-min.jpg?resize=780%2C542&ssl=1', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (4, N'Morro de São Paulo', N'Ilha de Tinharé, BA', N'https://www.viagenscinematograficas.com.br/wp-content/uploads/2017/02/Morro-de-SP-Melhores-Praias-28.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (5, N'Gramado', N'Gramado, RS', N'https://politanoviagens.com.br/wp-content/uploads/2019/10/gramado-rs-politano.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (6, N'Pontal do Atalaia', N'Arraial do Cabo, RJ', N'https://www.aprendizdeviajante.com/wp-content/uploads/2018/08/prainhaspontaldoatalaia.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (7, N'Fernando de Noronha', N'Arquipélago em Pernambuco', N'https://www.melhoresdestinos.com.br/wp-content/uploads/2021/03/fernando-de-noronha-capa-01-820x430.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (8, N' Porto de Galinhas', N'Ipojuca, PE', N'https://viagemeturismo.abril.com.br/wp-content/uploads/2016/12/foto-abre-pgalinhas011.jpg?quality=70&strip=info&w=836', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
INSERT [dbo].[Destinos] ([ID], [NomeDestino], [Endereco], [LinkImg], [Descricao]) VALUES (9, N'Maragogi', N'Maragogi, AL', N'https://maragogiresorts.com.br/wp-content/uploads/2019/03/gales-maragogi.jpg', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque et pulvinar justo. Nulla elementum vitae lectus nec vehicula. Nunc non accumsan dolor, vel rhoncus lectus.')
SET IDENTITY_INSERT [dbo].[Destinos] OFF
GO
SET IDENTITY_INSERT [dbo].[Promocoes] ON 

INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (5, 9, 5, 25, N'350,00')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (6, 7, 5, 20, N'499,00')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (7, 8, 5, 20, N'399,00')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (8, 6, 5, 30, N'299,90')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (9, 2, 4, 15, N'299,90')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (10, 4, 4, 23, N'349,90')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (11, 5, 4, 18, N'329,90')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (12, 1, 3, 24, N'299,90')
INSERT [dbo].[Promocoes] ([ID], [DestinoID], [avaliacao], [desconto], [valor]) VALUES (13, 3, 5, 10, N'399,90')
SET IDENTITY_INSERT [dbo].[Promocoes] OFF
GO
ALTER TABLE [dbo].[Contato] ADD  DEFAULT (N'') FOR [Nome]
GO
ALTER TABLE [dbo].[Contato] ADD  DEFAULT (N'') FOR [Email]
GO
ALTER TABLE [dbo].[Contato] ADD  DEFAULT (N'') FOR [Assunto]
GO
ALTER TABLE [dbo].[Contato] ADD  DEFAULT (N'') FOR [Mensagem]
GO
ALTER TABLE [dbo].[Destinos] ADD  DEFAULT (N'') FOR [NomeDestino]
GO
ALTER TABLE [dbo].[Destinos] ADD  DEFAULT (N'') FOR [Endereco]
GO
ALTER TABLE [dbo].[Destinos] ADD  DEFAULT (N'') FOR [LinkImg]
GO
ALTER TABLE [dbo].[Promocoes] ADD  DEFAULT (N'') FOR [valor]
GO
ALTER TABLE [dbo].[Promocoes]  WITH CHECK ADD  CONSTRAINT [FK_Promocoes_Destinos_DestinoID] FOREIGN KEY([DestinoID])
REFERENCES [dbo].[Destinos] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Promocoes] CHECK CONSTRAINT [FK_Promocoes_Destinos_DestinoID]
GO
