USE [DbDapperRealEstate]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[AddressTitle1] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[AddressTitle2] [nvarchar](100) NULL,
	[Phone1] [nvarchar](50) NULL,
	[Phone2] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Location] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BottomGrid]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BottomGrid](
	[BottomGridID] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[BottomGridID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2.11.2023 16:46:31 ******/
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
/****** Object:  Table [dbo].[Client]    Script Date: 2.11.2023 16:46:31 ******/
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
/****** Object:  Table [dbo].[Contact]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Subject] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Message] [nvarchar](max) NULL,
	[SendDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2.11.2023 16:46:31 ******/
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
/****** Object:  Table [dbo].[MailSubscribe]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailSubscribe](
	[MailID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PopularLocation]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PopularLocation](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2.11.2023 16:46:31 ******/
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
/****** Object:  Table [dbo].[ProductDetails]    Script Date: 2.11.2023 16:46:31 ******/
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
/****** Object:  Table [dbo].[Service]    Script Date: 2.11.2023 16:46:31 ******/
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
/****** Object:  Table [dbo].[SocialMedia]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialMedia](
	[SocialMediaID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Icon] [nvarchar](100) NULL,
	[SocialMediaUrl] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[SocialMediaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubFeature]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubFeature](
	[SubFeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[TopTitle] [nvarchar](100) NULL,
	[MainTitle] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
	[SubTitle] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubFeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 2.11.2023 16:46:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonial](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NULL,
	[Comment] [nvarchar](500) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WhoWeAreDetail]    Script Date: 2.11.2023 16:46:31 ******/
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
SET IDENTITY_INSERT [dbo].[BottomGrid] ON 

INSERT [dbo].[BottomGrid] ([BottomGridID], [Icon], [Title], [Description]) VALUES (1, N'fa fa-home', N'Bir Ev Satın Alın', N'loerem')
INSERT [dbo].[BottomGrid] ([BottomGridID], [Icon], [Title], [Description]) VALUES (2, N'fa fa-home', N'Hayalinizdeki Evi Satın Alın!', N'lorem')
INSERT [dbo].[BottomGrid] ([BottomGridID], [Icon], [Title], [Description]) VALUES (3, N'fa fa-home', N'Popüler Konumları Görün', N'lorem')
SET IDENTITY_INSERT [dbo].[BottomGrid] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (1, N'Villa', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (2, N'Daire', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (3, N'Yazlık', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (4, N'Bahçeli Yazlık', 0)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (5, N'Tarla', 1)
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryStatus]) VALUES (1003, N'testtt', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeeID], [Name], [Title], [Mail], [PhoneNumber], [ImageUrl], [Status]) VALUES (1, N'Ali Çınar', N'Mühendis', N'deneme@deneme.com', N'aa', N'1', 0)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Title], [Mail], [PhoneNumber], [ImageUrl], [Status]) VALUES (2, N'Mehmet KOÇAK', N'Yazılımcı', N'deneme@deneme.com', N'aa', N'1', 1)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Title], [Mail], [PhoneNumber], [ImageUrl], [Status]) VALUES (3, N'Ali Deneme', N'Mühendis', N'deneme@deneme.com', N'aa', N'1', 1)
INSERT [dbo].[Employee] ([EmployeeID], [Name], [Title], [Mail], [PhoneNumber], [ImageUrl], [Status]) VALUES (4, N'Veli Dertsiz', N'Mühendis', N'deneme@deneme.com', N'5555555555', N'1', 0)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[PopularLocation] ON 

INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (1, N'Budapeşte', N'budapest.jpg')
INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (2, N'Dresden', N'dresden.jpg')
INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (3, N'Lviv', N'lviv.jpg')
INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (4, N'Lyon', N'lyon.jpg')
INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (5, N'Miami', N'miami.jpg')
INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (6, N'Montenegro', N'montenegro.jpg')
INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (7, N'Roma', N'rome.jpg')
INSERT [dbo].[PopularLocation] ([LocationID], [CityName], [ImageUrl]) VALUES (8, N'Sofya', N'sofia.jpg')
SET IDENTITY_INSERT [dbo].[PopularLocation] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (1, N'Deniz Manzaralı Villa', CAST(350000.00 AS Decimal(18, 2)), N'1.jpg', N'Antalya', N'Konyaaltı', N'Menekşe Sokak No:20', N'test', 1, 1, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (2, N'Sahibinden Yazlık', CAST(500000.00 AS Decimal(18, 2)), N'2.jpg', N'İzmir', N'Dikili', N'Papatya Sokak No:10', N'test', 3, 2, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (3, N'Ucuz Fiyatlı Daire', CAST(180000.00 AS Decimal(18, 2)), N'3.jpg', N'Balıkesir', N'Burhaniye', N'Çiçek Caddesi No:3', N'test', 3, 2, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (4, N'Uygun Fiyatlı Daire', CAST(250000.00 AS Decimal(18, 2)), N'4.jpg', N'Ankara', N'Mamak', N'Cumhuriyet Sokak No:1', N'test', 3, 2, N'Satılık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (5, N'Havuzlu Villa', CAST(4500.00 AS Decimal(18, 2)), N'5.jpg', N'Konya', N'Meram', N'Cumhuriyet Sokak No:18', N'test', 3, 1, N'Kiralık')
INSERT [dbo].[Product] ([ProductId], [Title], [Price], [CoverImage], [City], [District], [Address], [Description], [ProductCategory], [EmployeeID], [Type]) VALUES (6, N'Pariste Daire', CAST(175000.00 AS Decimal(18, 2)), N'6.jpg', N'İstanbul', N'Bebek', N'Güneş Caddesi No:40', N'test', 3, 1, N'Satılık')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDetails] ON 

INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductSize], [BedRoomCount], [BathCount], [RoomCount], [GarageSize], [BuildYear], [Price], [Location], [VideoUrl], [ProductId]) VALUES (1, 110, 2, 1, 3, 0, N'2020', CAST(350000.00 AS Decimal(18, 2)), N'-', N'-', 1)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductSize], [BedRoomCount], [BathCount], [RoomCount], [GarageSize], [BuildYear], [Price], [Location], [VideoUrl], [ProductId]) VALUES (2, 85, 4, 0, 3, 0, N'2019', CAST(500000.00 AS Decimal(18, 2)), N'-', N'-', 2)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductSize], [BedRoomCount], [BathCount], [RoomCount], [GarageSize], [BuildYear], [Price], [Location], [VideoUrl], [ProductId]) VALUES (3, 95, 2, 1, 4, 0, N'2023', CAST(180000.00 AS Decimal(18, 2)), N'-', N'-', 3)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductSize], [BedRoomCount], [BathCount], [RoomCount], [GarageSize], [BuildYear], [Price], [Location], [VideoUrl], [ProductId]) VALUES (4, 105, 3, 2, 5, 1, N'2021', CAST(250000.00 AS Decimal(18, 2)), N'-', N'-', 4)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductSize], [BedRoomCount], [BathCount], [RoomCount], [GarageSize], [BuildYear], [Price], [Location], [VideoUrl], [ProductId]) VALUES (5, 95, 1, 3, 2, 1, N'2022', CAST(4500.00 AS Decimal(18, 2)), N'-', N'-', 5)
INSERT [dbo].[ProductDetails] ([ProductDetailId], [ProductSize], [BedRoomCount], [BathCount], [RoomCount], [GarageSize], [BuildYear], [Price], [Location], [VideoUrl], [ProductId]) VALUES (6, 80, 2, 1, 4, 1, N'2020', CAST(175000.00 AS Decimal(18, 2)), N'-', N'-', 6)
SET IDENTITY_INSERT [dbo].[ProductDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServiceStatus]) VALUES (1, N'Uzman Ekip', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServiceStatus]) VALUES (2, N'Konuma Göre Daire', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServiceStatus]) VALUES (3, N'Sosyal Sorumluluk', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServiceStatus]) VALUES (4, N'Güvenilir Teminat', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServiceStatus]) VALUES (5, N'7/24 Destek', 1)
INSERT [dbo].[Service] ([ServiceID], [ServiceName], [ServiceStatus]) VALUES (6, N'Uygun Ödeme Seçenekleri', 1)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Testimonial] ON 

INSERT [dbo].[Testimonial] ([TestimonialID], [NameSurname], [Title], [Comment], [Status]) VALUES (1, N'Mehmet KOÇAK', N'Yazılım Mühendisi', N'asdasd', 1)
INSERT [dbo].[Testimonial] ([TestimonialID], [NameSurname], [Title], [Comment], [Status]) VALUES (2, N'KT', N'Yazılım Mühendisi', N'asdasd1', 1)
INSERT [dbo].[Testimonial] ([TestimonialID], [NameSurname], [Title], [Comment], [Status]) VALUES (3, N'FÇ', N'Yazılım Mühendisi', N'asdasd2', 1)
INSERT [dbo].[Testimonial] ([TestimonialID], [NameSurname], [Title], [Comment], [Status]) VALUES (4, N'Ayşe TARAFSIZ', N'MAkine Mühendisi', N'asdasd3', 1)
INSERT [dbo].[Testimonial] ([TestimonialID], [NameSurname], [Title], [Comment], [Status]) VALUES (5, N'Mert', N'Yazılım Mühendisi', N'asdasd4', 1)
INSERT [dbo].[Testimonial] ([TestimonialID], [NameSurname], [Title], [Comment], [Status]) VALUES (6, N'KAZIM', N'Yazılım Mühendisi', N'asdasd5', 1)
SET IDENTITY_INSERT [dbo].[Testimonial] OFF
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
