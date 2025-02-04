USE [DecorVistaWebsite]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [nvarchar](5) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultations]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultations](
	[ConsultationID] [int] IDENTITY(1,1) NOT NULL,
	[DesignerID] [int] NULL,
	[UserID] [int] NULL,
	[Day] [date] NULL,
	[Scheduled_datetime] [datetime] NULL,
	[Notes] [text] NULL,
	[Status] [nvarchar](255) NULL,
 CONSTRAINT [PK_Consultations] PRIMARY KEY CLUSTERED 
(
	[ConsultationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Designer]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designer](
	[DesignerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [text] NULL,
	[experience] [int] NULL,
	[image] [text] NULL,
	[Username] [nvarchar](20) NULL,
	[Password] [nvarchar](20) NULL,
 CONSTRAINT [PK_Designer] PRIMARY KEY CLUSTERED 
(
	[DesignerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[target_type] [varchar](50) NULL,
	[target_id] [nvarchar](10) NULL,
	[rating] [int] NULL,
	[comment] [text] NULL,
 CONSTRAINT [PK__Feedback__7A6B2B8CDD4BF970] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackDes]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackDes](
	[feedbackDesID] [int] IDENTITY(1,1) NOT NULL,
	[content] [varchar](255) NULL,
	[rating] [int] NULL,
	[DesignerID] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK__Feedback__90E5D590E62E1285] PRIMARY KEY CLUSTERED 
(
	[feedbackDesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [nvarchar](10) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[UnitPrice] [money] NULL,
	[Color] [nvarchar](50) NULL,
	[Size] [char](255) NULL,
	[Image] [nvarchar](255) NULL,
	[Description] [text] NULL,
	[SubcategoryID] [nvarchar](5) NULL,
	[SupplierID] [nvarchar](5) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectDesigner]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectDesigner](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[DesignerID] [int] NULL,
	[ProjectName] [nvarchar](255) NULL,
	[Description] [text] NULL,
	[Image] [text] NULL,
 CONSTRAINT [PK_ProjectDesigner] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subcategories]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subcategories](
	[SubcategoryID] [nvarchar](5) NOT NULL,
	[SubcategoryName] [nvarchar](255) NOT NULL,
	[Description] [text] NULL,
	[Image] [text] NULL,
	[CategoryID] [nvarchar](5) NULL,
 CONSTRAINT [PK_Subcategories] PRIMARY KEY CLUSTERED 
(
	[SubcategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [nvarchar](5) NOT NULL,
	[SupplierName] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](15) NULL,
	[url] [text] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/6/2024 6:21:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](15) NULL,
	[Address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C003', N'Office', N'Office furniture and accessories.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C004', N'Outdoor', N'Furniture for outdoor spaces.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C005', N'Kitchen', N'Furniture for kitchens.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C006', N'Bathroom', N'Bathroom fixtures and furniture.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C007', N'Kids Room', N'Furniture for kids’ rooms.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C008', N'Dining Room', N'Furniture for dining rooms.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C009', N'Storage', N'Storage solutions.')
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (N'C010', N'Decor', N'Decorative items.')
GO
SET IDENTITY_INSERT [dbo].[Consultations] ON 

INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (14, 1, 1, CAST(N'2024-11-01' AS Date), CAST(N'2024-11-01T10:00:00.000' AS DateTime), N'Initial consultation.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (15, 2, 2, CAST(N'2024-11-02' AS Date), CAST(N'2024-11-02T14:00:00.000' AS DateTime), N'Discuss project scope.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (16, 3, 3, CAST(N'2024-11-03' AS Date), CAST(N'2024-11-03T16:00:00.000' AS DateTime), N'Color and style planning.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (17, 4, 4, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-04T09:00:00.000' AS DateTime), N'Furniture selection discussion.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (18, 5, 5, CAST(N'2024-11-05' AS Date), CAST(N'2024-11-05T11:30:00.000' AS DateTime), N'Lighting design consultation.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (19, 6, 6, CAST(N'2024-11-06' AS Date), CAST(N'2024-11-06T13:00:00.000' AS DateTime), N'Floor planning session.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (20, 7, 7, CAST(N'2024-11-07' AS Date), CAST(N'2024-11-07T15:00:00.000' AS DateTime), N'Material and fabric choices.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (21, 8, 8, CAST(N'2024-11-08' AS Date), CAST(N'2024-11-08T17:00:00.000' AS DateTime), N'Finalize color palette.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (22, 9, 9, CAST(N'2024-11-09' AS Date), CAST(N'2024-11-09T09:30:00.000' AS DateTime), N'Furniture layout review.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (23, 10, 10, CAST(N'2024-11-10' AS Date), CAST(N'2024-11-10T11:00:00.000' AS DateTime), N'Initial design concept.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (24, 11, 1, CAST(N'2024-11-11' AS Date), CAST(N'2024-11-11T10:00:00.000' AS DateTime), N'Space utilization strategies.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (25, 12, 10, CAST(N'2024-11-12' AS Date), CAST(N'2024-11-12T16:00:00.000' AS DateTime), N'Design proposal feedback.', N'booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (26, 2, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-07T13:30:00.000' AS DateTime), N'book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (27, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-05T17:20:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (31, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-07T17:27:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (32, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-05T17:28:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (33, 4, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-05T17:29:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (34, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-05T17:32:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (35, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-06T18:32:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (36, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-05T17:33:00.000' AS DateTime), N'No', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (37, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-13T20:36:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (38, 1, 11, CAST(N'2024-11-04' AS Date), CAST(N'2024-11-05T17:37:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (44, NULL, NULL, CAST(N'2024-11-03' AS Date), CAST(N'2024-11-13T23:25:00.000' AS DateTime), N'Book', N'Appointment')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (45, 1, NULL, CAST(N'2024-11-06' AS Date), CAST(N'2024-11-07T19:00:00.000' AS DateTime), N'Book', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (46, 1, NULL, CAST(N'2024-11-06' AS Date), CAST(N'2024-11-07T19:03:00.000' AS DateTime), N'NO', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (47, 1, NULL, CAST(N'2024-11-06' AS Date), CAST(N'2024-11-07T19:03:00.000' AS DateTime), N'NO', N'Booking')
INSERT [dbo].[Consultations] ([ConsultationID], [DesignerID], [UserID], [Day], [Scheduled_datetime], [Notes], [Status]) VALUES (48, 4, 11, CAST(N'2024-11-06' AS Date), CAST(N'2024-11-07T18:04:00.000' AS DateTime), N'No', N'Booking')
SET IDENTITY_INSERT [dbo].[Consultations] OFF
GO
SET IDENTITY_INSERT [dbo].[Designer] ON 

INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (1, N'Liam Will', N'Anderson', N'012-345-6789', N'707 Walnut St, Baytown', 5, N'image10.jpg', N'anna', N'123')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (2, N'John', N'Doe', N'234-567-8901', N'456 Elm St, Townsville', 3, N'bob.jpg', N'bob', N'pass2')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (3, N'Emily', N'Johnson', N'456-789-0123', N'789 Pine St, Villageburg', 8, N'dave.jpg', N'dave', N'pass4')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (4, N'Michael', N'Brown', N'456-789-0123', N'101 Maple St, Hamletton', 10, N'eve.jpg', N'eve', N'pass5')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (5, N'Sophia', N'Davis', N'567-890-1234', N'202 Oak St, Metropolis', 7, N'frank.jpg', N'frank', N'pass6')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (6, N'James', N'Garcia', N'678-901-2345', N'303 Birch St, Capitol City', 2, N'grace.jpg', N'grace', N'pass7')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (7, N'Olivia', N'Martinez', N'789-012-3456', N'404 Cedar St, Lakeview', 4, N'hank.jpg', N'hank', N'pass8')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (8, N'William', N'Rodriguez', N'890-123-4567', N'505 Spruce St, Hilltop', 6, N'ivy.jpg', N'ivy', N'pass9')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (9, N'Ava', N'Wilson', N'901-234-5678', N'606 Fir St, Riverside', 9, N'jake.jpg', N'jake', N'pass10')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (10, N'Carol', N'Taylor', N'345-678-9012', N'789 Maple St', 2, N'carol.jpg', N'carol', N'pass3')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (11, N'Bob', N'Smith', N'123-456-7890', N'123 Main St', 5, N'alice.jpg', N'alice', N'pass1')
INSERT [dbo].[Designer] ([DesignerID], [FirstName], [LastName], [phone], [address], [experience], [image], [Username], [Password]) VALUES (12, N'Bob', N'Jones', N'123-456-7890', N'456 Oak St', 3, N'image1.jpg', N'bob', N'123')
SET IDENTITY_INSERT [dbo].[Designer] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (50, 2, N'P002')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (51, 3, N'P003')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (52, 4, N'P004')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (54, 6, N'P006')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (55, 7, N'P007')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (56, 8, N'P008')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (57, 9, N'P009')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (58, 10, N'P010')
INSERT [dbo].[Favorites] ([ID], [UserID], [ProductID]) VALUES (62, 11, N'P003')
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (2, 2, N'Product', N'P002', 4, N'Good value for money.')
INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (3, 3, N'Product', N'P003', 4, N'Nice but could be improved.')
INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (4, 4, N'Product', N'P004', 3, N'Average quality.')
INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (6, 6, N'Product', N'P006', 2, N'Not worth the price.')
INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (7, 7, N'Product', N'P007', 5, N'Perfect for my space.')
INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (8, 8, N'Product', N'P008', 4, N'Looks great in the room.')
INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (11, 11, N'product', N'P002', 3, N'ok good')
INSERT [dbo].[Feedback] ([feedback_id], [UserID], [target_type], [target_id], [rating], [comment]) VALUES (12, 11, N'service', NULL, 4, N'ok')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedbackDes] ON 

INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (2, N'Great design advice!', 5, 1, 1)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (3, N'Helpful and professional.', 4, 2, 2)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (4, N'Provided excellent ideas.', 5, 3, 3)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (5, N'Patient and knowledgeable.', 4, 4, 4)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (6, N'Understood my vision well.', 5, 5, 5)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (7, N'Gave practical suggestions.', 4, 6, 6)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (8, N'Worked within my budget.', 5, 7, 7)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (9, N'Very creative solutions.', 4, 8, 8)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (10, N'Timely and professional.', 5, 9, 9)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (11, N'Brought fresh ideas.', 5, 10, 10)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (12, N'Ok good', 4, 5, 1)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (13, N'Ok good', 2, 1, 1)
INSERT [dbo].[FeedbackDes] ([feedbackDesID], [content], [rating], [DesignerID], [UserID]) VALUES (14, N'Ok good', 5, 1, 1)
SET IDENTITY_INSERT [dbo].[FeedbackDes] OFF
GO
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P002', N'Dining Table', 300.0000, N'Brown', N'Medium                                                                                                                                                                                                                                                         ', N'table.jpg', N'Wooden dining table for six.', N'SC008', N'S002')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P003', N'Bookshelf', 150.0000, N'Black', N'Medium                                                                                                                                                                                                                                                         ', N'bookshelf.jpg', N'Stylish wooden bookshelf.', N'SC001', N'S001')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P004', N'Coffee Table', 120.0000, N'White', N'Small                                                                                                                                                                                                                                                          ', N'coffee-table.jpg', N'Elegant coffee table.', N'SC002', N'S002')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P006', N'Office Chair', 80.0000, N'Black', N'Adjustable                                                                                                                                                                                                                                                     ', N'office-chair.jpg', N'Comfortable office chair.', N'SC004', N'S004')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P007', N'Outdoor Bench', 200.0000, N'Brown', N'Large                                                                                                                                                                                                                                                          ', N'outdoor-bench.jpg', N'Weather-resistant outdoor bench.', N'SC005', N'S005')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P008', N'Kitchen Island', 500.0000, N'White', N'Large                                                                                                                                                                                                                                                          ', N'kitchen-island.jpg', N'Multi-functional kitchen island.', N'SC006', N'S006')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P009', N'Mirror Cabinet', 250.0000, N'Silver', N'Medium                                                                                                                                                                                                                                                         ', N'mirror-cabinet.jpg', N'Mirror cabinet with storage.', N'SC007', N'S007')
INSERT [dbo].[Products] ([ProductID], [ProductName], [UnitPrice], [Color], [Size], [Image], [Description], [SubcategoryID], [SupplierID]) VALUES (N'P010', N'Kids Bunk Bed', 400.0000, N'Blue', N'Large                                                                                                                                                                                                                                                          ', N'kids-bunk-bed.jpg', N'Safe and sturdy bunk bed.', N'SC008', N'S008')
GO
SET IDENTITY_INSERT [dbo].[ProjectDesigner] ON 

INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (1, 1, N'Modern Living Room', N'A stylish modern living room design.', N'modern-living-room.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (2, 2, N'Minimalist Office', N'An office with minimalist design.', N'minimalist-office.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (3, 3, N'Rustic Bedroom', N'A cozy rustic bedroom setup.', N'rustic-bedroom.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (4, 4, N'Outdoor Patio', N'Modern outdoor patio design.', N'outdoor-patio.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (5, 5, N'Luxury Bathroom', N'Elegant bathroom with marble finishes.', N'luxury-bathroom.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (6, 6, N'Cozy Kid’s Room', N'Colorful and safe kid’s room.', N'cozy-kids-room.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (7, 7, N'Minimalist Kitchen', N'Clean and functional kitchen space.', N'minimalist-kitchen.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (8, 8, N'Elegant Dining Room', N'Classic dining room with modern touches.', N'elegant-dining-room.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (9, 9, N'Vintage Living Room', N'Vintage decor in a cozy setting.', N'vintage-living-room.jpg')
INSERT [dbo].[ProjectDesigner] ([ProjectID], [DesignerID], [ProjectName], [Description], [Image]) VALUES (10, 10, N'Eco-Friendly Office', N'Sustainable office design.', N'eco-friendly-office.jpg')
SET IDENTITY_INSERT [dbo].[ProjectDesigner] OFF
GO
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC001', N'Sectional Sofas', N'Various sectional sofas.', N'/sofa-section.jpg', NULL)
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC002', N'Dining Chairs', N'Dining chairs for various styles.', N'/dining-chair.jpg', N'C008')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC003', N'Bunk Beds', N'Kids bunk beds.', N'/bunk-beds.jpg', N'C007')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC004', N'Bathroom Cabinets', N'Stylish bathroom cabinets.', N'/bathroom-cabinet.jpg', N'C006')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC005', N'Outdoor Benches', N'Weather-resistant outdoor benches.', N'/outdoor-bench.jpg', N'C004')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC006', N'Kitchen Islands', N'Functional kitchen islands.', N'/kitchen-island.jpg', N'C005')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC007', N'Mirror Cabinets', N'Bathroom mirror cabinets.', N'/mirror-cabinet.jpg', N'C006')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC008', N'Kids Beds', N'Bed frames designed for kids.', N'/kids-bed.jpg', N'C007')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC009', N'Storage Shelves', N'Shelving solutions for storage.', N'/storage-shelf.jpg', N'C009')
INSERT [dbo].[Subcategories] ([SubcategoryID], [SubcategoryName], [Description], [Image], [CategoryID]) VALUES (N'SC010', N'Decorative Vases', N'Stylish decorative vases.', N'/decor-vase.jpg', N'C010')
GO
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S001', N'IKEA', N'contact@ikea.com', N'123-555-0123', N'https://www.ikea.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S002', N'West Elm', N'info@westelm.com', N'123-555-0456', N'https://www.westelm.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S003', N'Wayfair', N'support@wayfair.com', N'345-555-6789', N'https://www.westelm.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S004', N'Ashley Furniture', N'info@ashleyfurniture.com', N'678-555-4321', N'https://www.ashleyfurniture.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S005', N'Crate & Barrel', N'contact@crateandbarrel.com', N'789-555-1234', N'https://www.crateandbarrel.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S006', N'CB2', N'info@kitchenpro.com', N'890-555-6789', N'https://www.cb2.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S007', N'Pottery Barn', N'sales@potterybarn.com', N'901-555-2345', N'https://www.potterybarn.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S008', N'Houzz', N'info@houzz.com', N'123-555-7890', N'https://www.houzz.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S009', N'Overstock', N'support@overstock.com', N'234-555-8901', N'https://www.overstock.com')
INSERT [dbo].[Suppliers] ([SupplierID], [SupplierName], [Email], [Phone], [url]) VALUES (N'S010', N'Article', N'contact@article.com', N'345-555-6789', N'https://www.article.com')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (1, N'John Doe', N'jdoe', N'password123', N'jdoe@example.com', N'555-1234', N'123 Elm St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (2, N'Jane Smith', N'jsmith', N'password456', N'jsmith@example.com', N'555-5678', N'456 Pine St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (3, N'Mike Johnson', N'mjohnson', N'password789', N'mjohnson@example.com', N'555-8765', N'789 Maple St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (4, N'Anna Lee', N'alee', N'pass987', N'alee@example.com', N'555-9876', N'1010 Birch St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (5, N'Chris Evans', N'cevans', N'pass234', N'cevans@example.com', N'555-3456', N'1111 Cedar St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (6, N'Diana White', N'dwhite', N'pass567', N'dwhite@example.com', N'555-4567', N'1212 Walnut St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (7, N'Paul Green', N'pgreen', N'pass890', N'pgreen@example.com', N'555-5678', N'1313 Oak St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (8, N'Sophia Brown', N'sbrown', N'pass111', N'sbrown@example.com', N'555-6789', N'1414 Pine St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (9, N'Tom Hanks', N'thanks', N'pass222', N'thanks@example.com', N'555-7890', N'1515 Birch St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (10, N'Ella Martinez', N'emartinez', N'pass333', N'emartinez@example.com', N'555-8901', N'1616 Maple St')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (11, N'Cà chuaaa', N'ca123', N'123', N'bthi2412@gmail.com', N'3563659263', N'tv')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (12, N'nguyen', N'khang', N'123456', N'nguyenkhang@gmail.com', N'012345789', N'can tho')
INSERT [dbo].[Users] ([UserID], [FullName], [UserName], [Password], [Email], [Phone], [Address]) VALUES (13, N'Bánh ngọt', N'bn234', N'123', N'b@gmail.com', N'3563659263', N'tv')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Consultations]  WITH CHECK ADD  CONSTRAINT [fk_CUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Consultations] CHECK CONSTRAINT [fk_CUsers]
GO
ALTER TABLE [dbo].[Consultations]  WITH CHECK ADD  CONSTRAINT [FK_DC] FOREIGN KEY([DesignerID])
REFERENCES [dbo].[Designer] ([DesignerID])
GO
ALTER TABLE [dbo].[Consultations] CHECK CONSTRAINT [FK_DC]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Products] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Products]
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD  CONSTRAINT [FK_Favorites_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites] CHECK CONSTRAINT [FK_Favorites_Users]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [fk_product_feedback] FOREIGN KEY([target_id])
REFERENCES [dbo].[Products] ([ProductID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [fk_product_feedback]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [fk_user_feedback] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [fk_user_feedback]
GO
ALTER TABLE [dbo].[FeedbackDes]  WITH CHECK ADD  CONSTRAINT [FK__FeedbackD__Desig__0C85DE4D] FOREIGN KEY([DesignerID])
REFERENCES [dbo].[Designer] ([DesignerID])
GO
ALTER TABLE [dbo].[FeedbackDes] CHECK CONSTRAINT [FK__FeedbackD__Desig__0C85DE4D]
GO
ALTER TABLE [dbo].[FeedbackDes]  WITH CHECK ADD  CONSTRAINT [FK__FeedbackD__UserI__0D7A0286] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[FeedbackDes] CHECK CONSTRAINT [FK__FeedbackD__UserI__0D7A0286]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_subcategory_id] FOREIGN KEY([SubcategoryID])
REFERENCES [dbo].[Subcategories] ([SubcategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_subcategory_id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [fk_supplier_id] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Suppliers] ([SupplierID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [fk_supplier_id]
GO
ALTER TABLE [dbo].[ProjectDesigner]  WITH CHECK ADD  CONSTRAINT [FK_PJD] FOREIGN KEY([DesignerID])
REFERENCES [dbo].[Designer] ([DesignerID])
GO
ALTER TABLE [dbo].[ProjectDesigner] CHECK CONSTRAINT [FK_PJD]
GO
ALTER TABLE [dbo].[Subcategories]  WITH CHECK ADD  CONSTRAINT [fk_category_id] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Subcategories] CHECK CONSTRAINT [fk_category_id]
GO
