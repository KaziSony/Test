USE [UniversityDB-34]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/4/2017 5:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](150) NULL,
	[RegNo] [varchar](150) NULL,
	[address] [nchar](150) NULL,
	[phone] [varchar](11) NULL,
	[Subject] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (1, N'sony', N'2222', N'dhaka                                                                                                                                                 ', N'1234', NULL)
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (2, N'rayhan', N'3333', N'dhaka                                                                                                                                                 ', N'1234567', NULL)
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (3, N'mazed', N'4444', N'mirpur                                                                                                                                                ', N'22222222', NULL)
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (4, N'rifat', N'1234', N'tfhjg                                                                                                                                                 ', N'12345', NULL)
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (5, N'rabeya', N'1111', N'gulshan                                                                                                                                               ', N'123456', NULL)
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (6, N'Sad', N'4444', N'mirpur                                                                                                                                                ', N'123456', NULL)
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (7, N'Sad', N'4444', N'mirpur                                                                                                                                                ', N'123456', NULL)
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (8, N'rifat', N'5', N'asdg                                                                                                                                                  ', N'12345', N'english')
INSERT [dbo].[Student] ([Id], [Name], [RegNo], [address], [phone], [Subject]) VALUES (9, N'rifat', N'5', N'asdg                                                                                                                                                  ', N'12345', N'english')
SET IDENTITY_INSERT [dbo].[Student] OFF
