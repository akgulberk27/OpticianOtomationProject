USE [otomasyon]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 3.01.2024 14:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[EyePower] [varchar](50) NOT NULL,
	[ConsultantDoctor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDoctor]    Script Date: 3.01.2024 14:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDoctor](
	[DoctorID] [int] IDENTITY(1,1) NOT NULL,
	[DoctorName] [varchar](50) NOT NULL,
	[Qualification] [varchar](50) NOT NULL,
	[HospitalName] [varchar](50) NOT NULL,
	[Phone] [varchar](max) NOT NULL,
	[Email] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tblDoctor] PRIMARY KEY CLUSTERED 
(
	[DoctorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGiris]    Script Date: 3.01.2024 14:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiris](
	[kullanici] [varchar](20) NOT NULL,
	[sifre] [varchar](20) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 3.01.2024 14:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[EyePower] [varchar](50) NOT NULL,
	[GlassType] [varchar](50) NOT NULL,
	[FrameType] [varchar](50) NOT NULL,
	[Price] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSale]    Script Date: 3.01.2024 14:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSale](
	[Bill] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerAddress] [varchar](max) NULL,
	[CustomerPhone] [varchar](50) NULL,
	[EyePower] [varchar](50) NULL,
	[ConsultantDoctor] [varchar](50) NULL,
	[ProductID] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[ProductEyePower] [varchar](50) NULL,
	[GlassType] [varchar](50) NULL,
	[FrameType] [varchar](50) NULL,
	[Price] [varchar](max) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalPrice] [varchar](max) NULL,
	[DoctorID] [int] NULL,
	[DoctorName] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[HospitalName] [varchar](50) NULL,
	[DoctorPhone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[DateOfSale] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCustomer] ON 
GO
INSERT [dbo].[tblCustomer] ([CustomerID], [CustomerName], [Address], [Phone], [EyePower], [ConsultantDoctor]) VALUES (4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş')
GO
INSERT [dbo].[tblCustomer] ([CustomerID], [CustomerName], [Address], [Phone], [EyePower], [ConsultantDoctor]) VALUES (5, N'Zümra Ece Akgül', N'Niğde', N'(542) 432-5323', N'M2', N'Enes Yalçın')
GO
INSERT [dbo].[tblCustomer] ([CustomerID], [CustomerName], [Address], [Phone], [EyePower], [ConsultantDoctor]) VALUES (6, N'Mehtap Akgül', N'Niğde', N'(534) 235-1536', N'H1', N'Berk Akgül')
GO
INSERT [dbo].[tblCustomer] ([CustomerID], [CustomerName], [Address], [Phone], [EyePower], [ConsultantDoctor]) VALUES (7, N'Hakan Akgül', N'Niğde', N'(564) 234-1234', N'M2', N'Muhammed Yabin')
GO
SET IDENTITY_INSERT [dbo].[tblCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDoctor] ON 
GO
INSERT [dbo].[tblDoctor] ([DoctorID], [DoctorName], [Qualification], [HospitalName], [Phone], [Email]) VALUES (4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com')
GO
INSERT [dbo].[tblDoctor] ([DoctorID], [DoctorName], [Qualification], [HospitalName], [Phone], [Email]) VALUES (5, N'Enes Yalçın', N'Dr Göz Doktoru', N'Adana Hastanesi', N'(564) 862-5784', N'örnek3@gmail.com')
GO
INSERT [dbo].[tblDoctor] ([DoctorID], [DoctorName], [Qualification], [HospitalName], [Phone], [Email]) VALUES (6, N'Şirin Karakaş', N'Asistan Göz Doktoru', N'Diyarbakır Devlet Hastanesi', N'(547) 986-3247', N'örnek4@gmail.com')
GO
INSERT [dbo].[tblDoctor] ([DoctorID], [DoctorName], [Qualification], [HospitalName], [Phone], [Email]) VALUES (7, N'Berk Akgül', N'Prof Doç Göz Doktoru', N'Hayat Hastanesi', N'(546) 234-5678', N'örnek@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[tblDoctor] OFF
GO
INSERT [dbo].[tblGiris] ([kullanici], [sifre]) VALUES (N'admin', N'1234')
GO
SET IDENTITY_INSERT [dbo].[tblProduct] ON 
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (12, N'Christian Dior Myopia2', N'2', N'UV380', N'Christian Dior ', N'6200')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (13, N'Christian Dior Myopia3', N'3', N'UV380', N'Christian Dior ', N'6300')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (14, N'Emporio Armani Myopia1', N'1', N'UV400', N'Emporio Armani', N'11000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (15, N'Emporio Armani Myopia2', N'2', N'UV400', N'Emporio Armani', N'12000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (16, N'Emporio Armani Myopia3', N'3', N'UV400', N'Emporio Armani', N'13000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (17, N'Gucci hypermetropic1', N'1', N'UV420', N'Gucci', N'31000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (18, N'Gucci hypermetropic2', N'2', N'UV420', N'Gucci', N'32000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (19, N'Gucci hypermetropic3', N'3', N'UV420', N'Gucci', N'33000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (21, N'Prada hypermetropic1', N'1', N'UV420', N'Prada Linea Rossa', N'51000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (22, N'Prada hypermetropic2', N'2', N'UV420', N'Prada Linea Rossa', N'52000')
GO
INSERT [dbo].[tblProduct] ([ProductID], [ProductName], [EyePower], [GlassType], [FrameType], [Price]) VALUES (23, N'Prada hypermetropic3', N'3', N'UV420', N'Prada Linea Rossa', N'53000')
GO
SET IDENTITY_INSERT [dbo].[tblProduct] OFF
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (1, NULL, N'1', N'1', N'(111) 111-1111', N'1', N'1', 1, N'1', N'1', N'1', N'1', N'1', N'1', N'1', 1, N'1', N'', N'1', N'(111) 111-1111', N'1', N'')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'dsadsadsa', N'', N'(   )    -', N'', N'', 2, N'', N'', N'', N'', N'', N'', N'dsadasd', 1, N'dsadasd', N'sadsad', N'sadsadsa', N'(   )    -', N'saaasd', N'')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'dsadsadsa', N'', N'(   )    -', N'', N'', 2, N'', N'', N'', N'', N'', N'', N'dsadasd', 1, N'dsadasd', N'sadsad', N'sadsadsa', N'(   )    -', N'saaasd', N'')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'dsadsadsa', N'', N'(   )    -', N'', N'', 2, N'', N'', N'', N'', N'', N'', N'dsadasd', 1, N'dsadasd', N'sadsad', N'sadsadsa', N'(   )    -', N'saaasd', N'')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 0, N'', N'', N'(   )    -', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'(   )    -', N'', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 0, N'', N'', N'(   )    -', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'(   )    -', N'', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (1, 5, N'dsadsa', N'sadsss', N'(132) 132-1321', N'wsadsad', N'dsadasd', 3, N'dsadsa', N'dasd', N'dsad', N'dsadasddsad', N'32131', N'4', N'dsadsa', 4, N'dsadsa', N'dsad', N'dsadsa', N'(111) 111-1111', N'dsadsadsa', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 0, N'', N'', N'(   )    -', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'(   )    -', N'', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 5, N'dsadsa', N'sadsss', N'(132) 132-1321', N'wsadsad', N'dsadasd', 3, N'dsadsa', N'dasd', N'dsad', N'dsadasddsad', N'32131', N'5', N'dsadsa', 4, N'dsadsa', N'dsad', N'dsadsa', N'(111) 111-1111', N'dsadsadsa', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (3, 5, N'dsadsa', N'sadsss', N'(132) 132-1321', N'wsadsad', N'dsadasd', 3, N'dsadsa', N'dasd', N'dsad', N'dsadasddsad', N'32131', N'5', N'dsad', 5, N'dsad', N'dsad', N'sadsad', N'(111) 111-1111', N'dsadadsadsa', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (4, 5, N'dsadsa', N'sadsss', N'(132) 132-1321', N'wsadsad', N'dsadasd', 3, N'dsadsa', N'dasd', N'dsad', N'dsadasddsad', N'32131', N'6', N'dsadsa', 4, N'dsadsa', N'dsad', N'dsadsa', N'(111) 111-1111', N'dsadsadsa', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (1, 5, N'dsadsa', N'sadsss', N'(132) 132-1321', N'wsadsad', N'dsadasd', 3, N'dsadsa', N'dasd', N'dsad', N'dsadasddsad', N'32131', N'6', N'dsadsa', 4, N'dsadsa', N'dsad', N'dsadsa', N'(111) 111-1111', N'dsadsadsa', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (6, 5, N'dsadsa', N'sadsss', N'(132) 132-1321', N'wsadsad', N'dsadasd', 3, N'dsadsa', N'dasd', N'dsad', N'dsadasddsad', N'32131', N'4', N'dsad', 5, N'dsad', N'dsad', N'sadsad', N'(111) 111-1111', N'dsadadsadsa', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 0, N'', N'', N'(   )    -', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'(   )    -', N'', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 19, N'Gucci hypermetropic3', N'3', N'UV420', N'Gucci', N'33000', N'8', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'5', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (1, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'8', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (1, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'9', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'11.11.1111 11:11')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'8', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 7, N'Hakan Akgül', N'Niğde', N'(564) 234-1234', N'M2', N'Muhammed Yabin', 14, N'Emporio Armani Myopia1', N'1', N'UV400', N'Emporio Armani', N'11000', N'5', N'Enes Yalçın', 5, N'Enes Yalçın', N'Dr Göz Doktoru', N'Adana Hastanesi', N'(564) 862-5784', N'örnek3@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'2', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'dsadsadsa', N'', N'(   )    -', N'', N'', 3, N'dsadsa', N'dasd', N'dsad', N'dsadasddsad', N'32131', N'4', N'dsadasd', 1, N'dsadasd', N'sadsad', N'sadsadsa', N'(   )    -', N'saaasd', N'')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 5, N'dsadsa', N'sadsss', N'(132) 132-1321', N'wsadsad', N'dsadasd', 2, N'', N'dsadsa', N'', N'', N'', N'', N'dsadasd', 1, N'dsadasd', N'sadsad', N'sadsadsa', N'(   )    -', N'saaasd', N'')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 4, N'Efe Mert Akgül', N'Niğde', N'(542) 132-3223', N'H3', N'Şirin Karakaş', 11, N'Christian Dior Myopia1', N'1', N'UV380', N'Christian Dior ', N'6100', N'', N'Muhammed Yabin', 4, N'Muhammed Yabin', N'Prof Göz Doktoru', N'Özel Batı Hastanesi', N'(545) 864-2246', N'örnek2@gmail.com', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 0, N'', N'', N'(   )    -', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'(   )    -', N'', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 0, N'', N'', N'(   )    -', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'(   )    -', N'', N'  .  .       :')
GO
INSERT [dbo].[tblSale] ([Bill], [CustomerID], [CustomerName], [CustomerAddress], [CustomerPhone], [EyePower], [ConsultantDoctor], [ProductID], [ProductName], [ProductEyePower], [GlassType], [FrameType], [Price], [Quantity], [TotalPrice], [DoctorID], [DoctorName], [Qualification], [HospitalName], [DoctorPhone], [Email], [DateOfSale]) VALUES (0, 0, N'', N'', N'(   )    -', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', N'(   )    -', N'', N'  .  .       :')
GO
