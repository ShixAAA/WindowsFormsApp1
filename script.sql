USE [master]
GO
/****** Object:  Database [Sample]    Script Date: 12.04.2022 13:15:22 ******/
CREATE DATABASE [Sample]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Sample', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sample.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sample_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Sample_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Sample] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sample].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sample] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sample] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sample] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sample] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sample] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sample] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sample] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sample] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sample] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sample] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sample] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sample] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sample] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sample] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sample] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sample] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sample] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sample] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sample] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sample] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sample] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sample] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sample] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Sample] SET  MULTI_USER 
GO
ALTER DATABASE [Sample] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sample] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Sample] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Sample] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Sample] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Sample] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Sample] SET QUERY_STORE = OFF
GO
USE [Sample]
GO
/****** Object:  View [dbo].[SVF]    Script Date: 12.04.2022 13:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SVF]
AS
SELECT        TOP (100) PERCENT fileid, groupid, size, maxsize, growth, status, perf, name, filename
FROM            sys.sysfiles
ORDER BY groupid
GO
/****** Object:  View [dbo].[SFGV]    Script Date: 12.04.2022 13:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SFGV]
AS
SELECT        TOP (100) PERCENT groupid, allocpolicy, status, groupname
FROM            sys.sysfilegroups
ORDER BY groupid
GO
/****** Object:  View [dbo].[View_1]    Script Date: 12.04.2022 13:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_1]
AS
SELECT        dbo.SFGV.groupid, dbo.SFGV.allocpolicy, dbo.SFGV.status, dbo.SFGV.groupname, dbo.SVF.fileid, dbo.SVF.groupid AS Expr1, dbo.SVF.maxsize, dbo.SVF.size, dbo.SVF.growth, dbo.SVF.status AS Expr2, dbo.SVF.perf, 
                         dbo.SVF.name, dbo.SVF.filename
FROM            dbo.SFGV CROSS JOIN
                         dbo.SVF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 12.04.2022 13:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ArticleNumber] [nvarchar](10) NOT NULL,
	[Cost] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12.04.2022 13:15:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[login] [nvarchar](50) NOT NULL,
	[psw] [nvarchar](50) NOT NULL,
	[role] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (1, N'Попрыгун 2299', N'34750945', N'1688')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (2, N'Попрыгун 3016', N'74919447', N'615')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (3, N'Попрыгун 6412', N'28152672', N'523')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (4, N'Попрыгун 6882', N'12732041', N'809')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (5, N'Попрыгунчик детский 1916', N'73345857', N'832')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (6, N'Попрыгунчик детский 2071', N'3157982', N'275')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (7, N'Попрыгунчик детский 5117', N'80875656', N'338')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (8, N'Попрыгунчик детский 6029', N'69184347', N'419')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (9, N'Попрыгунчик детский 6888', N'13875235', N'1972')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (10, N'Попрыгунчик детский желтый 1371', N'85514178', N'252')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (11, N'Попрыгунчик детский желтый 2582', N'32125209', N'1730')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (12, N'Попрыгунчик детский желтый 6051', N'88211092', N'727')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (13, N'Попрыгунчик детский желтый 6678', N'80007300', N'1768')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (14, N'Попрыгунчик детский красный 1289', N'82925345', N'1919')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (15, N'Попрыгунчик детский красный 1740', N'43330133', N'1749')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (16, N'Попрыгунчик детский красный 1972', N'59509797', N'794')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (17, N'Попрыгунчик детский красный 3240', N'88098604', N'882')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (18, N'Попрыгунчик детский красный 3839', N'26655484', N'1921')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (19, N'Попрыгунчик детский красный 4969', N'10614909', N'913')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (20, N'Попрыгунчик детский красный 5400', N'68237918', N'1570')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (21, N'Попрыгунчик детский красный 6591', N'79704172', N'592')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (22, N'Попрыгунчик детский розовый 1657', N'86558177', N'662')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (23, N'Попрыгунчик детский розовый 2694', N'13340356', N'1691')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (24, N'Попрыгунчик детский розовый 5197', N'89612317', N'1948')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (25, N'Попрыгунчик детский розовый 5376', N'74291677', N'1889')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (26, N'Попрыгунчик детский розовый 5501', N'25409940', N'652')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (27, N'Попрыгунчик детский розовый 6346', N'30282346', N'1024')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (28, N'Попрыгунчик для девочек 1560', N'47378395', N'235')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (29, N'Попрыгунчик для девочек 1656', N'22217580', N'1494')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (30, N'Попрыгунчик для девочек 1895', N'54983244', N'1586')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (31, N'Попрыгунчик для девочек 2311', N'25262035', N'1308')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (32, N'Попрыгунчик для девочек 3389', N'26434211', N'597')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (33, N'Попрыгунчик для девочек 6849', N'10084400', N'933')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (34, N'Попрыгунчик для кошечек 2604', N'11890154', N'842')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (35, N'Попрыгунчик для кошечек 3741', N'43987093', N'1668')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (36, N'Попрыгунчик для кошечек 4740', N'80698285', N'1973')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (37, N'Попрыгунчик для мальчиков 3307', N'30269726', N'1533')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (38, N'Попрыгунчик для мальчиков 3929', N'2158097', N'255')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (39, N'Попрыгунчик для мальчиков 4791', N'45540528', N'1260')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (40, N'Попрыгунчик для мальчиков 5389', N'70873532', N'1739')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (41, N'Попрыгунчик для собачек 3500', N'79994924', N'1142')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (42, N'Попрыгунчик для собачек 4381', N'27301447', N'1234')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (43, N'Попрыгунчик для собачек 4387', N'89607276', N'912')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (44, N'Попрыгунчик для собачек 4485', N'33440129', N'1995')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (45, N'Попрыгунчик для собачек 4529', N'81713527', N'1923')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (46, N'Попрыгунчик для собачек 5096', N'67975083', N'1465')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (47, N'Попрыгунчик для собачек 5754', N'79018408', N'633')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (48, N'Шар 2243', N'42536654', N'1247')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (49, N'Шар 4124', N'39025230', N'1160')
INSERT [dbo].[Product] ([ID], [Title], [ArticleNumber], [Cost]) VALUES (50, N'Шар 6366', N'25514523', N'1932')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Users] ([login], [psw], [role], [name]) VALUES (N'123', N'123', N'Менеджер', N'йцу')
INSERT [dbo].[Users] ([login], [psw], [role], [name]) VALUES (N'222', N'123', N'Директор', N'йцу')
INSERT [dbo].[Users] ([login], [psw], [role], [name]) VALUES (N'333', N'333', N'Заказчик', N'Мишаня')
INSERT [dbo].[Users] ([login], [psw], [role], [name]) VALUES (N'admin', N'admin', N'Директор', N'admin')
INSERT [dbo].[Users] ([login], [psw], [role], [name]) VALUES (N'qwert', N'qwert', N'Менеджер', N'Ирина')
INSERT [dbo].[Users] ([login], [psw], [role], [name]) VALUES (N'ShixAAA', N'123', N'Директор', N'Иван')
INSERT [dbo].[Users] ([login], [psw], [role], [name]) VALUES (N'Zakazchik', N'123', N'Заказчик', N'Аня')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sysfilegroups (sys)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SFGV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SFGV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[31] 2[29] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "sysfiles (sys)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SVF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SVF'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[22] 2[19] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SFGV"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 128
               Right = 212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SVF"
            Begin Extent = 
               Top = 6
               Left = 462
               Bottom = 136
               Right = 636
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_1'
GO
USE [master]
GO
ALTER DATABASE [Sample] SET  READ_WRITE 
GO
