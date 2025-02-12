USE [TicketDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfilePictureURL] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Actors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actors_Movies]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors_Movies](
	[MovieId] [int] NOT NULL,
	[ActorId] [int] NOT NULL,
 CONSTRAINT [PK_Actors_Movies] PRIMARY KEY CLUSTERED 
(
	[ActorId] ASC,
	[MovieId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cinemas]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cinemas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Cinemas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[ImageURL] [nvarchar](max) NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[MovieCategory] [int] NOT NULL,
	[CinemaId] [int] NOT NULL,
	[ProducerId] [int] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[MovieId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producers]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfilePictureURL] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Bio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Producers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartItems]    Script Date: 7.08.2024 09:01:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieId] [int] NULL,
	[Amount] [int] NOT NULL,
	[ShoppingCartId] [nvarchar](max) NULL,
 CONSTRAINT [PK_ShoppingCartItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240805112518_InitialCreate', N'5.0.6')
GO
SET IDENTITY_INSERT [dbo].[Actors] ON 

INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (1, N'http://dotnethow.net/images/actors/actor-5.jpeg', N'Actor 5', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (2, N'http://dotnethow.net/images/actors/actor-4.jpeg', N'Actor 4', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (3, N'http://dotnethow.net/images/actors/actor-3.jpeg', N'Actor 3', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (4, N'http://dotnethow.net/images/actors/actor-2.jpeg', N'Actor 2', N'This is the Bio of the second actor')
INSERT [dbo].[Actors] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (5, N'http://dotnethow.net/images/actors/actor-1.jpeg', N'Actor 1', N'This is the Bio of the first actor')
SET IDENTITY_INSERT [dbo].[Actors] OFF
GO
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (1, 1)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (1, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (2, 1)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (2, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (3, 1)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (3, 2)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (3, 5)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (4, 2)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (4, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (4, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 2)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (5, 5)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (6, 3)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (6, 4)
INSERT [dbo].[Actors_Movies] ([MovieId], [ActorId]) VALUES (6, 5)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'4fe27f53-8540-45c8-bcb7-47cd2a887419', N'Admin', N'ADMIN', N'c4bd6e50-ef20-4ade-957d-1b4e8b8238c8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a9e462a0-5c2d-4403-b23e-e87cf4d3b1e8', N'User', N'USER', N'8c777822-4c6d-42ba-9694-2dd0d0471527')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2b3c3a99-0a6b-44ef-8bf1-6f6c4be3be3c', N'4fe27f53-8540-45c8-bcb7-47cd2a887419')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c1c0b39e-20ad-4db9-8e77-242ec330e3cf', N'4fe27f53-8540-45c8-bcb7-47cd2a887419')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'44e3f4e8-b313-40b8-abb1-133a5f18ae85', N'a9e462a0-5c2d-4403-b23e-e87cf4d3b1e8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'663c6c4d-ba70-4c28-b3af-b05769d93abe', N'a9e462a0-5c2d-4403-b23e-e87cf4d3b1e8')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6b02728c-babd-4629-a8ab-591dfb78fb00', N'a9e462a0-5c2d-4403-b23e-e87cf4d3b1e8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2b3c3a99-0a6b-44ef-8bf1-6f6c4be3be3c', N'Admin User', N'admin-user', N'ADMIN-USER', N'admin@etickets.com', N'ADMIN@ETICKETS.COM', 1, N'1234', N'ZROWDZZGYWEXTYZXLX2PPJXVOZCBDAIX', N'82180d2c-d887-4161-b686-ca9568920d5d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'44e3f4e8-b313-40b8-abb1-133a5f18ae85', N'yaren yıldırım', N'yaren@yildirim.com', N'YAREN@YILDIRIM.COM', N'yaren@yildirim.com', N'YAREN@YILDIRIM.COM', 0, N'AQAAAAEAACcQAAAAEMjDAHTmhTURBHrkduk6JD7vKuQ5EFc/Nk/V1fio9uTyMytTPNVfNZGw2smVEa6K+w==', N'Q7OK63KJT34BHB3FUMMMJBOJDGKAAWJO', N'e2e917a2-da33-43c1-81e9-25112a701851', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'663c6c4d-ba70-4c28-b3af-b05769d93abe', N'toprak', N'toprak@yildirimm.com', N'TOPRAK@YILDIRIMM.COM', N'toprak@yildirimm.com', N'TOPRAK@YILDIRIMM.COM', 0, N'AQAAAAEAACcQAAAAEE0r52msT8JhROBboFTBrvK/GZ8wWrBpvgD3YWp3RW5E+2X5lrOeTJ45aki0rTSnfg==', N'6RVGJ3XRIPTVUCVZAOQD4Q6RQXDYUL2I', N'5b85cd50-723c-4c96-9367-7a7c04f9f9c3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6b02728c-babd-4629-a8ab-591dfb78fb00', N'Application User', N'app-user', N'APP-USER', N'user@etickets.com', N'USER@ETICKETS.COM', 1, N'AQAAAAEAACcQAAAAEOF4x4e6tsasFpwfffsN8lPqbs19kZth7dk1RoqE4NhvRmRRjkVP1kAqfRXjjDuj6A==', N'KRUSPEZ2PXQ4Q4AIN6TORLEZRBXVZI3I', N'518da07a-5323-4e9e-b716-f0ea331b2e48', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FullName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c1c0b39e-20ad-4db9-8e77-242ec330e3cf', N'Admin User', N'admin@xascinema.com', N'ADMIN@XASCINEMA.COM', N'admin@xascinema.com', N'ADMIN@XASCINEMA.COM', 1, N'AQAAAAEAACcQAAAAEEumoM3ydP9k638QMAYRpHk+eO6nAA7Sz98femgmH7TB7y+u93y2xlo24TIN9yyoUQ==', N'XW5SBADSFC6DEDCZ5CGQ7RU4SH4FYVIZ', N'6580caea-f6b3-406b-b834-9dae567662b2', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Cinemas] ON 

INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (1, N'http://dotnethow.net/images/cinemas/cinema-1.jpeg', N'Cinema 1', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (2, N'http://dotnethow.net/images/cinemas/cinema-2.jpeg', N'Cinema 2', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (3, N'http://dotnethow.net/images/cinemas/cinema-3.jpeg', N'Cinema 3', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (4, N'http://dotnethow.net/images/cinemas/cinema-4.jpeg', N'Cinema 4', N'This is the description of the first cinema')
INSERT [dbo].[Cinemas] ([Id], [Logo], [Name], [Description]) VALUES (5, N'http://dotnethow.net/images/cinemas/cinema-5.jpeg', N'Cinema 5', N'This is the description of the first cinema')
SET IDENTITY_INSERT [dbo].[Cinemas] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (1, N'Scoob', N'This is the Scoob movie description', 39.5, N'http://dotnethow.net/images/movies/movie-7.jpeg', CAST(N'2024-07-26T14:26:17.3119357' AS DateTime2), CAST(N'2024-08-03T14:26:17.3119358' AS DateTime2), 5, 1, 3)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (2, N'Race', N'This is the Race movie description', 39.5, N'http://dotnethow.net/images/movies/movie-6.jpeg', CAST(N'2024-07-26T14:26:17.3119354' AS DateTime2), CAST(N'2024-07-31T14:26:17.3119355' AS DateTime2), 4, 1, 2)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (3, N'Ghost', N'This is the Ghost movie description', 39.5, N'http://dotnethow.net/images/movies/movie-4.jpeg', CAST(N'2024-08-05T14:26:17.3119352' AS DateTime2), CAST(N'2024-08-12T14:26:17.3119353' AS DateTime2), 6, 4, 4)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (4, N'The Shawshank Redemption', N'This is the Shawshank Redemption description', 29.5, N'http://dotnethow.net/images/movies/movie-1.jpeg', CAST(N'2024-08-05T14:26:17.3119347' AS DateTime2), CAST(N'2024-08-08T14:26:17.3119350' AS DateTime2), 1, 1, 1)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (5, N'Life', N'This is the Life movie description', 39.5, N'http://dotnethow.net/images/movies/movie-3.jpeg', CAST(N'2024-07-26T14:26:17.3103909' AS DateTime2), CAST(N'2024-08-15T14:26:17.3118467' AS DateTime2), 4, 3, 3)
INSERT [dbo].[Movies] ([Id], [Name], [Description], [Price], [ImageURL], [StartDate], [EndDate], [MovieCategory], [CinemaId], [ProducerId]) VALUES (6, N'Cold Soles', N'This is the Cold Soles movie description', 39.5, N'http://dotnethow.net/images/movies/movie-8.jpeg', CAST(N'2024-08-08T14:26:17.3119363' AS DateTime2), CAST(N'2024-08-25T14:26:17.3119364' AS DateTime2), 3, 1, 5)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Producers] ON 

INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (1, N'http://dotnethow.net/images/producers/producer-5.jpeg', N'Producer 5', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (2, N'http://dotnethow.net/images/producers/producer-4.jpeg', N'Producer 4', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (3, N'http://dotnethow.net/images/producers/producer-3.jpeg', N'Producer 3', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (4, N'http://dotnethow.net/images/producers/producer-2.jpeg', N'Producer 2', N'This is the Bio of the second actor')
INSERT [dbo].[Producers] ([Id], [ProfilePictureURL], [FullName], [Bio]) VALUES (5, N'http://dotnethow.net/images/producers/producer-1.jpeg', N'Producer 1', N'This is the Bio of the first actor')
SET IDENTITY_INSERT [dbo].[Producers] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] ON 

INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (1, 3, 1, N'57076498-5712-4e9b-8da8-8b560be838b9')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (2, 5, 1, N'57076498-5712-4e9b-8da8-8b560be838b9')
INSERT [dbo].[ShoppingCartItems] ([Id], [MovieId], [Amount], [ShoppingCartId]) VALUES (3, 3, 2, N'beb44e07-b3de-47df-831e-1dcd8c6cb253')
SET IDENTITY_INSERT [dbo].[ShoppingCartItems] OFF
GO
ALTER TABLE [dbo].[Actors_Movies]  WITH CHECK ADD  CONSTRAINT [FK_Actors_Movies_Actors_ActorId] FOREIGN KEY([ActorId])
REFERENCES [dbo].[Actors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actors_Movies] CHECK CONSTRAINT [FK_Actors_Movies_Actors_ActorId]
GO
ALTER TABLE [dbo].[Actors_Movies]  WITH CHECK ADD  CONSTRAINT [FK_Actors_Movies_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actors_Movies] CHECK CONSTRAINT [FK_Actors_Movies_Movies_MovieId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Cinemas_CinemaId] FOREIGN KEY([CinemaId])
REFERENCES [dbo].[Cinemas] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Cinemas_CinemaId]
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Producers_ProducerId] FOREIGN KEY([ProducerId])
REFERENCES [dbo].[Producers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Producers_ProducerId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Movies_MovieId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ShoppingCartItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCartItems_Movies_MovieId] FOREIGN KEY([MovieId])
REFERENCES [dbo].[Movies] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCartItems] CHECK CONSTRAINT [FK_ShoppingCartItems_Movies_MovieId]
GO
