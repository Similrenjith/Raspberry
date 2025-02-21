USE [Raspberry]
GO
/****** Object:  Table [dbo].[Food_Catg_Master]    Script Date: 03/10/2020 1:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Food_Catg_Master](
	[Food_catg_id] [int] IDENTITY(1,1) NOT NULL,
	[Food_catg_name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Food_catg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Food_Rest_Master]    Script Date: 03/10/2020 1:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Food_Rest_Master](
	[Restr_id] [int] NULL,
	[Food_id] [int] IDENTITY(1,1) NOT NULL,
	[Food_Name] [varchar](50) NOT NULL,
	[Food_Description] [varchar](250) NOT NULL,
	[Food_price] [numeric](18, 3) NULL,
	[Food_catg_id] [int] NULL,
	[Food_Type] [char](1) NULL,
	[ImagePath] [varchar](200) NULL,
	[Create_Time] [datetime] NULL,
	[Created_By] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Food_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promotion_Master]    Script Date: 03/10/2020 1:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promotion_Master](
	[Promo_Id] [int] IDENTITY(1,1) NOT NULL,
	[Promo_Name] [varchar](50) NOT NULL,
	[Start_Date] [datetime] NULL,
	[End_Date] [datetime] NULL,
	[DiscountPercent] [numeric](6, 2) NULL,
	[Max_Discount_Amount] [numeric](18, 2) NULL,
	[Min_Order_For_Discount] [numeric](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Promo_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Resturant_Master]    Script Date: 03/10/2020 1:57:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resturant_Master](
	[Restr_Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[Address] [varchar](200) NOT NULL,
	[City] [varchar](35) NOT NULL,
	[Area] [varchar](35) NOT NULL,
	[FromOfficehour] [varchar](5) NULL,
	[ToOfficehour] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[Restr_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Food_Catg_Master] ON 

GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (1, N'Chicken Peri Peri')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (2, N'Platters')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (3, N'Peri Peri Specials')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (4, N'Burgers')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (5, N'Wraps')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (6, N'Combos')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (7, N'Grill''O Buckets')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (8, N'Fried Style Chicken')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (9, N'Pizza')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (10, N'Kidz Corner')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (11, N'Grill''O Extras')
GO
INSERT [dbo].[Food_Catg_Master] ([Food_catg_id], [Food_catg_name]) VALUES (12, N'Drinks')
GO
SET IDENTITY_INSERT [dbo].[Food_Catg_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[Food_Rest_Master] ON 

GO
INSERT [dbo].[Food_Rest_Master] ([Restr_id], [Food_id], [Food_Name], [Food_Description], [Food_price], [Food_catg_id], [Food_Type], [ImagePath], [Create_Time], [Created_By]) VALUES (1, 23, N'Whole Chicken (Peri Peri)', N'Whole Chicken (Peri Peri)', CAST(80.000 AS Numeric(18, 3)), 1, N'N', N'PeriPeri.jpg', NULL, 0)
GO
INSERT [dbo].[Food_Rest_Master] ([Restr_id], [Food_id], [Food_Name], [Food_Description], [Food_price], [Food_catg_id], [Food_Type], [ImagePath], [Create_Time], [Created_By]) VALUES (1, 24, N'Peri Boti', N'Peri Boti', CAST(40.000 AS Numeric(18, 3)), 3, N'V', N'PeriBoti.jpg', NULL, 0)
GO
INSERT [dbo].[Food_Rest_Master] ([Restr_id], [Food_id], [Food_Name], [Food_Description], [Food_price], [Food_catg_id], [Food_Type], [ImagePath], [Create_Time], [Created_By]) VALUES (4, 25, N'Casesar Salad', N'Casear dressing', CAST(15.000 AS Numeric(18, 3)), 5, N'V', N'Casear.jpg', NULL, 0)
GO
INSERT [dbo].[Food_Rest_Master] ([Restr_id], [Food_id], [Food_Name], [Food_Description], [Food_price], [Food_catg_id], [Food_Type], [ImagePath], [Create_Time], [Created_By]) VALUES (6, 26, N'Peri-Peri Chips', N'Sides', CAST(5.000 AS Numeric(18, 3)), 10, N'V', NULL, NULL, 0)
GO
INSERT [dbo].[Food_Rest_Master] ([Restr_id], [Food_id], [Food_Name], [Food_Description], [Food_price], [Food_catg_id], [Food_Type], [ImagePath], [Create_Time], [Created_By]) VALUES (7, 27, N'Block Mushroom', N'Grilled Block mushroom', CAST(35.000 AS Numeric(18, 3)), 11, N'V', N'BlockMushroom.jpg', NULL, 0)
GO
SET IDENTITY_INSERT [dbo].[Food_Rest_Master] OFF
GO
SET IDENTITY_INSERT [dbo].[Resturant_Master] ON 

GO
INSERT [dbo].[Resturant_Master] ([Restr_Id], [Name], [Description], [Address], [City], [Area], [FromOfficehour], [ToOfficehour]) VALUES (1, N'Aroos Damascus ', N'Casual Dining - Arabian, Middle Eastern', N'Al Nud', N'Sharjah', N'Sharjah', N'7am', N'3am')
GO
INSERT [dbo].[Resturant_Master] ([Restr_Id], [Name], [Description], [Address], [City], [Area], [FromOfficehour], [ToOfficehour]) VALUES (2, N'Biryaniwalla & Co', N'CASUAL DINING', N'Al Nahda', N'Dubai', N'Dubai', N'7am', N'3am')
GO
INSERT [dbo].[Resturant_Master] ([Restr_Id], [Name], [Description], [Address], [City], [Area], [FromOfficehour], [ToOfficehour]) VALUES (4, N'Allo Beirut ', N'Casual Dining', N'Al Barsha', N'Dubai', N'Dubai', N'7am', N'3am')
GO
INSERT [dbo].[Resturant_Master] ([Restr_Id], [Name], [Description], [Address], [City], [Area], [FromOfficehour], [ToOfficehour]) VALUES (6, N'Chaat Bazaar ', N'Casual Diming', N'Karama', N'Dubai', N'Dubai', N'7am', N'3am')
GO
INSERT [dbo].[Resturant_Master] ([Restr_Id], [Name], [Description], [Address], [City], [Area], [FromOfficehour], [ToOfficehour]) VALUES (7, N'Amritsr Restaurant ', N'Casual Dining', N'Karama', N'Dubai', N'Duabi', N'7am', N'3am')
GO
SET IDENTITY_INSERT [dbo].[Resturant_Master] OFF
GO
ALTER TABLE [dbo].[Food_Rest_Master] ADD  DEFAULT (getdate()) FOR [Create_Time]
GO
ALTER TABLE [dbo].[Food_Rest_Master] ADD  DEFAULT ((1000)) FOR [Created_By]
GO
ALTER TABLE [dbo].[Food_Rest_Master]  WITH CHECK ADD  CONSTRAINT [FK_Category] FOREIGN KEY([Food_catg_id])
REFERENCES [dbo].[Food_Catg_Master] ([Food_catg_id])
GO
ALTER TABLE [dbo].[Food_Rest_Master] CHECK CONSTRAINT [FK_Category]
GO
ALTER TABLE [dbo].[Food_Rest_Master]  WITH CHECK ADD  CONSTRAINT [FK_Resturant] FOREIGN KEY([Restr_id])
REFERENCES [dbo].[Resturant_Master] ([Restr_Id])
GO
ALTER TABLE [dbo].[Food_Rest_Master] CHECK CONSTRAINT [FK_Resturant]
GO
