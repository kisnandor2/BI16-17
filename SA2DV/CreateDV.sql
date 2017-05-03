USE [DV]
GO
/****** Object:  Table [dbo].[HubAttack]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubCity]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HubCity](
	[H_City_SQN] [int] NOT NULL,
	[H_City_LDTS] [datetime] NULL,
	[H_City_RSRC] [varchar](50) NULL,
 CONSTRAINT [PK_HubCity] PRIMARY KEY CLUSTERED 
(
	[H_City_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubCountry]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubGroup]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HubGroup](
	[H_Group_SQN] [int] NOT NULL,
	[H_Group_LDTS] [datetime] NOT NULL,
	[H_Group_RSRC] [varchar](50) NOT NULL,
 CONSTRAINT [PK__HubGroup__9315ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Group_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubIncident]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubRegion]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubTarget]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HubTarget](
	[H_Target_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Target_LDTS] [datetime] NOT NULL,
	[H_Target_RSRC] [varchar](50) NOT NULL
 CONSTRAINT [PK__HubTarget__8605ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Target_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubTargetSubType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubTargetType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubWeaponSubType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HubWeaponType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkCountry_City]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkIncident_All]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
 CONSTRAINT [PK_LinkIncident_All] PRIMARY KEY CLUSTERED 
(
	[L_Incident_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkRegion_Country]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkTarget_TargetSubtype]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinkTarget_TargetSubtype](
	[L_Target_TargetSubtype_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_Target_TargetSubtype_LDTS] [datetime] NULL,
	[L_Target_TargetSubtype_RSRC] [varchar](50) NULL,
	[H_Target_SQN] [int] NULL,
	[H_TargetSubType_SQN] [int] NULL,
 CONSTRAINT [PK_LinkTarget_TargetSubtype] PRIMARY KEY CLUSTERED 
(
	[L_Target_TargetSubtype_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkTargetNationality]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LinkTargetNationality](
	[L_TargetNationality_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_TargetNationality_LDTS] [datetime] NULL,
	[L_TargetNationality_RSRC] [varchar](50) NULL,
	[H_Target_SQN] [int] NULL,
	[H_Country_SQN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[L_TargetNationality_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkTargetType_Subtype]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LinkWeaponType_Subtype]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatAttack]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatAttack](
	[H_Attack_SQN] [int] NOT NULL,
	[S_Attack_LDTS] [datetime] NOT NULL,
	[S_Attack_RSRC] [varchar](50) NOT NULL,
	[S_Attack_TypeName] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatCity]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatCity](
	[H_City_SQN] [int] NOT NULL,
	[S_City_LDTS] [datetime] NULL,
	[S_City_RSRC] [varchar](50) NULL,
	[CityName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatCountry]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatCountry](
	[H_Country_SQN] [int] NOT NULL,
	[S_Country_LDTS] [datetime] NULL,
	[S_Country_RSRC] [varchar](50) NULL,
	[CountryName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatGroup]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatIncident]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
	[PropDmgValue] [int] NULL,
	[HostageCount] [int] NULL,
	[RansomAmount] [int] NULL,
	[RansomPaid] [int] NULL,
	[HostKidOutcome] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatRegion]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatRegion](
	[H_Region_SQN] [int] NOT NULL,
	[S_Region_LDTS] [datetime] NULL,
	[S_Region_RSRC] [varchar](50) NULL,
	[RegionName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatTargetSubType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatTargetSubType](
	[H_TargetSubType_SQN] [int] NOT NULL,
	[S_TargetSubType_LDTS] [datetime] NULL,
	[S_TargetSubType_RSRC] [varchar](50) NULL,
	[TargetSubTypeName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatTargetType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatTargetType](
	[H_TargetType_SQN] [int] NOT NULL,
	[S_TargetType_LDTS] [datetime] NULL,
	[S_TargetType_RSRC] [varchar](50) NULL,
	[TargetTypeName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatWeaponSubType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatWeaponSubType](
	[H_WeaponSubType_SQN] [int] NOT NULL,
	[S_WeaponSubType_LDTS] [datetime] NULL,
	[S_WeaponSubType_RSRC] [varchar](50) NULL,
	[WeaponSubTypeName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SatWeaponType]    Script Date: 5/3/2017 5:57:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SatWeaponType](
	[H_WeaponType_SQN] [int] NOT NULL,
	[S_WeaponType_LDTS] [datetime] NULL,
	[S_WeaponType_RSRC] [varchar](50) NULL,
	[WeaponTypeName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[LinkCountry_City]  WITH CHECK ADD  CONSTRAINT [FK_LinkCountry_City_HubCity] FOREIGN KEY([H_City_SQN])
REFERENCES [dbo].[HubCity] ([H_City_SQN])
GO
ALTER TABLE [dbo].[LinkCountry_City] CHECK CONSTRAINT [FK_LinkCountry_City_HubCity]
GO
ALTER TABLE [dbo].[LinkCountry_City]  WITH CHECK ADD  CONSTRAINT [FK_LinkCountry_City_HubCountry] FOREIGN KEY([H_Country_SQN])
REFERENCES [dbo].[HubCountry] ([H_Country_SQN])
GO
ALTER TABLE [dbo].[LinkCountry_City] CHECK CONSTRAINT [FK_LinkCountry_City_HubCountry]
GO
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubAttack] FOREIGN KEY([H_Attack_SQN])
REFERENCES [dbo].[HubAttack] ([H_Attack_SQN])
GO
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubAttack]
GO
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubCity] FOREIGN KEY([H_City_SQN])
REFERENCES [dbo].[HubCity] ([H_City_SQN])
GO
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubCity]
GO
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubGroup] FOREIGN KEY([H_Group_SQN])
REFERENCES [dbo].[HubGroup] ([H_Group_SQN])
GO
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubGroup]
GO
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubIncident] FOREIGN KEY([H_Incident_SQN])
REFERENCES [dbo].[HubIncident] ([H_Incident_SQN])
GO
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubIncident]
GO
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubTarget] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubTarget]
GO
ALTER TABLE [dbo].[LinkIncident_All]  WITH CHECK ADD  CONSTRAINT [FK_LinkIncident_All_HubWeaponSubType] FOREIGN KEY([H_WeaponSubType_SQN])
REFERENCES [dbo].[HubWeaponSubType] ([H_WeaponSubType_SQN])
GO
ALTER TABLE [dbo].[LinkIncident_All] CHECK CONSTRAINT [FK_LinkIncident_All_HubWeaponSubType]
GO
ALTER TABLE [dbo].[LinkRegion_Country]  WITH CHECK ADD  CONSTRAINT [FK_LinkRegion_Country_HubCountry] FOREIGN KEY([H_Country_SQN])
REFERENCES [dbo].[HubCountry] ([H_Country_SQN])
GO
ALTER TABLE [dbo].[LinkRegion_Country] CHECK CONSTRAINT [FK_LinkRegion_Country_HubCountry]
GO
ALTER TABLE [dbo].[LinkRegion_Country]  WITH CHECK ADD  CONSTRAINT [FK_LinkRegion_Country_HubRegion] FOREIGN KEY([H_Region_SQN])
REFERENCES [dbo].[HubRegion] ([H_Region_SQN])
GO
ALTER TABLE [dbo].[LinkRegion_Country] CHECK CONSTRAINT [FK_LinkRegion_Country_HubRegion]
GO
ALTER TABLE [dbo].[LinkTarget_TargetSubtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTarget] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
ALTER TABLE [dbo].[LinkTarget_TargetSubtype] CHECK CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTarget]
GO
ALTER TABLE [dbo].[LinkTarget_TargetSubtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTargetSubType] FOREIGN KEY([H_TargetSubType_SQN])
REFERENCES [dbo].[HubTargetSubType] ([H_TargetSubType_SQN])
GO
ALTER TABLE [dbo].[LinkTarget_TargetSubtype] CHECK CONSTRAINT [FK_LinkTarget_TargetSubtype_HubTargetSubType]
GO
ALTER TABLE [dbo].[LinkTargetNationality]  WITH NOCHECK ADD  CONSTRAINT [FK__LinkTargetNat__H_Nat__267ABA7A] FOREIGN KEY([H_Country_SQN])
REFERENCES [dbo].[HubCountry] ([H_Country_SQN])
GO
ALTER TABLE [dbo].[LinkTargetNationality] CHECK CONSTRAINT [FK__LinkTargetNat__H_Nat__267ABA7A]
GO
ALTER TABLE [dbo].[LinkTargetNationality]  WITH CHECK ADD  CONSTRAINT [FK_LinkTargetNationality_HubTarget] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
ALTER TABLE [dbo].[LinkTargetNationality] CHECK CONSTRAINT [FK_LinkTargetNationality_HubTarget]
GO
ALTER TABLE [dbo].[LinkTargetType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetSubType] FOREIGN KEY([H_TargetSubType_SQN])
REFERENCES [dbo].[HubTargetSubType] ([H_TargetSubType_SQN])
GO
ALTER TABLE [dbo].[LinkTargetType_Subtype] CHECK CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetSubType]
GO
ALTER TABLE [dbo].[LinkTargetType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetType] FOREIGN KEY([H_TargetType_SQN])
REFERENCES [dbo].[HubTargetType] ([H_TargetType_SQN])
GO
ALTER TABLE [dbo].[LinkTargetType_Subtype] CHECK CONSTRAINT [FK_LinkTargetType_Subtype_HubTargetType]
GO
ALTER TABLE [dbo].[LinkWeaponType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponSubType] FOREIGN KEY([H_WeaponSubType_SQN])
REFERENCES [dbo].[HubWeaponSubType] ([H_WeaponSubType_SQN])
GO
ALTER TABLE [dbo].[LinkWeaponType_Subtype] CHECK CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponSubType]
GO
ALTER TABLE [dbo].[LinkWeaponType_Subtype]  WITH CHECK ADD  CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponType] FOREIGN KEY([H_WeaponType_SQN])
REFERENCES [dbo].[HubWeaponType] ([H_WeaponType_SQN])
GO
ALTER TABLE [dbo].[LinkWeaponType_Subtype] CHECK CONSTRAINT [FK_LinkWeaponType_Subtype_HubWeaponType]
GO
ALTER TABLE [dbo].[SatAttack]  WITH NOCHECK ADD  CONSTRAINT [FK__SatAttack__H_Targ__2HD238B2] FOREIGN KEY([H_Attack_SQN])
REFERENCES [dbo].[HubAttack] ([H_Attack_SQN])
GO
ALTER TABLE [dbo].[SatAttack] CHECK CONSTRAINT [FK__SatAttack__H_Targ__2HD238B2]
GO
ALTER TABLE [dbo].[SatCity]  WITH CHECK ADD  CONSTRAINT [FK_SatCity_HubCity] FOREIGN KEY([H_City_SQN])
REFERENCES [dbo].[HubCity] ([H_City_SQN])
GO
ALTER TABLE [dbo].[SatCity] CHECK CONSTRAINT [FK_SatCity_HubCity]
GO
ALTER TABLE [dbo].[SatCountry]  WITH CHECK ADD  CONSTRAINT [FK_SatCountry_HubCountry] FOREIGN KEY([H_Country_SQN])
REFERENCES [dbo].[HubCountry] ([H_Country_SQN])
GO
ALTER TABLE [dbo].[SatCountry] CHECK CONSTRAINT [FK_SatCountry_HubCountry]
GO
ALTER TABLE [dbo].[SatGroup]  WITH NOCHECK ADD  CONSTRAINT [FK__SatGroup__H_Nat__3ED798B2] FOREIGN KEY([H_Group_SQN])
REFERENCES [dbo].[HubGroup] ([H_Group_SQN])
GO
ALTER TABLE [dbo].[SatGroup] CHECK CONSTRAINT [FK__SatGroup__H_Nat__3ED798B2]
GO
ALTER TABLE [dbo].[SatIncident]  WITH CHECK ADD  CONSTRAINT [FK_SatIncident_HubIncident] FOREIGN KEY([H_Incident_SQN])
REFERENCES [dbo].[HubIncident] ([H_Incident_SQN])
GO
ALTER TABLE [dbo].[SatIncident] CHECK CONSTRAINT [FK_SatIncident_HubIncident]
GO
ALTER TABLE [dbo].[SatRegion]  WITH CHECK ADD  CONSTRAINT [FK_SatRegion_HubRegion] FOREIGN KEY([H_Region_SQN])
REFERENCES [dbo].[HubRegion] ([H_Region_SQN])
GO
ALTER TABLE [dbo].[SatRegion] CHECK CONSTRAINT [FK_SatRegion_HubRegion]
GO
ALTER TABLE [dbo].[SatTargetSubType]  WITH CHECK ADD  CONSTRAINT [FK_SatTargetSubType_HubTargetSubType] FOREIGN KEY([H_TargetSubType_SQN])
REFERENCES [dbo].[HubTargetSubType] ([H_TargetSubType_SQN])
GO
ALTER TABLE [dbo].[SatTargetSubType] CHECK CONSTRAINT [FK_SatTargetSubType_HubTargetSubType]
GO
ALTER TABLE [dbo].[SatTargetType]  WITH CHECK ADD  CONSTRAINT [FK_SatTargetType_HubTargetType] FOREIGN KEY([H_TargetType_SQN])
REFERENCES [dbo].[HubTargetType] ([H_TargetType_SQN])
GO
ALTER TABLE [dbo].[SatTargetType] CHECK CONSTRAINT [FK_SatTargetType_HubTargetType]
GO
ALTER TABLE [dbo].[SatWeaponSubType]  WITH CHECK ADD  CONSTRAINT [FK_SatWeaponSubType_HubWeaponSubType] FOREIGN KEY([H_WeaponSubType_SQN])
REFERENCES [dbo].[HubWeaponSubType] ([H_WeaponSubType_SQN])
GO
ALTER TABLE [dbo].[SatWeaponSubType] CHECK CONSTRAINT [FK_SatWeaponSubType_HubWeaponSubType]
GO
ALTER TABLE [dbo].[SatWeaponType]  WITH CHECK ADD  CONSTRAINT [FK_SatWeaponType_HubWeaponType] FOREIGN KEY([H_WeaponType_SQN])
REFERENCES [dbo].[HubWeaponType] ([H_WeaponType_SQN])
GO
ALTER TABLE [dbo].[SatWeaponType] CHECK CONSTRAINT [FK_SatWeaponType_HubWeaponType]
GO