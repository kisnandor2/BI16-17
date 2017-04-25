use DV
GO

---[LinkTargetNationality] Contraint drop
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LinkTargetNat__H_Trg__25869641]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality] DROP CONSTRAINT [FK__LinkTargetNat__H_Trg__25869641]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LinkTargetNat__H_Nat__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality] DROP CONSTRAINT [FK__LinkTargetNat__H_Nat__267ABA7A]
GO
-------
-- Weapon HUB es Satelite
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatWeapon__H_Weap__398D8EEE]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeapon]'))
ALTER TABLE [dbo].[SatWeapon] DROP CONSTRAINT [FK__SatWeapon__H_Weap__398D8EEE]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubWeapon]') AND type in (N'U'))
DROP TABLE [dbo].[HubWeapon]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubWeapon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubWeapon](
	[H_Weapon_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Weapon_LDTS] [datetime] NOT NULL,
	[H_Weapont_RSRC] [varchar](30) NOT NULL,
	[codetype1_is] [int] NOT NULL,
	[codesubtype1_is] [int] NOT NULL,
	[codetype2_is] [int] NULL,
	[codesubtype2_is] [int] NULL,
	[codetype3_is] [int] NULL,
	[codesubtype3_is] [int] NULL,
 CONSTRAINT [PK__HubWeapon__8605ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Weapon_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatWeapon]') AND type in (N'U'))
DROP TABLE [dbo].[SatWeapon]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatWeapon]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatWeapon](
	[H_Weapon_SQN] [int] NOT NULL,
	[S_Weapon_LDTS] [datetime] NOT NULL,
	[S_Weapon_LEDTS] [datetime] NOT NULL,
	[S_Weapon_RSRC] [varchar](30) NOT NULL,
	[S_Weapon_TypeName] [varchar](30) NOT NULL,
	[S_Weapon_SubTypeName] [varchar](30) NOT NULL,
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatWeapon__H_Weap__398D8EEE]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeapon]'))
ALTER TABLE [dbo].[SatWeapon]  WITH NOCHECK ADD  CONSTRAINT [FK__SatWeapon__H_Weap__398D8EEE] FOREIGN KEY([H_Weapon_SQN])
REFERENCES [dbo].[HubWeapon] ([H_Weapon_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatWeapon__H_Weap__398D8EEE]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeapon]'))
ALTER TABLE [dbo].[SatWeapon] CHECK CONSTRAINT [FK__SatWeapon__H_Weap__398D8EEE]
GO
----------
-- Target HUB es Satelite
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatTarget__H_Targ__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTarget]'))
ALTER TABLE [dbo].[SatTarget] DROP CONSTRAINT [FK__SatTarget__H_Targ__1ED998B2]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubTarget]') AND type in (N'U'))
DROP TABLE [dbo].[HubTarget]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubTarget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubTarget](
	[H_Target_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Target_LDTS] [datetime] NOT NULL,
	[H_Target_LEDTS] [datetime] NOT NULL,
	[H_Targett_RSRC] [varchar](30) NOT NULL,
	[codetype_is] [int] NOT NULL,
	[codesubtype_is] [int] NOT NULL
 CONSTRAINT [PK__HubTarget__8605ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Target_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatTarget]') AND type in (N'U'))
DROP TABLE [dbo].[SatTarget]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatTarget]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatTarget](
	[H_Target_SQN] [int] NOT NULL,
	[S_Target_LDTS] [datetime] NOT NULL,
	[S_Target_LEDTS] [datetime] NOT NULL,
	[S_Target_RSRC] [varchar](30) NOT NULL,
	[S_Target_TypeName] [varchar](30) NOT NULL,
	[S_Target_SubTypeName] [varchar](30) NOT NULL,
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatTarget__H_Targ__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatTarget]'))
ALTER TABLE [dbo].[SatTarget]  WITH NOCHECK ADD  CONSTRAINT [FK__SatTarget__H_Targ__1ED998B2] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatTarget__H_Targ__1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeapon]'))
ALTER TABLE [dbo].[SatTarget] CHECK CONSTRAINT [FK__SatTarget__H_Targ__1ED998B2]
GO
---------
-- Nationality HUB and Satelite
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatNationality__H_Nat__2ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatNational]'))
ALTER TABLE [dbo].[SatNational] DROP CONSTRAINT [FK__SatNationality__H_Nat__2ED798B2]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubNationality]') AND type in (N'U'))
DROP TABLE [dbo].[HubNationality]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubNationality]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubNationality](
	[H_National_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_National_LDTS] [datetime] NOT NULL,
	[H_National_LEDTS] [datetime] NOT NULL,
	[H_National_RSRC] [varchar](30) NOT NULL,
	[codetype_is] [int] NOT NULL,
 CONSTRAINT [PK__HubNationality__9315ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_National_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatNational]') AND type in (N'U'))
DROP TABLE [dbo].[SatNational]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatNational]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatNational](
	[H_National_SQN] [int] NOT NULL,
	[S_National_LDTS] [datetime] NOT NULL,
	[S_National_LEDTS] [datetime] NOT NULL,
	[S_National_RSRC] [varchar](30) NOT NULL,
	[S_National_Name] [varchar](30) NOT NULL,
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatNationality__H_Nat__2ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatNational]'))
ALTER TABLE [dbo].[SatNational]  WITH NOCHECK ADD  CONSTRAINT [FK__SatNationality__H_Nat__2ED798B2] FOREIGN KEY([H_National_SQN])
REFERENCES [dbo].[HubNationality] ([H_National_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatNationality__H_Nat__2ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeapon]'))
ALTER TABLE [dbo].[SatNational] CHECK CONSTRAINT [FK__SatNationality__H_Nat__2ED798B2]
GO
-------
-- Link between Nationality and Target Hubs


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]') AND type in (N'U'))
DROP TABLE [dbo].[LinkTargetNationality]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkTargetNationality](
	[L_TargetNationality_SQN] [int] IDENTITY(1,1) NOT NULL,
	[L_TargetNationality_LDTS] [datetime] NULL,
	[L_TargetNationality_RSRC] [varchar](30) NULL,
	[H_Target_SQN] [int] NULL,
	[H_National_SQN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[L_TargetNationality_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LinkTargetNat__H_Nat__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality]  WITH NOCHECK ADD FOREIGN KEY([H_National_SQN])
REFERENCES [dbo].[HubNationality] ([H_National_SQN])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LinkTargetNat__H_Trg__25869641]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality]  WITH NOCHECK ADD  CONSTRAINT [FK__LinkTargetNat__H_Trg__25869641] FOREIGN KEY([H_Target_SQN])
REFERENCES [dbo].[HubTarget] ([H_Target_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__LinkTargetNat__H_Trg__25869641]') AND parent_object_id = OBJECT_ID(N'[dbo].[LinkTargetNationality]'))
ALTER TABLE [dbo].[LinkTargetNationality] CHECK CONSTRAINT [FK__LinkTargetNat__H_Trg__25869641]
------
---Group HUB and Satelite

IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatGroup__H_Nat__3ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatGroup]'))
ALTER TABLE [dbo].[SatGroup] DROP CONSTRAINT [FK__SatGroup__H_Nat__3ED798B2]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubGroup]') AND type in (N'U'))
DROP TABLE [dbo].[HubGroup]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HubGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HubGroup](
	[H_Group_SQN] [int] IDENTITY(1,1) NOT NULL,
	[H_Group_LDTS] [datetime] NOT NULL,
	[H_Group_LDETS] [datetime] NOT NULL,
	[H_Group_RSRC] [varchar](30) NOT NULL,
	[code_group] [int] NOT NULL,
 CONSTRAINT [PK__HubGroup__9315ACE0806C05B7] PRIMARY KEY CLUSTERED 
(
	[H_Group_SQN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatGroup]') AND type in (N'U'))
DROP TABLE [dbo].[SatGroup]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SatGroup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SatGroup](
	[H_Group_SQN] [int] NOT NULL,
	[S_Group_LDTS] [datetime] NOT NULL,
	[S_Group_LEDTS] [datetime] NOT NULL,
	[S_Group_RSRC] [varchar](30) NOT NULL,
	[S_Group_Name] [varchar](30) NOT NULL,
	[S_Group_CardNum] INT DEFAULT(-9),
 CONSTRAINT [PK_SatGroup] PRIMARY KEY CLUSTERED 
(
	[H_Group_SQN] ASC,
	[S_Group_LDTS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatGroup__H_Nat__3ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatGroup]'))
ALTER TABLE [dbo].[SatGroup]  WITH NOCHECK ADD  CONSTRAINT [FK__SatGroup__H_Nat__3ED798B2] FOREIGN KEY([H_Group_SQN])
REFERENCES [dbo].[HubGroup] ([H_Group_SQN])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__SatGroup__H_Nat__3ED798B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[SatWeapon]'))
ALTER TABLE [dbo].[SatGroup] CHECK CONSTRAINT [FK__SatGroup__H_Nat__3ED798B2]
GO