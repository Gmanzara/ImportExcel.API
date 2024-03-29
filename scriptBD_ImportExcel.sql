USE [master]
GO
/****** Object:  Database [DB_ImportExcel]    Script Date: 09/01/2024 02:04:14 ******/
CREATE DATABASE [DB_ImportExcel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'importExcel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\importExcel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'importExcel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\importExcel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DB_ImportExcel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_ImportExcel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_ImportExcel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_ImportExcel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_ImportExcel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_ImportExcel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_ImportExcel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_ImportExcel] SET  MULTI_USER 
GO
ALTER DATABASE [DB_ImportExcel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_ImportExcel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_ImportExcel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_ImportExcel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_ImportExcel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_ImportExcel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_ImportExcel', N'ON'
GO
ALTER DATABASE [DB_ImportExcel] SET QUERY_STORE = OFF
GO
USE [DB_ImportExcel]
GO
/****** Object:  Table [dbo].[EntityStudents]    Script Date: 09/01/2024 02:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntityStudents](
	[Student_Id] [int] IDENTITY(1,1) NOT NULL,
	[RollNo] [int] NULL,
	[EnrollmentNo] [nvarchar](15) NULL,
	[Name] [nvarchar](50) NULL,
	[Branch] [nvarchar](50) NULL,
	[University] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EntityStudents] ON 

INSERT [dbo].[EntityStudents] ([Student_Id], [RollNo], [EnrollmentNo], [Name], [Branch], [University]) VALUES (1, 2, N'14SOECE13018', N'Hiren Dibariya', N'CE', N'RK University')
INSERT [dbo].[EntityStudents] ([Student_Id], [RollNo], [EnrollmentNo], [Name], [Branch], [University]) VALUES (2, 3, N'14SOECE13019', N'Shruti Patel', N'IT', N'RK University')
INSERT [dbo].[EntityStudents] ([Student_Id], [RollNo], [EnrollmentNo], [Name], [Branch], [University]) VALUES (3, 4, N'14SOECE13020', N'Vivek Ghadiya', N'CE', N'RK University')
INSERT [dbo].[EntityStudents] ([Student_Id], [RollNo], [EnrollmentNo], [Name], [Branch], [University]) VALUES (4, 5, N'14SOECE13021', N'Parth Patel', N'ME', N'RK University')
INSERT [dbo].[EntityStudents] ([Student_Id], [RollNo], [EnrollmentNo], [Name], [Branch], [University]) VALUES (5, 6, N'14SOECE13022', N'Sapna Patel', N'CE', N'RK University')
SET IDENTITY_INSERT [dbo].[EntityStudents] OFF
GO
USE [master]
GO
ALTER DATABASE [DB_ImportExcel] SET  READ_WRITE 
GO
