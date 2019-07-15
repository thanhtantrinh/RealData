USE [master]
GO
/****** Object:  Database [BlogDemos]    Script Date: 15/07/2019 11:01:48 PM ******/
CREATE DATABASE [BlogDemos] ON  PRIMARY 
( NAME = N'BlogDemos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\BlogDemos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BlogDemos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER2017\MSSQL\DATA\BlogDemos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BlogDemos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BlogDemos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogDemos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogDemos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogDemos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogDemos] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogDemos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BlogDemos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogDemos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogDemos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogDemos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogDemos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogDemos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogDemos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogDemos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogDemos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BlogDemos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogDemos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogDemos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogDemos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogDemos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogDemos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BlogDemos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogDemos] SET RECOVERY FULL 
GO
ALTER DATABASE [BlogDemos] SET  MULTI_USER 
GO
ALTER DATABASE [BlogDemos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogDemos] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BlogDemos', N'ON'
GO
USE [BlogDemos]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 15/07/2019 11:01:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[Message] [nvarchar](50) NULL,
	[EmptyMessage] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TestName]    Script Date: 15/07/2019 11:01:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestName](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TestName] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_TestName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Messages] ON 

INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (1, N'Chao cac ban 123', N'123', CAST(N'2019-07-15T21:07:49.113' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (2, N'Chao cac ban 123', N'123', CAST(N'2019-07-15T21:08:12.640' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (3, N'Hello 2', N'Hello Hoa', CAST(N'2019-07-15T21:23:39.067' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (4, N'3', N'Hello Hoa 6', CAST(N'2019-07-15T21:23:39.067' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (5, N'Hello', N'Hello Hoa', CAST(N'2019-07-16T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (37, N'test 1', N'hello test 1', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (39, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (40, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (41, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (42, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (43, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (44, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (45, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (46, N'test 2', N'hello test 2', CAST(N'2019-07-19T22:12:38.180' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (47, N'1231', N'5674654', CAST(N'2019-07-15T22:29:03.257' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (48, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:14.427' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (49, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:21.040' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (50, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:22.327' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (51, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:24.817' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (52, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:26.560' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (53, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:31.050' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (54, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:32.070' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (55, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:32.567' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (56, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:29:32.937' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (57, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:17.953' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (58, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:18.580' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (59, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:19.057' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (60, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:19.310' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (61, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:19.543' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (62, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:19.793' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (63, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:20.040' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (64, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:20.283' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (65, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:20.637' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (66, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:20.763' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (67, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:21.003' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (68, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:21.240' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (69, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:21.490' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (70, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:21.743' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (71, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:22.007' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (72, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:22.270' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (73, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:25.347' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (74, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:25.587' AS DateTime))
INSERT [dbo].[Messages] ([MessageID], [Message], [EmptyMessage], [Date]) VALUES (75, N'1231456456', N'5dsfdsfds6', CAST(N'2019-07-15T22:30:25.823' AS DateTime))
SET IDENTITY_INSERT [dbo].[Messages] OFF
SET IDENTITY_INSERT [dbo].[TestName] ON 

INSERT [dbo].[TestName] ([ID], [TestName], [CreatedDate]) VALUES (1, N'Test 1', CAST(N'2019-07-15T22:09:29.567' AS DateTime))
INSERT [dbo].[TestName] ([ID], [TestName], [CreatedDate]) VALUES (2, N'Test 2', CAST(N'2019-07-15T22:09:34.397' AS DateTime))
SET IDENTITY_INSERT [dbo].[TestName] OFF
ALTER TABLE [dbo].[Messages] ADD  CONSTRAINT [DF_Messages_Date]  DEFAULT (getdate()) FOR [Date]
GO
ALTER TABLE [dbo].[TestName] ADD  CONSTRAINT [DF_TestName_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertMessages]    Script Date: 15/07/2019 11:01:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_InsertMessages]
	-- Add the parameters for the stored procedure here
	@iMessage NVARCHAR(10) = 'heleo',
	@iEmptyMessage NVARCHAR(10) = 'EmptyMessage'
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT dbo.[Messages]
	(
	    Message,
	    EmptyMessage,
	    Date
	)
	VALUES
	(   @iMessage,      -- Message - nvarchar(50)
	   @iEmptyMessage,      -- EmptyMessage - nvarchar(50)
	    GETDATE() -- Date - datetime
	    )


END
GO
USE [master]
GO
ALTER DATABASE [BlogDemos] SET  READ_WRITE 
GO
