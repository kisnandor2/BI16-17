use DV
go

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
	[SK] [bigint] NOT NULL,
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
	PRIMARY KEY (SK),
	FOREIGN KEY ([Incident_SK]) REFERENCES [DM].dbo.DimIncident([SK]),
	FOREIGN KEY ([Attack_SK]) REFERENCES [DM].dbo.DimAttack([SK]),
	FOREIGN KEY ([Group_SK]) REFERENCES [DM].dbo.DimGroup([SK]),
	FOREIGN KEY ([City_SK]) REFERENCES [DM].dbo.DimLocation([SK]),
	FOREIGN KEY ([Target_SK]) REFERENCES [DM].dbo.DimTarget([SK]),
	FOREIGN KEY ([WeaponSubType_SK]) REFERENCES [DM].dbo.DimWeapon([SK]),
	FOREIGN KEY ([Date_SK]) REFERENCES [DM].dbo.DimDate([SK]),
) ON [PRIMARY]

SET NOCOUNT ON;
GO

BEGIN

SET NOCOUNT ON;

DECLARE @Incident_SQN bigint ;
DECLARE @Attack_SQN bigint ;
DECLARE @Group_SQN bigint ;
DECLARE @City_SQN bigint ;
DECLARE @Target_SQN bigint ;
DECLARE @WeaponSubType_SQN bigint ;
DECLARE @PolEcoRelSoc bit ;
DECLARE @LgAudience bit ;
DECLARE @HumanLaw bit ;
DECLARE @Success bit ;
DECLARE @Suicide bit ;
DECLARE @NrPerps int ;
DECLARE @NrPerpsCustody int ;
DECLARE @NrKills int ;
DECLARE @NrWounds int ;
DECLARE @PropDmgCat int ;
DECLARE @PropDmgValue bigint ;
DECLARE @HostageCount int ;
DECLARE @RansomAmount int ;
DECLARE @RansomPaid int ;
DECLARE @HostKidOutcome int ;
DECLARE @IncidentDate date;

-- As SK-k keresesehez
DECLARE @Incident_SK bigint ;
DECLARE @Attack_SK bigint ;
DECLARE @Group_SK bigint ;
DECLARE @City_SK bigint ;
DECLARE @Target_SK bigint ;
DECLARE @WeaponSubType_SK bigint ;
DECLARE @Date_SK bigint;

DECLARE linkCursor CURSOR FOR
SELECT
	l.H_Attack_SQN, l.H_City_SQN, l.H_Group_SQN,
	l.H_Incident_SQN, l.H_Target_SQN, l.H_WeaponSubType_SQN,
	s.PolEcoRelSoc,
	s.LgAudience,
	s.HumanLaw,
	s.Success,
	s.Suicide,
	s.NrPerps,
	s.NrPerpsCustody,
	s.NrKills,
	s.NrWounds,
	s.PropDmgCat,
	s.PropDmgValue,
	s.HostageCount,
	s.RansomAmount,
	s.RansomPaid,
	s.HostKidOutcome,
	s.IncidentDate
FROM LinkIncident_All l, SatIncident s
WHERE
	l.H_Incident_SQN = s.H_Incident_SQN;


OPEN linkCursor;  

-- Perform the first fetch.  
FETCH NEXT FROM linkCursor
INTO @Attack_SQN, @City_SQN, @Group_SQN,
	@Incident_SQN, @Target_SQN, @WeaponSubType_SQN,
	@PolEcoRelSoc,
	@LgAudience,
	@HumanLaw,
	@Success,
	@Suicide,
	@NrPerps,
	@NrPerpsCustody,
	@NrKills,
	@NrWounds,
	@PropDmgCat,
	@PropDmgValue,
	@HostageCount,
	@RansomAmount,
	@RansomPaid,
	@HostKidOutcome,
	@IncidentDate;
-- Check @@FETCH_STATUS to see if there are any more rows to fetch.  
WHILE @@FETCH_STATUS = 0  
BEGIN  
   -- This is executed as long as the previous fetch succeeds.
    SET @Incident_SK= (SELECT di.SK FROM [DM].dbo.DimIncident di
			WHERE di.H_Incident_SQN = @Incident_SQN);

	SET @Attack_SK= (SELECT da.SK FROM [DM].dbo.DimAttack da
			WHERE da.H_Attack_SQN = @Attack_SQN);

	SET @City_SK= (SELECT MAX(dl.SK) FROM [DM].dbo.DimLocation dl
			WHERE dl.H_City_SQN = @City_SQN);

	SET @Group_SK= (SELECT dg.SK FROM [DM].dbo.DimGroup dg
			WHERE dg.H_Group_SQN = @Group_SQN);

	SET @Target_SK= (SELECT MAX(dt.SK) FROM [DM].dbo.DimTarget dt
			WHERE dt.H_Target_SQN = @Target_SQN);

	SET @WeaponSubType_SK= (SELECT MIN(dws.SK) FROM [DM].dbo.DimWeapon dws
			WHERE dws.H_WeaponSubType_SQN = @WeaponSubType_SQN);

	SET @Date_SK= (SELECT dt.SK FROM [DM].dbo.DimDate dt
			WHERE dt.Date = @IncidentDate);

	if @Incident_SK IS NOT NULL AND @Attack_SK is NOT NULL AND @City_SK IS NOT NULL
		AND @Group_SK IS NOT NULL AND @Target_SK IS NOT NULL
		AND @WeaponSubType_SK IS NOT NULL AND @Date_SK IS NOT NULL
	BEGIN
	INSERT INTO [DM].[dbo].[FactAllIncident] (SK, Incident_SK, Attack_SK, Group_SK, 
		City_SK, Target_SK, WeaponSubType_SK, Date_SK,
		PolEcoRelSoc, LgAudience, HumanLaw, Success, Suicide, NrPerps, 
		NrPerpsCustody, NrKills, NrWounds, PropDmgCat, 
		PropDmgValue, HostageCount, RansomAmount, RansomPaid, HostKidOutcome ) VALUES 
		(NEXT VALUE FOR Seq, @Incident_SK, @Attack_SK, @Group_SK,
		@City_SK, @Target_SK, @WeaponSubType_SK, @Date_SK,
		@PolEcoRelSoc, @LgAudience, @HumanLaw, @Success, @Suicide, @NrPerps,
		@NrPerpsCustody, @NrKills, @NrWounds, @PropDmgCat,
		@PropDmgValue, @HostageCount, @RansomAmount, @RansomPaid, @HostKidOutcome);
	END
 FETCH NEXT FROM linkCursor
INTO @Attack_SQN, @City_SQN, @Group_SQN,
	@Incident_SQN, @Target_SQN, @WeaponSubType_SQN,
	@PolEcoRelSoc,
	@LgAudience,
	@HumanLaw,
	@Success,
	@Suicide,
	@NrPerps,
	@NrPerpsCustody,
	@NrKills,
	@NrWounds,
	@PropDmgCat,
	@PropDmgValue,
	@HostageCount,
	@RansomAmount,
	@RansomPaid,
	@HostKidOutcome,
	@IncidentDate;  
END  

CLOSE linkCursor;  
DEALLOCATE linkCursor;  

END
--select count(distinct(city)) from SA.dbo.[OLE DB Destination];