USE [master]
GO
/****** Object:  Database [rent_db]    Script Date: 6/11/2019 9:48:14 AM ******/
CREATE DATABASE [rent_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'rent_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\rent_db.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'rent_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\rent_db_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [rent_db] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [rent_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [rent_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [rent_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [rent_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [rent_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [rent_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [rent_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [rent_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [rent_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [rent_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [rent_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [rent_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [rent_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [rent_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [rent_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [rent_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [rent_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [rent_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [rent_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [rent_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [rent_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [rent_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [rent_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [rent_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [rent_db] SET  MULTI_USER 
GO
ALTER DATABASE [rent_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [rent_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [rent_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [rent_db] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [rent_db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [rent_db]
GO
/****** Object:  Table [dbo].[customers_tbl]    Script Date: 6/11/2019 9:48:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customers_tbl](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[CustomerAddress] [varchar](50) NULL,
	[CustomerPhoneNo] [varchar](50) NULL,
	[CustomerCity] [varchar](50) NULL,
	[CustomerEmail] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_customers_tb l_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_customers_tb l] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[items_tbl]    Script Date: 6/11/2019 9:48:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[items_tbl](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[ItemName] [varchar](50) NULL,
	[RentRate] [int] NULL,
	[Quantity] [int] NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_items_tbl_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_items_tbl] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login_tbl]    Script Date: 6/11/2019 9:48:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login_tbl](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_login_tbl_CreatedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_login_tbl] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rented_tbl]    Script Date: 6/11/2019 9:48:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rented_tbl](
	[RentId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionNo] [varchar](50) NULL,
	[CustomerId] [int] NULL,
	[ItemId] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Price] [int] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_rented_tbl] PRIMARY KEY CLUSTERED 
(
	[RentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[customers_tbl] ON 

INSERT [dbo].[customers_tbl] ([CustomerId], [CustomerName], [CustomerAddress], [CustomerPhoneNo], [CustomerCity], [CustomerEmail], [CreatedDate]) VALUES (1, N'henna', N'kottkal', N'89675940321', N'malappuram', N'henna@gmail.com', CAST(N'2019-06-10 15:44:56.227' AS DateTime))
INSERT [dbo].[customers_tbl] ([CustomerId], [CustomerName], [CustomerAddress], [CustomerPhoneNo], [CustomerCity], [CustomerEmail], [CreatedDate]) VALUES (2, N'Parvi', N'vengara', N'53627879125', N'malappuram', N'parvi@gmail.com', CAST(N'2019-06-10 15:49:05.100' AS DateTime))
INSERT [dbo].[customers_tbl] ([CustomerId], [CustomerName], [CustomerAddress], [CustomerPhoneNo], [CustomerCity], [CustomerEmail], [CreatedDate]) VALUES (3, N'Hisham', N'Perothayil', N'9633649415', N'malappuram', N'hishu@gmail.com', CAST(N'2019-06-10 15:49:17.570' AS DateTime))
INSERT [dbo].[customers_tbl] ([CustomerId], [CustomerName], [CustomerAddress], [CustomerPhoneNo], [CustomerCity], [CustomerEmail], [CreatedDate]) VALUES (4, N'bahiyah', N'perumbadiyil', N'9539449125', N'thrissur', N'bahiyah@gmail.com', CAST(N'2019-06-10 16:02:06.880' AS DateTime))
INSERT [dbo].[customers_tbl] ([CustomerId], [CustomerName], [CustomerAddress], [CustomerPhoneNo], [CustomerCity], [CustomerEmail], [CreatedDate]) VALUES (5, N'bahiyah', N'perumbadiyil', N'9539449125', N'thrissur', N'bahiyah@gmail.com', CAST(N'2019-06-10 16:02:30.637' AS DateTime))
SET IDENTITY_INSERT [dbo].[customers_tbl] OFF
SET IDENTITY_INSERT [dbo].[items_tbl] ON 

INSERT [dbo].[items_tbl] ([ItemId], [ItemName], [RentRate], [Quantity], [CreatedDate]) VALUES (1, N'Machines', 50, 5, CAST(N'2019-06-10 15:51:31.120' AS DateTime))
INSERT [dbo].[items_tbl] ([ItemId], [ItemName], [RentRate], [Quantity], [CreatedDate]) VALUES (2, N'Hammer', 60, 6, CAST(N'2019-06-10 15:51:42.747' AS DateTime))
INSERT [dbo].[items_tbl] ([ItemId], [ItemName], [RentRate], [Quantity], [CreatedDate]) VALUES (3, N'Tracter', 500, 5, CAST(N'2019-06-10 15:52:36.747' AS DateTime))
INSERT [dbo].[items_tbl] ([ItemId], [ItemName], [RentRate], [Quantity], [CreatedDate]) VALUES (4, N'pc', 300, 4, CAST(N'2019-06-10 16:01:13.540' AS DateTime))
SET IDENTITY_INSERT [dbo].[items_tbl] OFF
SET IDENTITY_INSERT [dbo].[login_tbl] ON 

INSERT [dbo].[login_tbl] ([LoginId], [UserName], [Password], [Role], [CreatedDate]) VALUES (1, N'User', N'user123', N'user', CAST(N'2019-06-10 15:53:16.467' AS DateTime))
INSERT [dbo].[login_tbl] ([LoginId], [UserName], [Password], [Role], [CreatedDate]) VALUES (2, N'admin', N'admin123', N'admin', CAST(N'2019-06-10 15:53:49.820' AS DateTime))
SET IDENTITY_INSERT [dbo].[login_tbl] OFF
ALTER TABLE [dbo].[rented_tbl] ADD  CONSTRAINT [DF_rented_tbl_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[rented_tbl]  WITH CHECK ADD  CONSTRAINT [FK_rented_tbl_rented_tbl] FOREIGN KEY([RentId])
REFERENCES [dbo].[rented_tbl] ([RentId])
GO
ALTER TABLE [dbo].[rented_tbl] CHECK CONSTRAINT [FK_rented_tbl_rented_tbl]
GO
USE [master]
GO
ALTER DATABASE [rent_db] SET  READ_WRITE 
GO
