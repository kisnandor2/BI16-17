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
	DROP TABLE DM.dbo.DimAttack

SELECT s.*, h.AttackID, h.H_Attack_LDTS, h.H_Attackt_RSRC INTO [DM].[dbo].[DimAttack]
FROM HubAttack h, SatAttack s 
WHERE h.H_Attack_SQN = s.H_Attack_SQN

ALTER TABLE DM.dbo.DimAttack
ADD CONSTRAINT PK_H_Attack_SQN PRIMARY KEY (H_Attack_SQN);

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
	lcc.H_Country_SQN = hco.H_Country_SQN

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
FROM HubWeaponType hwt, SatWeaponType swt, HubWeaponSubType hwst, SatWeaponSubType swst, LinkWeaponType_Subtype l
WHERE 
	hwt.H_WeaponType_SQN = swt.H_WeaponType_SQN AND
	hwst.H_WeaponSubType_SQN = swst.H_WeaponSubType_SQN AND
	l.H_WeaponSubType_SQN = hwst.H_WeaponSubType_SQN AND
	l.H_WeaponType_SQN = hwt.H_WeaponType_SQN

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
	INTO [DM].[dbo].[DimIncident]
FROM  
WHERE 
	

ALTER TABLE DM.dbo.DimWeapon
ADD CONSTRAINT PK_DimIncident PRIMARY KEY (SK);

