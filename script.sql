USE [master]
GO
/****** Object:  Database [WebProgramming_HTA]    Script Date: 5/14/2021 5:20:01 PM ******/
CREATE DATABASE [WebProgramming_HTA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebProgramming_HTA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebProgramming_HTA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebProgramming_HTA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WebProgramming_HTA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebProgramming_HTA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebProgramming_HTA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebProgramming_HTA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebProgramming_HTA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebProgramming_HTA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebProgramming_HTA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebProgramming_HTA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET RECOVERY FULL 
GO
ALTER DATABASE [WebProgramming_HTA] SET  MULTI_USER 
GO
ALTER DATABASE [WebProgramming_HTA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebProgramming_HTA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebProgramming_HTA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebProgramming_HTA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebProgramming_HTA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebProgramming_HTA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebProgramming_HTA', N'ON'
GO
ALTER DATABASE [WebProgramming_HTA] SET QUERY_STORE = OFF
GO
USE [WebProgramming_HTA]
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 5/14/2021 5:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[MaDienThoai] [int] IDENTITY(1,1) NOT NULL,
	[MaThuongHieu] [int] NULL,
	[TenDienThoai] [nvarchar](50) NULL,
	[GiaTien] [float] NULL,
	[ChietKhau] [float] NULL,
	[SPMoi] [bit] NULL,
	[SPBanChay] [bit] NULL,
	[Anh] [ntext] NULL,
	[Mota] [ntext] NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[MaDienThoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 5/14/2021 5:20:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](50) NULL,
	[XuatXu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DienThoai] ON 

INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (1, 1, N'Iphone 11 Pro', 14.5, 1, 1, NULL, N'iphone-11.jpg', NULL)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (2, 3, N'Bphon 3', 10, 0.5, 1, NULL, N'bphone.png', NULL)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (3, 2, N'Galaxy x4', 23, 2.3, 0, 0, NULL, NULL)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (4, 1, N'Iphone 11', 10, 2, 1, 0, N'iphone-11-pro.jpg', NULL)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (5, 4, N'Asus RogPhone3', 24, 3, 1, 0, N'1.jpg', NULL)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (6, 4, N'Asus RogPhone 4 ', 30, 5, 1, 0, N'rogphone2.jpg', NULL)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (7, 2, N'Galaxy s9', 5.5, 2, 1, 0, N'galaxy-s9-gold.jpg', NULL)
INSERT [dbo].[DienThoai] ([MaDienThoai], [MaThuongHieu], [TenDienThoai], [GiaTien], [ChietKhau], [SPMoi], [SPBanChay], [Anh], [Mota]) VALUES (8, 2, N'Galaxy Note 8', 11.5, 3, 1, 1, N'samsung-galaxy-note-8-gold.jpg', NULL)
SET IDENTITY_INSERT [dbo].[DienThoai] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (1, N'Apple', N'Mỹ')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (2, N'Samsung', N'Hàn')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (3, N'Bphone', N'Việt')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (4, N'Asus', N'Anh')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (5, N'dubai', N'việt nam')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (6, N'dubai', N'việt nam')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (7, N'dubai', N'việt nam')
INSERT [dbo].[ThuongHieu] ([MaThuongHieu], [TenThuongHieu], [XuatXu]) VALUES (8, N'tao', N'ok')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
ALTER TABLE [dbo].[DienThoai] ADD  CONSTRAINT [DF_DienThoai_SPMoi]  DEFAULT ((1)) FOR [SPMoi]
GO
ALTER TABLE [dbo].[DienThoai] ADD  CONSTRAINT [DF_DienThoai_SPBanChay]  DEFAULT ((0)) FOR [SPBanChay]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_ThuongHieu] FOREIGN KEY([MaThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaThuongHieu])
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_ThuongHieu]
GO
USE [master]
GO
ALTER DATABASE [WebProgramming_HTA] SET  READ_WRITE 
GO
