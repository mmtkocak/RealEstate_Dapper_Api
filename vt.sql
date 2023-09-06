USE [DbDapperRealEstate]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 24.08.2023 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CategoryStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 24.08.2023 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Comment] [nvarchar](2000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 24.08.2023 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Mail] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](100) NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 24.08.2023 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[CoverImage] [nvarchar](250) NULL,
	[City] [nvarchar](100) NULL,
	[District] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[ProductCategory] [int] NULL,
	[EmployeeID] [int] NULL,
	[Type] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 24.08.2023 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDetails](
	[ProductDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ProductSize] [int] NULL,
	[BedRoomCount] [tinyint] NULL,
	[BathCount] [tinyint] NULL,
	[RoomCount] [tinyint] NULL,
	[GarageSize] [tinyint] NULL,
	[BuildYear] [char](4) NULL,
	[Price] [decimal](18, 2) NULL,
	[Location] [nvarchar](500) NULL,
	[VideoUrl] [nvarchar](500) NULL,
	[ProductId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 24.08.2023 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [nvarchar](100) NULL,
	[ServiceStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhoWeAreDetail]    Script Date: 24.08.2023 17:36:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WhoWeAreDetail](
	[WhoWeAreDetailID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Subtitle] [nvarchar](100) NULL,
	[Description1] [nvarchar](500) NULL,
	[Description2] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[WhoWeAreDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (1, N'Villa', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (2, N'Daire', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (3, N'Yazlık', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (4, N'Bahçeli Yazlık', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (5, N'Tarla', 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [Name], [Title], [Mail], [PhoneNumber], [ImageUrl], [Status]) VALUES (1, N'Ali Çınar', N'Mühendis', N'deneme', N'aa', N'1', 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (1, N'Deniz Manzaralı Villa', CAST(350000.00 AS Decimal(18, 2)), N'1.jpg', N'Antalya', N'Konyaaltı', N'Menekşe Sokak No:20', N'test', 1, 1, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (2, N'Sahibinden Yazlık', CAST(500000.00 AS Decimal(18, 2)), N'2.jpg', N'İzmir', N'Dikili', N'Papatya Sokak No:10', N'test', 3, 1, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (3, N'Ucuz Fiyatlı Daire', CAST(180000.00 AS Decimal(18, 2)), N'3.jpg', N'Balıkesir', N'Burhaniye', N'Çiçek Caddesi No:3', N'test', 3, 1, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (4, N'Uygun Fiyatlı Daire', CAST(250000.00 AS Decimal(18, 2)), N'4.jpg', N'Ankara', N'Mamak', N'Cumhuriyet Sokak No:1', N'test', 3, 1, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (5, N'Havuzlu Villa', CAST(4500.00 AS Decimal(18, 2)), N'5.jpg', N'Konya', N'Meram', N'Cumhuriyet Sokak No:18', N'test', 3, 1, N'Kiralık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (6, N'Pariste Daire', CAST(175000.00 AS Decimal(18, 2)), N'6.jpg', N'İstanbul', N'Bebek', N'Güneş Caddesi No:40', N'test', 3, 1, N'Satılık')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[WhoWeAreDetail] ON 

INSERT [dbo].[WhoWeAreDetail] ([WhoWeAreDetailID], [Title], [Subtitle], [Description1], [Description2]) VALUES (1, N'Biz Kimiz ?', N'deneeme', N'açıklama 1', N'açıklama 2')
SET IDENTITY_INSERT [dbo].[WhoWeAreDetail] OFF
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([ProductCategory])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Employee] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Employee]
GO
ALTER TABLE [dbo].[ProductDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductDetails_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[ProductDetails] CHECK CONSTRAINT [FK_ProductDetails_Product]
GO
