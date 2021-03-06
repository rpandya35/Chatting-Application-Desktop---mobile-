USE [master]
GO
/****** Object:  Database [PCChat]    Script Date: 08/04/2015 12:40:51 ******/
CREATE DATABASE [PCChat] ON  PRIMARY 
( NAME = N'PCChat', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PCChat.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PCChat_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\PCChat_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PCChat] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PCChat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PCChat] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [PCChat] SET ANSI_NULLS OFF
GO
ALTER DATABASE [PCChat] SET ANSI_PADDING OFF
GO
ALTER DATABASE [PCChat] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [PCChat] SET ARITHABORT OFF
GO
ALTER DATABASE [PCChat] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [PCChat] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [PCChat] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [PCChat] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [PCChat] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [PCChat] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [PCChat] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [PCChat] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [PCChat] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [PCChat] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [PCChat] SET  DISABLE_BROKER
GO
ALTER DATABASE [PCChat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [PCChat] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [PCChat] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [PCChat] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [PCChat] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [PCChat] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [PCChat] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [PCChat] SET  READ_WRITE
GO
ALTER DATABASE [PCChat] SET RECOVERY SIMPLE
GO
ALTER DATABASE [PCChat] SET  MULTI_USER
GO
ALTER DATABASE [PCChat] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [PCChat] SET DB_CHAINING OFF
GO
USE [PCChat]
GO
/****** Object:  Table [dbo].[PCName]    Script Date: 08/04/2015 12:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCName](
	[Name1] [varchar](50) NULL,
	[Name2] [varchar](50) NULL,
	[ID] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PCMember]    Script Date: 08/04/2015 12:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCMember](
	[ID] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Pass] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[Image] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PCMember] ([ID], [Name], [Pass], [Mobile], [EMail], [Image]) VALUES (N'1001', N'ABC', N'User', N'9876543210', N'voramish7018@gmail.com', N'img//Back.jpg')
INSERT [dbo].[PCMember] ([ID], [Name], [Pass], [Mobile], [EMail], [Image]) VALUES (N'1002', N'PQR', N'User', N'9876543210', N'voramish7018@gmail.com', N'img//Back.jpg')
INSERT [dbo].[PCMember] ([ID], [Name], [Pass], [Mobile], [EMail], [Image]) VALUES (N'1003', N'XYZ', N'User', N'9876543210', N'voramish7018@gmail.com', N'img//Back.jpg')
INSERT [dbo].[PCMember] ([ID], [Name], [Pass], [Mobile], [EMail], [Image]) VALUES (N'1004', N'LMN', N'User', N'9876543210', N'voramish7018@gmail.com', N'img//Back.jpg')
INSERT [dbo].[PCMember] ([ID], [Name], [Pass], [Mobile], [EMail], [Image]) VALUES (N'1005', N'Amish Vora', N'User', N'9076613215', N'voramish7018@gmail.com', N'img\Tulips.jpg')
/****** Object:  Table [dbo].[PCContact]    Script Date: 08/04/2015 12:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCContact](
	[ID] [varchar](50) NULL,
	[CId] [varchar](50) NULL,
	[Name1] [varchar](50) NULL,
	[Image1] [varchar](50) NULL,
	[Name2] [varchar](50) NULL,
	[Image2] [varchar](50) NULL,
	[Flag] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PCContact] ([ID], [CId], [Name1], [Image1], [Name2], [Image2], [Flag]) VALUES (N'1001', N'10001', N'PQR', N'img\\Back.jpg', N'ABC', N'img\\Back.jpg', N'B')
INSERT [dbo].[PCContact] ([ID], [CId], [Name1], [Image1], [Name2], [Image2], [Flag]) VALUES (N'1003', N'10002', N'ABC', N'img\\Back.jpg', N'XYZ', N'img\\Back.jpg', N'B')
INSERT [dbo].[PCContact] ([ID], [CId], [Name1], [Image1], [Name2], [Image2], [Flag]) VALUES (N'1001', N'10003', N'LMN', N'img//Back.jpg', N'ABC', N'img//Back.jpg', N'B')
INSERT [dbo].[PCContact] ([ID], [CId], [Name1], [Image1], [Name2], [Image2], [Flag]) VALUES (N'1005', N'10004', N'PQR', N'img//Back.jpg', N'Amish Vora', N'img\Tulips.jpg', N'B')
/****** Object:  Table [dbo].[PCChats]    Script Date: 08/04/2015 12:40:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PCChats](
	[Case_ID] [varchar](50) NULL,
	[Chat] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Time] [varchar](50) NULL,
	[Flag] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PCChats] ([Case_ID], [Chat], [Date], [Time], [Flag]) VALUES (N'10001', N'ABC :  Hi', N'03-08-15', N'16:08:23', N'No')
INSERT [dbo].[PCChats] ([Case_ID], [Chat], [Date], [Time], [Flag]) VALUES (N'10001', N'ABC :  hi', N'03-08-15', N'15:29:31', N'No')
INSERT [dbo].[PCChats] ([Case_ID], [Chat], [Date], [Time], [Flag]) VALUES (N'10001', N'ABC :  hi', N'03-08-15', N'16:09:32', N'No')
INSERT [dbo].[PCChats] ([Case_ID], [Chat], [Date], [Time], [Flag]) VALUES (N'10001', N'ABC :  Hi', N'03-08-15', N'15:51:52', N'No')
INSERT [dbo].[PCChats] ([Case_ID], [Chat], [Date], [Time], [Flag]) VALUES (N'10001', N'ABC :  hi', N'03-08-15', N'16:09:36', N'No')
INSERT [dbo].[PCChats] ([Case_ID], [Chat], [Date], [Time], [Flag]) VALUES (N'10001', N'ABC :  hi', N'03-08-15', N'16:09:41', N'No')
INSERT [dbo].[PCChats] ([Case_ID], [Chat], [Date], [Time], [Flag]) VALUES (N'10004', N'PQR :  hi', N'03-08-15', N'18:53:54', N'Yes')
