USE [DV]
GO
/****** Object:  Table [dbo].[HubAttack]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubAttack]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubAttack](
	[H_Attack_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Attack_LDTS] [datetime] NOT NULL,
	[H_Attackt_RSRC] [varchar](50) NOT NULL,
	[AttackID] [int] NOT NULL,
 CONSTRAINT [PK__HubAttack__8605ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Attack_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubCity]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubCity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubCity](
	[H_City_SQN] [int] NOT NULL,
	[H_City_LDTS] [datetime] NULL,
	[H_City_RSRC] [varchar](50) NULL,
 CONSTRAINT [PK_HubCity] PRIMARY KEY CLUSTERED 
(
	[H_City_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubCountry]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubCountry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubCountry](
	[H_Country_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Country_LDTS] [datetime] NULL,
	[H_Country_RSRC] [varchar](50) NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_HubCountry] PRIMARY KEY CLUSTERED 
(
	[H_Country_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubGroup]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubGroup](
	[H_Group_SQN] [int] NOT NULL,
	[H_Group_LDTS] [datetime] NOT NULL,
	[H_Group_RSRC] [varchar](50) NOT NULL,
 CONSTRAINT [PK__HubGroup__9315ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Group_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubIncident]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubIncident]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubIncident](
	[H_Incident_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Incident_LDTS] [datetime] NULL,
	[H_Incident_RSRC] [varchar](50) NULL,
	[IncidentBK] [varchar](50) NULL,
 CONSTRAINT [PK_HubIncident] PRIMARY KEY CLUSTERED 
(
	[H_Incident_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubNationality]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubNationality]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubNationality](
	[H_Nationality_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Nationality_LDTS] [datetime] NULL,
	[H_Nationality_RSRC] [varchar](50) NULL,
	[NationalityID] [int] NULL,
 CONSTRAINT [PK_HubNationality] PRIMARY KEY CLUSTERED 
(
	[H_Nationality_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubRegion]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubRegion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubRegion](
	[H_Region_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Region_LDTS] [datetime] NULL,
	[H_Region_RSRC] [varchar](50) NULL,
	[RegionID] [int] NULL,
 CONSTRAINT [PK_HubRegion] PRIMARY KEY CLUSTERED 
(
	[H_Region_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubTarget]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubTarget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubTarget](
	[H_Target_SQN] [int] NOT NULL,
	[H_Target_LDTS] [datetime] NOT NULL,
	[H_Target_RSRC] [varchar](50) NOT NULL,
 CONSTRAINT [PK__HubTarget__8605ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Target_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubTargetSubType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubTargetSubType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubTargetSubType](
	[H_TargetSubType_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_TargetSubType_LDTS] [datetime] NULL,
	[H_TargetSubType_RSRC] [varchar](50) NULL,
	[SubTypeID] [int] NULL,
 CONSTRAINT [PK_HubTargetSubType] PRIMARY KEY CLUSTERED 
(
	[H_TargetSubType_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubTargetType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubTargetType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubTargetType](
	[H_TargetType_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_TargetType_LDTS] [datetime] NULL,
	[H_TargetType_RSRC] [varchar](50) NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_HubTargetType] PRIMARY KEY CLUSTERED 
(
	[H_TargetType_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubWeaponSubType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubWeaponSubType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubWeaponSubType](
	[H_WeaponSubType_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_WeaponSubType_LDTS] [datetime] NULL,
	[H_WeaponSubType_RSRC] [varchar](50) NULL,
	[SubTypeID] [int] NULL,
 CONSTRAINT [PK_HubWeaponSubType] PRIMARY KEY CLUSTERED 
(
	[H_WeaponSubType_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubWeaponType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubWeaponType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubWeaponType](
	[H_WeaponType_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_WeaponType_LDTS] [datetime] NULL,
	[H_WeaponType_RSRC] [varchar](50) NULL,
	[TypeID] [int] NULL,
 CONSTRAINT [PK_HubWeaponType] PRIMARY KEY CLUSTERED 
(
	[H_WeaponType_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkCountry_City]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkCountry_City]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkCountry_City](
	[L_Country_City_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Country_City_LDTS] [datetime] NULL,
	[L_Country_City_RSRC] [varchar](50) NULL,
	[H_Country_SQN] [int] NULL,
	[H_City_SQN] [int] NULL,
 CONSTRAINT [PK_LinkCountry_City] PRIMARY KEY CLUSTERED 
(
	[L_Country_City_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkIncident_All]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkIncident_All](
	[L_Incident_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Incident_LDTS] [datetime] NULL,
	[L_Incident_RSRC] [varchar](50) NULL,
	[H_Incident_SQN] [int] NULL,
	[H_Attack_SQN] [int] NULL,
	[H_Group_SQN] [int] NULL,
	[H_City_SQN] [int] NULL,
	[H_WeaponSubType_SQN] [int] NULL,
	[H_Target_SQN] [int] NULL,
	[H_Country_SQN] [int] NULL,
	[H_WeaponType_SQN] [int] NULL,
	[H_Nationality_SQN] [int] NULL,
	[H_TargetType_SQN] [int] NULL,
	[H_TargetSubType_SQN] [int] NULL,
	FOREIGN KEY(H_Country_SQN) REFERENCES HubCountry(H_Country_SQN),
	FOREIGN KEY(H_WeaponType_SQN) REFERENCES HubWeaponType(H_WeaponType_SQN),
	FOREIGN KEY(H_Nationality_SQN) REFERENCES HubNationality(H_Nationality_SQN),
	FOREIGN KEY(H_TargetType_SQN) REFERENCES HubTargetType(H_TargetType_SQN),
	FOREIGN KEY(H_TargetSubType_SQN) REFERENCES HubTargetSubType(H_TargetSubType_SQN),
 CONSTRAINT [PK_LinkIncident_All] PRIMARY KEY CLUSTERED 
(
	[L_Incident_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkRegion_Country]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkRegion_Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkRegion_Country](
	[L_Region_Country_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Region_Country_LDTS] [datetime] NULL,
	[L_Region_Country_RSRC] [varchar](50) NULL,
	[H_Region_SQN] [int] NULL,
	[H_Country_SQN] [int] NULL,
 CONSTRAINT [PK_LinkRegion_Country] PRIMARY KEY CLUSTERED 
(
	[L_Region_Country_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkTarget_TargetSubtype]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkTarget_TargetSubtype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkTarget_TargetSubtype](
	[L_Target_TargetSubtype_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Target_TargetSubtype_LDTS] [datetime] NULL,
	[L_Target_TargetSubtype_RSRC] [varchar](50) NULL,
	[H_Target_SQN] [int] NULL,
	[H_TargetSubType_SQN] [int] NULL,
	[H_TargetType_SQN] [int] NULL,
 CONSTRAINT [PK_LinkTarget_TargetSubtype] PRIMARY KEY CLUSTERED 
(
	[L_Target_TargetSubtype_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkTargetNationality]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkTargetNationality](
	[L_TargetNationality_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_TargetNationality_LDTS] [datetime] NULL,
	[L_TargetNationality_RSRC] [varchar](50) NULL,
	[H_Target_SQN] [int] NULL,
	[H_Nationality_SQN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[L_TargetNationality_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkTargetType_Subtype]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkTargetType_Subtype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkTargetType_Subtype](
	[L_Type_Subtype_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Type_Subtype_LDTS] [datetime] NULL,
	[L_Type_Subtype_RSRC] [varchar](50) NULL,
	[H_TargetType_SQN] [int] NULL,
	[H_TargetSubType_SQN] [int] NULL,
 CONSTRAINT [PK_LinkTargetType_Subtype] PRIMARY KEY CLUSTERED 
(
	[L_Type_Subtype_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkWeaponType_Subtype]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkWeaponType_Subtype]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkWeaponType_Subtype](
	[L_Type_Subtype_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Type_Subtype_LDTS] [datetime] NULL,
	[L_Type_Subtype_RSRC] [varchar](50) NULL,
	[H_WeaponType_SQN] [int] NULL,
	[H_WeaponSubType_SQN] [int] NULL,
 CONSTRAINT [PK_LinkWeaponType_Subtype] PRIMARY KEY CLUSTERED 
(
	[L_Type_Subtype_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatAttack]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatAttack]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatAttack](
	[H_Attack_SQN] [int] NOT NULL,
	[S_Attack_LDTS] [datetime] NOT NULL,
	[S_Attack_RSRC] [varchar](50) NOT NULL,
	[S_Attack_TypeName] [varchar](50) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatCity]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatCity]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatCity](
	[H_City_SQN] [int] NOT NULL,
	[S_City_LDTS] [datetime] NULL,
	[S_City_RSRC] [varchar](50) NULL,
	[CityName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatCountry]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatCountry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatCountry](
	[H_Country_SQN] [int] NOT NULL,
	[S_Country_LDTS] [datetime] NULL,
	[S_Country_RSRC] [varchar](50) NULL,
	[CountryName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatGroup]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatGroup](
	[H_Group_SQN] [int] NOT NULL,
	[S_Group_LDTS] [datetime] NOT NULL,
	[S_Group_LDETS] [datetime] NOT NULL,
	[S_Group_RSRC] [varchar](50) NOT NULL,
	[S_Group_Name] [varchar](50) NOT NULL,
	[S_Group_CardNum] [int] NULL DEFAULT ((-9)),
 CONSTRAINT [PK_SatGroup] PRIMARY KEY CLUSTERED 
(
	[H_Group_SQN] ASC,
	[S_Group_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatIncident]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatIncident]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatIncident](
	[H_Incident_SQN] [int] NULL,
	[H_Incident_LDTS] [datetime] NULL,
	[H_Incident_RSRC] [varchar](50) NULL,
	[PolEcoRelSoc] [bit] NULL,
	[LgAudience] [bit] NULL,
	[HumanLaw] [bit] NULL,
	[Success] [bit] NULL,
	[Suicide] [bit] NULL,
	[NrPerps] [int] NULL,
	[NrPerpsCustody] [int] NULL,
	[NrKills] [int] NULL,
	[NrWounds] [int] NULL,
	[PropDmgCat] [int] NULL,
	[PropDmgValue] [bigint] NULL,
	[HostageCount] [int] NULL,
	[RansomAmount] [int] NULL,
	[RansomPaid] [int] NULL,
	[HostKidOutcome] [int] NULL,
	[IncidentDate] [date] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatNationality]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatNationality]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatNationality](
	[H_Nationality_SQN] [int] NULL,
	[S_Nationality_LDTS] [datetime] NULL,
	[S_Nationality_RSRC] [varchar](50) NULL,
	[NationalityName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatRegion]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatRegion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatRegion](
	[H_Region_SQN] [int] NOT NULL,
	[S_Region_LDTS] [datetime] NULL,
	[S_Region_RSRC] [varchar](50) NULL,
	[RegionName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatTarget]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatTarget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatTarget](
	[H_Target_SQN] [int] NOT NULL,
	[S_Target_LDTS] [datetime] NULL,
	[S_Target_RSRC] [varchar](50) NULL,
	[S_TargetName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatTargetSubType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatTargetSubType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatTargetSubType](
	[H_TargetSubType_SQN] [int] NOT NULL,
	[S_TargetSubType_LDTS] [datetime] NULL,
	[S_TargetSubType_RSRC] [varchar](50) NULL,
	[TargetSubTypeName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatTargetType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatTargetType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatTargetType](
	[H_TargetType_SQN] [int] NOT NULL,
	[S_TargetType_LDTS] [datetime] NULL,
	[S_TargetType_RSRC] [varchar](50) NULL,
	[TargetTypeName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatWeaponSubType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatWeaponSubType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatWeaponSubType](
	[H_WeaponSubType_SQN] [int] NOT NULL,
	[S_WeaponSubType_LDTS] [datetime] NULL,
	[S_WeaponSubType_RSRC] [varchar](50) NULL,
	[WeaponSubTypeName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatWeaponType]    Script Date: 2017-05-04 1:23:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatWeaponType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatWeaponType](
	[H_WeaponType_SQN] [int] NOT NULL,
	[S_WeaponType_LDTS] [datetime] NULL,
	[S_WeaponType_RSRC] [varchar](50) NULL,
	[WeaponTypeName] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkCountry_City_HubCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkCountry_City]'))
ALTER TABLE [dbo].[LinkCountry_City]  WITH CHECK ADD  CONSTRAINT [FK_LinkCountry_City_HubCity] FOREIGN KEY([H_City_SQN])
REFERENCES [dbo].[HubCity] ([H_City_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkCountry_City_HubCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkCountry_City]'))
ALTER TABLE [dbo].[LinkCountry_City] CHECK CONSTRAINT [FK_LinkCountry_City_HubCity]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkCountry_City_HubCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkCountry_City]'))
ALTER TABLE [dbo].[LinkCountry_City]  WITH CHECK ADD  CONSTRAINT [FK_LinkCountry_City_HubCountry] FOREIGN KEY([H_Country_SQN])
REFERENCES [dbo].[HubCountry] ([H_Country_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkCountry_City_HubCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkCountry_City]'))
ALTER TABLE [dbo].[LinkCountry_City] CHECK CONSTRAINT [FK_LinkCountry_City_HubCountry]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubAttack]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubAttack] FOREIGN KEY([H_Attack_SQN])
REFERENCES [dbo].[HubAttack] ([H_Attack_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubAttack]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubAttack]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubCity] FOREIGN KEY([H_City_SQN])
REFERENCES [dbo].[HubCity] ([H_City_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubCity]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubGroup] FOREIGN KEY([H_Group_SQN])
REFERENCES [dbo].[HubGroup] ([H_Group_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubGroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubGroup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubIncident]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubIncident] FOREIGN KEY([H_Incident_SQN])
REFERENCES [dbo].[HubIncident] ([H_Incident_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubIncident]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubIncident]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubTarget] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubTarget]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubWeaponSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubWeaponSubType] FOREIGN KEY([H_WeaponSubType_SQN])
REFERENCES [dbo].[HubWeaponSubType] ([H_WeaponSubType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkIncident_All_HubWeaponSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkIncident_All]'))
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubWeaponSubType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkRegion_Country_HubCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkRegion_Country]'))
ALTER TABLE [dbo].[LinkRegion_Country]  WITH CHECK ADD  CONSTRAINT [FK_LinkRegion_Country_HubCountry] FOREIGN KEY([H_Country_SQN])
REFERENCES [dbo].[HubCountry] ([H_Country_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkRegion_Country_HubCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkRegion_Country]'))
ALTER TABLE [dbo].[LinkRegion_Country] CHECK CONSTRAINT [FK_LinkRegion_Country_HubCountry]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkRegion_Country_HubRegion]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkRegion_Country]'))
ALTER TABLE [dbo].[LinkRegion_Country]  WITH CHECK ADD  CONSTRAINT [FK_LinkRegion_Country_HubRegion] FOREIGN KEY([H_Region_SQN])
REFERENCES [dbo].[HubRegion] ([H_Region_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkRegion_Country_HubRegion]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkRegion_Country]'))
ALTER TABLE [dbo].[LinkRegion_Country] CHECK CONSTRAINT [FK_LinkRegion_Country_HubRegion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTarget_TargetSubtype_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTarget_TargetSubtype]'))
ALTER TABLE [dbo].[LinkTarget_TargetSubtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTarget] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTarget_TargetSubtype_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTarget_TargetSubtype]'))
ALTER TABLE [dbo].[LinkTarget_TargetSubtype] CHECK CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTarget]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTarget_TargetSubtype_HubTargetSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTarget_TargetSubtype]'))
ALTER TABLE [dbo].[LinkTarget_TargetSubtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTargetSubType] FOREIGN KEY([H_TargetSubType_SQN])
REFERENCES [dbo].[HubTargetSubType] ([H_TargetSubType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTarget_TargetSubtype_HubTargetSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTarget_TargetSubtype]'))
ALTER TABLE [dbo].[LinkTarget_TargetSubtype] CHECK CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTargetSubType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTarget_TargetSubtype_HubTargetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTarget_TargetSubtype]'))
ALTER TABLE [dbo].[LinkTarget_TargetSubtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTargetType] FOREIGN KEY([H_TargetType_SQN])
REFERENCES [dbo].[HubTargetType] ([H_TargetType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTarget_TargetSubtype_HubTargetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTarget_TargetSubtype]'))
ALTER TABLE [dbo].[LinkTarget_TargetSubtype] CHECK CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTargetType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LinkTargetNat__H_Nat__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality]  WITH NOCHECK ADD  CONSTRAINT [FK__LinkTargetNat__H_Nat__267ABA7A] FOREIGN KEY([H_Nationality_SQN])
REFERENCES [dbo].[HubNationality] ([H_Nationality_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LinkTargetNat__H_Nat__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality] CHECK CONSTRAINT [FK__LinkTargetNat__H_Nat__267ABA7A]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTargetNationality_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality]  WITH CHECK ADD  CONSTRAINT [FK_LinkTargetNationality_HubTarget] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTargetNationality_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality] CHECK CONSTRAINT [FK_LinkTargetNationality_HubTarget]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTargetType_Subtype_HubTargetSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetType_Subtype]'))
ALTER TABLE [dbo].[LinkTargetType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetSubType] FOREIGN KEY([H_TargetSubType_SQN])
REFERENCES [dbo].[HubTargetSubType] ([H_TargetSubType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTargetType_Subtype_HubTargetSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetType_Subtype]'))
ALTER TABLE [dbo].[LinkTargetType_Subtype] CHECK CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetSubType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTargetType_Subtype_HubTargetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetType_Subtype]'))
ALTER TABLE [dbo].[LinkTargetType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetType] FOREIGN KEY([H_TargetType_SQN])
REFERENCES [dbo].[HubTargetType] ([H_TargetType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkTargetType_Subtype_HubTargetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetType_Subtype]'))
ALTER TABLE [dbo].[LinkTargetType_Subtype] CHECK CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkWeaponType_Subtype_HubWeaponSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkWeaponType_Subtype]'))
ALTER TABLE [dbo].[LinkWeaponType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponSubType] FOREIGN KEY([H_WeaponSubType_SQN])
REFERENCES [dbo].[HubWeaponSubType] ([H_WeaponSubType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkWeaponType_Subtype_HubWeaponSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkWeaponType_Subtype]'))
ALTER TABLE [dbo].[LinkWeaponType_Subtype] CHECK CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponSubType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkWeaponType_Subtype_HubWeaponType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkWeaponType_Subtype]'))
ALTER TABLE [dbo].[LinkWeaponType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponType] FOREIGN KEY([H_WeaponType_SQN])
REFERENCES [dbo].[HubWeaponType] ([H_WeaponType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_LinkWeaponType_Subtype_HubWeaponType]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkWeaponType_Subtype]'))
ALTER TABLE [dbo].[LinkWeaponType_Subtype] CHECK CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatAttack__H_Targ__2HD238B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatAttack]'))
ALTER TABLE [dbo].[SatAttack]  WITH NOCHECK ADD  CONSTRAINT [FK__SatAttack__H_Targ__2HD238B2] FOREIGN KEY([H_Attack_SQN])
REFERENCES [dbo].[HubAttack] ([H_Attack_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatAttack__H_Targ__2HD238B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatAttack]'))
ALTER TABLE [dbo].[SatAttack] CHECK CONSTRAINT [FK__SatAttack__H_Targ__2HD238B2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatCity_HubCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatCity]'))
ALTER TABLE [dbo].[SatCity]  WITH CHECK ADD  CONSTRAINT [FK_SatCity_HubCity] FOREIGN KEY([H_City_SQN])
REFERENCES [dbo].[HubCity] ([H_City_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatCity_HubCity]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatCity]'))
ALTER TABLE [dbo].[SatCity] CHECK CONSTRAINT [FK_SatCity_HubCity]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatCountry_HubCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatCountry]'))
ALTER TABLE [dbo].[SatCountry]  WITH CHECK ADD  CONSTRAINT [FK_SatCountry_HubCountry] FOREIGN KEY([H_Country_SQN])
REFERENCES [dbo].[HubCountry] ([H_Country_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatCountry_HubCountry]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatCountry]'))
ALTER TABLE [dbo].[SatCountry] CHECK CONSTRAINT [FK_SatCountry_HubCountry]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatGroup__H_Nat__3ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatGroup]'))
ALTER TABLE [dbo].[SatGroup]  WITH NOCHECK ADD  CONSTRAINT [FK__SatGroup__H_Nat__3ED798B2] FOREIGN KEY([H_Group_SQN])
REFERENCES [dbo].[HubGroup] ([H_Group_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatGroup__H_Nat__3ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatGroup]'))
ALTER TABLE [dbo].[SatGroup] CHECK CONSTRAINT [FK__SatGroup__H_Nat__3ED798B2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatIncident_HubIncident]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatIncident]'))
ALTER TABLE [dbo].[SatIncident]  WITH CHECK ADD  CONSTRAINT [FK_SatIncident_HubIncident] FOREIGN KEY([H_Incident_SQN])
REFERENCES [dbo].[HubIncident] ([H_Incident_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatIncident_HubIncident]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatIncident]'))
ALTER TABLE [dbo].[SatIncident] CHECK CONSTRAINT [FK_SatIncident_HubIncident]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatNationality_HubNationality]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatNationality]'))
ALTER TABLE [dbo].[SatNationality]  WITH CHECK ADD  CONSTRAINT [FK_SatNationality_HubNationality] FOREIGN KEY([H_Nationality_SQN])
REFERENCES [dbo].[HubNationality] ([H_Nationality_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatNationality_HubNationality]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatNationality]'))
ALTER TABLE [dbo].[SatNationality] CHECK CONSTRAINT [FK_SatNationality_HubNationality]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatRegion_HubRegion]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatRegion]'))
ALTER TABLE [dbo].[SatRegion]  WITH CHECK ADD  CONSTRAINT [FK_SatRegion_HubRegion] FOREIGN KEY([H_Region_SQN])
REFERENCES [dbo].[HubRegion] ([H_Region_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatRegion_HubRegion]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatRegion]'))
ALTER TABLE [dbo].[SatRegion] CHECK CONSTRAINT [FK_SatRegion_HubRegion]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatTarget_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTarget]'))
ALTER TABLE [dbo].[SatTarget]  WITH CHECK ADD  CONSTRAINT [FK_SatTarget_HubTarget] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatTarget_HubTarget]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTarget]'))
ALTER TABLE [dbo].[SatTarget] CHECK CONSTRAINT [FK_SatTarget_HubTarget]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatTargetSubType_HubTargetSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTargetSubType]'))
ALTER TABLE [dbo].[SatTargetSubType]  WITH CHECK ADD  CONSTRAINT [FK_SatTargetSubType_HubTargetSubType] FOREIGN KEY([H_TargetSubType_SQN])
REFERENCES [dbo].[HubTargetSubType] ([H_TargetSubType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatTargetSubType_HubTargetSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTargetSubType]'))
ALTER TABLE [dbo].[SatTargetSubType] CHECK CONSTRAINT [FK_SatTargetSubType_HubTargetSubType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatTargetType_HubTargetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTargetType]'))
ALTER TABLE [dbo].[SatTargetType]  WITH CHECK ADD  CONSTRAINT [FK_SatTargetType_HubTargetType] FOREIGN KEY([H_TargetType_SQN])
REFERENCES [dbo].[HubTargetType] ([H_TargetType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatTargetType_HubTargetType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTargetType]'))
ALTER TABLE [dbo].[SatTargetType] CHECK CONSTRAINT [FK_SatTargetType_HubTargetType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatWeaponSubType_HubWeaponSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeaponSubType]'))
ALTER TABLE [dbo].[SatWeaponSubType]  WITH CHECK ADD  CONSTRAINT [FK_SatWeaponSubType_HubWeaponSubType] FOREIGN KEY([H_WeaponSubType_SQN])
REFERENCES [dbo].[HubWeaponSubType] ([H_WeaponSubType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatWeaponSubType_HubWeaponSubType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeaponSubType]'))
ALTER TABLE [dbo].[SatWeaponSubType] CHECK CONSTRAINT [FK_SatWeaponSubType_HubWeaponSubType]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatWeaponType_HubWeaponType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeaponType]'))
ALTER TABLE [dbo].[SatWeaponType]  WITH CHECK ADD  CONSTRAINT [FK_SatWeaponType_HubWeaponType] FOREIGN KEY([H_WeaponType_SQN])
REFERENCES [dbo].[HubWeaponType] ([H_WeaponType_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_SatWeaponType_HubWeaponType]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeaponType]'))
ALTER TABLE [dbo].[SatWeaponType] CHECK CONSTRAINT [FK_SatWeaponType_HubWeaponType]
GO
