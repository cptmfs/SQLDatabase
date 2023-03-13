USE [master]
GO
/****** Object:  Database [ToresDb]    Script Date: 13.03.2023 14:55:04 ******/
CREATE DATABASE [ToresDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ToresDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ToresDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ToresDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ToresDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ToresDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ToresDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ToresDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ToresDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ToresDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ToresDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ToresDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ToresDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ToresDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ToresDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ToresDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ToresDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ToresDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ToresDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ToresDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ToresDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ToresDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ToresDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ToresDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ToresDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ToresDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ToresDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ToresDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ToresDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ToresDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ToresDb] SET  MULTI_USER 
GO
ALTER DATABASE [ToresDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ToresDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ToresDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ToresDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ToresDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ToresDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ToresDb] SET QUERY_STORE = OFF
GO
USE [ToresDb]
GO
/****** Object:  Table [dbo].[datLog]    Script Date: 13.03.2023 14:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datLog](
	[LogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[LoginDT] [nvarchar](12) NOT NULL,
	[LogoutDT] [nvarchar](12) NOT NULL,
	[LogNotes] [nvarchar](50) NULL,
 CONSTRAINT [PK_datLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datReservation]    Script Date: 13.03.2023 14:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datReservation](
	[ResReqID] [int] IDENTITY(1,1) NOT NULL,
	[ResRoomID] [tinyint] NOT NULL,
	[ResUserID] [int] NOT NULL,
	[ResStartDT] [nvarchar](12) NOT NULL,
	[ResEndDT] [nvarchar](12) NOT NULL,
	[ResStatus] [nchar](1) NOT NULL,
 CONSTRAINT [PK_datReservation] PRIMARY KEY CLUSTERED 
(
	[ResReqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datRoom]    Script Date: 13.03.2023 14:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datRoom](
	[RoomID] [tinyint] IDENTITY(1,1) NOT NULL,
	[RoomName] [nvarchar](50) NOT NULL,
	[RoomCapacity] [tinyint] NOT NULL,
	[RoomStatus] [char](1) NOT NULL,
	[RoomNote] [nvarchar](100) NULL,
 CONSTRAINT [PK_datRoom] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[datUser]    Script Date: 13.03.2023 14:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[datUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](10) NOT NULL,
	[UserPass] [nvarchar](10) NOT NULL,
	[UserFirstName] [nvarchar](50) NOT NULL,
	[UserLastName] [nvarchar](20) NOT NULL,
	[UserDeptID] [tinyint] NOT NULL,
	[UserTypeID] [tinyint] NOT NULL,
	[UserEmail] [nvarchar](50) NULL,
 CONSTRAINT [PK_datUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jnkRoomSpec]    Script Date: 13.03.2023 14:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jnkRoomSpec](
	[RoomSpecID] [smallint] IDENTITY(1,1) NOT NULL,
	[RoomID] [tinyint] NOT NULL,
	[SpecID] [tinyint] NOT NULL,
 CONSTRAINT [PK_jnkRoomSpec] PRIMARY KEY CLUSTERED 
(
	[RoomSpecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prmDepartment]    Script Date: 13.03.2023 14:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prmDepartment](
	[DeptID] [tinyint] IDENTITY(1,1) NOT NULL,
	[DeptName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_prmDepartment] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prmSpec]    Script Date: 13.03.2023 14:55:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prmSpec](
	[SpecID] [tinyint] IDENTITY(1,1) NOT NULL,
	[SpecDesc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_prmSpecs] PRIMARY KEY CLUSTERED 
(
	[SpecID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[datLog]  WITH CHECK ADD  CONSTRAINT [FK_datLog_datUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[datUser] ([UserID])
GO
ALTER TABLE [dbo].[datLog] CHECK CONSTRAINT [FK_datLog_datUser]
GO
ALTER TABLE [dbo].[datReservation]  WITH CHECK ADD  CONSTRAINT [FK_datReservation_datRoom] FOREIGN KEY([ResRoomID])
REFERENCES [dbo].[datRoom] ([RoomID])
GO
ALTER TABLE [dbo].[datReservation] CHECK CONSTRAINT [FK_datReservation_datRoom]
GO
ALTER TABLE [dbo].[datReservation]  WITH CHECK ADD  CONSTRAINT [FK_datReservation_datUser] FOREIGN KEY([ResUserID])
REFERENCES [dbo].[datUser] ([UserID])
GO
ALTER TABLE [dbo].[datReservation] CHECK CONSTRAINT [FK_datReservation_datUser]
GO
ALTER TABLE [dbo].[datUser]  WITH CHECK ADD  CONSTRAINT [FK_datUser_prmDepartment] FOREIGN KEY([UserDeptID])
REFERENCES [dbo].[prmDepartment] ([DeptID])
GO
ALTER TABLE [dbo].[datUser] CHECK CONSTRAINT [FK_datUser_prmDepartment]
GO
ALTER TABLE [dbo].[jnkRoomSpec]  WITH CHECK ADD  CONSTRAINT [FK_jnkRoomSpec_datRoom] FOREIGN KEY([RoomID])
REFERENCES [dbo].[datRoom] ([RoomID])
GO
ALTER TABLE [dbo].[jnkRoomSpec] CHECK CONSTRAINT [FK_jnkRoomSpec_datRoom]
GO
ALTER TABLE [dbo].[jnkRoomSpec]  WITH CHECK ADD  CONSTRAINT [FK_jnkRoomSpec_prmSpec] FOREIGN KEY([SpecID])
REFERENCES [dbo].[prmSpec] ([SpecID])
GO
ALTER TABLE [dbo].[jnkRoomSpec] CHECK CONSTRAINT [FK_jnkRoomSpec_prmSpec]
GO
USE [master]
GO
ALTER DATABASE [ToresDb] SET  READ_WRITE 
GO
