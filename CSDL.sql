USE [master]
GO
/****** Object:  Database [LTTH_NhaHang]    Script Date: 5/19/2021 4:34:52 PM ******/
CREATE DATABASE LTTH_BANHANG
 
GO
CREATE TABLE [dbo].[BAN](
	[banID] [int] IDENTITY(1,1) NOT NULL,
	[loaibanID] [int] NULL,
	[tenban] [nvarchar](50) NULL,
	[datbanID] [int] NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_BAN] PRIMARY KEY CLUSTERED 
(
	[banID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BLOG]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BLOG](
	[blogID] [int] IDENTITY(1,1) NOT NULL,
	[nguoidungID] [int] NULL,
	[tenblog] [nvarchar](50) NULL,
	[ngayblog] [date] NULL,
	[noidung] [text] NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_BLOG] PRIMARY KEY CLUSTERED 
(
	[blogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTDATMON]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDATMON](
	[datmonID] [int] NOT NULL,
	[monanID] [int] NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_CTDATMON] PRIMARY KEY CLUSTERED 
(
	[datmonID] ASC,
	[monanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHOADON]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHOADON](
	[hoadonID] [int] NOT NULL,
	[monanID] [int] NOT NULL,
	[soluong] [int] NULL,
 CONSTRAINT [PK_CTHOADON] PRIMARY KEY CLUSTERED 
(
	[hoadonID] ASC,
	[monanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATBAN]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATBAN](
	[datbanID] [int] IDENTITY(1,1) NOT NULL,
	[khachhangID] [int] NULL,
	[ngaydat] [date] NOT NULL,
	[giodat] [char](10) NULL,
	[songuoi] [int] NULL,
 CONSTRAINT [PK_DATBAN] PRIMARY KEY CLUSTERED 
(
	[datbanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATMON]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATMON](
	[datmonID] [int] IDENTITY(1,1) NOT NULL,
	[khachhangID] [int] NULL,
	[nguoidungID] [nchar](10) NULL,
	[ngaydat] [date] NULL,
 CONSTRAINT [PK_DATMON] PRIMARY KEY CLUSTERED 
(
	[datmonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DAUBEP]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAUBEP](
	[daubepID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [nchar](10) NULL,
	[diachi] [nvarchar](50) NULL,
	[mota] [text] NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_DAUBEP] PRIMARY KEY CLUSTERED 
(
	[daubepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[hoadonID] [int] IDENTITY(1,1) NOT NULL,
	[khachhangID] [int] NULL,
	[nguoidungID] [nchar](10) NULL,
	[ngayhoadon] [date] NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[hoadonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[khachhangID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [nchar](10) NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [nchar](25) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[khachhangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIBAN]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIBAN](
	[loaibanID] [int] IDENTITY(1,1) NOT NULL,
	[tenloaiban] [nvarchar](50) NULL,
	[succhua] [int] NULL,
 CONSTRAINT [PK_LOAIBAN] PRIMARY KEY CLUSTERED 
(
	[loaibanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIMONAN]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIMONAN](
	[loaimonanID] [int] IDENTITY(1,1) NOT NULL,
	[tenloaimon] [nvarchar](50) NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_LOAIMONAN] PRIMARY KEY CLUSTERED 
(
	[loaimonanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONAN]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONAN](
	[monanID] [int] IDENTITY(1,1) NOT NULL,
	[loaimonanID] [int] NOT NULL,
	[tenmonan] [nvarchar](50) NULL,
	[dongia] [float] NULL,
	[mota] [nvarchar](500) NULL,
	[anhminhhoa] [nchar](50) NULL,
	[trangthai] [bit] NULL,
 CONSTRAINT [PK_MONAN] PRIMARY KEY CLUSTERED 
(
	[monanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 5/19/2021 4:34:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[nguoidungID] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](50) NULL,
	[sdt] [nchar](10) NULL,
	[ngaysinh] [date] NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [nvarchar](25) NULL,
	[username] [nchar](15) NULL,
	[password] [nchar](15) NULL,
	[quyen] [nchar](15) NULL,
	[anhminhhoa] [nchar](50) NULL,
 CONSTRAINT [PK_NGUOIDUNG] PRIMARY KEY CLUSTERED 
(
	[nguoidungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAN] ON 

INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (1, 1, N'Bàn 1', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (2, 2, N'Bàn 2', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (3, 3, N'Bàn 3', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (4, 1, N'Bàn 4', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (5, 2, N'Bàn 5', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (6, 3, N'Bàn 6', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (7, 1, N'Bàn 7', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (8, 1, N'Bàn 8', NULL, 1)
INSERT [dbo].[BAN] ([banID], [loaibanID], [tenban], [datbanID], [trangthai]) VALUES (9, 2, N'Bàn 9', NULL, 1)
SET IDENTITY_INSERT [dbo].[BAN] OFF
GO
SET IDENTITY_INSERT [dbo].[BLOG] ON 

INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (1, 1, N'Stumptown Tofu Schlitz', CAST(N'2021-05-12' AS Date), N'Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...', N'/Content/img/blog_post_02.jpg                     ')
INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (2, 2, N'Succulents Hashtag Folk', CAST(N'2021-05-12' AS Date), N'Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...', N'/Content/img/blog_post_03.jpg                     ')
INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (3, 3, N'Crucifix Selvage Coat', CAST(N'2021-05-12' AS Date), N'Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...', N'/Content/img/blog_post_04.jpg                     ')
INSERT [dbo].[BLOG] ([blogID], [nguoidungID], [tenblog], [ngayblog], [noidung], [anhminhhoa]) VALUES (4, 4, N'Knaus Sriracha Pinterest', CAST(N'2021-05-12' AS Date), N'Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...', N'/Content/img/blog_post_01.jpg                     ')
SET IDENTITY_INSERT [dbo].[BLOG] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIBAN] ON 

INSERT [dbo].[LOAIBAN] ([loaibanID], [tenloaiban], [succhua]) VALUES (1, N'Bàn đôi', 2)
INSERT [dbo].[LOAIBAN] ([loaibanID], [tenloaiban], [succhua]) VALUES (2, N'Bàn 4 người', 4)
INSERT [dbo].[LOAIBAN] ([loaibanID], [tenloaiban], [succhua]) VALUES (3, N'Bàn 6 người', 6)
SET IDENTITY_INSERT [dbo].[LOAIBAN] OFF
GO
SET IDENTITY_INSERT [dbo].[LOAIMONAN] ON 

INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (1, N'BreakFast ', N'/Content/img/cook_breakfast.png                   ')
INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (2, N'Lunch', N'/Content/img/cook_lunch.png                       ')
INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (3, N'Dinner', N'/Content/img/cook_dinner.png                      ')
INSERT [dbo].[LOAIMONAN] ([loaimonanID], [tenloaimon], [anhminhhoa]) VALUES (4, N'Desserts', N'/Content/img/cook_dessert.png                     ')
SET IDENTITY_INSERT [dbo].[LOAIMONAN] OFF
GO
SET IDENTITY_INSERT [dbo].[MONAN] ON 

INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (1, 1, N'Kale Chips Art Party', 3.5, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/breakfast_item.jpg                   ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (2, 1, N'Drink Vinegar Prism', 7.25, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/lunch_item.jpg                       ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (3, 1, N'Taiyaki Gastro Tousled', 11.5, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/dinner_item.jpg                      ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (4, 2, N'
Mumble Ditch Corn', 6.5, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/lunch_item.jpg                       ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (5, 2, N'Wayfare Lomo Core', 11.75, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/breakfast_item.jpg                   ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (6, 2, N'Taiyaki Gastro Tousled', 16.5, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/dinner_item.jpg                      ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (7, 3, N'Meal Apples Almonds', 8.25, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/dinner_item.jpg                      ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (8, 3, N'Ditch Corn Art', 12.5, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/lunch_item.jpg                       ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (9, 3, N'Kale Chips Art Party', 16, N'Dreamcatcher squid ennui cliche chicharros nes echo  small batch jean ditcher meal...', N'/Content/img/breakfast_item.jpg                   ', 1)
INSERT [dbo].[MONAN] ([monanID], [loaimonanID], [tenmonan], [dongia], [mota], [anhminhhoa], [trangthai]) VALUES (16, 4, N'Salad hoa quả', 15, N'cas', N'/Content/img/breakfast_item.jpg                   ', NULL)
SET IDENTITY_INSERT [dbo].[MONAN] OFF
GO
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] ON 

INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (1, N'Quách Phương Nam', N'0983817362', CAST(N'1999-10-03' AS Date), N'Yên Đồng, Yên Lạc, Vĩnh Phúc', N'namvgt75@gmail.com', N'namqp          ', N'admin123       ', N'administrator  ', N'/Content/img/avartar3.jpg                         ')
INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (2, N'Trần Ngọc Tiến', N'0984217315', CAST(N'1999-03-12' AS Date), N'Đâu Đó, Đâu Đó, Phú Thọ', N'tientn@gmail.com', N'tientn         ', N'admin123       ', N'administrator  ', N'/Content/img/avartar2.jpg                         ')
INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (3, N'Phạm Xuân Tiến', N'0923217786', CAST(N'1998-05-13' AS Date), N'Đâu Đó, Kiến Xương, Thái Bình', N'tienpx@gmail.com', N'tienpx         ', N'admin123       ', N'administrator  ', N'/Content/img/avartar1.jpg                         ')
INSERT [dbo].[NGUOIDUNG] ([nguoidungID], [hoten], [sdt], [ngaysinh], [diachi], [email], [username], [password], [quyen], [anhminhhoa]) VALUES (4, N'Hồ Thị Vân', N'0923217786', CAST(N'1998-11-13' AS Date), N'Đâu Đó, Đâu Đó, Nghệ An', N'vanht@gmail.com', N'vanht          ', N'admin123       ', N'administrator  ', N'/Content/img//Content/img/avartarDefault.jpg      ')
SET IDENTITY_INSERT [dbo].[NGUOIDUNG] OFF
GO
ALTER TABLE [dbo].[BAN]  WITH CHECK ADD  CONSTRAINT [FK_BAN_DATBAN] FOREIGN KEY([datbanID])
REFERENCES [dbo].[DATBAN] ([datbanID])
GO
ALTER TABLE [dbo].[BAN] CHECK CONSTRAINT [FK_BAN_DATBAN]
GO
ALTER TABLE [dbo].[BAN]  WITH CHECK ADD  CONSTRAINT [FK_BAN_LOAIBAN] FOREIGN KEY([loaibanID])
REFERENCES [dbo].[LOAIBAN] ([loaibanID])
GO
ALTER TABLE [dbo].[BAN] CHECK CONSTRAINT [FK_BAN_LOAIBAN]
GO
ALTER TABLE [dbo].[BLOG]  WITH CHECK ADD  CONSTRAINT [FK_BLOG_NGUOIDUNG] FOREIGN KEY([nguoidungID])
REFERENCES [dbo].[NGUOIDUNG] ([nguoidungID])
GO
ALTER TABLE [dbo].[BLOG] CHECK CONSTRAINT [FK_BLOG_NGUOIDUNG]
GO
ALTER TABLE [dbo].[CTDATMON]  WITH CHECK ADD  CONSTRAINT [FK_CTDATMON_DATMON] FOREIGN KEY([datmonID])
REFERENCES [dbo].[DATMON] ([datmonID])
GO
ALTER TABLE [dbo].[CTDATMON] CHECK CONSTRAINT [FK_CTDATMON_DATMON]
GO
ALTER TABLE [dbo].[CTDATMON]  WITH CHECK ADD  CONSTRAINT [FK_CTDATMON_MONAN] FOREIGN KEY([monanID])
REFERENCES [dbo].[MONAN] ([monanID])
GO
ALTER TABLE [dbo].[CTDATMON] CHECK CONSTRAINT [FK_CTDATMON_MONAN]
GO
ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_HOADON] FOREIGN KEY([hoadonID])
REFERENCES [dbo].[HOADON] ([hoadonID])
GO
ALTER TABLE [dbo].[CTHOADON] CHECK CONSTRAINT [FK_CTHOADON_HOADON]
GO
ALTER TABLE [dbo].[CTHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHOADON_MONAN] FOREIGN KEY([monanID])
REFERENCES [dbo].[MONAN] ([monanID])
GO
ALTER TABLE [dbo].[CTHOADON] CHECK CONSTRAINT [FK_CTHOADON_MONAN]
GO
ALTER TABLE [dbo].[DATBAN]  WITH CHECK ADD  CONSTRAINT [FK_DATBAN_KHACHHANG] FOREIGN KEY([khachhangID])
REFERENCES [dbo].[KHACHHANG] ([khachhangID])
GO
ALTER TABLE [dbo].[DATBAN] CHECK CONSTRAINT [FK_DATBAN_KHACHHANG]
GO
ALTER TABLE [dbo].[DATMON]  WITH CHECK ADD  CONSTRAINT [FK_DATMON_KHACHHANG] FOREIGN KEY([khachhangID])
REFERENCES [dbo].[KHACHHANG] ([khachhangID])
GO
ALTER TABLE [dbo].[DATMON] CHECK CONSTRAINT [FK_DATMON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([khachhangID])
REFERENCES [dbo].[KHACHHANG] ([khachhangID])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[MONAN]  WITH CHECK ADD  CONSTRAINT [FK_MONAN_LOAIMONAN] FOREIGN KEY([loaimonanID])
REFERENCES [dbo].[LOAIMONAN] ([loaimonanID])
GO
ALTER TABLE [dbo].[MONAN] CHECK CONSTRAINT [FK_MONAN_LOAIMONAN]
GO
USE [master]
GO
ALTER DATABASE [LTTH_NhaHang] SET  READ_WRITE 
GO
