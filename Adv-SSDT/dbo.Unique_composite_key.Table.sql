USE [AdventureWorks2014]
GO
SET IDENTITY_INSERT [dbo].[Unique_composite_key] ON 

INSERT [dbo].[Unique_composite_key] ([id], [name], [age]) VALUES (1, N'ram', NULL)
INSERT [dbo].[Unique_composite_key] ([id], [name], [age]) VALUES (2, N'sham', NULL)
INSERT [dbo].[Unique_composite_key] ([id], [name], [age]) VALUES (8, N'rr', NULL)
INSERT [dbo].[Unique_composite_key] ([id], [name], [age]) VALUES (9, NULL, NULL)
INSERT [dbo].[Unique_composite_key] ([id], [name], [age]) VALUES (11, NULL, 2)
INSERT [dbo].[Unique_composite_key] ([id], [name], [age]) VALUES (12, N'2', NULL)
SET IDENTITY_INSERT [dbo].[Unique_composite_key] OFF
