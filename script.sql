USE [master]
GO
/****** Object:  Database [DayCareWebsite]    Script Date: 4/24/2020 3:09:36 AM ******/
CREATE DATABASE [DayCareWebsite] ON  PRIMARY 
( NAME = N'DayCareWebsite', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DayCareWebsite.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DayCareWebsite_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\DayCareWebsite_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DayCareWebsite] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DayCareWebsite].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DayCareWebsite] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DayCareWebsite] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DayCareWebsite] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DayCareWebsite] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DayCareWebsite] SET ARITHABORT OFF 
GO
ALTER DATABASE [DayCareWebsite] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DayCareWebsite] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DayCareWebsite] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DayCareWebsite] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DayCareWebsite] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DayCareWebsite] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DayCareWebsite] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DayCareWebsite] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DayCareWebsite] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DayCareWebsite] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DayCareWebsite] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DayCareWebsite] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DayCareWebsite] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DayCareWebsite] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DayCareWebsite] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DayCareWebsite] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DayCareWebsite] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DayCareWebsite] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DayCareWebsite] SET RECOVERY FULL 
GO
ALTER DATABASE [DayCareWebsite] SET  MULTI_USER 
GO
ALTER DATABASE [DayCareWebsite] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DayCareWebsite] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DayCareWebsite', N'ON'
GO
USE [DayCareWebsite]
GO
/****** Object:  Table [dbo].[AdminReg]    Script Date: 4/24/2020 3:09:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminReg](
	[Aid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blog]    Script Date: 4/24/2020 3:09:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Bid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Comment] [nvarchar](50) NULL,
	[date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 4/24/2020 3:09:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[Eid] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[EPic] [nvarchar](50) NULL,
	[Date] [nvarchar](50) NULL,
	[time] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fee]    Script Date: 4/24/2020 3:09:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[Fid] [int] IDENTITY(1,1) NOT NULL,
	[Uid] [int] NULL,
	[Ammount] [float] NULL,
	[DateTimeNow] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[login]    Script Date: 4/24/2020 3:09:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login](
	[lid] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Picture]    Script Date: 4/24/2020 3:09:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[Pid] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[pic] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserReg]    Script Date: 4/24/2020 3:09:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReg](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](50) NULL,
	[Cgender] [nvarchar](50) NULL,
	[Cage] [nvarchar](50) NULL,
	[GName] [nvarchar](50) NULL,
	[Grelation] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[pic] [nvarchar](50) NULL,
	[role] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AdminReg] ON 

INSERT [dbo].[AdminReg] ([Aid], [Name], [email], [password], [role]) VALUES (1, N'Afnan', N'hassanafnan20@gmail.com', N'12345', N'Admin')
INSERT [dbo].[AdminReg] ([Aid], [Name], [email], [password], [role]) VALUES (2, N'Faraz', N'ansarmuahammadfaraz@gmail.com', N'12345', N'Admin')
INSERT [dbo].[AdminReg] ([Aid], [Name], [email], [password], [role]) VALUES (3, N'Ali', N'Ali123@gmail.com', N'12345', N'Admin')
INSERT [dbo].[AdminReg] ([Aid], [Name], [email], [password], [role]) VALUES (4, N'Khan', N'Khan123@gmail.com', N'12345', N'Admin')
INSERT [dbo].[AdminReg] ([Aid], [Name], [email], [password], [role]) VALUES (5, N'shah', N'Shah12@gmail.com', N'12345', N'Admin')
SET IDENTITY_INSERT [dbo].[AdminReg] OFF
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (1, N'Afnan', N'Hello world', CAST(0x0000AB7E017B2810 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (2, N'Faraz', N'Faraz hates women
', CAST(0x0000AB7E017B7310 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (3, N'Ali', N'Hellow', CAST(0x0000AB8C0117ACE0 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (4, N'Ali', N'hi', CAST(0x0000AB91015BAF6C AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (5, N'Khan', N'how are u', CAST(0x0000AB91015BBC50 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (6, N'fasih', N'how are u', CAST(0x0000AB91015BCDE4 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (7, N'Maaz', N'your website is great', CAST(0x0000AB91015BE0A4 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (8, N'Laiba', N'how are u', CAST(0x0000AB91015BF238 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (9, N'raza', N'how are u', CAST(0x0000AB91015C03CC AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (10, N'Rasheed', N'hellow', CAST(0x0000AB91015C63E4 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (11, N'Adil', N'yes sir', CAST(0x0000AB91015C7320 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (12, N'Afnan', N'website is beautiful', CAST(0x0000AB91015C8838 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (13, N'faraz ', N'not comming slow', CAST(0x0000AB91015C9D50 AS DateTime))
INSERT [dbo].[Blog] ([Bid], [Name], [Comment], [date]) VALUES (14, N'Shah', N'Good by', CAST(0x0000AB91015CB394 AS DateTime))
SET IDENTITY_INSERT [dbo].[Blog] OFF
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Eid], [name], [Description], [EPic], [Date], [time]) VALUES (1, N'Eid', N'Eid millan party', N'~/events/back.JPG', N'2020-03-02', N'15:04')
INSERT [dbo].[Events] ([Eid], [name], [Description], [EPic], [Date], [time]) VALUES (2, N'abc', N'good event', N'~/events/back.JPG', N'2020-04-08', N'14:01')
INSERT [dbo].[Events] ([Eid], [name], [Description], [EPic], [Date], [time]) VALUES (3, N'Raza', N'App 123', N'~/events/back3.JPG', N'2020-04-13', N'14:02')
INSERT [dbo].[Events] ([Eid], [name], [Description], [EPic], [Date], [time]) VALUES (4, N'New event', N'find an', N'~/events/back.JPG', N'2020-04-11', N'02:58')
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[Fee] ON 

INSERT [dbo].[Fee] ([Fid], [Uid], [Ammount], [DateTimeNow]) VALUES (2, 1, 2000, CAST(0x0000AB85012BE9BC AS DateTime))
INSERT [dbo].[Fee] ([Fid], [Uid], [Ammount], [DateTimeNow]) VALUES (3, 2, 80000, CAST(0x0000AB85012C3E1C AS DateTime))
SET IDENTITY_INSERT [dbo].[Fee] OFF
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (1, N'hassanafnan20@gmail.com', N'12345', N'Admin')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (2, N'ansarmuahammadfaraz@gmail.com', N'12345', N'Admin')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (3, N'Ali123@gmail.com', N'12345', N'Admin')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (4, N'Khan123@gmail.com', N'12345', N'Admin')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (5, N'Shah12@gmail.com', N'12345', N'Admin')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (6, N'ali123@gmail.com', N'123456', N'User')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (7, N'Khanali123@gmail.com', N'12345', N'User')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (8, N'ali12345@gmail.com', N'123456', N'User')
INSERT [dbo].[login] ([lid], [email], [password], [role]) VALUES (9, N'Maaz123@gmail.com', N'12345', N'User')
SET IDENTITY_INSERT [dbo].[login] OFF
SET IDENTITY_INSERT [dbo].[Picture] ON 

INSERT [dbo].[Picture] ([Pid], [Description], [pic]) VALUES (1, N'First pic', N'~/pictures/back1.JPG')
SET IDENTITY_INSERT [dbo].[Picture] OFF
SET IDENTITY_INSERT [dbo].[UserReg] ON 

INSERT [dbo].[UserReg] ([Uid], [CName], [Cgender], [Cage], [GName], [Grelation], [email], [password], [pic], [role]) VALUES (1, N'Ali', N'Male', N'4', N'Faraz', N'Father', N'ali123@gmail.com', N'123456', N'', N'User')
INSERT [dbo].[UserReg] ([Uid], [CName], [Cgender], [Cage], [GName], [Grelation], [email], [password], [pic], [role]) VALUES (2, N'Khan', N'Male', N'6', N'Agha', N'Father', N'Khanali123@gmail.com', N'12345', N'~/images/', N'User')
INSERT [dbo].[UserReg] ([Uid], [CName], [Cgender], [Cage], [GName], [Grelation], [email], [password], [pic], [role]) VALUES (3, N'Maaz', N'Male', N'6', N'Ali', N'Father', N'ali12345@gmail.com', N'123456', N'~/images/back.JPG', N'User')
INSERT [dbo].[UserReg] ([Uid], [CName], [Cgender], [Cage], [GName], [Grelation], [email], [password], [pic], [role]) VALUES (4, N'Maaz', N'Male', N'5', N'Shah', N'Father', N'Maaz123@gmail.com', N'12345', N'~/images/back.JPG', N'User')
SET IDENTITY_INSERT [dbo].[UserReg] OFF
ALTER TABLE [dbo].[Fee]  WITH CHECK ADD  CONSTRAINT [FK_Fee_UserReg] FOREIGN KEY([Uid])
REFERENCES [dbo].[UserReg] ([Uid])
GO
ALTER TABLE [dbo].[Fee] CHECK CONSTRAINT [FK_Fee_UserReg]
GO
USE [master]
GO
ALTER DATABASE [DayCareWebsite] SET  READ_WRITE 
GO
