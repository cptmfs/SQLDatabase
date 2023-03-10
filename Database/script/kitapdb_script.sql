USE [master]
GO
/****** Object:  Database [kitapDb]    Script Date: 7.03.2023 12:19:17 ******/
CREATE DATABASE [kitapDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kitapDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\kitapDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kitapDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\kitapDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [kitapDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kitapDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kitapDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kitapDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kitapDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kitapDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kitapDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [kitapDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kitapDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kitapDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kitapDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kitapDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kitapDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kitapDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kitapDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kitapDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kitapDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kitapDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kitapDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kitapDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kitapDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kitapDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kitapDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kitapDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kitapDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kitapDb] SET  MULTI_USER 
GO
ALTER DATABASE [kitapDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kitapDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kitapDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kitapDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kitapDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kitapDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [kitapDb] SET QUERY_STORE = OFF
GO
USE [kitapDb]
GO
/****** Object:  Table [dbo].[TblKitaplar]    Script Date: 7.03.2023 12:19:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblKitaplar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KiptaAd] [varchar](50) NULL,
	[Yazar] [varchar](50) NULL,
	[Sayfa] [varchar](50) NULL,
	[Fiyat] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblKitaplar] ON 

INSERT [dbo].[TblKitaplar] ([ID], [KiptaAd], [Yazar], [Sayfa], [Fiyat]) VALUES (1, N'Uçurtma Avcısı', N'Khaleed Hossaini', N'450', CAST(75.00 AS Decimal(5, 2)))
INSERT [dbo].[TblKitaplar] ([ID], [KiptaAd], [Yazar], [Sayfa], [Fiyat]) VALUES (2, N'Kürk Mantolu Madonna', N'Sabahattin Ali', N'180', CAST(55.00 AS Decimal(5, 2)))
INSERT [dbo].[TblKitaplar] ([ID], [KiptaAd], [Yazar], [Sayfa], [Fiyat]) VALUES (3, N'İçimizdeki Şeytan', N'Sabahattin Ali', N'290', CAST(65.00 AS Decimal(5, 2)))
INSERT [dbo].[TblKitaplar] ([ID], [KiptaAd], [Yazar], [Sayfa], [Fiyat]) VALUES (4, N'Aşkın Gözyaşları Şems', N'Sinan Yağmur', N'350', CAST(50.00 AS Decimal(5, 2)))
INSERT [dbo].[TblKitaplar] ([ID], [KiptaAd], [Yazar], [Sayfa], [Fiyat]) VALUES (5, N'Aşkın Gözyaşları Mevlana', N'Sinan Yağmur ', N'300', CAST(45.00 AS Decimal(5, 2)))
INSERT [dbo].[TblKitaplar] ([ID], [KiptaAd], [Yazar], [Sayfa], [Fiyat]) VALUES (6, N'Kardeşimin Hikayesi', N'Zülfü Livaneli', N'480', CAST(95.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[TblKitaplar] OFF
GO
USE [master]
GO
ALTER DATABASE [kitapDb] SET  READ_WRITE 
GO
