USE [EnvironmentalMonitoring]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 06.12.2024 14:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [varchar](100) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Measurements]    Script Date: 06.12.2024 14:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measurements](
	[MeasurementID] [int] IDENTITY(1,1) NOT NULL,
	[SensorID] [int] NULL,
	[Parameter] [varchar](50) NOT NULL,
	[Value] [float] NOT NULL,
	[UnitOfMeasurement] [varchar](20) NULL,
	[MeasurementDateTime] [date] NULL,
	[ReportID] [int] NULL,
 CONSTRAINT [PK__Measurem__85599F98882BEC52] PRIMARY KEY CLUSTERED 
(
	[MeasurementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PollutionData]    Script Date: 06.12.2024 14:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PollutionData](
	[PollutionID] [int] IDENTITY(1,1) NOT NULL,
	[SensorID] [int] NULL,
	[PollutantType] [varchar](50) NOT NULL,
	[Value] [float] NOT NULL,
	[MeasurementDateTime] [date] NULL,
	[LocationID] [int] NULL,
 CONSTRAINT [PK__Pollutio__A17A052D22BE214F] PRIMARY KEY CLUSTERED 
(
	[PollutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 06.12.2024 14:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[ReportID] [int] IDENTITY(1,1) NOT NULL,
	[ReportingPeriod] [varchar](50) NOT NULL,
	[Parameter] [varchar](50) NOT NULL,
	[AverageValue] [float] NULL,
	[MaximumValue] [float] NULL,
	[MinimumValue] [float] NULL,
	[MeasurementCount] [int] NOT NULL,
 CONSTRAINT [PK__Reports__D5BD48E55B6A06D1] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sensors]    Script Date: 06.12.2024 14:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sensors](
	[SensorID] [int] IDENTITY(1,1) NOT NULL,
	[SensorType] [varchar](50) NOT NULL,
	[Location] [varchar](100) NOT NULL,
	[InstallationDate] [date] NULL,
	[CalibrationDate] [date] NULL,
	[Status] [varchar](20) NOT NULL,
	[StandardID] [int] NULL,
	[UserId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SensorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Standards]    Script Date: 06.12.2024 14:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Standards](
	[StandardID] [int] IDENTITY(1,1) NOT NULL,
	[Parameter] [varchar](50) NOT NULL,
	[Value] [float] NOT NULL,
	[UnitOfMeasurement] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StandardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 06.12.2024 14:04:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] NOT NULL,
	[Login] [nchar](50) NOT NULL,
	[Password] [nchar](256) NOT NULL,
	[Email] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (21, N'Central Park', 123, 1233, N'A large urban park in New York City')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (22, N'Red Square', 4231, 421, N'Famous public square in Moscow')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (23, N'Eiffel Tower', 523, 46234, N'Iconic tower in Paris')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (24, N'Mount Everest', 346234, 12321, N'The highest mountain on Earth')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (25, N'Sahara Desert', 3513, 1242141, N'World''s largest hot desert')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (26, N'Amazon Rainforest', 21421, 124412, N'Lush rainforest in South America')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (27, N'Sydney Opera House', 3412, 431221, N'Landmark performance venue in Sydney')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (28, N'Great Barrier Reef', 21423132, 538678, N'World''s largest coral reef system')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (29, N'Grand Canyon', 643634463, 43643436, N'Famous canyon in the United States')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (30, N'Victoria Falls', 346, 53434, N'Famous waterfall on the Zambezi River')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (31, N'Galapagos Islands', 2345234, 324234, N'Archipelago known for unique species')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (32, N'Banff National Park', 23423423, 423423, N'Scenic national park in Canada')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (33, N'Yellowstone Park', 64, 540879, N'First national park in the world')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (34, N'The Maldives', 8986, 567456, N'Tropical paradise in the Indian Ocean')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (35, N'Taj Mahal', 35634, 325243, N'Iconic white marble mausoleum in India')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (36, N'Antarctica', 53452, 234324, N'The southernmost continent')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (37, N'Bora Bora', 654334, 345643634, N'Tropical island in French Polynesia')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (38, N'Mount Kilimanjaro', 363534, 534534, N'Tallest mountain in Africa')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (39, N'Machu Picchu', 534534, 534345, N'Ancient Inca city in Peru')
INSERT [dbo].[Locations] ([LocationID], [LocationName], [Latitude], [Longitude], [Description]) VALUES (40, N'Mount Fuji', 345345, 534345, N'Famous volcano and cultural symbol in Japan')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[Measurements] ON 

INSERT [dbo].[Measurements] ([MeasurementID], [SensorID], [Parameter], [Value], [UnitOfMeasurement], [MeasurementDateTime], [ReportID]) VALUES (1, 1, N'Temperature', 23, N'С', CAST(N'2024-01-01' AS Date), 62)
INSERT [dbo].[Measurements] ([MeasurementID], [SensorID], [Parameter], [Value], [UnitOfMeasurement], [MeasurementDateTime], [ReportID]) VALUES (3, 2, N'Temperature', 32, N'C', CAST(N'2023-11-11' AS Date), 63)
INSERT [dbo].[Measurements] ([MeasurementID], [SensorID], [Parameter], [Value], [UnitOfMeasurement], [MeasurementDateTime], [ReportID]) VALUES (5, 3, N'Humidity', 60, N'%', CAST(N'2021-01-01' AS Date), 64)
INSERT [dbo].[Measurements] ([MeasurementID], [SensorID], [Parameter], [Value], [UnitOfMeasurement], [MeasurementDateTime], [ReportID]) VALUES (6, 4, N'Temperature', 32, N'%', CAST(N'2020-10-10' AS Date), 65)
INSERT [dbo].[Measurements] ([MeasurementID], [SensorID], [Parameter], [Value], [UnitOfMeasurement], [MeasurementDateTime], [ReportID]) VALUES (7, 5, N'Temperature', 45, N'C', CAST(N'2019-09-09' AS Date), 66)
INSERT [dbo].[Measurements] ([MeasurementID], [SensorID], [Parameter], [Value], [UnitOfMeasurement], [MeasurementDateTime], [ReportID]) VALUES (11, NULL, N'dasasd', 312, N'T', CAST(N'2022-10-10' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[Measurements] OFF
GO
SET IDENTITY_INSERT [dbo].[PollutionData] ON 

INSERT [dbo].[PollutionData] ([PollutionID], [SensorID], [PollutantType], [Value], [MeasurementDateTime], [LocationID]) VALUES (42, 1, N'CO2', 400, CAST(N'2024-01-01' AS Date), 21)
INSERT [dbo].[PollutionData] ([PollutionID], [SensorID], [PollutantType], [Value], [MeasurementDateTime], [LocationID]) VALUES (47, 2, N'Light', 333, CAST(N'2024-01-01' AS Date), 22)
INSERT [dbo].[PollutionData] ([PollutionID], [SensorID], [PollutantType], [Value], [MeasurementDateTime], [LocationID]) VALUES (48, 3, N'CO2', 444, CAST(N'2024-01-01' AS Date), 23)
INSERT [dbo].[PollutionData] ([PollutionID], [SensorID], [PollutantType], [Value], [MeasurementDateTime], [LocationID]) VALUES (49, 4, N'Light', 555, CAST(N'2024-01-01' AS Date), 24)
INSERT [dbo].[PollutionData] ([PollutionID], [SensorID], [PollutantType], [Value], [MeasurementDateTime], [LocationID]) VALUES (50, 5, N'CO2', 777, CAST(N'2024-01-01' AS Date), 25)
INSERT [dbo].[PollutionData] ([PollutionID], [SensorID], [PollutantType], [Value], [MeasurementDateTime], [LocationID]) VALUES (51, 6, N'Light', 666, CAST(N'2024-01-01' AS Date), 26)
INSERT [dbo].[PollutionData] ([PollutionID], [SensorID], [PollutantType], [Value], [MeasurementDateTime], [LocationID]) VALUES (53, NULL, N'dasdas', 123, CAST(N'2022-10-10' AS Date), NULL)
SET IDENTITY_INSERT [dbo].[PollutionData] OFF
GO
SET IDENTITY_INSERT [dbo].[Reports] ON 

INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (62, N'2024-01-01', N'Temperature', 23, 28, 18, 100)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (63, N'2024-01-02', N'Temperature', 22, 27, 17, 120)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (64, N'2024-01-03', N'Temperature', 21, 26, 16, 110)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (65, N'2024-01-04', N'Humidity', 60, 85, 40, 95)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (66, N'2024-01-05', N'Humidity', 62, 90, 35, 100)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (67, N'2024-01-06', N'Humidity', 60, 88, 37, 105)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (68, N'2024-01-07', N'Pressure', 1013, 1020, 1010, 115)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (69, N'2024-01-08', N'Pressure', 1015, 1022, 1011, 120)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (70, N'2024-01-09', N'Pressure', 1013, 1020, 1010, 110)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (71, N'2024-01-10', N'Wind Speed', 6, 12, 1, 125)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (72, N'2024-01-11', N'Wind Speed', 5, 10, 1, 130)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (73, N'2024-01-12', N'Wind Speed', 6, 14, 0, 140)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (74, N'2024-01-13', N'Light Intensity', 500, 800, 150, 110)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (75, N'2024-01-14', N'Light Intensity', 510, 850, 100, 120)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (76, N'2024-01-15', N'Light Intensity', 495, 780, 120, 125)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (77, N'2024-01-16', N'Noise Level', 58, 75, 40, 115)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (78, N'2024-01-17', N'Noise Level', 58, 72, 38, 120)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (79, N'2024-01-18', N'Noise Level', 60, 78, 42, 130)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (80, N'2024-01-19', N'CO2 Concentration', 400, 500, 350, 115)
INSERT [dbo].[Reports] ([ReportID], [ReportingPeriod], [Parameter], [AverageValue], [MaximumValue], [MinimumValue], [MeasurementCount]) VALUES (81, N'2024-01-20', N'CO2 Concentration', 390, 490, 340, 120)
SET IDENTITY_INSERT [dbo].[Reports] OFF
GO
SET IDENTITY_INSERT [dbo].[Sensors] ON 

INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (1, N'Temperature', N'Warehouse A', CAST(N'2023-05-10' AS Date), CAST(N'2023-06-01' AS Date), N'Active', 1, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (2, N'Humidity', N'Warehouse B', CAST(N'2023-06-15' AS Date), CAST(N'2023-07-05' AS Date), N'Active', 2, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (3, N'Pressure', N'Storage Room 1', CAST(N'2023-07-20' AS Date), CAST(N'2023-08-10' AS Date), N'Inactive', 3, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (4, N'Temperature', N'Office 1', CAST(N'2023-08-25' AS Date), CAST(N'2023-09-15' AS Date), N'Active', 4, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (5, N'Humidity', N'Office 2', CAST(N'2023-09-10' AS Date), CAST(N'2023-09-20' AS Date), N'Active', 5, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (6, N'Wind Speed', N'Rooftop', CAST(N'2023-05-12' AS Date), CAST(N'2023-06-01' AS Date), N'Active', 6, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (7, N'Light Intensity', N'Conference Room 1', CAST(N'2023-06-18' AS Date), CAST(N'2023-07-05' AS Date), N'Inactive', 7, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (8, N'Noise Level', N'Production Area', CAST(N'2023-07-22' AS Date), CAST(N'2023-08-01' AS Date), N'Active', 8, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (9, N'Temperature', N'Server Room', CAST(N'2023-07-10' AS Date), CAST(N'2023-08-10' AS Date), N'Active', 9, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (10, N'Pressure', N'Basement', CAST(N'2023-05-18' AS Date), CAST(N'2023-06-15' AS Date), N'Active', 10, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (11, N'Wind Speed', N'External Area', CAST(N'2023-06-25' AS Date), CAST(N'2023-07-15' AS Date), N'Inactive', 11, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (12, N'CO2 Concentration', N'Office 3', CAST(N'2023-05-20' AS Date), CAST(N'2023-06-10' AS Date), N'Active', 12, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (13, N'Humidity', N'Storage Room 2', CAST(N'2023-06-30' AS Date), CAST(N'2023-07-20' AS Date), N'Active', 13, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (14, N'Noise Level', N'Laboratory', CAST(N'2023-08-05' AS Date), CAST(N'2023-08-25' AS Date), N'Active', 14, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (15, N'Temperature', N'External Shed', CAST(N'2023-07-01' AS Date), CAST(N'2023-07-15' AS Date), N'Inactive', 15, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (16, N'Wind Speed', N'Parking Lot', CAST(N'2023-06-12' AS Date), CAST(N'2023-07-05' AS Date), N'Active', 16, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (17, N'Light Intensity', N'Warehouse C', CAST(N'2023-05-15' AS Date), CAST(N'2023-06-01' AS Date), N'Active', 17, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (18, N'CO2 Concentration', N'Conference Room 2', CAST(N'2023-07-30' AS Date), CAST(N'2023-08-10' AS Date), N'Active', 18, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (19, N'Pressure', N'Warehouse D', CAST(N'2023-06-05' AS Date), CAST(N'2023-06-20' AS Date), N'Inactive', 19, NULL)
INSERT [dbo].[Sensors] ([SensorID], [SensorType], [Location], [InstallationDate], [CalibrationDate], [Status], [StandardID], [UserId]) VALUES (20, N'Temperature', N'Lab 1', CAST(N'2023-07-18' AS Date), CAST(N'2023-08-05' AS Date), N'Active', 20, NULL)
SET IDENTITY_INSERT [dbo].[Sensors] OFF
GO
SET IDENTITY_INSERT [dbo].[Standards] ON 

INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (1, N'Temperature', 25, N'Celsius')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (2, N'Humidity', 60, N'Percent')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (3, N'Pressure', 1013, N'hPa')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (4, N'CO2', 400, N'ppm')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (5, N'Light', 750, N'Lux')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (6, N'WaterTemperature', 20, N'Celsius')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (7, N'WaterpH', 7, N'pH')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (8, N'NO2', 50, N'ppb')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (9, N'SO2', 50, N'ppb')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (10, N'O3', 100, N'ppb')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (11, N'ParticulateMatter', 35, N'µg/m?')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (12, N'PM2.5', 25, N'µg/m?')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (13, N'PM10', 50, N'µg/m?')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (14, N'AirQualityIndex', 100, N'AQI')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (15, N'NitrogenOxides', 40, N'ppb')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (16, N'Methane', 1.8, N'ppm')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (17, N'OzoneConcentration', 180, N'ppb')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (18, N'SulphurDioxide', 100, N'ppb')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (19, N'WaterTurbidity', 5, N'NTU')
INSERT [dbo].[Standards] ([StandardID], [Parameter], [Value], [UnitOfMeasurement]) VALUES (20, N'Chlorine', 0.5, N'mg/L')
SET IDENTITY_INSERT [dbo].[Standards] OFF
GO
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (0, N'mm3a11                                            ', N'123                                                                                                                                                                                                                                                             ', N'dsdasasd                                                                                            ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (1, N'john_doe                                          ', N'password123                                                                                                                                                                                                                                                     ', N'john.doe@example.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (2, N'jane_smith                                        ', N'qwerty2024                                                                                                                                                                                                                                                      ', N'jane.smith@email.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (3, N'alice_brown                                       ', N'mypass456                                                                                                                                                                                                                                                       ', N'alice.brown@domain.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (4, N'bob_white                                         ', N'123abcSecure                                                                                                                                                                                                                                                    ', N'bob.white@mail.com                                                                                  ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (5, N'claire_green                                      ', N'supersecret789                                                                                                                                                                                                                                                  ', N'claire.green@web.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (6, N'mark_jones                                        ', N'passw0rd!                                                                                                                                                                                                                                                       ', N'mark.jones@company.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (7, N'lucy_wilson                                       ', N'letmein123                                                                                                                                                                                                                                                      ', N'lucy.wilson@email.com                                                                               ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (8, N'oscar_martin                                      ', N'1securePassword                                                                                                                                                                                                                                                 ', N'oscar.martin@domain.com                                                                             ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (9, N'emma_white                                        ', N'whitepass2024                                                                                                                                                                                                                                                   ', N'emma.white@service.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (10, N'steve_king                                        ', N'kingofpasswords                                                                                                                                                                                                                                                 ', N'steve.king@company.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (11, N'mia_baker                                         ', N'baker@123                                                                                                                                                                                                                                                       ', N'mia.baker@org.com                                                                                   ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (12, N'kevin_adams                                       ', N'qwertyKevin2024                                                                                                                                                                                                                                                 ', N'kevin.adams@work.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (13, N'sophie_davis                                      ', N'davis@1234                                                                                                                                                                                                                                                      ', N'sophie.davis@company.com                                                                            ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (14, N'charles_lee                                       ', N'secureCharles78                                                                                                                                                                                                                                                 ', N'charles.lee@mail.com                                                                                ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (15, N'diana_smith                                       ', N'Diana$123                                                                                                                                                                                                                                                       ', N'diana.smith@service.com                                                                             ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (16, N'nathan_wood                                       ', N'NathanWood2024                                                                                                                                                                                                                                                  ', N'nathan.wood@domain.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (17, N'zoe_martinez                                      ', N'zmart@2024                                                                                                                                                                                                                                                      ', N'zoe.martinez@email.com                                                                              ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (18, N'matthew_clark                                     ', N'matthews4ever                                                                                                                                                                                                                                                   ', N'matthew.clark@company.com                                                                           ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (19, N'lily_scott                                        ', N'lilypass2024                                                                                                                                                                                                                                                    ', N'lily.scott@domain.com                                                                               ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (20, N'george_harris                                     ', N'harris321                                                                                                                                                                                                                                                       ', N'george.harris@web.com                                                                               ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (21, N'ark                                               ', N'123                                                                                                                                                                                                                                                             ', N'abdurasul.khasanov@gmail.com                                                                        ')
INSERT [dbo].[Users] ([UserID], [Login], [Password], [Email]) VALUES (22, N'qwe                                               ', N'123                                                                                                                                                                                                                                                             ', N'dasasdas                                                                                            ')
GO
ALTER TABLE [dbo].[Measurements]  WITH CHECK ADD  CONSTRAINT [FK__Measureme__Senso__3C69FB99] FOREIGN KEY([SensorID])
REFERENCES [dbo].[Sensors] ([SensorID])
GO
ALTER TABLE [dbo].[Measurements] CHECK CONSTRAINT [FK__Measureme__Senso__3C69FB99]
GO
ALTER TABLE [dbo].[Measurements]  WITH CHECK ADD  CONSTRAINT [FK_Measurements_Reports] FOREIGN KEY([ReportID])
REFERENCES [dbo].[Reports] ([ReportID])
GO
ALTER TABLE [dbo].[Measurements] CHECK CONSTRAINT [FK_Measurements_Reports]
GO
ALTER TABLE [dbo].[PollutionData]  WITH CHECK ADD  CONSTRAINT [FK__Pollution__Locat__440B1D61] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Locations] ([LocationID])
GO
ALTER TABLE [dbo].[PollutionData] CHECK CONSTRAINT [FK__Pollution__Locat__440B1D61]
GO
ALTER TABLE [dbo].[PollutionData]  WITH CHECK ADD  CONSTRAINT [FK__Pollution__Senso__4316F928] FOREIGN KEY([SensorID])
REFERENCES [dbo].[Sensors] ([SensorID])
GO
ALTER TABLE [dbo].[PollutionData] CHECK CONSTRAINT [FK__Pollution__Senso__4316F928]
GO
ALTER TABLE [dbo].[Sensors]  WITH CHECK ADD  CONSTRAINT [FK__Sensors__Standar__398D8EEE] FOREIGN KEY([StandardID])
REFERENCES [dbo].[Standards] ([StandardID])
GO
ALTER TABLE [dbo].[Sensors] CHECK CONSTRAINT [FK__Sensors__Standar__398D8EEE]
GO
ALTER TABLE [dbo].[Sensors]  WITH CHECK ADD  CONSTRAINT [FK_Sensors_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Sensors] CHECK CONSTRAINT [FK_Sensors_Users]
GO
