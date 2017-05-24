--DROP DATABASE DM;
--create database DM;
USE DV;
GO

IF EXISTS (SELECT * FROM DV.sys.objects WHERE object_id = OBJECT_ID(N'[DV].[dbo].[Seq]') AND type in (N'SO'))
	DROP SEQUENCE Seq
CREATE SEQUENCE Seq
	START WITH 1
	INCREMENT BY 1
GO

--DimAttack
IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimAttack]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.DimAttack
	ALTER SEQUENCE Seq RESTART
END

SELECT 
	s.*, 
	h.AttackID, h.H_Attack_LDTS, h.H_Attackt_RSRC,
	NEXT VALUE FOR Seq AS SK
	INTO [DM].[dbo].[DimAttack]
FROM HubAttack h, SatAttack s 
WHERE h.H_Attack_SQN = s.H_Attack_SQN

ALTER TABLE DM.dbo.DimAttack
ADD CONSTRAINT PK_Attack PRIMARY KEY (SK);

--DimGroup

IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimGroup]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.DimGroup
	ALTER SEQUENCE Seq RESTART
END

SELECT s.*, h.H_Group_LDTS, h.H_Group_RSRC,
	   --SK = ROW_NUMBER() OVER (ORDER BY s.H_Group_SQN) 
	   NEXT VALUE FOR Seq AS SK
INTO [DM].[dbo].[DimGroup]
FROM HubGroup h, SatGroup s 
WHERE h.H_Group_SQN = s.H_Group_SQN

ALTER TABLE DM.dbo.DimGroup
ADD CONSTRAINT PK_DimGroup PRIMARY KEY (SK);

--DimLocation
IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimLocation]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.DimLocation
	ALTER SEQUENCE Seq RESTART
END

SELECT 
	NEXT VALUE FOR Seq AS SK,
	sci.*,
	sco.*,
	sr.*,
	hci.H_City_LDTS, hci.H_City_RSRC,
	hco.H_Country_LDTS, hco.H_Country_RSRC,
	hr.H_Region_LDTS, hr.H_Region_RSRC
	INTO [DM].[dbo].[DimLocation]
FROM HubRegion hr, SatRegion sr, HubCountry hco, SatCountry sco, HubCity hci, SatCity sci, LinkCountry_City lcc, LinkRegion_Country lrc
WHERE
	hr.H_Region_SQN = sr.H_Region_SQN AND
	hco.H_Country_SQN = sco.H_Country_SQN AND
	hci.H_City_SQN = sci.H_City_SQN AND
	lrc.H_Country_SQN = hco.H_Country_SQN AND
	lrc.H_Region_SQN = hr.H_Region_SQN AND
	lcc.H_City_SQN = hci.H_City_SQN AND
	lcc.H_Country_SQN = hco.H_Country_SQN AND
	sci.CityName IS NOT NULL;

ALTER TABLE DM.dbo.DimLocation
ADD CONSTRAINT PK_DimLocation PRIMARY KEY (SK);

--DimWeapon
IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimWeapon]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.DimWeapon
	ALTER SEQUENCE Seq RESTART
END

SELECT 
	NEXT VALUE FOR Seq AS SK,
	swt.*,
	swst.*,
	hwt.H_WeaponType_LDTS, hwt.H_WeaponType_RSRC,
	hwst.H_WeaponSubType_LDTS, hwst.H_WeaponSubType_RSRC
	INTO [DM].[dbo].[DimWeapon]
FROM  LinkWeaponType_Subtype l
		INNER JOIN HubWeaponType hwt ON l.H_WeaponType_SQN = hwt.H_WeaponType_SQN
		INNER JOIN HubWeaponSubType hwst ON l.H_WeaponSubType_SQN = hwst.H_WeaponSubType_SQN
		INNER JOIN SatWeaponType swt ON hwt.H_WeaponType_SQN = swt.H_WeaponType_SQN		 
		RIGHT JOIN SatWeaponSubType swst ON hwst.H_WeaponSubType_SQN = swst.H_WeaponSubType_SQN 

ALTER TABLE DM.dbo.DimWeapon
ADD CONSTRAINT PK_DimWeapon PRIMARY KEY (SK);

--DimIncident
IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimIncident]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.DimIncident
	ALTER SEQUENCE Seq RESTART
END

SELECT 
	NEXT VALUE FOR Seq AS SK,
	s.*,
	h.H_Incident_LDTS AS S_Incident_LDTS, 
	h.H_Incident_RSRC AS S_Incident_RSRC
	INTO [DM].[dbo].[DimIncident]
FROM HubIncident h, SatIncident s
WHERE h.H_Incident_SQN = s.H_Incident_SQN
	
ALTER TABLE DM.dbo.DimIncident
ADD CONSTRAINT PK_DimIncident PRIMARY KEY (SK);


update [DM].[dbo].[DimIncident] set NrPerps = 0 where NrPerps is NULL;

update [DM].[dbo].[DimIncident] set NrPerpsCustody = 0 where NrPerpsCustody is NULL;

update [DM].[dbo].[DimIncident] set NrKills = 0 where NrKills is NULL;

update [DM].[dbo].[DimIncident] set NrWounds = 0 where NrWounds is NULL;

update [DM].[dbo].[DimIncident] set PropDmgCat = 0 where PropDmgCat is NULL;

update [DM].[dbo].[DimIncident] set PropDmgValue = 0 where PropDmgValue is NULL;

update [DM].[dbo].[DimIncident] set HostageCount = 0 where HostageCount is NULL;

update [DM].[dbo].[DimIncident] set RansomAmount = 0 where RansomAmount is NULL;

update [DM].[dbo].[DimIncident] set RansomPaid = 0 where RansomPaid is NULL;

update [DM].[dbo].[DimIncident] set HostKidOutcome = 0 where HostKidOutcome is NULL;
--DimTarget
IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimTarget]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.DimTarget
	ALTER SEQUENCE Seq RESTART
END

SELECT 
	NEXT VALUE FOR Seq AS SK,
	st.*,
	stt.*,
	stst.*,
	sn.*,
	ht.H_Target_LDTS, ht.H_Target_RSRC,
	htt.H_TargetType_LDTS, htt.H_TargetType_RSRC, 
	htst.H_TargetSubType_LDTS, htst.H_TargetSubType_RSRC,
	hn.H_Nationality_LDTS, hn.H_Nationality_RSRC
	INTO [DM].[dbo].[DimTarget]
FROM 
	HubTarget ht, SatTarget st, 
	HubTargetType htt, SatTargetType stt, 
	HubTargetSubType htst, SatTargetSubType stst, 
	HubNationality hn, SatNationality sn,
	LinkTarget_TargetSubtype lt_tst,
	LinkTargetType_Subtype ltt_tst,
	LinkTargetNationality ltn
WHERE 
	ht.H_Target_SQN = st.H_Target_SQN AND
	htt.H_TargetType_SQN = stt.H_TargetType_SQN AND
	htst.H_TargetSubType_SQN = stst.H_TargetSubType_SQN AND
	hn.H_Nationality_SQN = sn.H_Nationality_SQN AND
	lt_tst.H_Target_SQN = ht.H_Target_SQN AND
	lt_tst.H_TargetSubType_SQN = htst.H_TargetSubType_SQN AND
	ltt_tst.H_TargetSubType_SQN = htst.H_TargetSubType_SQN AND
	ltt_tst.H_TargetType_SQN = htt.H_TargetType_SQN AND
	ltn.H_Target_SQN = ht.H_Target_SQN AND
	ltn.H_Nationality_SQN = hn.H_Nationality_SQN AND
	st.S_TargetName IS NOT NULL;

ALTER TABLE DM.dbo.DimTarget
ADD CONSTRAINT PK_DimTarget PRIMARY KEY (SK);
--DimDate
IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimDate]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.DimDate
	ALTER SEQUENCE Seq RESTART
END
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp

IF NOT EXISTS (SELECT * FROM Dm.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[DimDate]') AND type in (N'U'))
BEGIN
CREATE TABLE [DM].[dbo].[DimDate](
	[SK] [bigint] NOT NULL,
	[Date] [date] NULL,
	[Semester] [int] NULL,
	[Quarter] [int] NULL,
	[MonthNumber] [int] NULL,
	[DayNumber] [int] NULL,
	[YearNumber] [int] NULL,
	[MonthName] [nvarchar](30) NULL,
	[DayName] [nvarchar](30) NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO

SELECT DISTINCT(IncidentDate) INTO #temp 
FROM SatIncident

INSERT INTO DM.dbo.DimDate
SELECT 
	SK = ISNULL(YEAR(IncidentDate)*10000 + MONTH(IncidentDate)*100 + DAY(IncidentDate), 1),
	[Date] = IncidentDate,
	Semester = (MONTH(IncidentDate)-1)/6+1,
	[Quarter] = (MONTH(IncidentDate)-1)/3+1,
	MonthNumber = MONTH(IncidentDate),
	DayNumber = DAY(IncidentDate),
	YearNumber = YEAR(IncidentDate),
	[MonthName] = DATENAME(MONTH, IncidentDate),
	[DayName] = DATENAME(WEEKDAY, IncidentDate)
FROM #temp
IF OBJECT_ID('tempdb..#temp') IS NOT NULL DROP TABLE #temp

--FactAllIncident
IF EXISTS (SELECT * FROM DV.sys.objects WHERE object_id = OBJECT_ID(N'[DV].[dbo].[Seq]') AND type in (N'SO'))
	DROP SEQUENCE Seq
CREATE SEQUENCE Seq
	START WITH 1
	INCREMENT BY 1
GO


--FactAllIncident
IF EXISTS (SELECT * FROM DM.sys.objects WHERE object_id = OBJECT_ID(N'[DM].[dbo].[FactAllIncident]') AND type in (N'U'))
BEGIN
	DROP TABLE DM.dbo.FactAllIncident
	ALTER SEQUENCE Seq RESTART
END

CREATE TABLE [DM].[dbo].[FactAllIncident](
	[Incident_SK] [bigint] NOT NULL,
	[Attack_SK] [bigint] NOT NULL,
	[Group_SK] [bigint] NOT NULL,
	[City_SK] [bigint] NULL,
	[Target_SK] [bigint] NOT NULL,
	[WeaponSubType_SK] [bigint] NOT NULL,
	[Date_SK] [bigint] NULL,
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
	FOREIGN KEY ([Incident_SK]) REFERENCES [DM].dbo.DimIncident([SK]),
	FOREIGN KEY ([Attack_SK]) REFERENCES [DM].dbo.DimAttack([SK]),
	FOREIGN KEY ([Group_SK]) REFERENCES [DM].dbo.DimGroup([SK]),
	FOREIGN KEY ([City_SK]) REFERENCES [DM].dbo.DimLocation([SK]),
	FOREIGN KEY ([Target_SK]) REFERENCES [DM].dbo.DimTarget([SK]),
	FOREIGN KEY ([WeaponSubType_SK]) REFERENCES [DM].dbo.DimWeapon([SK]),
	FOREIGN KEY ([Date_SK]) REFERENCES [DM].dbo.DimDate([SK]),
) ON [PRIMARY]

INSERT INTO DM.dbo.FactAllIncident
SELECT
	di.SK AS Incident_SK,
	da.SK AS Attack_SK,
	dg.SK AS Group_SK,
	dl.SK AS City_SK,
	dt.SK AS Target_SK,
	dw.SK AS WeaponSubType_SK,
	dd.SK AS Date_SK,
	si.PolEcoRelSoc,
	si.LgAudience,
	si.HumanLaw,
	si.Success,
	si.Suicide,
	si.NrPerps,
	si.NrPerpsCustody,
	si.NrKills,
	si.NrWounds,
	si.PropDmgCat,
	si.PropDmgValue,
	si.HostageCount,
	si.RansomAmount,
	si.RansomPaid,
	si.HostKidOutcome
FROM DV.dbo.SatIncident si, 
	 DM.dbo.DimIncident di, 
	 DM.dbo.DimAttack da, 
	 DV.dbo.LinkIncident_All l,
	 DM.dbo.DimGroup dg, 
	 DM.dbo.DimLocation dl,
	 DM.dbo.DimTarget dt,
	 DM.dbo.DimWeapon dw,
	 DM.dbo.DimDate dd
WHERE l.H_Incident_SQN = di.H_Incident_SQN AND
	  l.H_Attack_SQN = da.H_Attack_SQN AND
	  l.H_Group_SQN = dg.H_Group_SQN AND
	  l.H_City_SQN = dl.H_City_SQN AND
	  l.H_Country_SQN = dl.H_Country_SQN AND
	  l.H_Target_SQN = dt.H_Target_SQN AND
	  l.H_WeaponSubType_SQN = dw.H_WeaponSubType_SQN AND
	  l.H_WeaponType_SQN = dw.H_WeaponType_SQN AND
	  l.H_Incident_SQN = si.H_Incident_SQN AND
	  si.IncidentDate = dd.Date 