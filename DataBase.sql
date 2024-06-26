USE [master]
GO
/****** Object:  Database [BanDongHo]    Script Date: 08-06-2024 3:42:14 PM ******/
CREATE DATABASE [BanDongHo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanDongHo', FILENAME = N'D:\SQL_Sever\MSSQL16.MSSQLSERVER\MSSQL\DATA\BanDongHo.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BanDongHo_log', FILENAME = N'D:\SQL_Sever\MSSQL16.MSSQLSERVER\MSSQL\DATA\BanDongHo_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [BanDongHo] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanDongHo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanDongHo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanDongHo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanDongHo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanDongHo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanDongHo] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanDongHo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanDongHo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanDongHo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanDongHo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanDongHo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanDongHo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanDongHo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanDongHo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanDongHo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanDongHo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BanDongHo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanDongHo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanDongHo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanDongHo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanDongHo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanDongHo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanDongHo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanDongHo] SET RECOVERY FULL 
GO
ALTER DATABASE [BanDongHo] SET  MULTI_USER 
GO
ALTER DATABASE [BanDongHo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanDongHo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanDongHo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanDongHo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BanDongHo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BanDongHo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BanDongHo', N'ON'
GO
ALTER DATABASE [BanDongHo] SET QUERY_STORE = ON
GO
ALTER DATABASE [BanDongHo] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [BanDongHo]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonBan]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBan](
	[MaChiTietHD] [int] IDENTITY(1,1) NOT NULL,
	[MaHD] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [float] NULL,
	[TongTien] [float] NULL,
	[imageSP] [varchar](300) NULL,
	[tenSP] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhap]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhap](
	[MaChiTietHDN] [int] IDENTITY(1,1) NOT NULL,
	[MaHDN] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [float] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietHDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGia]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[masp] [int] NULL,
	[noidung] [nvarchar](500) NULL,
	[sosao] [int] NULL,
	[tentaikhoan] [nvarchar](50) NULL,
	[ngaytao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[maGH] [int] IDENTITY(1,1) NOT NULL,
	[maSP] [int] NULL,
	[tenSP] [nvarchar](200) NULL,
	[anhSP] [nvarchar](300) NULL,
	[soluong] [int] NULL,
	[giaban] [float] NULL,
	[tongtien] [float] NULL,
	[taikhoan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[maGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [int] NULL,
	[NgayTao] [datetime] NULL,
	[NgayDuyet] [datetime] NULL,
	[TenKH] [nvarchar](50) NULL,
	[Diachi] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[SDT] [nvarchar](50) NULL,
	[ThanhTien] [float] NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[ThoiGianGiaoHang] [datetime] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[NgayHuy] [datetime] NULL,
	[methodPay] [nvarchar](100) NULL,
	[GiamGia] [float] NULL,
	[LiDoHuy] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[NgayNhap] [datetime] NULL,
	[MaNCC] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[GhiChu] [nvarchar](50) NULL,
	[methodPay] [nvarchar](150) NULL,
	[Tongtien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoans]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoans](
	[MaLoaiTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[mota] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaGiamGia]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaGiamGia](
	[idMa] [int] IDENTITY(1,1) NOT NULL,
	[code] [varchar](50) NOT NULL,
	[mota] [nvarchar](max) NULL,
	[ngaybatdau] [date] NOT NULL,
	[ngayketthuc] [date] NOT NULL,
	[giagiam] [float] NOT NULL,
	[trangthai] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idMa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[Email] [nvarchar](30) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[MaTH] [int] NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[MaLoai] [int] NULL,
	[soLuongton] [int] NULL,
	[GiaBan] [float] NULL,
	[anhSP] [nvarchar](max) NULL,
	[mota] [nvarchar](max) NULL,
	[sldaban] [int] NULL,
	[trangthai] [nvarchar](255) NULL,
	[luotxem] [int] NULL,
	[chatlieuday] [nvarchar](300) NULL,
	[chatlieuvo] [nvarchar](300) NULL,
	[mausac] [nvarchar](100) NULL,
	[giaNhap] [float] NULL,
	[giaGiam] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoans]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoans](
	[TenTaiKhoan] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[MaLoaiTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
	[Token] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
	[Ghichu] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaTH] [int] IDENTITY(1,1) NOT NULL,
	[TenThuongHieu] [nvarchar](255) NOT NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinTucs]    Script Date: 08-06-2024 3:42:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucs](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[LuotXem] [int] NULL,
	[TrangThai] [nvarchar](50) NULL,
	[ngaytao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonBan] ON 

INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4085, 4070, 3237, 1, 13794999, 13794999, N'638498579888121481.jpg', N'Đồng hồ đôi Changle Sacage 45BK')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4087, 4070, 3223, 1, 11602999, 11602999, N'638498574799644050.png', N'Đồng hồ Gucci Mạ Vàng 34k')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4088, 4070, 3183, 3, 14929999, 44789997, N'638498567221412662.png', N'Đồng hồ nam Hublot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4089, 4071, 3183, 1, 14929999, 14929999, N'638498567221412662.png', N'Đồng hồ nam Hublot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4090, 4072, 3183, 1, 14929999, 14929999, N'638498567221412662.png', N'Đồng hồ nam Hublot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4091, 4073, 99, 1, 12896999, 12896999, N'638521786395303389.png', N'Đồng Hồ Kawasaki')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4092, 4074, 99, 1, 12896999, 12896999, N'638521786395303389.png', N'Đồng Hồ Kawasaki')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4093, 4075, 99, 1, 12896999, 12896999, N'638521786395303389.png', N'Đồng Hồ Kawasaki')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4094, 4076, 3214, 5, 832999, 4164995, N'638498564804713002.jpg', N'Đồng hồ nữ Tissot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4095, 4077, 3182, 4, 1355999, 5423996, N'638488645558446852.jpg', N'Đồng  hồ nam Hublot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4096, 4078, 3182, 5, 1355999, 6779995, N'638488645558446852.jpg', N'Đồng  hồ nam Hublot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (4097, 4079, 3233, 1, 11479999, 11479999, N'638498579546576271.jpg', N'Đồng hồ đôi Changle Sacage 45BK')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5085, 5069, 3198, 9, 4215999, 37943991, N'638498572453295761.jpg', N'Đồng hồ nữ Tissot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5086, 5069, 99, 5, 12896999, 64484995, N'638521786395303389.png', N'Đồng Hồ Kawasaki')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5087, 5070, 3183, 20, 14929999, 298599980, N'638498567221412662.png', N'Đồng hồ nam Hublot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5088, 5070, 99, 20, 1000000, 20000000, N'638521786395303389.png', N'Đồng Hồ Kawasaki')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5089, 5071, 3217, 4, 8549999, 34199996, N'638498574071917063.jpg', N'Đồng hồ Gucci Mạ Vàng 34k')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5090, 5071, 3220, 3, 12715999, 38147997, N'638498574430403684.jpg', N'Đồng hồ Gucci Mạ Vàng 34k')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5091, 5071, 3229, 4, 2875999, 11503996, N'638498579202741971.jpg', N'Đồng hồ đôi Changle Sacage 45BK')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5092, 5072, 3225, 10, 2731999, 27319990, N'638498575271874355.jpg', N'Đồng hồ Gucci Mạ Vàng 34k')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5093, 5072, 3222, 20, 4895999, 97919980, N'638498574653777822.jpg', N'Đồng hồ Gucci Mạ Vàng 34k')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5094, 5073, 3195, 8, 15733999, 125871992, N'638498570389359330.jpg', N'Đồng hồ nữ Tissot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5095, 5073, 3194, 5, 7095999, 35479995, N'638498570119562334.jpg', N'Đồng hồ nữ Tissot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5096, 5074, 3194, 10, 7095999, 70959990, N'638498570119562334.jpg', N'Đồng hồ nữ Tissot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5097, 5074, 3227, 10, 11055999, 110559990, N'638498579020899034.jpg', N'Đồng hồ đôi Changle Sacage 45BK')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5098, 5075, 3192, 1, 15363999, 15363999, N'638498564770163102.jpg', N'Đồng hồ nữ Tissot')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5099, 5075, 3220, 14, 12715999, 178023986, N'638498574430403684.jpg', N'Đồng hồ Gucci Mạ Vàng 34k')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5100, 5075, 3224, 1, 5620999, 5620999, N'638498575140145146.png', N'Đồng hồ Gucci Mạ Vàng 34k')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5101, 5076, 3238, 10, 11998999, 119989990, N'638498579974605406.jpg', N'Đồng hồ đôi Changle Sacage 45BK')
INSERT [dbo].[ChiTietHoaDonBan] ([MaChiTietHD], [MaHD], [MaSP], [SoLuong], [GiaBan], [TongTien], [imageSP], [tenSP]) VALUES (5102, 5077, 3183, 3, 14929999, 44789997, N'638498567221412662.png', N'Đồng hồ nam Hublot')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonBan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhap] ON 

INSERT [dbo].[ChiTietHoaDonNhap] ([MaChiTietHDN], [MaHDN], [MaSP], [SoLuong], [GiaNhap], [TongTien]) VALUES (2039, 2025, 3183, 12, 3000000, 36000000)
INSERT [dbo].[ChiTietHoaDonNhap] ([MaChiTietHDN], [MaHDN], [MaSP], [SoLuong], [GiaNhap], [TongTien]) VALUES (2042, 2026, 3184, 10, 2999999, 29999990)
INSERT [dbo].[ChiTietHoaDonNhap] ([MaChiTietHDN], [MaHDN], [MaSP], [SoLuong], [GiaNhap], [TongTien]) VALUES (3039, 3017, 99, 4, 4200000, 16800000)
INSERT [dbo].[ChiTietHoaDonNhap] ([MaChiTietHDN], [MaHDN], [MaSP], [SoLuong], [GiaNhap], [TongTien]) VALUES (3040, 3017, 3182, 100, 5800000, 580000000)
INSERT [dbo].[ChiTietHoaDonNhap] ([MaChiTietHDN], [MaHDN], [MaSP], [SoLuong], [GiaNhap], [TongTien]) VALUES (3041, 3018, 99, 100, 5000000, 500000000)
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhGia] ON 

INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (2, 3182, N'Tuyệt vời', 5, N'huy', CAST(N'2024-05-03T21:13:29.170' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (4, 3233, N'Sản phẩm tuyệt vời ngoài mong đợi ', 5, N'quanghuy123', CAST(N'2024-05-03T23:04:02.840' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (5, 3233, N'Sản phẩm phù hợp với giá tiền .', 5, N'daohuy', CAST(N'2024-05-03T23:27:53.547' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (6, 3233, N'ok nhé', 5, N'daohuy', CAST(N'2024-05-10T18:10:06.590' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (1006, 3182, N'Ok', 4, N'huy', CAST(N'2024-05-25T10:24:38.137' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (1007, 3233, N'Sản phẩm hơi xước', 3, N'huy', CAST(N'2024-06-01T21:56:40.643' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (2007, 3183, N'Sản phẩm tốt', 5, N'quoc', CAST(N'2024-06-07T07:05:54.187' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (2008, 99, N'Sản phẩm đúng với mô tả', 5, N'quoc', CAST(N'2024-06-07T07:06:15.093' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (2009, 3198, N'Tốt', 4, N'huy', CAST(N'2024-06-07T08:35:45.167' AS DateTime))
INSERT [dbo].[DanhGia] ([id], [masp], [noidung], [sosao], [tentaikhoan], [ngaytao]) VALUES (2010, 3198, N'ok mới gg', 5, N'huy', CAST(N'2024-06-07T08:56:11.407' AS DateTime))
SET IDENTITY_INSERT [dbo].[DanhGia] OFF
GO
SET IDENTITY_INSERT [dbo].[GioHang] ON 

INSERT [dbo].[GioHang] ([maGH], [maSP], [tenSP], [anhSP], [soluong], [giaban], [tongtien], [taikhoan]) VALUES (4093, 99, N'Đồng Hồ Kawasaki', N'638488107694548458.jpg', 1, 4443445, 4443445, N'quanghuy123')
INSERT [dbo].[GioHang] ([maGH], [maSP], [tenSP], [anhSP], [soluong], [giaban], [tongtien], [taikhoan]) VALUES (6068, 3217, N'Đồng hồ Gucci Mạ Vàng 34k', N'638498574071917063.jpg', 1, 8549999, 8549999, N'daohuy')
INSERT [dbo].[GioHang] ([maGH], [maSP], [tenSP], [anhSP], [soluong], [giaban], [tongtien], [taikhoan]) VALUES (6070, 3225, N'Đồng hồ Gucci Mạ Vàng 34k', N'638498575271874355.jpg', 1, 2731999, 2731999, N'tung')
SET IDENTITY_INSERT [dbo].[GioHang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonBan] ON 

INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4070, 3, CAST(N'2024-01-31T22:06:37.643' AS DateTime), CAST(N'2024-05-31T22:15:38.787' AS DateTime), N'Nguyễn Tuấn Phát', NULL, N'daohuy1692003@gmail.com', N'0364174636', 70187995, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-02T22:15:38.787' AS DateTime), N'huy', CAST(N'2024-06-01T00:19:41.840' AS DateTime), N'Thanh toán khi nhận hàng', 49000, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4071, 1, CAST(N'2024-02-27T22:30:33.343' AS DateTime), NULL, N'Ng', NULL, N'daohuy1692003@gmail.com', N'23245343', 14929999, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-02T22:30:33.343' AS DateTime), N'huy', NULL, N'Thanh toán khi nhận hàng', 49000, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4072, 0, CAST(N'2024-03-29T22:30:33.377' AS DateTime), NULL, N'Ng', NULL, N'daohuy1692003@gmail.com', N'23245343', 14929999, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-02T22:30:33.377' AS DateTime), N'huy', NULL, N'Thanh toán khi nhận hàng', 49000, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4073, 0, CAST(N'2024-03-31T22:34:49.640' AS DateTime), NULL, N'Đào Quang Huy', NULL, N'daohuy1692003@gmail.com', N'0364174636', 12896999, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-02T22:34:49.640' AS DateTime), N'huy', NULL, N'Thanh toán khi nhận hàng', 500000, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4074, -1, CAST(N'2024-05-31T22:34:49.680' AS DateTime), NULL, N'Đào Quang Huy', NULL, N'daohuy1692003@gmail.com', N'0364174636', 12896999, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-02T22:34:49.680' AS DateTime), N'huy', NULL, N'Thanh toán khi nhận hàng', 500000, N'Hủy bởi người bán với lí do : Hỏng rồi')
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4075, -1, CAST(N'2024-07-31T22:41:31.257' AS DateTime), NULL, N'Nguyễn Mạnh Thường Quân', NULL, N'daohuy1692003@gmail.com', N'0343317007', 12896999, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-02T22:41:31.257' AS DateTime), N'huy', NULL, N'Thanh toán qua Momo', 100000, N'Hủy bởi người bán')
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4076, 2, CAST(N'2024-06-01T17:15:21.123' AS DateTime), CAST(N'2024-06-01T21:55:35.370' AS DateTime), N'Đào quang huy', NULL, N'daohuy@gmail.com', N'364174634', 4164995, N'Hưng Yên', CAST(N'2024-06-03T21:55:35.370' AS DateTime), N'admin', NULL, N'Thanh toán khi nhận hàng', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4077, 3, CAST(N'2024-08-01T17:16:52.127' AS DateTime), CAST(N'2024-06-01T21:55:32.317' AS DateTime), N'Nguyễn Thị Phương Nhi', NULL, N'd@d.com', N'0364174636', 5423996, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-03T21:55:32.317' AS DateTime), N'huy', CAST(N'2024-06-01T21:56:13.000' AS DateTime), N'Thanh toán khi nhận hàng', 49000, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4078, 3, CAST(N'2024-09-01T17:17:55.500' AS DateTime), CAST(N'2024-06-01T21:55:30.340' AS DateTime), N'Nguyễn Mạnh Thường Quân', NULL, N'daohuy1692003@gmail.com', N'0364174636', 6779995, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-03T21:55:30.340' AS DateTime), N'huy', CAST(N'2024-06-01T21:56:11.447' AS DateTime), N'Thanh toán khi nhận hàng', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (4079, 3, CAST(N'2024-10-01T21:55:12.903' AS DateTime), CAST(N'2024-06-01T21:55:28.023' AS DateTime), N'Nguyễn Thùy Dung', NULL, N'dung@gmail.com', N'0364174636', 11479999, N'Hà Nội ', CAST(N'2024-06-03T21:55:28.023' AS DateTime), N'huy', CAST(N'2024-06-01T21:56:10.340' AS DateTime), N'Thanh toán khi nhận hàng', 49000, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5069, 3, CAST(N'2024-11-05T21:13:46.647' AS DateTime), CAST(N'2024-06-05T21:14:51.433' AS DateTime), N'Đào Quang Huy', NULL, N'duongdatx2004@gmail.com', N'0364174636', 102428986, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-07T21:14:51.433' AS DateTime), N'huy', CAST(N'2024-06-05T21:15:05.103' AS DateTime), N'Thanh toán khi nhận hàng', 500000, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5070, 3, CAST(N'2024-02-07T07:04:30.257' AS DateTime), CAST(N'2024-06-07T07:05:27.033' AS DateTime), N'Nguyễn Văn Quốc', NULL, N'quoc@gmail.com', N'0364174636', 318599980, N'Số nhà 37 , phường Xuân La , thành phố Hà Nội', CAST(N'2024-06-09T07:05:27.033' AS DateTime), N'quoc', CAST(N'2024-06-07T07:05:40.727' AS DateTime), N'Thanh toán khi nhận hàng', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5071, 0, CAST(N'2024-09-07T07:10:31.950' AS DateTime), NULL, N'Đào Quang Huy', NULL, N'daohuy1692003@gmail.com', N'0364174636', 83851989, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-09T07:10:31.950' AS DateTime), N'vinh', NULL, N'Thanh toán khi nhận hàng', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5072, 0, CAST(N'2024-06-07T07:13:22.553' AS DateTime), NULL, N'Nguyễn Mạnh Thường Quân', NULL, N'daohuy1692003@gmail.com', N'0364174636', 125239970, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-09T07:13:22.553' AS DateTime), N'vinh', NULL, N'Thanh toán khi nhận hàng', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5073, 0, CAST(N'2024-05-07T07:15:12.463' AS DateTime), NULL, N'Dương Văn Tiến', NULL, N'tien@gmail.com', N'0364174636', 161351987, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-09T07:15:12.463' AS DateTime), N'tien', NULL, N'Thanh toán qua ATM', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5074, 0, CAST(N'2024-08-07T07:17:08.920' AS DateTime), NULL, N'Đào Quang Huy 25/04', NULL, N'd@d.com', N'0364174636', 181519980, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-09T07:17:08.920' AS DateTime), N'tien', NULL, N'Thanh toán qua Momo', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5075, 0, CAST(N'2024-07-07T07:20:20.307' AS DateTime), NULL, N'Nguyễn Quang Khải', NULL, N'khai@gmail.com', N'0364174636', 199008984, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-09T07:20:20.307' AS DateTime), N'huy', NULL, N'Thanh toán qua Momo', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5076, 0, CAST(N'2024-06-07T07:21:53.070' AS DateTime), NULL, N'Nguyễn Mạnh Thường Quân', NULL, N'daohuy1692003@gmail.com', N'02324534', 119989990, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-09T07:21:53.070' AS DateTime), N'huy', NULL, N'Thanh toán khi nhận hàng', 0, NULL)
INSERT [dbo].[HoaDonBan] ([MaHD], [TrangThai], [NgayTao], [NgayDuyet], [TenKH], [Diachi], [Email], [SDT], [ThanhTien], [DiaChiGiaoHang], [ThoiGianGiaoHang], [TenTaiKhoan], [NgayHuy], [methodPay], [GiamGia], [LiDoHuy]) VALUES (5077, 3, CAST(N'2024-06-07T08:34:41.633' AS DateTime), CAST(N'2024-06-07T08:35:02.780' AS DateTime), N'Đào Quang Huy', NULL, N'huyokthao@gmail.com', N'0364174636', 44789997, N'Việt Hòa - Khoái Châu - Hưng Yên', CAST(N'2024-06-09T08:35:02.780' AS DateTime), N'huy', CAST(N'2024-06-07T08:35:27.123' AS DateTime), N'Thanh toán khi nhận hàng', 500000, NULL)
SET IDENTITY_INSERT [dbo].[HoaDonBan] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonNhap] ON 

INSERT [dbo].[HoaDonNhap] ([MaHD], [NgayNhap], [MaNCC], [TenTaiKhoan], [GhiChu], [methodPay], [Tongtien]) VALUES (2025, CAST(N'2024-04-18T22:34:33.910' AS DateTime), 2, N'huy', N'43', N'Chuyển qua Momo', 36000000)
INSERT [dbo].[HoaDonNhap] ([MaHD], [NgayNhap], [MaNCC], [TenTaiKhoan], [GhiChu], [methodPay], [Tongtien]) VALUES (2026, CAST(N'2024-04-22T19:33:15.793' AS DateTime), 3, N'huy', N'hahaha', N'Chuyển qua Momo', 29999990)
INSERT [dbo].[HoaDonNhap] ([MaHD], [NgayNhap], [MaNCC], [TenTaiKhoan], [GhiChu], [methodPay], [Tongtien]) VALUES (3017, CAST(N'2024-06-01T22:12:47.633' AS DateTime), 3, N'admin', N'Nhập thêm hàng sản phẩm cũ ', N'Chuyển qua Momo', 596800000)
INSERT [dbo].[HoaDonNhap] ([MaHD], [NgayNhap], [MaNCC], [TenTaiKhoan], [GhiChu], [methodPay], [Tongtien]) VALUES (3018, CAST(N'2024-06-01T22:20:47.810' AS DateTime), 2, N'admin', N'Sản phẩm mới ', N'Chuyển qua Momo', 500000000)
SET IDENTITY_INSERT [dbo].[HoaDonNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] ON 

INSERT [dbo].[LoaiTaiKhoans] ([MaLoaiTaiKhoan], [TenLoai], [mota]) VALUES (1, N'Admin', N'Quản trị viên hệ thống')
INSERT [dbo].[LoaiTaiKhoans] ([MaLoaiTaiKhoan], [TenLoai], [mota]) VALUES (2, N'Khách Hàng', N'Khách hàng ')
INSERT [dbo].[LoaiTaiKhoans] ([MaLoaiTaiKhoan], [TenLoai], [mota]) VALUES (7, N'Nhân Viên', N'Nhân Viên')
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoans] OFF
GO
SET IDENTITY_INSERT [dbo].[MaGiamGia] ON 

INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (1, N'huyshop', N'Voucher giảm giá ', CAST(N'2024-04-27' AS Date), CAST(N'2024-04-28' AS Date), 599000, 2)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (7, N'huyshop2', N'Voucher giảm giá ', CAST(N'2024-08-15' AS Date), CAST(N'2024-08-16' AS Date), 199000, 0)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (8, N'chaomung', N'Voucher giảm giá ', CAST(N'2024-05-27' AS Date), CAST(N'2024-06-23' AS Date), 500000, 1)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (9, N'tuyetvoi', N'Voucher giảm giá ', CAST(N'2024-06-27' AS Date), CAST(N'2024-07-28' AS Date), 100000, 0)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (11, N'chaomung1', N'Voucher giảm giá ', CAST(N'2024-05-29' AS Date), CAST(N'2024-06-18' AS Date), 100000, 1)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (12, N'huywatch', N'Mã giảm giá đơn hàng', CAST(N'2024-05-28' AS Date), CAST(N'2024-06-28' AS Date), 49000, 1)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (13, N'huyok', N'Voucher giảm giá', CAST(N'2024-05-30' AS Date), CAST(N'2024-08-30' AS Date), 199000, 1)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (14, N'muafree', N'Voucher giảm giá 1tr', CAST(N'2024-06-29' AS Date), CAST(N'2024-06-29' AS Date), 1000000, 0)
INSERT [dbo].[MaGiamGia] ([idMa], [code], [mota], [ngaybatdau], [ngayketthuc], [giagiam], [trangthai]) VALUES (15, N'huyxauzai', N'Voucher giảm giá', CAST(N'2024-07-30' AS Date), CAST(N'2024-08-15' AS Date), 58000, 0)
SET IDENTITY_INSERT [dbo].[MaGiamGia] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (1, N'Ngọc Trinh', N'Hà Nội', N'ncc1@example.com', N'9876543213')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (2, N'Chu Tiểu Han', N'26 Sơn La', N'ncc2@example.com', N'1234567890')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (3, N'Cường Đô La', N'Hà Nội', N'huy@gmail.com', N'0233453412')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (4, N'Nhà Cung Cấp 4', N'Hà Nội', N'huy9999@gmail.com', N'09999999999')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai]) VALUES (5, N'Đào Quang Huy', N'Hưng Yên', N'concec@gmail.com', N'0123456789')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (99, 8, N'Đồng Hồ Kawasaki', 17, 175, 1000000, N'["638521786395303389.png","638488107694548458.jpg","638489839863591468.jpg","638489839863580403.jpg","638489839863557341.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 34, N'Còn hàng', 22, N'Cao su', N'Ceramic', N'Màu đen', 5000000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3182, 12, N'Đồng  hồ nam Hublot', 17, 100, 6670000, N'["638488645558446852.jpg","638488645558448064.jpg","638489839367584965.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br><br><br><br>&nbsp;</p>', 154, N'Còn hàng', 63, N'Cao su', N'Kính', N'Màu xám', 5800000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3183, 8, N'Đồng hồ nam Hublot', 17, 967, 14929999, N'["638498567221412662.png","638498567221170943.jpg","638498567221170944.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 200, N'Còn hàng', 38, N'Kim loại', N'Titanium', N'Màu xám', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3184, 11, N'Đồng hồ nam Subashi', 17, 900, 4179999, N'["638488647259947623.jpg","638488647260049458.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 11, N'Còn hàng', 5, N'Da', N'Kính', N'Màu xám', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3187, 10, N'Đồng hồ nữ Tissot', 18, 1000, 14679999, N'["638498563258716895.jpg","638498563259149649.jpg","638498563258804394.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br><br><br><br><br>&nbsp;</p>', 123, N'Còn hàng', 0, N'Cao su', N'Titanium', N'Màu đen', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3188, 10, N'Đồng hồ nữ Tissot', 18, 1000, 880999, N'["638498564714413499.jpg","638498564714271613.jpg","638498564714545785.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 345, N'Còn hàng', 1, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3189, 10, N'Đồng hồ nữ Tissot', 18, 1000, 7015999, N'["638498564739380558.jpg","638498564739821320.jpg","638498568240855521.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 323, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3190, 10, N'Đồng hồ nữ Tissot', 18, 1000, 3478999, N'["638498564752238008.jpg","638498564751799520.jpg","638498564752649883.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 234, N'Còn hàng', 2, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3191, 10, N'Đồng hồ nữ Tissot', 18, 1000, 8906999, N'["638498572985124702.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 126, N'Còn hàng', 2, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3192, 10, N'Đồng hồ nữ Tissot', 18, 999, 15363999, N'["638498564770163102.jpg","638498564770207987.jpg","638498564770102608.jpg","638498564770208800.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 234, N'Còn hàng', 2, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3193, 10, N'Đồng hồ nữ Tissot', 18, 1000, 8656999, N'["638498569913946620.jpg","638498569913946619.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 92, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3194, 10, N'Đồng hồ nữ Tissot', 18, 985, 7095999, N'["638498570119562334.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 190, N'Còn hàng', 4, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3195, 10, N'Đồng hồ nữ Tissot', 18, 992, 15733999, N'["638498570389359330.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 242, N'Còn hàng', 1, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3196, 10, N'Đồng hồ nữ Tissot', 18, 999, 3615999, N'["638498570849010684.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 425, N'Còn hàng', 4, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3197, 10, N'Đồng hồ nữ Tissot', 18, 1000, 4840999, N'["638498571115956446.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 123, N'Còn hàng', 1, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3198, 10, N'Đồng hồ nữ Tissot', 18, 991, 4215999, N'["638498572453295761.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 346, N'Còn hàng', 4, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3199, 10, N'Đồng hồ nữ Tissot', 18, 1000, 13340999, N'["638498571470098639.jpg","638498571470196643.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3200, 10, N'Đồng hồ nữ Tissot', 18, 1000, 1374999, N'["638498564768698491.jpg","638498564768731809.jpg","638498564768652416.jpg","638498564768553489.jpg","638498564768729233.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3201, 10, N'Đồng hồ nữ Tissot', 18, 1000, 8507999, N'["638498564787702625.jpg","638498564787620203.jpg","638498564787582798.jpg","638498564787371931.jpg","638498564787542392.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3202, 10, N'Đồng hồ nữ Tissot', 18, 1000, 2815999, N'["638504573612477694.webp"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3203, 10, N'Đồng hồ nữ Tissot', 18, 1000, 13740999, N'["638504574369372304.webp"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3204, 10, N'Đồng hồ nữ Tissot', 18, 1000, 9539999, N'["638504574520378959.webp","638498564789563995.jpg","638498564789563337.jpg","638498564789649727.jpg","638498564789376698.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3205, 10, N'Đồng hồ nữ Tissot', 18, 1000, 6009999, N'["638504574651123069.webp","638498564786212814.jpg","638498564786199099.jpg","638498564786268468.jpg","638498564785691537.jpg","638498564785988593.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3206, 6, N'Đồng hồ nữ Tissot', 1062, 1000, 8412999, N'["638504575140826510.webp","638498564784083887.jpg","638498564784101533.jpg","638498564784350714.jpg","638498564784375344.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3207, 6, N'Đồng hồ nữ Tissot', 18, 1000, 6511999, N'["638504575328450880.webp","638498564793579592.jpg","638498564793612589.jpg","638498564793764578.jpg","638498564793296930.jpg","638498564793618737.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 1, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3208, 7, N'Đồng hồ nữ Tissot', 18, 1000, 18330999, N'["638504575745813399.webp","638498564795484530.jpg","638498564795693046.jpg","638498564795235528.jpg","638498564795393780.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3209, 10, N'Đồng hồ nữ Tissot', 18, 1000, 5729999, N'["638498564796983242.jpg","638498564796868065.jpg","638498564797049077.jpg","638498564796794922.jpg","638498564796870744.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3210, 10, N'Đồng hồ nữ Tissot', 18, 1000, 9591999, N'["638498564800371650.jpg","638498564800517170.jpg","638498564800386199.jpg","638498564800117138.jpg","638498564800356031.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3211, 10, N'Đồng hồ nữ Tissot', 18, 1000, 3963999, N'["638498564798698596.jpg","638498564798699688.jpg","638498564798700749.jpg","638498564798495771.jpg","638498564798693056.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3212, 10, N'Đồng hồ nữ Tissot', 18, 1000, 6756999, N'["638504576034115845.webp","638498564802205128.jpg","638498564802137915.jpg","638498564801987554.jpg","638498564802220260.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3213, 10, N'Đồng hồ nữ Tissot', 18, 1000, 13813999, N'["638498564803469959.jpg","638498564803472435.jpg","638498564803493240.jpg","638498564803296356.jpg","638498564803486915.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3214, 10, N'Đồng hồ nữ Tissot', 18, 995, 832999, N'["638498564804713002.jpg","638498564804738519.jpg","638498564804714256.jpg","638498564804674507.jpg","638498564804802808.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 5, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3215, 10, N'Đồng hồ nữ Tissot', 18, 1000, 4056999, N'["638498564820424528.jpg","638498564820402868.jpg","638498564820400418.jpg","638498564820289864.jpg","638498564820436526.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3216, 10, N'Đồng hồ nữ Tissot', 18, 1000, 1810999, N'["638498564822860055.jpg","638498564822957121.jpg","638498564823139582.jpg","638498564823052478.jpg","638498564823483353.jpg"]', N'<p><strong>- Chế độ bảo hành hậu mãi tại Huy Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p><p>&nbsp;</p>', 0, N'Còn hàng', 0, N'Kim loại', N'Ceramic', N'Màu bạc', 0, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3217, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 995, 8549999, N'["638498574071917063.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 6, N'Còn hàng', 5, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3218, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 1000, 7712999, N'["638498574162112753.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 0, N'Còn hàng', 1, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3219, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 1000, 8788999, N'["638498574322865769.png"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 0, N'Còn hàng', 4, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3220, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 969, 12715999, N'["638498574430403684.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 31, N'Còn hàng', 9, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3221, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 1000, 7076999, N'["638498574574836317.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 0, N'Còn hàng', 5, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3222, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 980, 4895999, N'["638498574653777822.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 20, N'Còn hàng', 2, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3223, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 997, 11602999, N'["638498574799644050.png"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 2, N'Còn hàng', 11, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3224, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 999, 5620999, N'["638498575140145146.png"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 1, N'Còn hàng', 8, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3225, 7, N'Đồng hồ Gucci Mạ Vàng 34k', 17, 990, 2731999, N'["638498575271874355.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)</p>', 10, N'Còn hàng', 8, N'Kim loại', N'Nhôm', N'Màu vàng gold', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3226, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 6071999, N'["638498578895022000.webp"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 0, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3227, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 990, 11055999, N'["638498579020899034.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 10, N'Còn hàng', 1, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3228, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 5781999, N'["638498579116405782.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 0, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3229, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 996, 2875999, N'["638498579202741971.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 4, N'Còn hàng', 1, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3230, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 4070999, N'["638498579289413381.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 1, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3231, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 8131999, N'["638498579379277592.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 1, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3232, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 8283999, N'["638498579459578837.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 0, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3233, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 999, 11479999, N'["638498579546576271.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 2, N'Còn hàng', 12, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3234, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 4628999, N'["638498579625325791.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 1, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3235, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 11515999, N'["638498579721426571.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 2, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3236, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 1000, 14424999, N'["638498579818345613.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 0, N'Còn hàng', 0, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3237, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 999, 13794999, N'["638498579888121481.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 24, N'Còn hàng', 1, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (3238, 10, N'Đồng hồ đôi Changle Sacage 45BK', 19, 990, 11998999, N'["638498579974605406.jpg"]', N'<p><strong>Chế độ bảo hành hậu mãi tại Hưng Watch:</strong></p><p><strong>+&nbsp;</strong>Bảo hành máy đồng hồ trong thời hạn 2 năm kể từ ngày mua hàng: miễn phí công lắp đặt, sửa chữa, kiểm tra chống nước, căn chỉnh nhanh chậm, giao trả đồng hồ bảo hành,...</p><p>+ Miễn phí thay Pin lần đầu tiên và giảm 50% cho các lần thay kế tiếp</p><p>+ Miễn phí lau dầu, bảo dưỡng 2 năm đối với đồng hồ cơ (Automatic)</p><p>+ Khuyến mãi từ 5-10% cho khách hàng khi mua đồng hồ lần 2 trở lên tại Hưng Watch và nhiều ưu đãi hấp dẫn khác,...</p><p>(Điều khoản bảo hành không bao gồm các tác động từ phía người sử dụng như trầy xước - rơi - vỡ - hư hỏng dây da - màu mạ trong quá trình sử dụng, ở bất kỳ trường hợp nào)<br>&nbsp;</p>', 10, N'Còn hàng', 2, N'Cao su', N'Ceramic', N'Màu bạc', 199999, NULL)
INSERT [dbo].[SanPham] ([MaSP], [MaTH], [TenMH], [MaLoai], [soLuongton], [GiaBan], [anhSP], [mota], [sldaban], [trangthai], [luotxem], [chatlieuday], [chatlieuvo], [mausac], [giaNhap], [giaGiam]) VALUES (4209, 6, N'ĐỒNG HỒ NAM TISSOT LE LOCLE POWERMATIC 80 20TH ANN', 17, 0, NULL, N'["638528793204025507.jpg","638528793204246354.png","638528793204280095.png"]', N'<p>Tissot Le Locle Powermatic 80 20th Anniversary T006.407.11.033.03 là một mẫu đồng hồ đặc biệt được giới thiệu nhân dịp kỷ niệm 20 năm ra đời của dòng sản phẩm di sản mang tên Le Locle của thương hiệu. Phiên bản này có thiết kế cọc số và bộ kim màu xanh dương ấn tượng. Đồng thời, một chiếc đồng hồ sẽ đi kèm 2 dây đeo (01 dây da và 01 dây kim loại) có cơ chế tháo nhanh để người dùng có thể tự tiến hành thay dây một cách dễ dàng.<br><br><br><br><br>&nbsp;</p>', 0, N'Hết hàng', 0, N'Cao su', N'Titanium', N'Màu xám', NULL, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'admin', N'123', N'daohuy1692003@gmail.com', 1, N'Đào Quang Huy new', N'Hưng Yên', N'0364174636', N'/image/avatar.jpg', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'daohuy', N'123', N'quang@gmail.com', 2, N'Lê Văn Quảng', N'Hà Nội', N'0375423889', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'hoang', N'123', N'huy@gmail.com', 7, N'Đào Văn Huấn', N'Hưng Yên', N'0343317007', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huy', N'123', N'daohuy1692003@gmail.com', 2, N'Đào Quang Huy new sửa', N'Hưng Yên', N'0364174636', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huy123', N'haha', N'Trống', 1, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huy12345', N'123', N'quang@gmail.com', 2, N'Lê Văn Quảng', N'Hưng Yên', N'0364174636', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huy2003', N'123', N'Trống', 1, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huykhachhangmoi', N'123', N'quang@gmail.com', 2, N'Lê Văn Quảng', N'Hưng Yên', N'0364174636', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huykkk', N'123', N'Trống', 1, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huyok', N'123', N'Trống', 1, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'huystaff', N'123', N'daohuy@gmail.com', 7, N'Đào Huy Update', N'Hưng Yên', N'0364174636', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'kien', N'123', N'kien123@gmail.com', 2, N'Nguyễn Trung Kiên', N'Hưng Yên', N'023354254', N'/image/boy.png', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'new', N'123', N'Trống', 2, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'quang', N'123', N'quang@gmail.com', 2, N'Lê Văn Quảng', N'Hà Nội', N'09871233', N'/image/okee.jpg', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'quanghuy', N'123', N'Trống', 2, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'quanghuy123', N'123', N'Trống', 2, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'quoc', N'123', N'quoc123@gmail.com', 2, N'Nguyễn Văn Quốc', N'Hưng Yên', N'0364174636', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'quyen', N'123', N'quyen123@gmail.com', 2, N'Nguyễn Công Quyến', N'Hà Nam', N'01242353', N'/image/images.jpg', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'thao', N'123', N'thao@gmail.com', 2, N'Đào thanh thảo', N'Hưng yên', N'02353453', N'/image/tải xuống.jpg', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'thaothanh123', N'123', N'daohuy@gmail.com', 2, N'Thảo', N'Hà Nội', N'0346173723', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'thaothanh12356', N'123', N'daohuy@gmail.com', 2, N'Thảo', N'Hà Nội', N'0346173723', NULL, NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'tien', N'123', N'Trống', 2, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'tung', N'123', N'Trống', 2, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
INSERT [dbo].[TaiKhoans] ([TenTaiKhoan], [MatKhau], [Email], [MaLoaiTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien], [Token]) VALUES (N'vinh', N'123', N'Trống', 2, N'Trống', N'Trống', N'Trống', N'Trống', NULL)
GO
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (17, N'Đồng hồ nam', N'Đồng hồ dành cho nam giới')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (18, N'Đồng hồ nữ', N'Đồng Hồ dành cho nữ giới nhé')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (19, N'Đồng hồ đôi', N'Đồng hồ dành cho cặp đôi')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (1062, N'Đồng hồ để bàn', N'Đồng hể để bàn')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (1063, N'Đồng hồ trang trí', N'Đồng hồ trang trí')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (1064, N'Đồng hồ Thụy Sỹ', N'Đồng hồ Thụy Sỹ')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (1065, N'Đồng hồ Nhật Bản', N'Đồng hồ Nhật Bản')
INSERT [dbo].[TheLoai] ([MaLoai], [TenLoai], [Ghichu]) VALUES (2062, N'Đồng hồ Hà Lan', N'Đồng hồ của hãng bên nước Hà Lan
')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([MaTH], [TenThuongHieu], [MoTa], [HinhAnh]) VALUES (6, N'Moschino', N'Đây là thương hiệu của Moschino', N'638489068371484045.png')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenThuongHieu], [MoTa], [HinhAnh]) VALUES (7, N'Chlỏe', N'Đây là thương hiệu của Chloer', N'638489064959371992.png')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenThuongHieu], [MoTa], [HinhAnh]) VALUES (8, N'Cartiero', N'Đây là thương hiệu của Cartiero', N'638489069068767323.png')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenThuongHieu], [MoTa], [HinhAnh]) VALUES (10, N'Burberry', N'Thương hiệu hàng đầu việt nam', N'638489064716351259.png')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenThuongHieu], [MoTa], [HinhAnh]) VALUES (11, N'Moschino', N'Hihi', N'638489069560230346.png')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenThuongHieu], [MoTa], [HinhAnh]) VALUES (12, N'Rolex', N'hihi', N'638489069696481671.png')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenThuongHieu], [MoTa], [HinhAnh]) VALUES (2014, N'Rolex', N'Thương hiệu Rolex', N'638522256750287336.png')
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[TinTucs] ON 

INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [TenTaiKhoan], [LuotXem], [TrangThai], [ngaytao]) VALUES (1002, N'Hướng dẫn cách sử dụng và lên dây cót đồng hồ cơ chuẩn cho người mới sửa', N'<p><a href="https://donghohaitrieu.com/nang-luong/co-automatic"><i><strong>Đồng hồ cơ</strong></i></a><i><strong> là cỗ máy thời gian tinh xảo bật nhất mà con người đã sáng tạo. Do hoạt động nhờ vào nguyên lý cơ học nên máy cơ khá bền chỉ khi bạn sử dụng đúng. Bài viết hôm nay, tôi sẽ hướng dẫn cách sử dụng đồng hồ cơ automatic và cách lên cót sao cho chuẩn xác.</strong></i></p><figure class="table"><table><tbody><tr><td><p><strong>MỤC LỤC</strong></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#cach-su-dung-dong-ho-co">› Hướng dẫn cách sử dụng đồng hồ cơ chuẩn xác</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#deo-dong-ho-it-nhat-8-tieng">1. Đeo đồng hồ ít nhất 8 tiếng mỗi ngày</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#len-cot-thu-cong">2. Lên cót thủ công nếu không có thời gian</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#phai-deo-dong-ho-sau-40-gio">3. Phải đeo đồng hồ sau 40 giờ không sử dụng</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#lau-dau-dong-ho-co">4. Lau dầu đồng hồ cơ định kỳ 2-4 năm / 1 lần</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#han-che-dat-dong-ho">5. Hạn chế đặt đồng hồ gần các thiết bị phát sóng</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#cach-len-day-cot-dong-ho-co">› Hướng dẫn lên dây cót đồng hồ cơ</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html#luu-y-cach-dung-dong-ho-co">› Lưu ý chung về cách dùng đồng hồ cơ</a></p></td></tr></tbody></table></figure><h2><strong>Hướng dẫn cách sử dụng đồng hồ cơ chuẩn xác nhất</strong></h2><p>Sử dụng đồng hồ cơ rất dễ, nhưng sử dụng sao cho đúng để tăng tuổi thọ lại cực kỳ khó, nhất là với người mới. Sử dụng sai khiến đồng hồ giảm tuổi thọ, tăng tỷ lệ lỗi và sai số khiến bạn tốn nhiều tiền sửa chữa, hoặc thậm chí hư hỏng.</p><figure class="image"><img style="aspect-ratio:480/360;" src="https://i.ytimg.com/vi/JYaeWAYLTds/hqdefault.jpg" alt="YouTube video" width="480" height="360"></figure><p><i>5 câu hỏi xoay quanh đồng hồ máy cơ, hướng dẫn lên dây cót tại nhà</i></p><h3><strong>1. Đeo đồng hồ ít nhất 8 tiếng mỗi ngày</strong></h3><p>Cách sử dụng đồng hồ cơ automatic chuẩn nhất là đeo ít nhất 8 tiếng mỗi ngày trên cổ tay.</p><p>Đeo đồng hồ trên tay giúp linh kiện cơ khí chuyển động và tạo ra năng lượng. Năng lượng sản sinh liên tục mỗi ngày giúp hạn chế lỗi sai giờ, sai ngày hoặc đứng máy.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/10/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co-anh-1.jpg" alt="Đeo đồng hồ ít nhất 8 tiếng mỗi ngày" width="900" height="1125"></p><p><strong>Tin tức liên quan:</strong></p><ul><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/cach-chinh-ngay-dong-ho-co-dam-bao-nhay-dung-12-gio-dem.html">Cách chỉnh ngày đồng hồ cơ (Automatic) đúng cho người mới</a></li><li><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung">Cẩm nang sử dụng đồng hồ đeo tay từ cơ bản đến nâng cao</a></li><li><a href="https://donghohaitrieu.com/tag/meo-su-dung-dong-ho">Mẹo sử dụng đồng hồ</a> và <a href="https://donghohaitrieu.com/tag/cac-loi-thuong-gap-tren-dong-ho">Các lỗi thường gặp</a></li></ul><h3><strong>2. Lên cót thủ công nếu không có thời gian</strong></h3><p>Với người có nhiều đồng hồ cơ, hoặc không có thời gian đeo mỗi ngày thì mỗi tối cần phải lên dây cót thủ công để “tạo ra chuyển động ảo” và nạp năng lượng bằng cách:</p><ul><li>Cách 1: Lắc đồng hồ (không lắc mạnh)</li><li>Cách 2: Xoay núm vặn thuận/ngược chiều kim đồng hồ</li></ul><figure class="image"><img style="aspect-ratio:480/360;" src="https://i.ytimg.com/vi/QF6027EW3Gk/hqdefault.jpg" alt="YouTube video" width="480" height="360"></figure><p><i>Lên dây cót đồng hồ cơ theo chiều nào mới đúng? – Cùng tham khảo cách lên dây cót chuẩn cho đồng hồ cơ bởi chuyên viên tại Đồng Hồ Hải Triều</i></p><h3><strong>3. Phải đeo đồng hồ sau 1.5 ngày không sử dụng</strong></h3><p>Sau khi năng lượng nạp đầy, đồng hồ cơ sẽ chạy ổn định trong khoảng 36 – 40 giờ (tương đương 1.5 ngày). Đây còn gọi là <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/thoi-gian-tru-cot-du-tru-nang-luong-cua-dong-ho-co.html"><strong>thời gian trữ cót</strong></a>. Hết <strong>thời gian trữ cót</strong>, cỗ máy ngay lập tức dừng chạy.</p><p>Không đợi đến ngưỡng 36 – 40 giờ, mà hãy sử dụng đồng hồ trước thời gian khuyến cáo 3 – 4 tiếng để đảm bảo năng lượng được nạp kịp thời.</p><p>Một số mẫu đồng hồ cơ cao cấp của <a href="https://donghohaitrieu.com/brand/longines">Longines</a>, <a href="https://donghohaitrieu.com/brand/seiko">Seiko</a> có thời gian trữ cót 45 hoặc 72 giờ, thậm chí <a href="https://donghohaitrieu.com/bo-suu-tap/tissot-1853-powermatic-80">Tissot Powermatic 80</a> có thời gian trữ cót 80 giờ thì bạn không lên cót thường xuyên vì dễ gây ra hiện tượng căng và đứt dây cót. Khoảng 3 ngày bạn mới phải lên dây cót một lần.</p><p>Theo dõi thời gian trữ cót của mình theo sổ tay hướng dẫn sử dụng, hoặc xem trực tiếp trên website của hãng để tự điều chỉnh tần suất sử dụng phù hợp.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/10/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co-anh-2.jpg" alt="Đeo đồng hồ mỗi ngày là cách lên dây cót cho đồng hồ cơ tự nhiên nhất, giúp tăng tuổi thọ cho sản phẩm" width="900" height="1125"></p><p><i>Mỗi đồng hồ cơ đều có thời gian trữ cót, do đó, hãy theo dõi để nạp năng lượng kịp thời</i></p><h3><strong>4. Lau dầu đồng hồ cơ định kỳ 2-4 năm/ 1 lần</strong></h3><p>Sự chuyển động của linh kiện cơ khí gây ra hao mào về bộ máy và khiến chúng bị khô. Nếu để lâu sẽ làm giảm độ chính xác, giảm tuổi thọ và gây ra tiếng kêu khi chạy.</p><p>Cách sử dụng đồng hồ cơ automatic theo khuyến cáo nhà sản xuất là lau dầu định kỳ 2 đến 4 năm / 1 lần. Dịch vụ này rất phổ biến và quý khách có thể sử dụng tại <a href="https://donghohaitrieu.com/ve-chung-toi/gioi-thieu-he-thong-showroom-dong-ho-hai-trieu.html">cửa hàng Hải Triều</a> gần nhất.</p><p>Tìm hiểu về: <a href="https://donghohaitrieu.com/dich-vu-lau-dau-dong-ho">Lau dầu đồng hồ cơ</a>.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/10/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co-anh-3.jpg" alt="Lau dầu đồng hồ cơ định kỳ 2-4 năm một lần" width="900" height="1125"></p><p><i>Tại phần tiếp xúc giữa những linh kiện sẽ được bôi dầu, ví dụ: Vị trí ốc nung xanh</i></p><h3><strong>5. Hạn chế đặt đồng hồ gần thiết bị phát sóng</strong></h3><p>Nhiều người có thói quen đặt đồng hồ cạnh tivi trước khi đi ngủ, điều này không tốt vì thiết bị thu và phát sóng như vậy làm bộ máy bị nhiễm từ, sai số tăng.</p><p>Thói quen để ngửa mặt số lên trên cũng không được khuyến khích vì tạo ra chuỗi các chuyển động không tốt. Hãy <strong>để phần mặt số úp xuống mặt bàn</strong> và đặt trên tấm vải mềm để không bị trầy.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/10/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co-anh-4.jpg" alt="Để úp mặt đồng hồ khi không sử dụng" width="900" height="900"></p><p><i>Để úp mặt đồng hồ như hình là tốt trong quá trình để đồng hồ qua đêm</i></p><h2><strong>Hướng dẫn cách lên dây cót đồng hồ cơ chuẩn xác nhất</strong></h2><p>Nhiều trường hợp lên dây cót quá đà khiến dây cót bị đứt, hoặc lên không đủ khiến đồng hồ hay bị sai giờ. Và đây là cách lên dây cót đồng hồ cơ đúng giúp duy trì tuổi thọ.</p><h3><strong>1. Lên dây cót tự nhiên bằng cách đeo đồng hồ</strong></h3><p>Ngoại trừ máy Handwinding thì tất cả máy cơ hiện nay đều có hỗ trợ lên dây tự động. Chỉ cần đeo lên tay, những linh kiện cơ khí chuyển động và sản sinh năng lượng. Đây là cách lên dây cót đồng hồ cơ automatic tự nhiên.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/10/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co-anh-5.jpg" alt="Đeo đồng hồ cơ mỗi ngày là cách lên dây cót tốt nhất" width="900" height="1125"></p><p><i>Không gì tốt nhất bằng cách lên dây cót đồng hồ cơ automatic tự nhiên như đeo sản phẩm lên tay mỗi ngày</i></p><p><i><strong>Gợi ý: </strong></i><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html"><i><strong>Đeo đồng hồ tay trái hay phải mới đẹp, đúng phong thủy?</strong></i></a></p><h3><strong>2. Lên dây cót “nhân tạo” bằng cách lắc đồng hồ</strong></h3><p>Bạn có thể tạo ra những “chuyển động ảo” tương tự như đeo trên tay bằng cách cầm đồng hồ lắc qua lắc lại. Điều này giúp linh kiện cơ khí chuyển động và tạo năng lượng.</p><p>Cách lên cót cho đồng hồ cơ này khá nhanh nhưng không nên lạm dụng bởi việc lắc qua lắc lại không đúng, không đều hoặc lắc quá mạnh dẫn đến thay đổi cấu trúc linh kiện bên trong và sản sinh lỗi.</p><p><img src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20600%20100%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" alt="Cách lên dây cót thủ công cho đồng hồ cơ" width="600"></p><h3><strong>3. Lên dây cót thủ công bằng cách xoay núm vặn</strong></h3><p>Tuỳ theo lượng cót còn lại trên đồng hồ mà bạn <strong>xoay 5 đến 20 vòng</strong> hoặc <strong>xoay núm vặn cho đến khi cảm giác núm vặn cứng lại</strong> là ngừng.</p><p>Nếu đồng hồ đã đầy cót mà tiếp tục xoay sẽ dẫn đến đứt dây cót.</p><p>2 chi tiết cần chú ý:</p><p>+ Chiều xoay: Thuận chiều kim đồng hồ. Riêng một số mẫu có hỗ trợ Magic Lever của hiệu Seiko sẽ xoay nụm vặn được 2 chiều.</p><p>+ Đồng hồ có lên cót thủ công: Bạn hoàn toàn yên tâm vì các dòng máy cơ hiện đại đều đã tích hợp đầy đủ cơ chế lên cót thủ công và tự động.</p><p><img src="data:image/svg+xml,%3Csvg%20viewBox%3D%220%200%20600%20351%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%3C%2Fsvg%3E" alt="" width="600" height="351"></p><h3><strong>4. Sử dụng hộp xoay đồng hồ</strong></h3><p>Cuối cùng, bạn có thể mua hộp xoay lên cót cho đồng hồ cơ. Cơ chế của hộp xoay là chuyển động liên tục xung quanh trục và chỉ cần đặt đồng hồ vào hộp, nó sẽ tự sản sinh ra năng lượng. Tuỳ số lượng đồng hồ bạn có là 2, 4 hoặc 6 thì mua hộp xoay 2, 4, 6… ngăn để tiết kiệm chi phí.</p><p><img src="https://donghohaitrieu.com/wp-content/uploads/2023/07/len-day-cot-dong-ho-co-bang-hop-xoay.gif" alt="Lên dây cót đồng hồ cơ bằng hộp xoay" width="600"></p><h2><strong>Những lưu ý chung về cách dùng đồng hồ cơ</strong></h2><p>Cần tránh xa những va đập vào vật cứng và tránh làm rơi đồng hồ.</p><p>Không nên dùng đồng hồ cơ tự động khi rửa tay, đi bơi, đi tắm hay xông hơi.</p><p>Không để gần nơi phát ra từ trường mạnh như ti vi, loa thùng, nam châm, bộ phát wifi,….</p><p>Nhiệt độ tốt nhất cho đồng hồ từ 10 – 40 độ C.</p><p>Nên cất vào nơi an toàn, tránh xa tầm tay trẻ em nếu không sử dụng.</p><p>Nếu đồng hồ cơ chạy sai giờ, sai ngày thì thời điểm <strong>điều chỉnh tốt nhất</strong> là từ 9h sáng đến 12 giờ trưa và <strong>không điều chỉnh</strong> từ 22h đến 4h sáng ngày mai. Đây là thời gian chuyển giao ô lịch, dễ làm hỏng bánh xe nếu bạn thao tác trên núm vặn.</p><p><br><br><br><br><br>&nbsp;</p>', N'638495458059753277.jpg', N'huy', 17, N'1', CAST(N'2024-04-23T23:35:37.793' AS DateTime))
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [TenTaiKhoan], [LuotXem], [TrangThai], [ngaytao]) VALUES (1003, N'Đồng hồ Hublot nam, nữ chính hãng có mức giá bao nhiêu? Đánh giá chi tiết các bộ sưu tập .', N'<p><i><strong>Hublot là thương hiệu </strong></i><a href="https://donghohaitrieu.com/tu-khoa/dong-ho-thuy-sy"><i><strong>đồng hồ Thụy Sỹ</strong></i></a><i><strong> hạng sang, bất kỳ ai muốn sở hữu đều phải bỏ ra một số tiền rất lớn, thậm chí có nhiều mẫu lên đến hàng chục tỷ đồng. Tuy nhiên vẫn có nhiều nơi bán đồng hồ Hublot nam, nữ giá chỉ từ vài triệu. Vậy trên thực tế, đồng hồ Hublot giá bao nhiêu?</strong></i></p><figure class="table"><table><tbody><tr><td><p><strong>MỤC LỤC</strong></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#dong-ho-hublot-gia-bao-nhieu">›&nbsp;Đồng hồ Hublot giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#su-that-thu-vi">Sự thật thú vị xoay quanh giá bán của đồng hồ Hublot</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-quartz-gia-bao-nhieu">1. Đồng hồ Hublot Quartz giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-automatic-gia-bao-nhieu">2. Đồng hồ Hublot Automatic giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-re-nhat-la-bao-nhieu">3. Đồng hồ Hublot rẻ nhất là bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-dat-nhat-la-bao-nhieu">4. Đồng hồ Hublot đắt nhất là bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#su-that-dang-sau-hublot-gia-2-trieu">› Đồng hồ Hublot giá 2 triệu đang rao bán có phải chính hãng không?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#bo-suu-tap-dong-ho-hublot-pho-bien">› Những bộ sưu tập đồng hồ Hublot phổ biến nhất hiện nay</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#o-dau">› Mua đồng hồ Hublot chính hãng ở đâu?</a></p></td></tr></tbody></table></figure><h2><strong>Đồng hồ Hublot giá bao nhiêu?</strong></h2><p>Giá đồng hồ Hublot nam, nữ chính hãng dao động từ 100 triệu đến khoảng 4 tỷ.</p><p>Tùy vào kết cấu vật liệu, công nghệ, tính năng và bộ máy mà giá đồng hồ Hublot được phân hóa rõ rệt theo từng dòng cụ thể, bao gồm:</p><ul><li>Hublot Classic Fusion: Giá từ 100 triệu</li><li>Hublot Big Bang: Giá từ 200 triệu</li><li>Hublot Spirit Of Big Bang: Giá từ 450 triệu</li></ul><p>Các phiên bản có giá thành cao từ 1 đến 4 tỷ phần lớn nằm trong bộ sưu tập Big Bang, được gia công từ nhóm vật liệu đắt tiền như kim cương, vàng khối, carbon. Đồng thời sở hữu bộ máy lắp ráp tinh xảo, một số phiên bản chạm rỗng hoặc sử dụng cỗ máy Tourbillon đẳng cấp.</p><p>So với những thương hiệu xa xỉ khác như <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/gia-dong-ho-rolex-nam-nu-chinh-hang.html">Rolex</a>, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/dong-ho-patek-philippe-geneve-gia-bao-nhieu-mua-o-dau.html">Patek Philippe</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-breguet-chinh-hang-cua-nuoc-nao-gia-bao-nhieu.html">Breguet</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho-blancpain-cua-nuoc-nao-gia-bao-nhieu-co-tot-khong.html">Blancpain</a>, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/dong-ho-cartier-cua-nuoc-nao-gia-bao-nhieu-co-tot-khong.html">Cartier</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-richard-mille-nam-nu-cua-nuoc-nao-gia-bao-nhieu.html">Richard Mille</a>,… vừa đắt đỏ vừa khó mua, thì việc sở hữu Hublot có vẻ dễ hơn vì giá “mềm” và mẫu đa dạng, sẵn có. Lý do này giúp Hublot rất phổ biến tại thị trường Việt Nam và có tệp khách hàng đa dạng.</p><p><strong>Cập nhật:</strong></p><ul><li><a href="https://donghohaitrieu.com/tag/tin-tuc-dong-ho-xa-xi">Tin tức đồng hồ xa xỉ và sự choáng ngợp về thiết kế, vật liệu</a></li><li><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi">Tin tức đồng hồ mới nhất, giới thiệu các bộ sưu tập bán chạy</a></li></ul><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-1.jpg" alt="Đồng hồ Hublot nam, nữ chính hãng giá bao nhiêu tại Viêt Nam?" width="900" height="1125"></p><p><i>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đồng hồ Hublot nam, nữ chính hãng giá bao nhiêu phụ thuộc vào nhiều yếu tố</i></p><h2><strong>Sự thật thú vị xoay quanh giá bán của đồng hồ Hublot</strong></h2><p><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-dong-ho-hublot-thuong-hieu-cua-nhung-nguoi-noi-tieng.html">Lịch sử thương hiệu Hublot</a> bắt đầu từ năm 1980 do nhà sáng lập Carlo Crocco người Ý dẫn dắt.</p><p>Tháng 4/2008, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/lvmh-group-tap-doan-dong-ho-lon-thu-3-the-gioi-so-huu-tag-heuer-hublot-zenith.html">tập đoàn thời trang xa xỉ LVMH</a> của Pháp đã mua lại thành công Hublot nhưng giá trị chuyển nhượng không được tiết lộ. LVMH đang kiểm soát 60 công ty với khoảng 75 thương hiệu ở đa dạng danh mục, nổi bật nhất là Tiffany &amp; Co., Christian Dior, Fendi, Givenchy, Marc Jacobs, Stella McCartney, Loewe, Loro Piana, Kenzo, Celine, Sephora, Princess Yachts, TAG Heuer và Bulgar.</p><p>Tính đến năm 2019, Hublot đã có 169 cửa hàng trên toàn cầu.</p><p>Việc gia nhập vào tập đoàn xa xỉ LVMH là động lực quan trọng giúp Hublot có thêm độ phủ sóng và sức ảnh hưởng trong ngành công nghiệp tỷ đô.</p><p>So với <a href="https://donghohaitrieu.com/tu-dien-dong-ho/tu-van-chon-mua/cac-thuong-hieu-dong-ho-noi-tieng-gia-binh-dan-tai-viet-nam.html">các hãng đồng hồ</a> khác, tuổi đời của Hublot cũng còn khá non trẻ nên những thắc mắc về giá bán và chất lượng luôn là đề tài bàn tán ở giới mộ điệu.</p><h3><strong>1. Đồng hồ Hublot Quartz giá bao nhiêu?</strong></h3><p>Đồng hồ Hublot Quartz có giá từ 100 triệu đến dưới 700 triệu VNĐ.</p><p>Hublot Quartz được tìm thấy nhiều trên Hublot Classic Fusion, bộ sưu tập lấy cảm hứng từ những chiếc đồng hồ cổ điển, sang trọng ở những năm 80. Hublot Quartz phù hợp đeo mỗi ngày nhờ vào thiết kế đơn giản, gọn nhẹ có độ chính xác cao. Tất cả đều tuân thủ tiêu chuẩn Swiss Made.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-2.jpg" alt="Giá đồng hồ Hublot Quartz chỉ từ 100 triệu" width="900" height="1111"></p><h3><strong>2. Đồng hồ Hublot Automatic giá bao nhiêu?</strong></h3><p>Đồng hồ Hublot Automatic có giá từ 370 triệu VNĐ đến 4 tỷ VNĐ.</p><p>Những chiếc đồng hồ Hublot automatic đều mang bản sắc riêng của thương hiệu nhờ cỗ máy tự lắp ráp 100% (in-house) và không bị phụ thuộc vào tập đoàn mẹ là LVMH Group.</p><p>Hublot nổi tiếng với 4 cỗ máy là Unico, Meca-10, Tourbillon và MP-11, trong đó:</p><ul><li>Unico hoàn thiện từ 354 linh kiện, thời gian trữ cót đạt 72 giờ</li><li>Unico hoàn thiện từ 223 linh kiện, thời gian trữ cót đạt 10 ngày</li><li>Tourbillon hoàn thiện từ 243 linh kiện, thời gian trữ cót đạt 3 ngày</li><li>Tourbillon hoàn thiện từ 270 linh kiện, thời gian trữ cót đạt 14 ngày</li></ul><p>Một số cỗ máy thông dụng khác do Hublot lắp ráp gồm Hub 4700, Hub 1770, Hub 1710.</p><p>Bên cạnh yếu tố chung là vật liệu, phong cách thiết kế,… thì sự khác nhau về thông số kỹ thuật, số lượng linh kiện, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/thoi-gian-tru-cot-du-tru-nang-luong-cua-dong-ho-co.html">thời gian trữ cót</a> và tính năng tích hợp vào cỗ máy dẫn đến giá thành Hublot automatic có sự phân hóa rõ rệt.</p><p>Hublot phục vụ cho nhiều siêu sao trên thế giới như Kylie Jenner, Kobe Bryant, Jay Z,… và đạt nhiều giải thưởng danh giá về đồng hồ như <strong>“Thiết kế năm 2005”</strong> trong khuôn khổ giải Geneva Watchmaking Grand Prix, <strong>“Đồng hồ ngoại cỡ tốt nhất”</strong> trong khuôn khổ giải Watch of the Year tại Bahrain.</p><p><strong>Kiến thức về Hublot:</strong></p><ul><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/cach-deo-su-dung-va-chinh-dong-ho-hublot-cho-nguoi-moi.html">Cách đeo, sử dụng và chỉnh đồng hồ Hublot cho người mới</a></li><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/kinh-nghiem-ban-dong-ho-hublot-chinh-hang-cu-gia-cao-nhat.html">Kinh nghiệm bán đồng hồ Hublot chính hãng cũ giá cao nhất</a></li><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/hu-hon-dong-ho-hublot-gia-re-300k-xai-duoc-dam-ba-bua.html">Hú hồn đồng hồ Hublot giá rẻ 300k xài được dăm ba bữa</a></li></ul><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-3.jpg" alt="Giá đồng hồ Hublot Automatic chỉ từ 370 triệu" width="900" height="900"></p><h3><strong>3. Đồng hồ Hublot rẻ nhất là bao nhiêu?</strong></h3><p>Hublot Classic Fusion giá 100 triệu là chiếc đồng hồ Hublot rẻ nhất mà bạn có thể sở hữu, phù hợp với những ai lần đầu “tập chơi” thương hiệu này.</p><p>Nếu bạn kỳ vọng quá nhiều lên một thương hiệu xa xỉ như Hublot cho phiên bản giá 100 triệu, thì Hublot Classic Fusion là không phù hợp. Vì thiết kế của nó chỉ dừng lại ở mức cơ bản như dây da thật, vỏ thép không gỉ, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html">cỗ máy Quartz</a> sản xuất tại Thụy Sỹ.</p><p>Tuy nhiên do được gắn nhãn “Hublot” và “<a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-swiss-made-la-gi-cach-phan-biet-san-pham-noi-bat.html">Swiss Made</a>” trên mặt số, Hublot Classic Fusion vẫn dễ dàng đưa bạn vào thế giới thượng lưu, giúp người đeo tự tin thể hiện đẳng cấp.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-4.jpg" alt="Những chiếc đồng hồ Hublot có giá bán rẻ nhất hiện nay" width="900" height="1125"></p><p><i>Kiểu dáng sang trọng trên những chiếc đồng hồ Hublot Classic Fusion có giá rẻ nhất</i></p><h3><strong>4. Đồng hồ Hublot đắt nhất là bao nhiêu?</strong></h3><p>Hublot Big Bang Diamond là chiếc đồng hồ Hublot đắt nhất thế giới tính đến thời điểm hiện tại. Phiên bản được niêm yết lên đến 5 triệu đô (khoảng 115 tỷ VNĐ).</p><p>Cô ca sỹ người Mỹ Beyonce Knowles (Chủ nhân của ca khúc hay nhất thập kỷ “Crazy In Love”) đã mua chiếc đồng hồ Hublot trị giá 5 triệu đô để tặng ông xã trong dịp sinh nhật lần thứ 43.</p><p>Hublot Big Bang Diamond hoàn thiện bởi đội ngũ 17 người (bao gồm cả thợ kim hoàn 40 năm kinh nghiệm tại thành phố New York) làm việc suốt 14 tháng. Sản phẩm được đính tới 1240 (một vài tài liệu khác ghi 1282) viên kim cương thiên nhiên có độ tinh khiết cao (A VVS).</p><p>Bên cạnh đính kim cương số lượng lớn và cỡ lớn thì phần vỏ của chiếc đồng hồ Hublot đắt nhất thế giới còn làm từ vàng trắng 18 karat, đánh bóng bằng kim cương, mạ rhodium. Bộ máy HUB 1100 giúp đồng hồ trữ cót 42 giờ.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Hublot-Big-Bang-Diamond.jpg" alt="Hublot Big Bang Diamond" width="900" height="450"></p><h2><strong>Sự thật đằng sau những chiếc đồng hồ Hublot giá 2 triệu</strong></h2><p>Dù website hãng và đại lý niêm yết khá cao (hơn 100 triệu) nhưng khi tôi thử tìm kiếm “đồng hồ Hublot chính hãng” trên Google lẫn Facebook thì kết quả xuất hiện ra rất bất ngờ. Nhiều nơi tại Việt Nam bán Hublot chính hãng chỉ trên dưới 2 triệu, thậm chí có nơi công khai 300k – 500k.</p><p>Bằng một vài thao tác kiểm tra cơ bản, tôi nhận thấy tất cả đều là hàng giả, không có nguồn gốc xuất xứ rõ ràng và đăng bán bởi các cá nhân (không phải đại lý chính thức).</p><p>Không chỉ Hublot mà ngay cả các hãng cao cấp hơn như Rolex, Omega hoặc rẻ hơn như <a href="https://donghohaitrieu.com/brand/casio">Casio</a>, <a href="https://donghohaitrieu.com/brand/daniel-wellington-dw">Daniel Wellington</a>, <a href="https://donghohaitrieu.com/brand/orient">Orient</a>, <a href="https://donghohaitrieu.com/brand/citizen">Citizen</a>, <a href="https://donghohaitrieu.com/brand/seiko">Seiko</a>,… cũng bị làm giả không thương tiếc. Hầu như không thể giải quyết triệt để vấn nạn hàng giả, để tránh xa, bạn cần trang bị cho mình kiến thức phân biệt để không rơi vào những cạm bẫy trên mạng xã hội.</p><p>Ai có ý định mua <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-gia-2-trieu-co-that-khong-hay-la-hang-gia.html">đồng hồ Hublot giá 2 triệu – 5 triệu</a> thì hãy lựa chọn những thương hiệu đồng hồ chính hãng giá bình dân để đảm bảo quyền lợi cho chính mình.</p><p><strong>Gợi ý: </strong><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/5-cach-phan-biet-dong-ho-hublot-that-gia-cuc-de-ai-cung-lam-duoc.html">8 cách phân biệt đồng hồ Hublot thật giả</a></p><figure class="image"><img style="aspect-ratio:480/360;" src="https://i.ytimg.com/vi/vco4Sh4qoi8/hqdefault.jpg" alt="YouTube video" width="480" height="360"></figure><p><i>Tại sao Hublot là thương hiệu đồng hồ xa xỉ bị ghét nhất?</i></p><h2><strong>Những bộ sưu tập đồng hồ Hublot phổ biến nhất hiện nay</strong></h2><p>Hublot phân chia các sản phẩm của mình thành 4 bộ sưu tập chủ đạo là Hublot Novelties, Hublot Big Bang, Hublot Classic Fusion, Hublot Spirit Of Big Bang, Hublot MP.</p><h3><strong>1. Hublot Big Bang</strong></h3><p>Là bộ sưu tập đẳng cấp nhất nên Hublot ưu tiên trang bị cỗ máy UNICO được chế tác hoàn hảo cùng loạt tính năng phức tạp và vật liệu mới như Carbon, Ceramic, kim cương,…</p><p>Tính đến thời điểm hiện tại thì dòng Big Bang có 68 phiên bản với giá thành dao động trong khoảng từ 16.000 USD (Khoảng 370 triệu) đến 122.000 USD (khoảng 2.8 tỷ VNĐ). Ngoài ra sẽ có nhiều mẫu cao cấp hơn với giá bán hơn 100 tỷ xác nhận kỷ lục thế giới.</p><p><strong>Khám phá: </strong><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/10-chiec-dong-ho-hublot-big-bang-ban-chay-nhat-the-gioi.html">10 chiếc đồng hồ Hublot Big Bang bán chạy nhất thế giới</a></p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-5.jpg" alt="Giá đồng hồ nam Hublot Big Bang" width="900" height="1125"></p><p><i>Hublot Big Bang là dòng đồng hồ tiêu biểu của thương hiệu Hublot, giúp người đeo khẳng định được giá trị của bản thân, địa vị ở xã hội và thước đo về kinh tế</i></p><h3><strong>2. Hublot Classic Fusion</strong></h3><p>Bộ sưu tập đồng hồ cơ bản nhất của hãng Hublot với giá thành phải chăng, nhiều mẫu mã để lựa chọn và khách hàng dễ dàng mua sắm tại hệ thống đại lý rộng khắp. Nếu muốn cao cấp hơn, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-classic-fusion-diamond.html">Hublot Classic Fusion Diamond</a> vẫn có thể đáp ứng nhờ vẻ ngoài sang trọng từ kim cương thiên nhiên, giá bán dao động đến hàng tỷ đồng.</p><p><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/10-chiec-dong-ho-hublot-classic-fusion-ban-chay-nhat-the-gioi.html">Hublot Classic Fusion</a> đã phát hành 234 phiên bản khác nhau với giá thành dao động trong khoảng từ 4.900 USD (khoảng 113 triệu VNĐ) đến 52.000 USD (khoảng 1.2 tỷ VNĐ). Nhiều ngôi sao của thế giới đã sở hữu các phiên bản Classic Fusion cho riêng mình.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Hublot-Classic-Fusion.jpg" alt="Bộ sưu tập Hublot Classic Fusion" width="900" height="1124"></p><p><i>Hublot Classic Fusion là dòng đồng hồ thông dụng dễ sở hữu bởi sự đa dạng về mẫu mã, giá thành dễ chịu hơn và mở bán rộng rãi tại các cửa hàng ủy quyền</i></p><h3><strong>3. Hublot Spirit Of Big Bang</strong></h3><p>Bộ sưu tập sử dụng nhiều vật liệu mới và độc quyền do Hublot sản xuất như Titanium, vàng King Gold, Ceramic, silicon, zirconium,… Những mẫu đồng hồ cơ Hublot có tần số dao động lên đến 36.000 vph, cao hơn nhiều so với tần số dao động 28.600 ở đồng hồ Thụy Sỹ phổ thông.</p><p>Hublot Spirit Of Big Bang phần lớn là đồng hồ nam và một số&nbsp;phiên bản dành cho nữ. Có đến 67 phiên bản đã được phát hành với giá dao động từ 16.000 USD (khoảng 370 triệu VNĐ) đến 95.000 USD (khoảng 2.1 tỷ VNĐ).</p><p>Phân biệt: <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/review-dong-ho/review-dong-ho-hublot-big-bang-sang-bleu.html">Hublot Big Bang Sang Bleu</a> và <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-big-bang-unico.html">Hublot Big Bang Unico</a></p><p><br><br><br><br><br>&nbsp;</p>', N'638498558072625804.jpg', N'huy', 6, N'1', CAST(N'2024-04-24T08:40:01.620' AS DateTime))
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [TenTaiKhoan], [LuotXem], [TrangThai], [ngaytao]) VALUES (1004, N' Đeo đồng hồ tay trái hay phải mới đẹp, đúng phong thủy?', N'<p><i><strong>Sau đây là câu trả lời chính xác nhất về đeo </strong></i><a href="https://donghohaitrieu.com/"><i><strong>đồng hồ</strong></i></a><i><strong> tay nào mới đúng, đẹp và hợp phong thủy mà bạn chưa từng nghe.</strong></i></p><figure class="table"><table><tbody><tr><td><p><strong>MỤC LỤC</strong></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#deo-dong-ho-tay-nao">› Đeo đồng hồ tay nào mới đúng?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#su-that-thu-vi">› 5 sự thật thú vị về tay đeo đồng hồ</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#tay-khong-thuan">1. Đeo đồng hồ ở tay không thuận</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#toi-uu">2. Thiết kế tối ưu khi đeo tay trái</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#bao-ve">3. Bảo vệ đồng hồ khỏi hư hại và tăng tuổi thọ</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#may-man">4. Đeo đồng hồ tay trái giúp bạn may mắn hơn</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#suc-khoe">5. Đồng hồ đeo tay trái có hại cho sức khỏe</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.html#destro">› Destro – Đồng hồ dành cho người thuận tay trái</a></p></td></tr></tbody></table></figure><h2><strong>Đeo đồng hồ tay nào mới đúng?</strong></h2><p>Nếu bạn thuận tay phải hãy đeo đồng hồ tay trái, thuận tay trái hãy đeo đồng hồ tay phải. Quy tắc này đúng cho cả phụ nữ và nam giới.</p><p>Tìm hiểu chuyên sâu: <a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung">Cẩm nang sử dụng đồng hồ đeo tay từ cơ bản đến nâng cao</a></p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/07/deo-dong-ho-tay-nao-moi-dung-1.jpg" alt="Đeo đồng hồ tay nào mới đúng? Câu trả lời là tay phải" width="900" height="1125"></p><h2><strong>5 sự thật thú vị về tay đeo đồng hồ</strong></h2><p>Có nhiều quan niệm cho rằng “nam tả, nữ hữu”,&nbsp; nghĩa là con trai nên đeo đồng hồ tay trái và con gái nên đeo đồng hồ tay phải. Quan niệm này là sai khi áp dùng vào việc lựa chọn tay đeo đồng hồ phù hợp. Chúng được giải thích qua 5 luận điểm sau:</p><h3><strong>1. Đeo đồng hồ ở tay không thuận</strong></h3><p>Một công trình nghiên cứu quy mô lớn được thực hiện bởi các nhà khoa học tại Đại học Bristol, Oxford, Bristol, Athena,… về chủ đề người thuận tay trái.</p><p>Họ đã điều tra 2.396.170 người với nhiều thử nghiệm khác nhau, kết quả chỉ ra rằng có khoảng 10,6% dân số trên thế giới thuận tay trái.</p><p>Số đông còn lại thuận tay phải.</p><p>Đeo đồng hồ, trang sức ở tay thuận trong sinh hoạt, làm việc hằng ngày có nguy cơ va chạm nhiều dẫn đến dễ trầy xước.</p><p>Không ai muốn khi tay thuận đang cầm một ly nước, nắm một vật thể nhọn mà bị va vào chiếc đồng hồ thân yêu của mình. Suy ra bất kể cả nam, nữ đeo đồng hồ tay nào thuộc đều cũng phụ thuộc vào:</p><ul><li>Nếu thuận tay phải, hãy đeo đồng hồ tay trái.</li><li>Nếu thuận tay trái, hãy đeo đồng hồ tay phải.</li></ul><h3><strong>2. Thiết kế tối ưu khi đeo tay trái</strong></h3><p>Hầu hết đồng hồ hiện hành đều bố trí núm vặn ở góc 3 giờ để khi đang đeo bên tay trái, bạn dễ chỉnh giờ hoặc sử dụng tính năng ngay trên cổ tay.</p><p>Trong khi nếu đeo ở tay phải thì việc chỉnh giờ rất khó và hầu như phải tháo đồng hồ ra khỏi tay mới có thể thao tác.</p><p>Lý do là 90% khách hàng của họ thuận tay phải (và đeo đồng hồ tay trái), nhà sản xuất tối ưu trải nghiệm nhanh chóng dành cho số đông.</p><p>Suy ra, cả nam hay nữ thuận tay phải đều nên đeo đồng hồ tay trái và cách đeo này phù hợp với bố trí bộ phận núm vặn trên đồng hồ đeo tay.</p><p>Riêng người thuận tay trái thì:</p><p>+ Đeo đồng hồ ở tay không thuận (tay phải) và ưu tiên mua những mẫu có ít tính năng và độ chính xác cao như <a href="https://donghohaitrieu.com/tu-dien-dong-ho/thuat-ngu/dong-ho-may-quartz-la-gi-uu-nhuoc-diem.html">Quartz</a>, Năng lượng ánh sáng, … để không phải điều chỉnh nhiều trong quá trình sử dụng.</p><p>+ Đeo đồng hồ ở tay trái giống số đông nhưng bạn cần tập thao tác nhiều hơn để quen với chiếc đồng hồ, từ đó thuận tiện với cách bố trí từ nhà sản xuất.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2024/02/deo-dong-ho-tay-nao-moi-dung-2.jpg" alt="Nam giới nên đeo đồng hồ tay trái để thuận tiện tùy chỉnh" width="900" height="1125"></p><p><i>Một người dùng đang điều chỉnh thời gian ngay cả khi đeo đồng hồ trên tay</i></p><h3><strong>3. Bảo vệ đồng hồ khỏi hư hại và tăng tuổi thọ</strong></h3><p>Xét về yếu tố kỹ thuật, nếu đeo đồng hồ tay thuận thì khi hoạt động mạnh như gõ búa, ném đồ vật ở cường độ mạnh, chơi quần vợt,… khiến bộ máy chuyển động nhiều hơn (đặc biệt là <a href="https://donghohaitrieu.com/nang-luong/co-automatic">đồng hồ cơ</a>).</p><p>Những va đập mạnh và liên tục có xu hướng làm mòn bộ máy, thậm chí phá hủy những linh kiện bên trong.</p><h3><strong>4. Đeo đồng hồ tay trái giúp bạn may mắn hơn</strong></h3><p>Trong văn hóa Á Đông, chúng ta luôn tìm kiếm may mắn cho những vật dụng gắn liền với bản thân như trang sức, đồng hồ, xe cộ,… nên nhiều người đã hỏi tôi rằng “đeo đồng hồ tay nào hợp phong thủy, mang lại may mắn và tài lộc”.</p><p>Câu trả lời là tay đeo đồng hồ không ảnh hưởng đến phong thủy, nó chỉ giúp quá trình đeo có thuận tiện hay không. Còn việc đeo đồng hồ có may mắn phụ thuộc vào màu sắc – vật liệu trên chiếc đồng hồ đó.</p><ul><li><strong>Về màu sắc:</strong></li></ul><p>Khi <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/cach-deo-dong-ho-dung-cach-va-lua-chon-dong-ho-phu-hop.html">chọn đồng hồ</a>, bạn nên xem xét đến yếu tố tương sinh – tương khắc của màu sắc lên bảng mệnh. Trong ngũ hành, tương sinh sẽ cùng tồn tại, phát triển và giúp đỡ nhau. Và tương khắc mang ý nghĩa áp bức, loại trừ.</p><p>Hãy lựa chọn các màu sắc tương sinh, tương hợp với mệnh và tránh nhóm màu tương khắc như sau:</p><ul><li>Người mệnh Kim: Hợp màu vàng, nâu đất, trắng, xám, ghi</li><li>Người mệnh Mộc: Hợp màu đen, xanh biển, xanh lục</li><li>Người mệnh Thủy: Hợp màu trắng, xám, ghi, đen, xanh biển</li><li>Người mệnh Hỏa: Hợp màu xanh lục, đỏ, hồng, tím</li><li>Người mệnh Thổ: Hợp màu đỏ, hồng, tím, vàng, nâu đất</li></ul><p>Màu sắc thể hiện qua vỏ, dây đeo hoặc tốt nhất là màu của mặt số đồng hồ.</p><p><strong>Hoặc tìm kiếm các mẫu phù hợp:</strong></p><p><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/menh-kim-deo-dong-ho-mau-gi-hang-nao-tot-mua-o-dau.html">Mệnh Kim</a><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/menh-moc-deo-dong-ho-mau-gi-hang-nao-tot-mua-o-dau.html">Mệnh Mộc</a><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/menh-thuy-deo-dong-ho-mau-gi-hang-nao-tot-mua-o-dau.html">Mệnh Thủy</a><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/menh-hoa-deo-dong-ho-mau-gi-luu-y-ngay-de-tranh-xui-xeo.html">Mệnh Hỏa</a><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/menh-tho-deo-dong-ho-mau-gi-hang-nao-tot-mua-o-dau.html">Mệnh Thổ</a></p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/10/tra-cuu-mau-sac.jpg" alt="Bảng tra cứu màu sắc dành cho người muốn đeo đồng hồ được may mắn hơn" width="1170" height="600"></p><ul><li><strong>Về vật liệu</strong></li></ul><p>Nếu bạn đang tìm kiếm yếu tố may mắn, tài lộc cho trên những chiếc đồng hồ đeo tay thì hãy lựa chọn các loại đồng hồ được gia công từ nhóm vật liệu “phong thủy” như:</p><p><a href="https://donghohaitrieu.com/phien-ban-dac-biet/vang-18k"><strong>Đồng hồ vàng khối</strong></a><strong>:</strong> Văn hóa Á Đông quan niệm rằng, vàng đại diện cho sự cao quý nên có khả năng hút tài lộc, may mắn, thể hiện tài chính vững vàng, vạn sự hanh thông.</p><p><a href="https://donghohaitrieu.com/phien-ban-dac-biet/vat-lieu-quy-hiem"><strong>Đồng hồ đá quý</strong></a><strong>:</strong> Các loại đá nói chung đều mang lại năng lượng tích cực từ thiên nhiên, khơi dậy trạng trái hạnh phúc, sự quyết đoán và phẩm chất lãnh đạo trong mỗi con người.</p><p><a href="https://donghohaitrieu.com/phien-ban-dac-biet/dinh-kim-cuong"><strong>Đồng hồ kim cương</strong></a><strong>:</strong> Là vật liệu đứng đầu trong Ngũ đại bảo thạch “Kim cương, Ruby, Sapphire, Ngọc lục bảo, Opal” nên có năng lực tẩy uế cực mạnh, vẻ ngoài sang trọng và đẹp đẽ đại diện cho sự vững vàng tài chính, thăng hoa trong tình yêu.</p><h3><strong>5. Đồng hồ đeo tay trái có hại cho sức khỏe</strong></h3><p>Đeo đồng hồ tay trái sẽ khiến huyệt thần môn bị ảnh hưởng dễ làm gây hội chứng ống cổ tay, tổn thương gân, dây chằng … nhưng <strong>quan điểm này là sai</strong> vì cả hai tay phải và trái đều có huyệt thần môn chứ không riêng gì tay trái.</p><p>Theo Đông Y, huyệt thần môn được kích thích nhiều sẽ giúp giảm đau đầu, chóng mặt, hồi hộp, đánh trống ngực, tâm trạng lo lắng, mệt mỏi nên thường đưa vào các phương pháp xoa bóp bấm huyệt nên thực hiện. Do đó, đeo đồng hồ lệch vào trong (cách huyệt thần môn) sẽ không ảnh hưởng đến sức khỏe.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/09/6-giai-dap-nen-deo-dong-ho-tay-phai-hay-tay-trai-tot-hon.jpg" alt="Đeo đồng hồ tay nào cũng được, tuy nhiên cần phải tránh hai vị trí huyệt thần môn" width="770" height="519"></p><p><i>Huyệt thần môn có cả hai tay và được đánh dấu vị trí, bạn nên đeo đồng hồ cách hai vị trí này sẽ có lợi nhất cho sức khỏe của mình</i></p><p>Ngoài ra thì bạn nên chú ý đến những điều sau:</p><p>Nên đeo đồng hồ tay trái khi: dùng viết/chuột tay phải, phải làm những việc/tiếp xúc máy móc công cụ dành cho tay phải, dùng đồng hồ cơ nên thường xuyên phải điều chỉnh/lên dây cót…</p><p>Có thể đeo đồng hồ tay phải khi: không tiếp xúc nhiều với những đồ vật/thiết bị phù hợp với tay phải, chọn chiếc đồng hồ thiết kế đặc biệt để đeo tay phải (núm chỉnh đặt ở vị trí nửa trái mặt số).</p><p>Trong trường hợp dùng đồng hồ tự động mà không muốn đeo đến 8 tiếng mỗi ngày thì nên đeo bên tay thuận, việc lên dây cót tự động hiệu quả hơn vì tay thuận là tay cử động nhiều. Đến khi cần điều chỉnh hay lên cót thì tháo ra để thực hiện, như vậy sẽ tránh trục núm đồng hồ bị hỏng.</p><h2><strong>Destro – Đồng hồ dành cho người thuận tay trái</strong></h2><p>Chỉ 10% dân số thuận tay trái nên các nhà sản xuất tập trung vào số đông, là nhóm người thuận tay phải. Núm vặn cũng cá nhân hóa cho số đông thông qua việc bố trí núm vặn ở góc 3 giờ.</p><p>Tuy nhiên, thế giới vẫn không bỏ rơi người thuận tay trái với những mẫu đồng hồ mang phong cách Destro – Thay đổi núm chỉnh giờ từ góc 3 giờ sang vị trí 9 giờ.</p><p>Nghĩa là nếu bạn thuận tay trái, đeo đồng hồ tay phải thì núm vặn giờ đây đã quay ngược vào trong và giúp quá trình điều chỉnh thời gian diễn ra nhanh chóng ngay trên cổ tay.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/07/Destro.jpg" alt="Destro dành cho người thuận tay phải" width="900" height="900"></p><p><i>Phong cách thiết kế Destro dành cho người thuận tay phải, hãy thử tượng tưởng khi ướm chiếc đồng hồ này lên tay phải thì phần núm vặn sẽ quay vào trong và giúp việc điều chỉnh thời gian được dễ dàng</i></p><p>Điểm trừ: Thiết kế Destro phục vụ cho số ít nên rất khó tìm. Destro cũng không được tìm thấy trên những bộ sưu tập đồng hồ bán chạy của các hãng thông dụng, dẫn đến người mua không mặn mà.</p><p><strong>Cẩm nang sử dụng và bảo quản đồng hồ:</strong></p><ul><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/phuong-phap-ve-sinh-dong-ho-deo-tay-don-gian-nhat.html">Cách vệ sinh đồng hồ dây da, kim loại, mạ vàng,… tại nhà</a></li><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/cach-lam-mem-day-da-dong-ho-cach-bao-duong-khong-hu-hai.html">Cách bảo dưỡng làm mềm dây da đồng hồ không hư hại</a></li><li><a href="https://donghohaitrieu.com/tu-dien-dong-ho/cam-nang-su-dung/huong-dan-cach-su-dung-va-len-day-cot-dong-ho-co.html">Hướng dẫn cách sử dụng và lên dây cót đồng hồ cơ chuẩn cho người mới</a><br><br><br><br>&nbsp;</li></ul>', N'638495455916161491.jpg', N'huy', 11, N'1', CAST(N'2024-04-24T08:53:11.660' AS DateTime))
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [TenTaiKhoan], [LuotXem], [TrangThai], [ngaytao]) VALUES (1005, N'Đồng hồ rẻ nhất thị trường hiện nay có tốt không ?', N'<p><i><strong>Hublot là thương hiệu </strong></i><a href="https://donghohaitrieu.com/tu-khoa/dong-ho-thuy-sy"><i><strong>đồng hồ Thụy Sỹ</strong></i></a><i><strong> hạng sang, bất kỳ ai muốn sở hữu đều phải bỏ ra một số tiền rất lớn, thậm chí có nhiều mẫu lên đến hàng chục tỷ đồng. Tuy nhiên vẫn có nhiều nơi bán đồng hồ Hublot nam, nữ giá chỉ từ vài triệu. Vậy trên thực tế, đồng hồ Hublot giá bao nhiêu?</strong></i></p><figure class="table"><table><tbody><tr><td><p><strong>MỤC LỤC</strong></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#dong-ho-hublot-gia-bao-nhieu">›&nbsp;Đồng hồ Hublot giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#su-that-thu-vi">Sự thật thú vị xoay quanh giá bán của đồng hồ Hublot</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-quartz-gia-bao-nhieu">1. Đồng hồ Hublot Quartz giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-automatic-gia-bao-nhieu">2. Đồng hồ Hublot Automatic giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-re-nhat-la-bao-nhieu">3. Đồng hồ Hublot rẻ nhất là bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-dat-nhat-la-bao-nhieu">4. Đồng hồ Hublot đắt nhất là bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#su-that-dang-sau-hublot-gia-2-trieu">› Đồng hồ Hublot giá 2 triệu đang rao bán có phải chính hãng không?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#bo-suu-tap-dong-ho-hublot-pho-bien">› Những bộ sưu tập đồng hồ Hublot phổ biến nhất hiện nay</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#o-dau">› Mua đồng hồ Hublot chính hãng ở đâu?</a></p></td></tr></tbody></table></figure><h2><strong>Đồng hồ Hublot giá bao nhiêu?</strong></h2><p>Giá đồng hồ Hublot nam, nữ chính hãng dao động từ 100 triệu đến khoảng 4 tỷ.</p><p>Tùy vào kết cấu vật liệu, công nghệ, tính năng và bộ máy mà giá đồng hồ Hublot được phân hóa rõ rệt theo từng dòng cụ thể, bao gồm:</p><ul><li>Hublot Classic Fusion: Giá từ 100 triệu</li><li>Hublot Big Bang: Giá từ 200 triệu</li><li>Hublot Spirit Of Big Bang: Giá từ 450 triệu</li></ul><p>Các phiên bản có giá thành cao từ 1 đến 4 tỷ phần lớn nằm trong bộ sưu tập Big Bang, được gia công từ nhóm vật liệu đắt tiền như kim cương, vàng khối, carbon. Đồng thời sở hữu bộ máy lắp ráp tinh xảo, một số phiên bản chạm rỗng hoặc sử dụng cỗ máy Tourbillon đẳng cấp.</p><p>So với những thương hiệu xa xỉ khác như <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/gia-dong-ho-rolex-nam-nu-chinh-hang.html">Rolex</a>, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/dong-ho-patek-philippe-geneve-gia-bao-nhieu-mua-o-dau.html">Patek Philippe</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-breguet-chinh-hang-cua-nuoc-nao-gia-bao-nhieu.html">Breguet</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho-blancpain-cua-nuoc-nao-gia-bao-nhieu-co-tot-khong.html">Blancpain</a>, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/dong-ho-cartier-cua-nuoc-nao-gia-bao-nhieu-co-tot-khong.html">Cartier</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-richard-mille-nam-nu-cua-nuoc-nao-gia-bao-nhieu.html">Richard Mille</a>,… vừa đắt đỏ vừa khó mua, thì việc sở hữu Hublot có vẻ dễ hơn vì giá “mềm” và mẫu đa dạng, sẵn có. Lý do này giúp Hublot rất phổ biến tại thị trường Việt Nam và có tệp khách hàng đa dạng.</p><p><strong>Cập nhật:</strong></p><ul><li><a href="https://donghohaitrieu.com/tag/tin-tuc-dong-ho-xa-xi">Tin tức đồng hồ xa xỉ và sự choáng ngợp về thiết kế, vật liệu</a></li><li><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi">Tin tức đồng hồ mới nhất, giới thiệu các bộ sưu tập bán chạy</a></li></ul><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-1.jpg" alt="Đồng hồ Hublot nam, nữ chính hãng giá bao nhiêu tại Viêt Nam?" width="900" height="1125"></p><p><i>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đồng hồ Hublot nam, nữ chính hãng giá bao nhiêu phụ thuộc vào nhiều yếu tố</i></p><h2><strong>Sự thật thú vị xoay quanh giá bán của đồng hồ Hublot</strong></h2><p><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-dong-ho-hublot-thuong-hieu-cua-nhung-nguoi-noi-tieng.html">Lịch sử thương hiệu Hublot</a> bắt đầu từ năm 1980 do nhà sáng lập Carlo Crocco người Ý dẫn dắt.</p><p>Tháng 4/2008, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/lvmh-group-tap-doan-dong-ho-lon-thu-3-the-gioi-so-huu-tag-heuer-hublot-zenith.html">tập đoàn thời trang xa xỉ LVMH</a> của Pháp đã mua lại thành công Hublot nhưng giá trị chuyển nhượng không được tiết lộ. LVMH đang kiểm soát 60 công ty với khoảng 75 thương hiệu ở đa dạng danh mục, nổi bật nhất là Tiffany &amp; Co., Christian Dior, Fendi, Givenchy, Marc Jacobs, Stella McCartney, Loewe, Loro Piana, Kenzo, Celine, Sephora, Princess Yachts, TAG Heuer và Bulgar.</p><p>Tính đến năm 2019, Hublot đã có 169 cửa hàng trên toàn cầu.</p><p>Việc gia nhập vào tập đoàn xa xỉ LVMH là động lực quan trọng giúp Hublot có thêm độ phủ sóng và sức ảnh hưởng trong ngành công nghiệp tỷ đô.</p><p>So với <a href="https://donghohaitrieu.com/tu-dien-dong-ho/tu-van-chon-mua/cac-thuong-hieu-dong-ho-noi-tieng-gia-binh-dan-tai-viet-nam.html">các hãng đồng hồ</a> khác, tuổi đời của Hublot cũng còn khá non trẻ nên những thắc mắc về giá bán và chất lượng luôn là đề tài bàn tán ở giới mộ điệu.</p><h3><strong>1. Đồng hồ Hublot Quartz giá bao nhiêu?</strong></h3><p>Đồng hồ Hublot Quartz có giá từ 100 triệu đến dưới 700 triệu VNĐ.</p><p>Hublot Quartz được tìm thấy nhiều trên Hublot Classic Fusion, bộ sưu tập lấy cảm hứng từ những chiếc đồng hồ cổ điển, sang trọng ở những năm 80. Hublot Quartz phù hợp đeo mỗi ngày nhờ vào thiết kế đơn giản, gọn nhẹ có độ chính xác cao. Tất cả đều tuân thủ tiêu chuẩn Swiss Made.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-2.jpg" alt="Giá đồng hồ Hublot Quartz chỉ từ 100 triệu" width="900" height="1111"></p><h3><strong>2. Đồng hồ Hublot Automatic giá bao nhiêu?</strong></h3><p>Đồng hồ Hublot Automatic có giá từ 370 triệu VNĐ đến 4 tỷ VNĐ.</p><p>Những chiếc đồng hồ Hublot automatic đều mang bản sắc riêng của thương hiệu nhờ cỗ máy tự lắp ráp 100% (in-house) và không bị phụ thuộc vào tập đoàn mẹ là LVMH Group.</p><p>Hublot nổi tiếng với 4 cỗ máy là Unico, Meca-10, Tourbillon và MP-11, trong đó:</p><ul><li>Unico hoàn thiện từ 354 linh kiện, thời gian trữ cót đạt 72 giờ</li><li>Unico hoàn thiện từ 223 linh kiện, thời gian trữ cót đạt 10 ngày</li><li>Tourbillon hoàn thiện từ 243 linh kiện, thời gian trữ cót đạt 3 ngày</li><li>Tourbillon hoàn thiện từ 270 linh kiện, thời gian trữ cót đạt 14 ngày</li></ul><p>Một số cỗ máy thông dụng khác do Hublot lắp ráp gồm Hub 4700, Hub 1770, Hub 1710.</p><p>Bên cạnh yếu tố chung là vật liệu, phong cách thiết kế,… thì sự khác nhau về thông số kỹ thuật, số lượng linh kiện, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/thoi-gian-tru-cot-du-tru-nang-luong-cua-dong-ho-co.html">thời gian trữ cót</a> và tính năng tích hợp vào cỗ máy dẫn đến giá thành Hublot automatic có sự phân hóa rõ rệt.</p><p>Hublot phục vụ cho nhiều siêu sao trên thế giới như Kylie Jenner, Kobe Bryant, Jay Z,… và đạt nhiều giải thưởng danh giá về đồng hồ như <strong>“Thiết kế năm 2005”</strong> trong khuôn khổ giải Geneva Watchmaking Grand Prix, <strong>“Đồng hồ ngoại cỡ tốt nhất”</strong> trong khuôn khổ giải Watch of the Year tại Bahrain.</p><p><strong>Kiến thức về Hublot:</strong></p><ul><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/cach-deo-su-dung-va-chinh-dong-ho-hublot-cho-nguoi-moi.html">Cách đeo, sử dụng và chỉnh đồng hồ Hublot cho người mới</a></li><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/kinh-nghiem-ban-dong-ho-hublot-chinh-hang-cu-gia-cao-nhat.html">Kinh nghiệm bán đồng hồ Hublot chính hãng cũ giá cao nhất</a></li><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/hu-hon-dong-ho-hublot-gia-re-300k-xai-duoc-dam-ba-bua.html">Hú hồn đồng hồ Hublot giá rẻ 300k xài được dăm ba bữa</a></li></ul><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-3.jpg" alt="Giá đồng hồ Hublot Automatic chỉ từ 370 triệu" width="900" height="900"></p><h3><strong>3. Đồng hồ Hublot rẻ nhất là bao nhiêu?</strong></h3><p>Hublot Classic Fusion giá 100 triệu là chiếc đồng hồ Hublot rẻ nhất mà bạn có thể sở hữu, phù hợp với những ai lần đầu “tập chơi” thương hiệu này.</p><p>Nếu bạn kỳ vọng quá nhiều lên một thương hiệu xa xỉ như Hublot cho phiên bản giá 100 triệu, thì Hublot Classic Fusion là không phù hợp. Vì thiết kế của nó chỉ dừng lại ở mức cơ bản như dây da thật, vỏ thép không gỉ, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html">cỗ máy Quartz</a> sản xuất tại Thụy Sỹ.</p><p>Tuy nhiên do được gắn nhãn “Hublot” và “<a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-swiss-made-la-gi-cach-phan-biet-san-pham-noi-bat.html">Swiss Made</a>” trên mặt số, Hublot Classic Fusion vẫn dễ dàng đưa bạn vào thế giới thượng lưu, giúp người đeo tự tin thể hiện đẳng cấp.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-4.jpg" alt="Những chiếc đồng hồ Hublot có giá bán rẻ nhất hiện nay" width="900" height="1125"></p><p><i>Kiểu dáng sang trọng trên những chiếc đồng hồ Hublot Classic Fusion có giá rẻ nhất</i></p><h3><strong>4. Đồng hồ Hublot đắt nhất là bao nhiêu?</strong></h3><p>Hublot Big Bang Diamond là chiếc đồng hồ Hublot đắt nhất thế giới tính đến thời điểm hiện tại. Phiên bản được niêm yết lên đến 5 triệu đô (khoảng 115 tỷ VNĐ).</p><p>Cô ca sỹ người Mỹ Beyonce Knowles (Chủ nhân của ca khúc hay nhất thập kỷ “Crazy In Love”) đã mua chiếc đồng hồ Hublot trị giá 5 triệu đô để tặng ông xã trong dịp sinh nhật lần thứ 43.</p><p>Hublot Big Bang Diamond hoàn thiện bởi đội ngũ 17 người (bao gồm cả thợ kim hoàn 40 năm kinh nghiệm tại thành phố New York) làm việc suốt 14 tháng. Sản phẩm được đính tới 1240 (một vài tài liệu khác ghi 1282) viên kim cương thiên nhiên có độ tinh khiết cao (A VVS).</p><p>Bên cạnh đính kim cương số lượng lớn và cỡ lớn thì phần vỏ của chiếc đồng hồ Hublot đắt nhất thế giới còn làm từ vàng trắng 18 karat, đánh bóng bằng kim cương, mạ rhodium. Bộ máy HUB 1100 giúp đồng hồ trữ cót 42 giờ.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Hublot-Big-Bang-Diamond.jpg" alt="Hublot Big Bang Diamond" width="900" height="450"></p><h2><strong>Sự thật đằng sau những chiếc đồng hồ Hublot giá 2 triệu</strong></h2><p>Dù website hãng và đại lý niêm yết khá cao (hơn 100 triệu) nhưng khi tôi thử tìm kiếm “đồng hồ Hublot chính hãng” trên Google lẫn Facebook thì kết quả xuất hiện ra rất bất ngờ. Nhiều nơi tại Việt Nam bán Hublot chính hãng chỉ trên dưới 2 triệu, thậm chí có nơi công khai 300k – 500k.</p><p>Bằng một vài thao tác kiểm tra cơ bản, tôi nhận thấy tất cả đều là hàng giả, không có nguồn gốc xuất xứ rõ ràng và đăng bán bởi các cá nhân (không phải đại lý chính thức).</p><p>Không chỉ Hublot mà ngay cả các hãng cao cấp hơn như Rolex, Omega hoặc rẻ hơn như <a href="https://donghohaitrieu.com/brand/casio">Casio</a>, <a href="https://donghohaitrieu.com/brand/daniel-wellington-dw">Daniel Wellington</a>, <a href="https://donghohaitrieu.com/brand/orient">Orient</a>, <a href="https://donghohaitrieu.com/brand/citizen">Citizen</a>, <a href="https://donghohaitrieu.com/brand/seiko">Seiko</a>,… cũng bị làm giả không thương tiếc. Hầu như không thể giải quyết triệt để vấn nạn hàng giả, để tránh xa, bạn cần trang bị cho mình kiến thức phân biệt để không rơi vào những cạm bẫy trên mạng xã hội.</p><p>Ai có ý định mua <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-gia-2-trieu-co-that-khong-hay-la-hang-gia.html">đồng hồ Hublot giá 2 triệu – 5 triệu</a> thì hãy lựa chọn những thương hiệu đồng hồ chính hãng giá bình dân để đảm bảo quyền lợi cho chính mình.</p><p><strong>Gợi ý: </strong><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/5-cach-phan-biet-dong-ho-hublot-that-gia-cuc-de-ai-cung-lam-duoc.html">8 cách phân biệt đồng hồ Hublot thật giả</a></p><figure class="image"><img style="aspect-ratio:480/360;" src="https://i.ytimg.com/vi/vco4Sh4qoi8/hqdefault.jpg" alt="YouTube video" width="480" height="360"></figure><p><i>Tại sao Hublot là thương hiệu đồng hồ xa xỉ bị ghét nhất?</i></p><h2><strong>Những bộ sưu tập đồng hồ Hublot phổ biến nhất hiện nay</strong></h2><p>Hublot phân chia các sản phẩm của mình thành 4 bộ sưu tập chủ đạo là Hublot Novelties, Hublot Big Bang, Hublot Classic Fusion, Hublot Spirit Of Big Bang, Hublot MP.</p><h3><strong>1. Hublot Big Bang</strong></h3><p>Là bộ sưu tập đẳng cấp nhất nên Hublot ưu tiên trang bị cỗ máy UNICO được chế tác hoàn hảo cùng loạt tính năng phức tạp và vật liệu mới như Carbon, Ceramic, kim cương,…</p><p>Tính đến thời điểm hiện tại thì dòng Big Bang có 68 phiên bản với giá thành dao động trong khoảng từ 16.000 USD (Khoảng 370 triệu) đến 122.000 USD (khoảng 2.8 tỷ VNĐ). Ngoài ra sẽ có nhiều mẫu cao cấp hơn với giá bán hơn 100 tỷ xác nhận kỷ lục thế giới.</p><p><strong>Khám phá: </strong><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/10-chiec-dong-ho-hublot-big-bang-ban-chay-nhat-the-gioi.html">10 chiếc đồng hồ Hublot Big Bang bán chạy nhất thế giới</a></p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-5.jpg" alt="Giá đồng hồ nam Hublot Big Bang" width="900" height="1125"></p><p><i>Hublot Big Bang là dòng đồng hồ tiêu biểu của thương hiệu Hublot, giúp người đeo khẳng định được giá trị của bản thân, địa vị ở xã hội và thước đo về kinh tế</i></p><h3><strong>2. Hublot Classic Fusion</strong></h3><p>Bộ sưu tập đồng hồ cơ bản nhất của hãng Hublot với giá thành phải chăng, nhiều mẫu mã để lựa chọn và khách hàng dễ dàng mua sắm tại hệ thống đại lý rộng khắp. Nếu muốn cao cấp hơn, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-classic-fusion-diamond.html">Hublot Classic Fusion Diamond</a> vẫn có thể đáp ứng nhờ vẻ ngoài sang trọng từ kim cương thiên nhiên, giá bán dao động đến hàng tỷ đồng.</p><p><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/10-chiec-dong-ho-hublot-classic-fusion-ban-chay-nhat-the-gioi.html">Hublot Classic Fusion</a> đã phát hành 234 phiên bản khác nhau với giá thành dao động trong khoảng từ 4.900 USD (khoảng 113 triệu VNĐ) đến 52.000 USD (khoảng 1.2 tỷ VNĐ). Nhiều ngôi sao của thế giới đã sở hữu các phiên bản Classic Fusion cho riêng mình.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Hublot-Classic-Fusion.jpg" alt="Bộ sưu tập Hublot Classic Fusion" width="900" height="1124"></p><p><i>Hublot Classic Fusion là dòng đồng hồ thông dụng dễ sở hữu bởi sự đa dạng về mẫu mã, giá thành dễ chịu hơn và mở bán rộng rãi tại các cửa hàng ủy quyền</i></p><h3><strong>3. Hublot Spirit Of Big Bang</strong></h3><p>Bộ sưu tập sử dụng nhiều vật liệu mới và độc quyền do Hublot sản xuất như Titanium, vàng King Gold, Ceramic, silicon, zirconium,… Những mẫu đồng hồ cơ Hublot có tần số dao động lên đến 36.000 vph, cao hơn nhiều so với tần số dao động 28.600 ở đồng hồ Thụy Sỹ phổ thông.</p><p>Hublot Spirit Of Big Bang phần lớn là đồng hồ nam và một số&nbsp;phiên bản dành cho nữ. Có đến 67 phiên bản đã được phát hành với giá dao động từ 16.000 USD (khoảng 370 triệu VNĐ) đến 95.000 USD (khoảng 2.1 tỷ VNĐ).</p><p>Phân biệt: <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/review-dong-ho/review-dong-ho-hublot-big-bang-sang-bleu.html">Hublot Big Bang Sang Bleu</a> và <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-big-bang-unico.html">Hublot Big Bang Unico</a></p>', N'638498558365448103.jpg', N'huy', 2, N'1', CAST(N'2024-04-26T21:57:55.230' AS DateTime))
INSERT [dbo].[TinTucs] ([MaTinTuc], [TieuDe], [NoiDung], [HinhAnh], [TenTaiKhoan], [LuotXem], [TrangThai], [ngaytao]) VALUES (1006, N'Đồng hồ rẻ nhất thị trường hiện nay có tốt không ?', N'<p><i><strong>Hublot là thương hiệu </strong></i><a href="https://donghohaitrieu.com/tu-khoa/dong-ho-thuy-sy"><i><strong>đồng hồ Thụy Sỹ</strong></i></a><i><strong> hạng sang, bất kỳ ai muốn sở hữu đều phải bỏ ra một số tiền rất lớn, thậm chí có nhiều mẫu lên đến hàng chục tỷ đồng. Tuy nhiên vẫn có nhiều nơi bán đồng hồ Hublot nam, nữ giá chỉ từ vài triệu. Vậy trên thực tế, đồng hồ Hublot giá bao nhiêu?</strong></i></p><figure class="table"><table><tbody><tr><td><p><strong>MỤC LỤC</strong></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#dong-ho-hublot-gia-bao-nhieu">›&nbsp;Đồng hồ Hublot giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#su-that-thu-vi">Sự thật thú vị xoay quanh giá bán của đồng hồ Hublot</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-quartz-gia-bao-nhieu">1. Đồng hồ Hublot Quartz giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-automatic-gia-bao-nhieu">2. Đồng hồ Hublot Automatic giá bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-re-nhat-la-bao-nhieu">3. Đồng hồ Hublot rẻ nhất là bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#hublot-dat-nhat-la-bao-nhieu">4. Đồng hồ Hublot đắt nhất là bao nhiêu?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#su-that-dang-sau-hublot-gia-2-trieu">› Đồng hồ Hublot giá 2 triệu đang rao bán có phải chính hãng không?</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#bo-suu-tap-dong-ho-hublot-pho-bien">› Những bộ sưu tập đồng hồ Hublot phổ biến nhất hiện nay</a></p><p><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-danh-gia.html#o-dau">› Mua đồng hồ Hublot chính hãng ở đâu?</a></p></td></tr></tbody></table></figure><h2><strong>Đồng hồ Hublot giá bao nhiêu?</strong></h2><p>Giá đồng hồ Hublot nam, nữ chính hãng dao động từ 100 triệu đến khoảng 4 tỷ.</p><p>Tùy vào kết cấu vật liệu, công nghệ, tính năng và bộ máy mà giá đồng hồ Hublot được phân hóa rõ rệt theo từng dòng cụ thể, bao gồm:</p><ul><li>Hublot Classic Fusion: Giá từ 100 triệu</li><li>Hublot Big Bang: Giá từ 200 triệu</li><li>Hublot Spirit Of Big Bang: Giá từ 450 triệu</li></ul><p>Các phiên bản có giá thành cao từ 1 đến 4 tỷ phần lớn nằm trong bộ sưu tập Big Bang, được gia công từ nhóm vật liệu đắt tiền như kim cương, vàng khối, carbon. Đồng thời sở hữu bộ máy lắp ráp tinh xảo, một số phiên bản chạm rỗng hoặc sử dụng cỗ máy Tourbillon đẳng cấp.</p><p>So với những thương hiệu xa xỉ khác như <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/gia-dong-ho-rolex-nam-nu-chinh-hang.html">Rolex</a>, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/dong-ho-patek-philippe-geneve-gia-bao-nhieu-mua-o-dau.html">Patek Philippe</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-breguet-chinh-hang-cua-nuoc-nao-gia-bao-nhieu.html">Breguet</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho-blancpain-cua-nuoc-nao-gia-bao-nhieu-co-tot-khong.html">Blancpain</a>, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/dong-ho-cartier-cua-nuoc-nao-gia-bao-nhieu-co-tot-khong.html">Cartier</a>, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-richard-mille-nam-nu-cua-nuoc-nao-gia-bao-nhieu.html">Richard Mille</a>,… vừa đắt đỏ vừa khó mua, thì việc sở hữu Hublot có vẻ dễ hơn vì giá “mềm” và mẫu đa dạng, sẵn có. Lý do này giúp Hublot rất phổ biến tại thị trường Việt Nam và có tệp khách hàng đa dạng.</p><p><strong>Cập nhật:</strong></p><ul><li><a href="https://donghohaitrieu.com/tag/tin-tuc-dong-ho-xa-xi">Tin tức đồng hồ xa xỉ và sự choáng ngợp về thiết kế, vật liệu</a></li><li><a href="https://donghohaitrieu.com/tu-dien-dong-ho/tin-tuc-moi">Tin tức đồng hồ mới nhất, giới thiệu các bộ sưu tập bán chạy</a></li></ul><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-1.jpg" alt="Đồng hồ Hublot nam, nữ chính hãng giá bao nhiêu tại Viêt Nam?" width="900" height="1125"></p><p><i>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Đồng hồ Hublot nam, nữ chính hãng giá bao nhiêu phụ thuộc vào nhiều yếu tố</i></p><h2><strong>Sự thật thú vị xoay quanh giá bán của đồng hồ Hublot</strong></h2><p><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/lich-su-dong-ho-hublot-thuong-hieu-cua-nhung-nguoi-noi-tieng.html">Lịch sử thương hiệu Hublot</a> bắt đầu từ năm 1980 do nhà sáng lập Carlo Crocco người Ý dẫn dắt.</p><p>Tháng 4/2008, <a href="https://donghohaitrieu.com/tu-dien-dong-ho/kien-thuc/lvmh-group-tap-doan-dong-ho-lon-thu-3-the-gioi-so-huu-tag-heuer-hublot-zenith.html">tập đoàn thời trang xa xỉ LVMH</a> của Pháp đã mua lại thành công Hublot nhưng giá trị chuyển nhượng không được tiết lộ. LVMH đang kiểm soát 60 công ty với khoảng 75 thương hiệu ở đa dạng danh mục, nổi bật nhất là Tiffany &amp; Co., Christian Dior, Fendi, Givenchy, Marc Jacobs, Stella McCartney, Loewe, Loro Piana, Kenzo, Celine, Sephora, Princess Yachts, TAG Heuer và Bulgar.</p><p>Tính đến năm 2019, Hublot đã có 169 cửa hàng trên toàn cầu.</p><p>Việc gia nhập vào tập đoàn xa xỉ LVMH là động lực quan trọng giúp Hublot có thêm độ phủ sóng và sức ảnh hưởng trong ngành công nghiệp tỷ đô.</p><p>So với <a href="https://donghohaitrieu.com/tu-dien-dong-ho/tu-van-chon-mua/cac-thuong-hieu-dong-ho-noi-tieng-gia-binh-dan-tai-viet-nam.html">các hãng đồng hồ</a> khác, tuổi đời của Hublot cũng còn khá non trẻ nên những thắc mắc về giá bán và chất lượng luôn là đề tài bàn tán ở giới mộ điệu.</p><h3><strong>1. Đồng hồ Hublot Quartz giá bao nhiêu?</strong></h3><p>Đồng hồ Hublot Quartz có giá từ 100 triệu đến dưới 700 triệu VNĐ.</p><p>Hublot Quartz được tìm thấy nhiều trên Hublot Classic Fusion, bộ sưu tập lấy cảm hứng từ những chiếc đồng hồ cổ điển, sang trọng ở những năm 80. Hublot Quartz phù hợp đeo mỗi ngày nhờ vào thiết kế đơn giản, gọn nhẹ có độ chính xác cao. Tất cả đều tuân thủ tiêu chuẩn Swiss Made.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-2.jpg" alt="Giá đồng hồ Hublot Quartz chỉ từ 100 triệu" width="900" height="1111"></p><h3><strong>2. Đồng hồ Hublot Automatic giá bao nhiêu?</strong></h3><p>Đồng hồ Hublot Automatic có giá từ 370 triệu VNĐ đến 4 tỷ VNĐ.</p><p>Những chiếc đồng hồ Hublot automatic đều mang bản sắc riêng của thương hiệu nhờ cỗ máy tự lắp ráp 100% (in-house) và không bị phụ thuộc vào tập đoàn mẹ là LVMH Group.</p><p>Hublot nổi tiếng với 4 cỗ máy là Unico, Meca-10, Tourbillon và MP-11, trong đó:</p><ul><li>Unico hoàn thiện từ 354 linh kiện, thời gian trữ cót đạt 72 giờ</li><li>Unico hoàn thiện từ 223 linh kiện, thời gian trữ cót đạt 10 ngày</li><li>Tourbillon hoàn thiện từ 243 linh kiện, thời gian trữ cót đạt 3 ngày</li><li>Tourbillon hoàn thiện từ 270 linh kiện, thời gian trữ cót đạt 14 ngày</li></ul><p>Một số cỗ máy thông dụng khác do Hublot lắp ráp gồm Hub 4700, Hub 1770, Hub 1710.</p><p>Bên cạnh yếu tố chung là vật liệu, phong cách thiết kế,… thì sự khác nhau về thông số kỹ thuật, số lượng linh kiện, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/thoi-gian-tru-cot-du-tru-nang-luong-cua-dong-ho-co.html">thời gian trữ cót</a> và tính năng tích hợp vào cỗ máy dẫn đến giá thành Hublot automatic có sự phân hóa rõ rệt.</p><p>Hublot phục vụ cho nhiều siêu sao trên thế giới như Kylie Jenner, Kobe Bryant, Jay Z,… và đạt nhiều giải thưởng danh giá về đồng hồ như <strong>“Thiết kế năm 2005”</strong> trong khuôn khổ giải Geneva Watchmaking Grand Prix, <strong>“Đồng hồ ngoại cỡ tốt nhất”</strong> trong khuôn khổ giải Watch of the Year tại Bahrain.</p><p><strong>Kiến thức về Hublot:</strong></p><ul><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/cach-deo-su-dung-va-chinh-dong-ho-hublot-cho-nguoi-moi.html">Cách đeo, sử dụng và chỉnh đồng hồ Hublot cho người mới</a></li><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/kinh-nghiem-ban-dong-ho-hublot-chinh-hang-cu-gia-cao-nhat.html">Kinh nghiệm bán đồng hồ Hublot chính hãng cũ giá cao nhất</a></li><li><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/hu-hon-dong-ho-hublot-gia-re-300k-xai-duoc-dam-ba-bua.html">Hú hồn đồng hồ Hublot giá rẻ 300k xài được dăm ba bữa</a></li></ul><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-3.jpg" alt="Giá đồng hồ Hublot Automatic chỉ từ 370 triệu" width="900" height="900"></p><h3><strong>3. Đồng hồ Hublot rẻ nhất là bao nhiêu?</strong></h3><p>Hublot Classic Fusion giá 100 triệu là chiếc đồng hồ Hublot rẻ nhất mà bạn có thể sở hữu, phù hợp với những ai lần đầu “tập chơi” thương hiệu này.</p><p>Nếu bạn kỳ vọng quá nhiều lên một thương hiệu xa xỉ như Hublot cho phiên bản giá 100 triệu, thì Hublot Classic Fusion là không phù hợp. Vì thiết kế của nó chỉ dừng lại ở mức cơ bản như dây da thật, vỏ thép không gỉ, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-may-quartz-la-gi-uu-nhuoc-diem-dong-ho-quartz.html">cỗ máy Quartz</a> sản xuất tại Thụy Sỹ.</p><p>Tuy nhiên do được gắn nhãn “Hublot” và “<a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-swiss-made-la-gi-cach-phan-biet-san-pham-noi-bat.html">Swiss Made</a>” trên mặt số, Hublot Classic Fusion vẫn dễ dàng đưa bạn vào thế giới thượng lưu, giúp người đeo tự tin thể hiện đẳng cấp.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-4.jpg" alt="Những chiếc đồng hồ Hublot có giá bán rẻ nhất hiện nay" width="900" height="1125"></p><p><i>Kiểu dáng sang trọng trên những chiếc đồng hồ Hublot Classic Fusion có giá rẻ nhất</i></p><h3><strong>4. Đồng hồ Hublot đắt nhất là bao nhiêu?</strong></h3><p>Hublot Big Bang Diamond là chiếc đồng hồ Hublot đắt nhất thế giới tính đến thời điểm hiện tại. Phiên bản được niêm yết lên đến 5 triệu đô (khoảng 115 tỷ VNĐ).</p><p>Cô ca sỹ người Mỹ Beyonce Knowles (Chủ nhân của ca khúc hay nhất thập kỷ “Crazy In Love”) đã mua chiếc đồng hồ Hublot trị giá 5 triệu đô để tặng ông xã trong dịp sinh nhật lần thứ 43.</p><p>Hublot Big Bang Diamond hoàn thiện bởi đội ngũ 17 người (bao gồm cả thợ kim hoàn 40 năm kinh nghiệm tại thành phố New York) làm việc suốt 14 tháng. Sản phẩm được đính tới 1240 (một vài tài liệu khác ghi 1282) viên kim cương thiên nhiên có độ tinh khiết cao (A VVS).</p><p>Bên cạnh đính kim cương số lượng lớn và cỡ lớn thì phần vỏ của chiếc đồng hồ Hublot đắt nhất thế giới còn làm từ vàng trắng 18 karat, đánh bóng bằng kim cương, mạ rhodium. Bộ máy HUB 1100 giúp đồng hồ trữ cót 42 giờ.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Hublot-Big-Bang-Diamond.jpg" alt="Hublot Big Bang Diamond" width="900" height="450"></p><h2><strong>Sự thật đằng sau những chiếc đồng hồ Hublot giá 2 triệu</strong></h2><p>Dù website hãng và đại lý niêm yết khá cao (hơn 100 triệu) nhưng khi tôi thử tìm kiếm “đồng hồ Hublot chính hãng” trên Google lẫn Facebook thì kết quả xuất hiện ra rất bất ngờ. Nhiều nơi tại Việt Nam bán Hublot chính hãng chỉ trên dưới 2 triệu, thậm chí có nơi công khai 300k – 500k.</p><p>Bằng một vài thao tác kiểm tra cơ bản, tôi nhận thấy tất cả đều là hàng giả, không có nguồn gốc xuất xứ rõ ràng và đăng bán bởi các cá nhân (không phải đại lý chính thức).</p><p>Không chỉ Hublot mà ngay cả các hãng cao cấp hơn như Rolex, Omega hoặc rẻ hơn như <a href="https://donghohaitrieu.com/brand/casio">Casio</a>, <a href="https://donghohaitrieu.com/brand/daniel-wellington-dw">Daniel Wellington</a>, <a href="https://donghohaitrieu.com/brand/orient">Orient</a>, <a href="https://donghohaitrieu.com/brand/citizen">Citizen</a>, <a href="https://donghohaitrieu.com/brand/seiko">Seiko</a>,… cũng bị làm giả không thương tiếc. Hầu như không thể giải quyết triệt để vấn nạn hàng giả, để tránh xa, bạn cần trang bị cho mình kiến thức phân biệt để không rơi vào những cạm bẫy trên mạng xã hội.</p><p>Ai có ý định mua <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-gia-2-trieu-co-that-khong-hay-la-hang-gia.html">đồng hồ Hublot giá 2 triệu – 5 triệu</a> thì hãy lựa chọn những thương hiệu đồng hồ chính hãng giá bình dân để đảm bảo quyền lợi cho chính mình.</p><p><strong>Gợi ý: </strong><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/5-cach-phan-biet-dong-ho-hublot-that-gia-cuc-de-ai-cung-lam-duoc.html">8 cách phân biệt đồng hồ Hublot thật giả</a></p><figure class="image"><img style="aspect-ratio:480/360;" src="https://i.ytimg.com/vi/vco4Sh4qoi8/hqdefault.jpg" alt="YouTube video" width="480" height="360"></figure><p><i>Tại sao Hublot là thương hiệu đồng hồ xa xỉ bị ghét nhất?</i></p><h2><strong>Những bộ sưu tập đồng hồ Hublot phổ biến nhất hiện nay</strong></h2><p>Hublot phân chia các sản phẩm của mình thành 4 bộ sưu tập chủ đạo là Hublot Novelties, Hublot Big Bang, Hublot Classic Fusion, Hublot Spirit Of Big Bang, Hublot MP.</p><h3><strong>1. Hublot Big Bang</strong></h3><p>Là bộ sưu tập đẳng cấp nhất nên Hublot ưu tiên trang bị cỗ máy UNICO được chế tác hoàn hảo cùng loạt tính năng phức tạp và vật liệu mới như Carbon, Ceramic, kim cương,…</p><p>Tính đến thời điểm hiện tại thì dòng Big Bang có 68 phiên bản với giá thành dao động trong khoảng từ 16.000 USD (Khoảng 370 triệu) đến 122.000 USD (khoảng 2.8 tỷ VNĐ). Ngoài ra sẽ có nhiều mẫu cao cấp hơn với giá bán hơn 100 tỷ xác nhận kỷ lục thế giới.</p><p><strong>Khám phá: </strong><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/10-chiec-dong-ho-hublot-big-bang-ban-chay-nhat-the-gioi.html">10 chiếc đồng hồ Hublot Big Bang bán chạy nhất thế giới</a></p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/dong-ho-hublot-nam-nu-chinh-hang-gia-bao-nhieu-5.jpg" alt="Giá đồng hồ nam Hublot Big Bang" width="900" height="1125"></p><p><i>Hublot Big Bang là dòng đồng hồ tiêu biểu của thương hiệu Hublot, giúp người đeo khẳng định được giá trị của bản thân, địa vị ở xã hội và thước đo về kinh tế</i></p><h3><strong>2. Hublot Classic Fusion</strong></h3><p>Bộ sưu tập đồng hồ cơ bản nhất của hãng Hublot với giá thành phải chăng, nhiều mẫu mã để lựa chọn và khách hàng dễ dàng mua sắm tại hệ thống đại lý rộng khắp. Nếu muốn cao cấp hơn, <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-classic-fusion-diamond.html">Hublot Classic Fusion Diamond</a> vẫn có thể đáp ứng nhờ vẻ ngoài sang trọng từ kim cương thiên nhiên, giá bán dao động đến hàng tỷ đồng.</p><p><a href="https://donghohaitrieu.com/tin-tuc/dong-ho/10-chiec-dong-ho-hublot-classic-fusion-ban-chay-nhat-the-gioi.html">Hublot Classic Fusion</a> đã phát hành 234 phiên bản khác nhau với giá thành dao động trong khoảng từ 4.900 USD (khoảng 113 triệu VNĐ) đến 52.000 USD (khoảng 1.2 tỷ VNĐ). Nhiều ngôi sao của thế giới đã sở hữu các phiên bản Classic Fusion cho riêng mình.</p><p><img src="https://image.donghohaitrieu.com/wp-content/uploads/2023/06/Hublot-Classic-Fusion.jpg" alt="Bộ sưu tập Hublot Classic Fusion" width="900" height="1124"></p><p><i>Hublot Classic Fusion là dòng đồng hồ thông dụng dễ sở hữu bởi sự đa dạng về mẫu mã, giá thành dễ chịu hơn và mở bán rộng rãi tại các cửa hàng ủy quyền</i></p><h3><strong>3. Hublot Spirit Of Big Bang</strong></h3><p>Bộ sưu tập sử dụng nhiều vật liệu mới và độc quyền do Hublot sản xuất như Titanium, vàng King Gold, Ceramic, silicon, zirconium,… Những mẫu đồng hồ cơ Hublot có tần số dao động lên đến 36.000 vph, cao hơn nhiều so với tần số dao động 28.600 ở đồng hồ Thụy Sỹ phổ thông.</p><p>Hublot Spirit Of Big Bang phần lớn là đồng hồ nam và một số&nbsp;phiên bản dành cho nữ. Có đến 67 phiên bản đã được phát hành với giá dao động từ 16.000 USD (khoảng 370 triệu VNĐ) đến 95.000 USD (khoảng 2.1 tỷ VNĐ).</p><p>Phân biệt: <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/review-dong-ho/review-dong-ho-hublot-big-bang-sang-bleu.html">Hublot Big Bang Sang Bleu</a> và <a href="https://donghohaitrieu.com/tin-tuc/dong-ho/dong-ho-hublot-big-bang-unico.html">Hublot Big Bang Unico</a></p><p><br><br><br><br>&nbsp;</p>', N'638498558602066209.jpg', N'huy', 3, N'1', CAST(N'2024-04-26T21:58:01.530' AS DateTime))
SET IDENTITY_INSERT [dbo].[TinTucs] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Code]    Script Date: 08-06-2024 3:42:15 PM ******/
ALTER TABLE [dbo].[MaGiamGia] ADD  CONSTRAINT [UQ_Code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GioHang] ADD  DEFAULT ((0)) FOR [tongtien]
GO
ALTER TABLE [dbo].[MaGiamGia] ADD  DEFAULT ((1)) FOR [trangthai]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [sldaban]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT ((0)) FOR [luotxem]
GO
ALTER TABLE [dbo].[TinTucs] ADD  DEFAULT ((0)) FOR [LuotXem]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDonBan] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaHDN])
REFERENCES [dbo].[HoaDonNhap] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([masp])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DanhGia]  WITH CHECK ADD FOREIGN KEY([tentaikhoan])
REFERENCES [dbo].[TaiKhoans] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK__GioHang__maSP__51300E55] FOREIGN KEY([maSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK__GioHang__maSP__51300E55]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD FOREIGN KEY([taikhoan])
REFERENCES [dbo].[TaiKhoans] ([TenTaiKhoan])
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([TenTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([TenTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaTH])
REFERENCES [dbo].[ThuongHieu] ([MaTH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaLoai])
REFERENCES [dbo].[TheLoai] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoans]  WITH CHECK ADD FOREIGN KEY([MaLoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoans] ([MaLoaiTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TinTucs]  WITH CHECK ADD FOREIGN KEY([TenTaiKhoan])
REFERENCES [dbo].[TaiKhoans] ([TenTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[sp]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp]
    @id INT
AS
BEGIN
    DELETE FROM MaGiamGia
    WHERE idMa = @id;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_add_toCart]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_add_toCart]
    @maSP INT,
    @tenSP NVARCHAR(200),
    @anhSP NVARCHAR(200),
    @giaban FLOAT,
    @taikhoan NVARCHAR(50)
AS
BEGIN
    -- Tìm kiếm trong giỏ hàng đã tồn tại sản phẩm đó chưa
    DECLARE @record INT 
     DECLARE @soluongcu INT 
    SELECT @record = 1 ,@soluongcu=soluong
    FROM GioHang 
    WHERE maSP = @maSP 
      AND taikhoan = @taikhoan

    IF ((SELECT soLuongton FROM SanPham WHERE MaSP = @maSP) > 0)
    BEGIN
        IF (@record = 1)
        BEGIN
            IF ((SELECT soLuongton FROM SanPham WHERE MaSP = @maSP) > @soluongcu)
            BEGIN
                UPDATE GioHang 
                SET soluong = soluong + 1,
                    tongtien = (soluong + 1) * @giaban
                WHERE maSP = @maSP
                  AND taikhoan = @taikhoan
            END
            ELSE 
            BEGIN
                THROW 50001, 'Sản phẩm này đã hết hàng', 1;
            END
        END
        ELSE
        BEGIN
            INSERT INTO GioHang(maSP, tenSP, anhSP, soluong, giaban, tongtien, taikhoan)
            VALUES (@maSP, @tenSP, @anhSP, 1, @giaban, @giaban, @taikhoan)
        END
    END
    ELSE 
    BEGIN
        THROW 50002, 'Sản phẩm này đã hết hàng', 1;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_CapNhatTaiKhoan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_CapNhatTaiKhoan]
    @TenTaiKhoan NVARCHAR(50),
    @Email NVARCHAR(50),
    @HoTen NVARCHAR(50),
    @DiaChi NVARCHAR(250),
    @SoDienThoai NVARCHAR(11),
    @AnhDaiDien NVARCHAR(500)  
AS
BEGIN
    UPDATE TaiKhoans
    SET Email = @Email, HoTen = @HoTen, DiaChi = @DiaChi, SoDienThoai = @SoDienThoai, AnhDaiDien = @AnhDaiDien
    WHERE TenTaiKhoan = @TenTaiKhoan;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_createDanhGia]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[sp_createDanhGia]
@masp int,
@noidung nvarchar(max),
@sosao int ,
@tentaikhoan nvarchar(50)

as
begin
    insert into DanhGia(masp,noidung,sosao,tentaikhoan,ngaytao)
    values(@masp,@noidung,@sosao,@tentaikhoan,getDate())

end
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateDonHangBan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_CreateDonHangBan]
    @TrangThai int,
    @NgayTao DATETIME,      
    @TenKH NVARCHAR(50),    
    @Diachi NVARCHAR(250),
    @Email NVARCHAR(50),
    @SDT NVARCHAR(50),
    @GiamGia float,
    @DiaChiGiaoHang NVARCHAR(350),
    @ThoiGianGiaoHang DATETIME,
	@tentaikhoan nvarchar(50),
	@methodPay nvarchar(100),
	@list_json_chitietHDB NVARCHAR(MAX)
	as
begin
		----Tạo hóa đơn
		insert into HoaDonBan(TrangThai,NgayTao,TenKH,Diachi,Email,SDT,DiaChiGiaoHang,ThoiGianGiaoHang,TenTaiKhoan,methodPay,GiamGia)
		values(@TrangThai,@NgayTao,@TenKH,@Diachi,@Email,@SDT,@DiaChiGiaoHang,@ThoiGianGiaoHang,@tentaikhoan,@methodPay,@GiamGia)

		----Lấy mã hóa hơn vừa tạo xong
		declare @MaHoaDon int 
		set @MaHoaDon=SCOPE_IDENTITY();
		declare @Tongtien Float;

		---Thêm chi tiết hóa đơn bán
		if(@list_json_chitietHDB is not null)
		begin
			insert into ChiTietHoaDonBan(MaHD,MaSP,imageSP,tenSP,soLuong,giaBan,tongtien)
			select
			@MaHoaDon,
			JSON_VALUE(l.value,'$.maSP'),
			JSON_VALUE(l.value,'$.imageSP'),
			JSON_VALUE(l.value,'$.tenSP'),
			JSON_VALUE(l.value,'$.soLuong'),
			JSON_VALUE(l.value,'$.giaBan'),
			cast(JSON_VALUE(l.value,'$.soLuong')as int)*CAST(JSON_VALUE(l.value,'$.giaBan')as float)
			from openjson(@list_json_chitietHDB) as l

          
		end
		---Cập nhật giá tiền tất cả của hóa đơn
		---lấy tổng tiền tất cả
		declare @ThanhTien float
		select @ThanhTien=(select SUM(ct.tongTien) from ChiTietHoaDonBan ct where ct.MaHD=@MaHoaDon)
		----Cập nhật
		Update HoaDonBan 
		set HoaDonBan.ThanhTien=@ThanhTien
	    where HoaDonBan.MaHD=@MaHoaDon
        ----Cập nhật lại số lượng đã bán của sản phẩm
           
        Update SanPham
        set sldaban=sldaban+c.SoLuong,
            soLuongton=soLuongton-c.SoLuong
        from ChiTietHoaDonBan as c            
        where SanPham.MaSP=c.MaSP and c.MaHD=@MaHoaDon
      
        
        
end
GO
/****** Object:  StoredProcedure [dbo].[sp_CreateHDN]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_CreateHDN]
   @MaNCC int,
   @TenTK nvarchar(200),
   @GhiChu  nvarchar(Max),
   @methodPay nvarchar(50),
   @ngaynhap datetime ,
   @list_json_chitietHDN NVARCHAR(MAX)
	as
begin
		----Tạo hóa đơn
		insert into HoaDonNhap(MaNCC,TenTaiKhoan,GhiChu,methodPay,NgayNhap)
		values(@MaNCC,@TenTK,@GhiChu,@methodPay,@ngaynhap)
		----Lấy mã hóa hơn vừa tạo xong
		declare @MaHoaDon int 
		set @MaHoaDon=SCOPE_IDENTITY();
		declare @Tongtien Float;

		---Thêm chi tiết hóa đơn nhập
		if(@list_json_chitietHDN is not null)
		begin
			insert into ChiTietHoaDonNhap(MaHDN,MaSP,SoLuong,GiaNhap,TongTien)
			select
			@MaHoaDon,
			JSON_VALUE(l.value,'$.maSP'),			
			JSON_VALUE(l.value,'$.soLuong'),
			JSON_VALUE(l.value,'$.giaNhap'),
			cast(JSON_VALUE(l.value,'$.soLuong')as int)*CAST(JSON_VALUE(l.value,'$.giaNhap')as float)
			from openjson(@list_json_chitietHDN) as l
           

		end
		---Cập nhật giá tiền tất cả của hóa đơn
		---lấy tổng tiền tất cả
		declare @ThanhTien float
		select @ThanhTien=(select SUM(ct.TongTien) from ChiTietHoaDonNhap ct where ct.MaHDN=@MaHoaDon)
		----Cập nhật
		Update HoaDonNhap 
		set HoaDonNhap.Tongtien=@ThanhTien
	    where HoaDonNhap.MaHD=@MaHoaDon
        --Cập nhật lại thông tin sản phẩm
         update SanPham
            set soLuongton = soLuongton + c.SoLuong ,
                giaNhap=c.GiaNhap,
                GiaBan=c.GiaNhap*1.2
            from ChiTietHoaDonNhap as c           
            where MaHDN=@MaHoaDon and SanPham.MaSP= c.MaSP
end
GO
/****** Object:  StoredProcedure [dbo].[sp_createKH]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_createKH]

    @TenTaiKhoan NVARCHAR(50),
    @MatKhau Nvarchar(100),
    @Email NVARCHAR(50),
    @HoTen NVARCHAR(50),
    @DiaChi NVARCHAR(250),
    @SoDienThoai NVARCHAR(11)
    as
      

BEGIN
    insert into TaiKhoans(TenTaiKhoan,MatKhau,HoTen,DiaChi,Email,SoDienThoai,MaLoaiTaiKhoan)
    values(@TenTaiKhoan,@MatKhau,@HoTen,@DiaChi,@Email,@SoDienThoai,2)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_createMagiamgia]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_createMagiamgia]
    @code VARCHAR(50),
    @mota NVARCHAR(MAX),
    @ngaybatdau DATE,
    @ngayketthuc DATE,
    @giagiam FLOAT
    
AS
BEGIN
    INSERT INTO MaGiamGia (code, mota, ngaybatdau, ngayketthuc, giagiam,trangthai)
    VALUES (@code, @mota, @ngaybatdau, @ngayketthuc, @giagiam,1);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_createNews]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[sp_createNews]
@tieude nvarchar(max),
@noidung nvarchar(max),
@hinhanh nvarchar(max),
@tentaikhoan nvarchar(50)
as 
begin
    insert into TinTucs(TieuDe,NoiDung,HinhAnh,TenTaiKhoan,TrangThai,ngaytao)
    values(@tieude,@noidung,@hinhanh,@tentaikhoan,0,getDate())
end
GO
/****** Object:  StoredProcedure [dbo].[sp_createNV]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_createNV]

    @TenTaiKhoan NVARCHAR(50),
    @MatKhau Nvarchar(100),
    @Email NVARCHAR(50),
    @HoTen NVARCHAR(50),
    @DiaChi NVARCHAR(250),
    @SoDienThoai NVARCHAR(11)
    as
      

BEGIN
    insert into TaiKhoans(TenTaiKhoan,MatKhau,HoTen,DiaChi,Email,SoDienThoai,MaLoaiTaiKhoan)
    values(@TenTaiKhoan,@MatKhau,@HoTen,@DiaChi,@Email,@SoDienThoai,7)
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DangNhap]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DangNhap]
    @TenTaiKhoan NVARCHAR(50),
    @MatKhau NVARCHAR(50),
    @MaLoaiTK int
AS
BEGIN
    SELECT * FROM TaiKhoans
    WHERE TenTaiKhoan = @TenTaiKhoan AND MatKhau = @MatKhau AND MaLoaiTaiKhoan=@MaLoaiTK;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_danhsachKH_muanhieu]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[sp_danhsachKH_muanhieu]
    as
    begin
    select t.TenTaiKhoan,t.AnhDaiDien,t.HoTen,t.SoDienThoai,t.DiaChi,SUM(h.ThanhTien) as tongtien,COUNT(h.MaHD) as sldh 
    from HoaDonBan as h  
    join TaiKhoans as t on t.TenTaiKhoan=h.TenTaiKhoan
    where t.MaLoaiTaiKhoan=2
    group by t.TenTaiKhoan,t.AnhDaiDien,t.HoTen,t.SoDienThoai,t.DiaChi   
    having SUM(h.ThanhTien)>3000000
    order by sldh DESC    
    end
GO
/****** Object:  StoredProcedure [dbo].[sp_Delete_DonHangBan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_Delete_DonHangBan]
@MaHD int
as
begin
delete HoaDonBan 
where HoaDonBan.MaHD=@MaHD
end
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteCart]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   CREATE proc [dbo].[sp_deleteCart]
    @maGH int
    as 
    begin
    delete from GioHang where maGH=@maGH
    end
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteHDN]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE proc [dbo].[sp_DeleteHDN] 
  @maHDN int
  as
  begin
  delete HoaDonNhap where MaHD=@maHDN
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteKH]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_DeleteKH]
 @MaKH int
 as
 begin 
 delete KhachHang where @MaKH=MaKH
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteMGG]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeleteMGG]
    @id INT
AS
BEGIN
    DELETE FROM MaGiamGia
    WHERE idMa = @id;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_DeleteNCC]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[sp_DeleteNCC]
 @MaNCC int
 as
 begin 
 delete NhaCungCap where @MaNCC=MaNCC
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_deleteNews]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_deleteNews]
@id int
as
begin
delete TinTucs
where MaTinTuc=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_detail_News]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_detail_News]
@id int
as
begin
    select * from TinTucs where MaTinTuc=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_doanhthu_time]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   CREATE proc [dbo].[sp_doanhthu_time]
    @date_start date,
    @date_end date
    as
    begin       
        select h.MaHD,h.NgayTao,h.TenKH,h.DiaChiGiaoHang,h.ThanhTien
        from HoaDonBan as h
        where h.NgayTao between convert(date,@date_start) and convert(date,@date_end) or
        @date_end='' and @date_start=''        
    end

    exec sp_doanhthu_time '2024-04-28','2024-04-28'
GO
/****** Object:  StoredProcedure [dbo].[sp_DoiMatKhau]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DoiMatKhau]
    @TenTaiKhoan NVARCHAR(50),
    @MatKhauMoi NVARCHAR(50)
AS
BEGIN
    UPDATE TaiKhoans
    SET MatKhau = @MatKhauMoi
    WHERE TenTaiKhoan = @TenTaiKhoan;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_donhangCXN]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_donhangCXN]
    as
    begin
    select * from HoaDonBan where TrangThai=0
    end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAll_LoaiTaiKhoan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetAll_LoaiTaiKhoan]
    
AS
BEGIN
    SELECT * FROM LoaiTaiKhoans
   
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_getALL_NCC]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[sp_getALL_NCC]
 as
 begin 
 select * From NhaCungCap 
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetALl_TheLoai]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[sp_GetALl_TheLoai]
   as
   begin
   select *From TheLoai
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_getAll_ThuongHieu]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getAll_ThuongHieu]
as
begin
select * From ThuongHieu
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getAllCart_byTenTK]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getAllCart_byTenTK]
    @tentaikhoan nvarchar(50)
    as
    begin
    select * from GioHang where taikhoan=@tentaikhoan
    end
GO
/****** Object:  StoredProcedure [dbo].[sp_getALLKH]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create   proc [dbo].[sp_getALLKH]
as
begin
    select tk.HoTen,tk.DiaChi,tk.SoDienThoai,tk.AnhDaiDien,tk.Email,tk.TenTaiKhoan,
    (select Sum(hdb.ThanhTien) from HoaDonBan as hdb where hdb.TenTaiKhoan=tk.TenTaiKhoan) as sotiendamua
    from TaiKhoans as tk     
    where MaLoaiTaiKhoan=2
end

exec sp_getAllKH
GO
/****** Object:  StoredProcedure [dbo].[sp_getAllNV]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getAllNV]
as
    
begin
select * from TaiKhoans where MaLoaiTaiKhoan=7
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getDetail_HDN]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[sp_getDetail_HDN]
  @maHDN int
  as
  begin
  select * ,(select * from ChiTietHoaDonNhap as n where n.MaHDN=@maHDN for json auto ) as listchitiethdn from HoaDonNhap where MaHD=@maHDN
  end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetDetailDH]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetDetailDH]
    @MaHD int
AS
BEGIN
    -- Lấy thông tin đơn hàng bán
    SELECT
        dh.MaHD,
        dh.TrangThai,
        dh.NgayTao,
        dh.TenKH,
        dh.Diachi,
        dh.Email,
        dh.SDT,
        dh.GiamGia,
        dh.LiDoHuy,
		dh.ThanhTien,
        dh.DiaChiGiaoHang,
        dh.ThoiGianGiaoHang,
        dh.TenTaiKhoan,
		dh.methodPay,
        (
            SELECT
			    ct.MaChiTietHD,
				ct.MaHD,
                ct.MaSP,
				ct.tenSP,
				ct.imageSP,
                ct.SoLuong,
                ct.GiaBan,
                ct.tongtien
            FROM ChiTietHoaDonBan ct
            WHERE ct.MaHD = @MaHD
            FOR JSON AUTO
        ) AS ChiTietHoaDonBanJson
    FROM HoaDonBan dh
    WHERE dh.MaHD = @MaHD;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_getDetailPrd]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create proc [dbo].[sp_getDetailPrd]
   @MaSP int
   as 
   begin
   select * from SanPham where MaSP=@masp
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_getFeedBack]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_getFeedBack]
@masp int
as 
begin
    select * from DanhGia
    where masp=@masp
end
GO
/****** Object:  StoredProcedure [dbo].[sp_GetHoaDonban]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetHoaDonban]
    @page_index INT,
    @page_size INT,
    @trangthai int,
    @searchTime_begin DATE,
    @searchTime_end DATE,
    @tentaikhoan VARCHAR(250)
AS
BEGIN
    DECLARE @RecordCount INT;
    IF (@searchTime_begin != '' AND @searchTime_end = '')
    BEGIN
        SELECT @searchTime_end = DATEADD(DAY, 1, GETDATE()); -- Add 1 day to the current date
    END
    SET NOCOUNT ON;
    IF @page_size = 0
    BEGIN
        SELECT
            ROW_NUMBER() OVER (ORDER BY h.NgayTao DESC) AS RowNumber, *
        FROM HoaDonBan AS h
        WHERE
            h.TrangThai=@trangthai
			 AND (@tentaikhoan = '' OR h.TenTaiKhoan = @tentaikhoan)
            AND (
                (h.NgayTao BETWEEN CONVERT(DATE, @searchTime_begin) AND CONVERT(DATE, @searchTime_end))
                OR (@searchTime_begin = '' AND @searchTime_end = '')
            )
            order by h.NgayTao DESC
    END
    ELSE
    BEGIN
        SELECT ROW_NUMBER() OVER (ORDER BY h.NgayTao DESC) AS RowNumber, *
        INTO #Results
        FROM HoaDonBan AS h
        WHERE
            h.TrangThai=@trangthai
			 AND (@tentaikhoan = '' OR h.TenTaiKhoan = @tentaikhoan)
            AND (
                (h.NgayTao BETWEEN CONVERT(DATE, @searchTime_begin) AND CONVERT(DATE, @searchTime_end))
                OR (@searchTime_begin = '' AND @searchTime_end = '')
            )
              order by h.NgayTao DESC

        SELECT @RecordCount = COUNT(*)
        FROM #Results;
        
        SELECT *, @RecordCount AS RecordCount
        FROM #Results
        WHERE
            RowNumber BETWEEN (@page_index - 1) * @page_size + 1
            AND ((@page_index - 1) * @page_size + 1) + @page_size - 1
            OR @page_index = -1
          order by NgayTao DESC

        DROP TABLE #Results;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetHoaDonNhap]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  CREATE PROCEDURE [dbo].[sp_GetHoaDonNhap]
    @page_index INT,
    @page_size INT,   
    @searchTime_begin DATE,
    @searchTime_end DATE,
    @tentaikhoan VARCHAR(250)
AS
BEGIN
    DECLARE @RecordCount INT;
    IF (@searchTime_begin != '' AND @searchTime_end = '')
    BEGIN
        SELECT @searchTime_end = DATEADD(DAY, 1, GETDATE()); -- Add 1 day to the current date
    END
    SET NOCOUNT ON;
    IF @page_size = 0
    BEGIN
        SELECT
            ROW_NUMBER() OVER (ORDER BY MaHD ASC) AS RowNumber, *
        FROM HoaDonNhap AS h
        WHERE          
			 (@tentaikhoan = '' OR h.TenTaiKhoan = @tentaikhoan)
            AND (
                (h.NgayNhap BETWEEN CONVERT(DATE, @searchTime_begin) AND CONVERT(DATE, @searchTime_end))
                OR (@searchTime_begin = '' AND @searchTime_end = '')
            )
         Order By NgayNhap DESC
    END
    ELSE
    BEGIN
        SELECT ROW_NUMBER() OVER (ORDER BY MaHD ASC) AS RowNumber, *
        INTO #Results
        FROM HoaDonNhap AS h
        WHERE          
			  (@tentaikhoan = '' OR h.TenTaiKhoan = @tentaikhoan)
            AND (
                (h.NgayNhap BETWEEN CONVERT(DATE, @searchTime_begin) AND CONVERT(DATE, @searchTime_end))
                OR (@searchTime_begin = '' AND @searchTime_end = '')
            )
         Order By NgayNhap DESC


        SELECT @RecordCount = COUNT(*)
        FROM #Results;
        
        SELECT *, @RecordCount AS RecordCount
        FROM #Results
        WHERE
            RowNumber BETWEEN (@page_index - 1) * @page_size + 1
            AND ((@page_index - 1) * @page_size + 1) + @page_size - 1
            OR @page_index = -1
         Order By NgayNhap DESC
        DROP TABLE #Results;
    END
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_GetInfo_User]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_GetInfo_User]
@TenTaiKhoan nvarchar(50)
as 
begin
select* From TaiKhoans as k where k.TenTaiKhoan=@TenTaiKhoan
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getMaGiamGia]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[sp_getMaGiamGia]
@status nvarchar(150) =''
as
begin
if(@status='')
    begin
    select * from MaGiamGia Order by ngaybatdau DESC

    end
else
begin    
    select * from MaGiamGia  where trangthai=@status  
    Order by ngaybatdau DESC

end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_getPrd_BestSelling]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   create proc [dbo].[sp_getPrd_BestSelling]
   @maloai int,
   @math int   
   as
   begin
    select top (12) * from SanPham where (@maloai='' or MaLoai =@maloai ) and (@math='' or MaTH =@math)
    order by SanPham.sldaban DESC
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_HuyDonHang]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_HuyDonHang]
@Lidohuy nvarchar(1000),
@MaHD int
as
begin
    update HoaDonBan
    set TrangThai=-1,
        LiDoHuy=@Lidohuy
    where MaHD=@MaHD
end
GO
/****** Object:  StoredProcedure [dbo].[sp_nhacungcap_create]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[sp_nhacungcap_create] 
 @email nvarchar(100),
 @TenNCC nvarchar(50) ,
 @DiaChi nvarchar(100) ,
 @SoDienThoai nvarchar(15)
 as
 begin
		INSERT INTO NhaCungCap(Email,TenNCC,DiaChi,SoDienThoai) values (@email,@TenNCC,@DiaChi,@SoDienThoai)
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_nhacungcap_update]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_nhacungcap_update]
 @MaNCC int,
 @TenNCC nvarchar(50) ,
 @DiaChi nvarchar(100) ,
 @SoDienThoai nvarchar(15),
 @email nvarchar(100)
 as
 begin
	update NhaCungCap Set TenNCC=@TenNCC,DiaChi=@DiaChi,SoDienThoai=@SoDienthoai,Email=@email where MaNCC=@MaNCC
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_refesh_StatusMGG]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[sp_refesh_StatusMGG]
AS
BEGIN
    DECLARE @ngayhientai DATE 

    UPDATE MaGiamGia
    SET mota = mota 
       
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sanpham_banchay]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
    CREATE proc [dbo].[sp_sanpham_banchay]
    as
    begin
    select top(10) s.MaSP,s.TenMH,s.anhSP,s.sldaban,SUM(c.TongTien) as doanhthu
    from SanPham as s
    join ChiTietHoaDonBan as c on s.MaSP=c.MaSP
    group by s.MaSP,s.TenMH,s.anhSP,s.luotxem,s.sldaban
    order by s.sldaban DESC
    end

    exec sp_sanpham_banchay
GO
/****** Object:  StoredProcedure [dbo].[sp_search_sanpham]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_search_sanpham]
    @page_index INT,
    @page_size INT,
    @ten_sanpham NVARCHAR(250) ,
    @gia_tien VARCHAR(50) ,
    @ma_theloai int ,
    @ma_thuonghieu int
AS
BEGIN
    SET NOCOUNT ON;
    ----lấy giá cần tìm kiếm
    IF @gia_tien!=''
    begin
    DECLARE @vi_tri INT = CHARINDEX('-', @gia_tien)
-- Tách thành hai biến dựa trên vị trí của '-'
    DECLARE @giatien_1 float = SUBSTRING(@gia_tien, 1, @vi_tri - 1)
    DECLARE @giatien_2 float = SUBSTRING(@gia_tien, @vi_tri + 1, LEN(@gia_tien))
    end

    IF @page_size = 0
    BEGIN
        SELECT
            ROW_NUMBER() OVER (ORDER BY MaSP ASC) AS RowNumber, 
          sp.*
        FROM SanPham AS sp
		join TheLoai as tl on sp.MaLoai=tl.MaLoai
		join ThuongHieu as th on th.MaTH=sp.MaTH
        WHERE
             (@ten_sanpham ='' OR sp.TenMH LIKE '%' + @ten_sanpham + '%')
            AND (@gia_tien ='' OR sp.GiaBan between @giatien_1 and @giatien_2)
            AND (@ma_theloai ='' OR tl.MaLoai = @ma_theloai)
            AND (@ma_thuonghieu='' OR th.MaTH = @ma_thuonghieu)
        Order By MaSP DESC
    END
    ELSE
    BEGIN
        DECLARE @RecordCount INT;
        
        SELECT
            ROW_NUMBER() OVER (ORDER BY MaSP ASC) AS RowNumber, 
            sp.*
        INTO #Results
        FROM SanPham AS sp
		join TheLoai as tl on sp.MaLoai=tl.MaLoai
		join ThuongHieu as th on th.MaTH=sp.MaTH
        WHERE
             (@ten_sanpham ='' OR sp.TenMH LIKE '%' + @ten_sanpham + '%')
             AND (@gia_tien ='' OR sp.GiaBan between @giatien_1 and @giatien_2)
            AND (@ma_theloai ='' OR tl.MaLoai = @ma_theloai)
            AND (@ma_thuonghieu='' OR th.MaTH = @ma_thuonghieu)
        Order By MaSP DESC


        SELECT @RecordCount = COUNT(*)
        FROM #Results;

        SELECT
            *,
            @RecordCount AS RecordCount
        FROM #Results
        WHERE
            RowNumber BETWEEN (@page_index - 1) * @page_size + 1
            AND ((@page_index - 1) * @page_size + 1) + @page_size - 1
            OR @page_index = -1
        Order By MaSP DESC
        
        DROP TABLE #Results;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_search_sanpham_by_user]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_search_sanpham_by_user]
    @page_index INT,
    @page_size INT,
    @ten_sanpham NVARCHAR(250) ,
    @gia_tien VARCHAR(50) ,
    @ma_theloai int ,
    @ma_thuonghieu int
AS
BEGIN
    SET NOCOUNT ON;
    ----lấy giá cần tìm kiếm
    IF @gia_tien!=''
    begin
    DECLARE @vi_tri INT = CHARINDEX('-', @gia_tien)
-- Tách thành hai biến dựa trên vị trí của '-'
    DECLARE @giatien_1 float = SUBSTRING(@gia_tien, 1, @vi_tri - 1)
    DECLARE @giatien_2 float = SUBSTRING(@gia_tien, @vi_tri + 1, LEN(@gia_tien))
    end

    IF @page_size = 0
    BEGIN
        SELECT
            ROW_NUMBER() OVER (ORDER BY MaSP ASC) AS RowNumber, 
          sp.*
        FROM SanPham AS sp
		join TheLoai as tl on sp.MaLoai=tl.MaLoai
		join ThuongHieu as th on th.MaTH=sp.MaTH
        WHERE
             (@ten_sanpham ='' OR sp.TenMH LIKE '%' + @ten_sanpham + '%')
            AND (@gia_tien ='' OR sp.GiaBan between @giatien_1 and @giatien_2)
            AND (@ma_theloai ='' OR tl.MaLoai = @ma_theloai)
            AND (@ma_thuonghieu='' OR th.MaTH = @ma_thuonghieu)
            And GiaBan is not null
        Order By MaSP DESC
    END
    ELSE
    BEGIN
        DECLARE @RecordCount INT;
        
        SELECT
            ROW_NUMBER() OVER (ORDER BY MaSP ASC) AS RowNumber, 
            sp.*
        INTO #Results
        FROM SanPham AS sp
		join TheLoai as tl on sp.MaLoai=tl.MaLoai
		join ThuongHieu as th on th.MaTH=sp.MaTH
        WHERE
             (@ten_sanpham ='' OR sp.TenMH LIKE '%' + @ten_sanpham + '%')
             AND (@gia_tien ='' OR sp.GiaBan between @giatien_1 and @giatien_2)
            AND (@ma_theloai ='' OR tl.MaLoai = @ma_theloai)
            AND (@ma_thuonghieu='' OR th.MaTH = @ma_thuonghieu)
            And GiaBan is not null
        Order By MaSP DESC


        SELECT @RecordCount = COUNT(*)
        FROM #Results;

        SELECT
            *,
            @RecordCount AS RecordCount
        FROM #Results
        WHERE
            RowNumber BETWEEN (@page_index - 1) * @page_size + 1
            AND ((@page_index - 1) * @page_size + 1) + @page_size - 1
            OR @page_index = -1
        Order By MaSP DESC
        
        DROP TABLE #Results;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_search_tintuc]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec sp_search_tintuc  1,1
CREATE PROCEDURE [dbo].[sp_search_tintuc]
    @page_index INT,
    @page_size INT,
    @tieude NVARCHAR(max) ='',
    @trangthai int =-1
  
AS
BEGIN
    SET NOCOUNT ON;
    ----lấy giá cần tìm kiếm   
    IF @page_size = 0
    BEGIN
        SELECT
            ROW_NUMBER() OVER (ORDER BY MaTinTuc ASC) AS RowNumber, 
          tt.*
        FROM TinTucs as tt
        WHERE (@tieude=''or TieuDe like '%'+@tieude+'%')
             
    END
    ELSE
    BEGIN
        DECLARE @RecordCount INT;        
        SELECT
            ROW_NUMBER() OVER (ORDER BY MaTinTuc ASC) AS RowNumber, 
          tt.*
        INTO #Results
        FROM TinTucs as tt
        WHERE (@tieude=''or TieuDe like '%'+@tieude+'%') and @trangthai=-1 or TrangThai=1

        SELECT @RecordCount = COUNT(*)
        FROM #Results;
        SELECT
            *,
            @RecordCount AS RecordCount
        FROM #Results
        WHERE
            RowNumber BETWEEN (@page_index - 1) * @page_size + 1
            AND ((@page_index - 1) * @page_size + 1) + @page_size - 1
            OR @page_index = -1;
        
        DROP TABLE #Results;
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_searchNCC_by_MaNCC]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
   create proc [dbo].[sp_searchNCC_by_MaNCC]
 @MaNCC int
 as
 begin 
 select * From NhaCungCap as ncc where ncc.MaNCC=@MaNCC
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_showdoanhthu]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_showdoanhthu]
   as
   begin
   ---Tạo bảng ảo chứa tháng
        CREATE TABLE #temp (thang INT);
        INSERT INTO #temp (thang)
        VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12);

        -- Thực hiện LEFT JOIN để kết hợp thông tin từ bảng HoaDonBan và bảng tạm thời
        SELECT 
            m.thang,
            ISNULL(SUM(h.ThanhTien),0) AS DoanhThu
        FROM 
            #temp m
        left JOIN   HoaDonBan h ON MONTH(h.NgayTao) = m.thang where YEAR(h.NgayTao)=YEAR(GETDATE())      
        GROUP BY m.thang;

        -- Xóa bảng tạm thời sau khi sử dụng
        DROP TABLE #temp;
   end
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaLoaiTaiKhoan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaLoaiTaiKhoan]
    @MaLoaiTaiKhoan INT,
    @TenLoai NVARCHAR(50),
    @MoTa NVARCHAR(250)
AS
BEGIN
    UPDATE LoaiTaiKhoans
    SET TenLoai = @TenLoai, MoTa = @MoTa
    WHERE MaLoaiTaiKhoan = @MaLoaiTaiKhoan;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaSLDaBanSanPham]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaSLDaBanSanPham]
    @MaSP INT,
    @SoLuongDaBan INT
AS
BEGIN
    UPDATE SanPham
    SET sldaban = @SoLuongDaBan
    WHERE MaSP = @MaSP;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaTheLoai]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaTheLoai]
    @MaLoai INT,
    @TenLoai NVARCHAR(50),
    @GhiChu NVARCHAR(250)
AS
BEGIN
    UPDATE TheLoai
    SET TenLoai = @TenLoai, Ghichu = @GhiChu
    WHERE MaLoai = @MaLoai;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaThongTinSanPham]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaThongTinSanPham]
    @MaSP INT,
    @MaTH INT,
    @TenMH NVARCHAR(50),
    @MaLoai INT,
    @soLuongTon INT,
    @GiaBan FLOAT,
    @anhSP NVARCHAR(MAX),
    @mota NVARCHAR(MAX),    
    @chatlieuday NVARCHAR(300),
    @chatlieuvo NVARCHAR(300),
    @mausac NVARCHAR(100)
AS
BEGIN
    UPDATE SanPham
    SET MaTH = @MaTH, 
        TenMH = @TenMH, 
        MaLoai = @MaLoai, 
        soLuongTon = @SoLuongTon, 
        GiaBan = @GiaBan,
        anhSP = @anhSP, 
        mota = @mota,         
        chatlieuday = @chatlieuday,
        chatlieuvo = @chatlieuvo,
        mausac = @MauSac
    WHERE MaSP = @MaSP;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_SuaThuongHieu]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SuaThuongHieu]
    @MaTH INT,
    @TenThuongHieu NVARCHAR(255),
    @MoTa NVARCHAR(MAX),
    @HinhAnh NVARCHAR(500)
AS
BEGIN
    UPDATE ThuongHieu
    SET TenThuongHieu = @TenThuongHieu, MoTa = @MoTa, HinhAnh = @HinhAnh
    WHERE MaTH = @MaTH;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemLoaiTaiKhoan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemLoaiTaiKhoan]
    @TenLoai NVARCHAR(50),
    @MoTa NVARCHAR(250)
AS
BEGIN
    INSERT INTO LoaiTaiKhoans (TenLoai, MoTa)
    VALUES (@TenLoai, @MoTa);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemSanPham]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemSanPham]
    @maTH INT,
    @tenMH NVARCHAR(50),
    @maLoai INT, 
    @anhSP NVARCHAR(MAX),
    @moTa NVARCHAR(MAX),    
    @chatlieuday nvarchar(300),
    @chatlieuvo nvarchar(300),
    @mausac nvarchar(100)
AS
BEGIN
    INSERT INTO SanPham (MaTH, TenMH, MaLoai,soLuongton,GiaBan,giaNhap,luotxem,sldaban, anhSP, mota, trangthai,chatlieuday,chatlieuvo,mausac)
    VALUES (@MaTH, @TenMH, @MaLoai,0,Null ,Null,0,0,@anhSP, @MoTa, N'Hết hàng',@chatlieuday,@chatlieuvo,@mausac);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTaiKhoan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemTaiKhoan]
    @TenTaiKhoan NVARCHAR(50),
    @MatKhau NVARCHAR(50) ,
	@LoaiTaiKhoan INT
AS
BEGIN
    INSERT INTO TaiKhoans (TenTaiKhoan, MatKhau,MaLoaiTaiKhoan,HoTen,DiaChi,SoDienThoai,AnhDaiDien,Email)
    VALUES (@TenTaiKhoan, @MatKhau,@LoaiTaiKhoan,N'Trống',N'Trống',N'Trống',N'Trống',N'Trống');
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemTheLoai]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemTheLoai]
    @TenLoai NVARCHAR(50),
    @GhiChu NVARCHAR(250)
AS
BEGIN
    INSERT INTO TheLoai (TenLoai,Ghichu)
    VALUES (@TenLoai, @GhiChu);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemThuongHieu]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemThuongHieu]
    @TenThuongHieu NVARCHAR(255),
    @MoTa NVARCHAR(MAX),
    @HinhAnh NVARCHAR(500)
AS
BEGIN
    INSERT INTO ThuongHieu (TenThuongHieu, MoTa, HinhAnh)
    VALUES (@TenThuongHieu, @MoTa, @HinhAnh);
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_thongkeTongQuan]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_thongkeTongQuan]
as
begin 
select 
        (select count(*)  from SanPham )as slsp,
        (select count(*) from TaiKhoans as tk where tk.MaLoaiTaiKhoan=2) as slkh,
        (select count(*) from HoaDonBan where TrangThai=3) as sldhHuy,
        (select count(*) from HoaDonBan where TrangThai=2) as sldhThanhCong,
        (select count(*) from HoaDonBan where TrangThai=0) as sldhChoXacNhan,
        isNull((select SUM(ct.TongTien) from HoaDonBan as hdb join ChiTietHoaDonBan as ct on ct.MaHD=hdb.MaHD
                WHERE DAY(hdb.NgayTao) = DAY(GETDATE())
                AND MONTH(hdb.NgayTao) = MONTH(GETDATE())
                AND YEAR(hdb.NgayTao) = YEAR(GETDATE())
        ),0) as doanhThuHomNay
        
end
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemSanPhamTheoTen]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimKiemSanPhamTheoTen]
    @TenMH NVARCHAR(50)
AS
BEGIN
    SELECT *
    FROM SanPham
    WHERE TenMH LIKE N'%' + @TenMH + '%';
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemTheLoai]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimKiemTheLoai]
    @TenLoai NVARCHAR(50)
AS
BEGIN
    SELECT *
    FROM TheLoai
    WHERE TenLoai LIKE N'%' + @TenLoai + '%';
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_TimKiemThuongHieu]    Script Date: 08-06-2024 3:42:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_TimKiemThuongHieu]
    @TenThuongHieu NVARCHAR(255)
AS
BEGIN
    SELECT *
    FROM ThuongHieu
    WHERE TenThuongHieu LIKE N'%' + @TenThuongHieu + '%';
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_updateHDB]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updateHDB]  
    @maHD int,
    @TenKH NVARCHAR(50),    
    @Diachi NVARCHAR(250),
    @Email NVARCHAR(50),
    @SDT NVARCHAR(50),
    @DiaChiGiaoHang NVARCHAR(350),   
	@methodPay NVARCHAR(100),
	@list_json_chitietHDB NVARCHAR(MAX)
	as
begin
        ------Cập nhật thông tin hóa đơn bán
        update HoaDonBan 
		set TenKH=@TenKH,Diachi=@Diachi,Email=@Email,SDT=@SDT,DiaChiGiaoHang=@DiaChiGiaoHang,methodPay=@methodPay
		where HoaDonBan.MaHD=@maHD
		---Thêm chi tiết hóa đơn nhập nếu trong bảng chi tiết chưa có
		IF (@list_json_chitietHDB IS NOT NULL)
			BEGIN
				-- Bước 1: Trích xuất dữ liệu từ JSON và lưu vào bảng tạm #UpdatedDetails
				CREATE TABLE #UpdatedDetails (
					maSP INT,
					imageSP NVARCHAR(MAX),
					tenSP NVARCHAR(100),
					soLuong INT,
					giaBan FLOAT,
					tongTien FLOAT
				)

				INSERT INTO #UpdatedDetails (maSP, imageSP, tenSP, soLuong, giaBan, tongTien)
				SELECT
					JSON_VALUE(l.value, '$.maSP'),
					JSON_VALUE(l.value, '$.imageSP'),
					JSON_VALUE(l.value, '$.tenSP'),
					CAST(JSON_VALUE(l.value, '$.soLuong') AS INT),
					CAST(JSON_VALUE(l.value, '$.giaBan') AS FLOAT),
					CAST(JSON_VALUE(l.value, '$.soLuong') AS INT) * CAST(JSON_VALUE(l.value, '$.giaBan') AS FLOAT)
				FROM OPENJSON(@list_json_chitietHDB) AS l

				-- Bước 2: Thêm chi tiết mới hoặc cập nhật chi tiết đã tồn tại
				-- Cập nhật chi tiết hóa đơn bán
				UPDATE ct
				SET ct.imageSP = u.imageSP,
					ct.tenSP = u.tenSP,
					ct.soLuong = u.soLuong,
					ct.giaBan = u.giaBan,
					ct.tongTien = u.tongTien
				FROM ChiTietHoaDonBan ct
				INNER JOIN #UpdatedDetails u ON ct.maSP = u.maSP
				WHERE ct.MaHD = @maHD

				-- Thêm chi tiết hóa đơn bán mới
				INSERT INTO ChiTietHoaDonBan (MaHD, maSP, imageSP, tenSP, soLuong, giaBan, tongTien)
				SELECT @maHD, maSP, imageSP, tenSP, soLuong, giaBan, tongTien
				FROM #UpdatedDetails
				WHERE maSP NOT IN (SELECT maSP FROM ChiTietHoaDonBan WHERE MaHD = @maHD)

				-- Bước 3: Xóa các chi tiết không có trong danh sách cập nhật
				DELETE FROM ChiTietHoaDonBan
				WHERE MaHD = @maHD AND maSP NOT IN (SELECT maSP FROM #UpdatedDetails)

				-- Bước 4: Xóa bảng tạm
				DROP TABLE #UpdatedDetails
			END
		---Cập nhật giá tiền tất cả của hóa đơn
		---lấy tổng tiền tất cả
		declare @ThanhTien float
		select @ThanhTien=(select SUM(ct.tongTien) from ChiTietHoaDonBan ct where ct.MaHD=@maHD)
		----Cập nhật
		Update HoaDonBan 
		set HoaDonBan.ThanhTien=@ThanhTien
	    where HoaDonBan.MaHD=@maHD
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateHDN]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updateHDN]
    @maHDN int,
    @MaNCC int, 
    @GhiChu  nvarchar(Max),
    @methodPay nvarchar(50), 
	@list_json_chitietHDN NVARCHAR(MAX)
	as
begin
        ------Cập nhật thông tin hóa đơn bán
        update HoaDonNhap
		set MaNCC=@MaNCC,GhiChu=@GhiChu,methodPay=@methodPay
		where HoaDonNhap.MaHD=@maHDN

        ----Xóa số lượng tồn sản phẩm của các chitiethd cũ      
            update sp set sp.soLuongton=sp.soLuongton- c.soLuong 
            from ChiTietHoaDonNhap as c 
            join SanPham as sp on sp.MaSP=c.MaSP
            where c.MaHDN=@maHDN
		---Thêm chi tiết hóa đơn nhập nếu trong bảng chi tiết chưa có
		IF (@list_json_chitietHDN IS NOT NULL)
			BEGIN

			
				-- Bước 1: Trích xuất dữ liệu từ JSON và lưu vào bảng tạm #UpdatedDetails
				CREATE TABLE #UpdatedDetails (
					maSP INT,					
					soLuong INT,
					giaNhap FLOAT,
					tongTien FLOAT
				)

				INSERT INTO #UpdatedDetails (maSP, soLuong, giaNhap, tongTien)
				SELECT
					JSON_VALUE(l.value, '$.maSP'),					
					CAST(JSON_VALUE(l.value, '$.soLuong') AS INT),
					CAST(JSON_VALUE(l.value, '$.giaNhap') AS FLOAT),
					CAST(JSON_VALUE(l.value, '$.soLuong') AS INT) * CAST(JSON_VALUE(l.value, '$.giaNhap') AS FLOAT)
				FROM OPENJSON(@list_json_chitietHDN) AS l

				-- Bước 2: Thêm chi tiết mới hoặc cập nhật chi tiết đã tồn tại
				-- Cập nhật chi tiết hóa đơn nhập cũ
				UPDATE ct
				SET
					ct.SoLuong = u.soLuong,
					ct.GiaNhap = u.giaNhap,
					ct.tongTien = u.tongTien
				FROM ChiTietHoaDonNhap ct
				INNER JOIN #UpdatedDetails u ON ct.MaSP = u.maSP
				WHERE ct.MaHDN = @maHDN

				-- Thêm chi tiết hóa đơn nhập mới 
				insert into ChiTietHoaDonNhap(MaHDN,MaSP,SoLuong,GiaNhap,TongTien)
				select @MaHDN,s.maSP,s.soLuong,s.giaNhap,s.tongTien
				FROM #UpdatedDetails as s
				WHERE s.maSP NOT IN (SELECT MaSP FROM ChiTietHoaDonNhap WHERE MaHDN = @maHDN)
                ---Cập nhật số lượng của các sp mới nhập mà chưa tồn tại trong hóa đơn cũ             
                
				-- Bước 3: Xóa các chi tiết không có trong danh sách cập nhật
				DELETE FROM ChiTietHoaDonNhap
				WHERE MaHDN = @maHDN AND MaSP NOT IN (SELECT maSP FROM #UpdatedDetails)

                ----Cập nhật lại số lượng tồn của các sản phẩm sau khi sửa hóa đơn

                  update sp set sp.soLuongton=sp.soLuongton+ c.soLuong ,sp.GiaBan=c.GiaNhap+(c.GiaNhap*0.15),sp.giaNhap=c.GiaNhap
                                
                  from ChiTietHoaDonNhap as c 
                  join SanPham as sp on sp.MaSP=c.MaSP
                  where c.MaHDN=@maHDN
				-- Bước 4: Xóa bảng tạm
				DROP TABLE #UpdatedDetails
			END
		
		---Cập nhật giá tiền tất cả của hóa đơn
		---lấy tổng tiền tất cả
		declare @ThanhTien float
		select @ThanhTien=(select SUM(ct.TongTien) from ChiTietHoaDonNhap ct where ct.MaHDN=@maHDN)
		----Cập nhật
		Update HoaDonNhap 
		set HoaDonNhap.Tongtien=@ThanhTien
	    where HoaDonNhap.MaHD=@maHDN
end
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateLuotXem]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_UpdateLuotXem]
@maSP int
as
begin
update SanPham 
set luotxem=luotxem+1
where MaSP=@maSP
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateMagiamgia]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_updateMagiamgia]
    @id INT,
    @code VARCHAR(50),
    @mota NVARCHAR(MAX),
    @ngaybatdau DATE,
    @ngayketthuc DATE,
    @giagiam FLOAT
AS
BEGIN
    UPDATE MaGiamGia
    SET code = @code,
        mota = @mota,
        ngaybatdau = @ngaybatdau,
        ngayketthuc = @ngayketthuc,
        giagiam = @giagiam
    WHERE idMa = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_updateNews]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create   proc [dbo].[sp_updateNews]
@id int ,
@tieude nvarchar(max),
@noidung nvarchar(max),
@hinhanh nvarchar(max)

as 
begin
    update TinTucs
    set TieuDe=@tieude,
        NoiDung=@noidung,
        HinhAnh=@hinhanh
    where MaTinTuc=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateSL_Cart]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[sp_updateSL_Cart]
    @maGH int,
    @soluong int
    as 
    begin
    declare @maSP int
    declare @soluongton int
    select @maSP=maSP from GioHang where maGH=@maGH
    select @soluongton=soLuongton from SanPham where MaSP=@maSP

    if(@soluongton>=@soluong)
        begin
            update GioHang
            set soluong=@soluong, tongtien=@soluong*giaban
            where maGH=@maGH
        end
    else
        begin
             THROW 50002, 'Sản phẩm này đã hết hàng', 1;
        end
    end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateStatus_HDB]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_updateStatus_HDB]
@MaHD int,
@trangthai int
as
begin
if @trangthai=1
	begin
	update HoaDonBan 
	set HoaDonBan.TrangThai=1,
    HoaDonBan.NgayDuyet=GetDate()
    ,HoaDonBan.ThoiGianGiaoHang=DATEADD(DAY, 2, GETDATE())
	where MaHD=@MaHD
	end

if @trangthai=2
	begin
	update HoaDonBan 
	set HoaDonBan.TrangThai=2
	where MaHD=@MaHD
	end

if @trangthai=3
	begin
	update HoaDonBan 
	set HoaDonBan.TrangThai=3,HoaDonBan.NgayHuy=GetDate()
	where MaHD=@MaHD
    --update lại số lượng bán ra của sản phẩm
    update SanPham
    set sldaban=sldaban-c.SoLuong
    from ChiTietHoaDonBan as c
    join SanPham  as sp on sp.MaSP=c.MaSP 
    where c.MaHD=@MaHD
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateStatusMGG]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_updateStatusMGG]
    @id INT,
    @trangthai INT
AS
BEGIN
    UPDATE MaGiamGia
    SET trangthai = @trangthai
    WHERE idMa = @id;
END;

GO
/****** Object:  StoredProcedure [dbo].[sp_updateStatusNews]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_updateStatusNews]
@id int,
@trangthai nvarchar(10)
as
begin 
        update TinTucs
        set TrangThai=@trangthai
        where MaTinTuc=@id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_updateView_News]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_updateView_News]
@id int
as
 begin
 update TinTucs
 set LuotXem=LuotXem+1
 where MaTinTuc=@id
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_useMagiamgia]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_useMagiamgia]
@code nvarchar(100)
as
begin
    declare @datenow date
    set @datenow =convert(date,getDate())
    select * from MaGiamGia as m where @code=m.code and @datenow between m.ngaybatdau and m.ngayketthuc
end
GO
/****** Object:  StoredProcedure [dbo].[sp_XacNhan_HDB]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_XacNhan_HDB]
@MaHD int
as
begin
update HoaDonBan 
set HoaDonBan.TrangThai=1,HoaDonBan.NgayDuyet=GetDate()
where MaHD=@MaHD
end
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaLoaiTaiKhoan]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaLoaiTaiKhoan]
    @MaLoaiTaiKhoan INT
AS
BEGIN
    DELETE FROM LoaiTaiKhoans
    WHERE MaLoaiTaiKhoan = @MaLoaiTaiKhoan;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaSanPham]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaSanPham]
    @MaSP INT
AS
BEGIN
    DELETE FROM SanPham
    WHERE MaSP = @MaSP;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTaiKhoan]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaTaiKhoan]
    @TenTaiKhoan NVARCHAR(50)
AS
BEGIN
    DELETE FROM TaiKhoans
    WHERE TenTaiKhoan = @TenTaiKhoan;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaTheLoai]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaTheLoai]
    @MaLoai INT
AS
BEGIN
    DELETE FROM TheLoai
    WHERE MaLoai = @MaLoai;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_XoaThuongHieu]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_XoaThuongHieu]
    @MaTH INT
AS
BEGIN
    DELETE FROM ThuongHieu
    WHERE MaTH = @MaTH;
END;
GO
/****** Object:  StoredProcedure [dbo].[updateMagiamgia]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateMagiamgia]
    @id INT,
    @code VARCHAR(50),
    @mota NVARCHAR(MAX),
    @ngaybatdau DATE,
    @ngayketthuc DATE,
    @giagiam FLOAT
AS
BEGIN
    UPDATE MaGiamGia
    SET code = @code,
        mota = @mota,
        ngaybatdau = @ngaybatdau,
        ngayketthuc = @ngayketthuc,
        giagiam = @giagiam
    WHERE idMa = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[updateStatusMGG]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateStatusMGG]
    @id INT,
    @trangthai INT
AS
BEGIN
    UPDATE MaGiamGia
    SET trangthai = @trangthai
    WHERE idMa = @id;
END;

GO
/****** Object:  StoredProcedure [dbo].[updateView_News]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[updateView_News]
@id int
as
 begin
 update TinTucs
 set LuotXem=LuotXem+1
 where MaTinTuc=@id
 end
GO
/****** Object:  Trigger [dbo].[update_product_quantity]    Script Date: 08-06-2024 3:42:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[update_product_quantity]
ON [dbo].[ChiTietHoaDonNhap]
AFTER DELETE
AS
BEGIN
    DECLARE @maSP INT;
    DECLARE @soluong_old INT;

    -- Lấy product_id và quantity_deleted của chi tiết hóa đơn vừa bị xóa
    SELECT @maSP = d.MaSP, @soluong_old = d.SoLuong
    FROM deleted as d;

    -- Cập nhật lại số lượng sản phẩm trong bảng sản phẩm
    UPDATE SanPham
    SET soLuongton = soLuongton - @soluong_old
    WHERE MaSP = @maSP;
END;
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] ENABLE TRIGGER [update_product_quantity]
GO
/****** Object:  Trigger [dbo].[trgUpdateStatusMGG]    Script Date: 08-06-2024 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[trgUpdateStatusMGG]
on [dbo].[MaGiamGia]
after insert,update
as
begin
    declare @ngaybatdau Date
    declare @ngayketthuc Date
    declare @ngayhientai Date
    declare  @idMa int
    select @ngaybatdau=Convert(date,m.ngaybatdau) , @ngayketthuc= Convert(date,m.ngayketthuc), @idMa=m.idMa from inserted as m 
    SET @ngayhientai = CONVERT(DATE, GETDATE())

   
    update MaGiamGia
    set trangthai=
    case
        when @ngaybatdau > @ngayhientai then 0
        when @ngayhientai between @ngaybatdau and @ngayketthuc then 1
        when @ngayhientai > @ngayketthuc then 2
        else 2
    end
    where idMa=@idMa
   
end
GO
ALTER TABLE [dbo].[MaGiamGia] ENABLE TRIGGER [trgUpdateStatusMGG]
GO
/****** Object:  Trigger [dbo].[trigger_checkSLton]    Script Date: 08-06-2024 3:42:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   TRIGGER [dbo].[trigger_checkSLton]
ON [dbo].[SanPham]
AFTER INSERT, UPDATE
AS
BEGIN
    Update SanPham
    set trangthai = case
        when soLuongton>0 and soLuongton<=10 then N'Sắp hết hàng'
                when soLuongton=0  then N'Hết hàng'
                when soLuongton>10 then N'Còn hàng'
        end
        where MaSP in (select maSP from inserted)
END;
GO
ALTER TABLE [dbo].[SanPham] ENABLE TRIGGER [trigger_checkSLton]
GO
USE [master]
GO
ALTER DATABASE [BanDongHo] SET  READ_WRITE 
GO
