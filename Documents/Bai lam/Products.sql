USE [Product]
GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 20/07/2023 08:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[catid] [int] IDENTITY(1,1) NOT NULL,
	[catname] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[catid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Detail]    Script Date: 20/07/2023 08:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Detail](
	[detailnum] [int] IDENTITY(1,1) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[orderqty] [int] NOT NULL,
	[proid] [int] NOT NULL,
	[ordernum] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[detailnum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 20/07/2023 08:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[ordernum] [int] IDENTITY(1,1) NOT NULL,
	[orderdate] [date] NOT NULL,
	[toaddress] [nvarchar](255) NOT NULL,
	[paymethod] [nvarchar](50) NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[status] [char](20) NOT NULL,
	[userid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ordernum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20/07/2023 08:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[proid] [int] IDENTITY(1,1) NOT NULL,
	[proname] [nvarchar](255) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[stock] [decimal](10, 2) NOT NULL,
	[image] [varchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[catid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[proid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20/07/2023 08:15:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[username] [char](30) NOT NULL,
	[password] [char](60) NOT NULL,
	[fullname] [nvarchar](30) NOT NULL,
	[phone] [char](20) NOT NULL,
	[email] [char](50) NOT NULL,
	[address] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorie] ON 

INSERT [dbo].[Categorie] ([catid], [catname]) VALUES (1, N'Áo')
INSERT [dbo].[Categorie] ([catid], [catname]) VALUES (2, N'Quần')
INSERT [dbo].[Categorie] ([catid], [catname]) VALUES (3, N'Váy')
INSERT [dbo].[Categorie] ([catid], [catname]) VALUES (4, N'Đồ bộ')
INSERT [dbo].[Categorie] ([catid], [catname]) VALUES (5, N'Đồ lót')
SET IDENTITY_INSERT [dbo].[Categorie] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (1, N'Áo sơ mi tay ngắn', CAST(795000.00 AS Decimal(10, 2)), CAST(60.00 AS Decimal(10, 2)), N'SanPham1.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (2, N'Áo Polo', CAST(650000.00 AS Decimal(10, 2)), CAST(90.00 AS Decimal(10, 2)), N'SanPham2.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (4, N'Áo T-Shirt', CAST(750000.00 AS Decimal(10, 2)), CAST(120.00 AS Decimal(10, 2)), N'SanPham3.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (5, N'Áo Tank-top', CAST(550000.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), N'SanPham4.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (6, N'Áo Blazer', CAST(890000.00 AS Decimal(10, 2)), CAST(65.00 AS Decimal(10, 2)), N'SanPham5.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (7, N'Áo khoác', CAST(1200000.00 AS Decimal(10, 2)), CAST(46.00 AS Decimal(10, 2)), N'SanPham6.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (8, N'Áo len', CAST(320000.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)), N'SanPham7.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (9, N'Áo nỉ', CAST(550000.00 AS Decimal(10, 2)), CAST(56.00 AS Decimal(10, 2)), N'SanPham8.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (10, N'Áo thun dài tay', CAST(2950000.00 AS Decimal(10, 2)), CAST(42.00 AS Decimal(10, 2)), N'SanPham9.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (11, N'Áo dài cách tân', CAST(1500000.00 AS Decimal(10, 2)), CAST(100.00 AS Decimal(10, 2)), N'SanPham10.jpg', NULL, 1)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (12, N'Quần short', CAST(685000.00 AS Decimal(10, 2)), CAST(160.00 AS Decimal(10, 2)), N'Quan1.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (13, N'Quần âu đen', CAST(750000.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), N'Quan2.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (14, N'Quần Kaki', CAST(895000.00 AS Decimal(10, 2)), CAST(160.00 AS Decimal(10, 2)), N'Quan3.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (15, N'Quần Jeans', CAST(350000.00 AS Decimal(10, 2)), CAST(90.00 AS Decimal(10, 2)), N'Quan4.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (16, N'Quần Jeans xanh', CAST(420000.00 AS Decimal(10, 2)), CAST(95.00 AS Decimal(10, 2)), N'Quan5.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (17, N'Quần Short caro', CAST(210000.00 AS Decimal(10, 2)), CAST(80.00 AS Decimal(10, 2)), N'Quan6.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (18, N'Quần Short xám', CAST(195000.00 AS Decimal(10, 2)), CAST(70.00 AS Decimal(10, 2)), N'Quan7.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (19, N'Quần Short trắng', CAST(295000.00 AS Decimal(10, 2)), CAST(145.00 AS Decimal(10, 2)), N'Quan8.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (20, N'Quần Âu ', CAST(645000.00 AS Decimal(10, 2)), CAST(55.00 AS Decimal(10, 2)), N'Quan9.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (22, N'Quần thể thao xanh', CAST(160000.00 AS Decimal(10, 2)), CAST(91.00 AS Decimal(10, 2)), N'Quan10.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (23, N'Quần âu kẻ xọc', CAST(550000.00 AS Decimal(10, 2)), CAST(105.00 AS Decimal(10, 2)), N'Quan11.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (24, N'Quần thể thao', CAST(260000.00 AS Decimal(10, 2)), CAST(88.00 AS Decimal(10, 2)), N'Quan12.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (25, N'Quần âu xanh', CAST(790000.00 AS Decimal(10, 2)), CAST(144.00 AS Decimal(10, 2)), N'Quan13.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (26, N'Quần âu xám', CAST(480000.00 AS Decimal(10, 2)), CAST(210.00 AS Decimal(10, 2)), N'Quan14.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (27, N'Quần Kaki trắng', CAST(620000.00 AS Decimal(10, 2)), CAST(150.00 AS Decimal(10, 2)), N'Quan15.jpg', NULL, 2)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (28, N'Đầm lụa chiết eo', CAST(990000.00 AS Decimal(10, 2)), CAST(230.00 AS Decimal(10, 2)), N'Vay1.jpg', NULL, 3)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (29, N'Đầm Chiffon dập ly', CAST(1350000.00 AS Decimal(10, 2)), CAST(300.00 AS Decimal(10, 2)), N'Vay2.jpg', NULL, 3)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (30, N'Đầm lụa nhấn bèo', CAST(780000.00 AS Decimal(10, 2)), CAST(160.00 AS Decimal(10, 2)), N'Vay3.jpg', NULL, 3)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (31, N'Đầm xẻ eo', CAST(650000.00 AS Decimal(10, 2)), CAST(160.00 AS Decimal(10, 2)), N'Vay4.jpg', NULL, 3)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (32, N'Đầm ôm cánh tiên', CAST(855000.00 AS Decimal(10, 2)), CAST(105.00 AS Decimal(10, 2)), N'Vay5.jpg', NULL, 3)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (33, N'Đầm cut-out nhún ngực', CAST(1500000.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), N'Vay6.jpg', NULL, 3)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (34, N'Đầm cổ yếm', CAST(2100000.00 AS Decimal(10, 2)), CAST(188.00 AS Decimal(10, 2)), N'Vay7.jpg', NULL, 3)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (35, N'Bộ vest xanh', CAST(1450000.00 AS Decimal(10, 2)), CAST(70.00 AS Decimal(10, 2)), N'DoBo1.jpg', NULL, 4)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (36, N'Bộ vest đen', CAST(1200000.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), N'DoBo2.jpg', NULL, 4)
INSERT [dbo].[Product] ([proid], [proname], [price], [stock], [image], [description], [catid]) VALUES (37, N'Bộ thể thao', CAST(650000.00 AS Decimal(10, 2)), CAST(43.00 AS Decimal(10, 2)), N'DoBo3.jpg', NULL, 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
