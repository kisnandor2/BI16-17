USE [Error]
GO
/****** Object:  Table [dbo].[ErrorTable]    Script Date: 2017-04-30 8:30:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorTable]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ErrorTable](
	[eventid] [varchar](50) NULL,
	[LDTS] [datetime] NULL,
	[RSRC] [varchar](50) NULL,
	[Phase] [varchar](50) NULL,
	[Component] [varchar](50) NULL,
	[ErrorCode] [int] NULL,
	[ErrorColumn] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
