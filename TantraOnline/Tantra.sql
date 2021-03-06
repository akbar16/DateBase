USE [Tantra]
GO
/****** Object:  Table [dbo].[GMLog]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GMLog](
	[LogIndex] [int] IDENTITY(1,1) NOT NULL,
	[GMID] [char](20) NOT NULL,
	[SaveDate] [datetime] NOT NULL,
	[Description] [varchar](2048) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GMInfo]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GMInfo](
	[GMID] [char](20) NOT NULL,
	[GMPassword] [char](20) NOT NULL,
	[GMName] [char](20) NOT NULL,
	[GMLevel] [smallint] NOT NULL,
	[GMPart] [char](30) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Davao]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Davao](
	[UserID] [nvarchar](255) NULL,
	[CharacterName] [nvarchar](255) NULL,
	[HighestLevel] [decimal](18, 0) NULL,
	[Email] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DavalTBL]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DavalTBL](
	[USERID] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditCardTransactionCount]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CreditCardTransactionCount](
	[CreditCardNumber] [varchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Count] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BitPassTransactions]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BitPassTransactions](
	[id] [uniqueidentifier] NOT NULL,
	[userId] [nvarchar](50) NOT NULL,
	[productId] [int] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [nvarchar](10) NOT NULL,
	[worldForFreeItem] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[Idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NOT NULL,
	[Account] [binary](7124) NULL,
	[World] [tinyint] NOT NULL,
	[Regdate] [datetime] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CharResets]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharResets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](12) NULL,
	[Char1Reset] [numeric](18, 0) NULL,
	[Char2Reset] [numeric](18, 0) NULL,
	[Char3Reset] [numeric](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Character_Tribe]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Character_Tribe](
	[Statistics_ID] [int] IDENTITY(1,1) NOT NULL,
	[World_Index] [tinyint] NOT NULL,
	[Level_Index] [smallint] NOT NULL,
	[Trimuriti_Index] [tinyint] NOT NULL,
	[Tribe_Index] [tinyint] NOT NULL,
	[Tribe_Count] [int] NOT NULL,
	[RegDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameInfo05]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameInfo05](
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameInfo04]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameInfo04](
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameInfo03]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameInfo03](
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](20) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameInfo02]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameInfo02](
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameInfo01]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameInfo01](
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GameInfo00]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GameInfo00](
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](20) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fellowship_TribeRewardItemList]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fellowship_TribeRewardItemList](
	[Level] [nvarchar](3) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitsPerQuantity] [int] NOT NULL,
	[ImageUrl] [nvarchar](50) NULL,
	[RewardQuantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fellowship_TribeNames]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fellowship_TribeNames](
	[UserId] [varchar](50) NOT NULL,
	[TribeName] [varchar](50) NOT NULL,
	[MemberCount] [int] NOT NULL,
	[Members40] [int] NOT NULL,
	[Members45] [int] NOT NULL,
	[Members60] [int] NOT NULL,
	[Rewards40] [int] NOT NULL,
	[Rewards45] [int] NOT NULL,
	[Rewards60] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fellowship_TribeMember]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fellowship_TribeMember](
	[MemberId] [varchar](50) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[DateReg] [datetime] NOT NULL,
	[BaseLevel] [int] NOT NULL,
	[HighestLevel] [int] NULL,
	[Reward1] [smallint] NOT NULL,
	[Reward2] [smallint] NOT NULL,
	[Reward05] [bit] NOT NULL,
	[Reward10] [bit] NOT NULL,
	[Reward15] [bit] NOT NULL,
	[Reward20] [bit] NOT NULL,
	[Reward25] [bit] NOT NULL,
	[Reward30] [bit] NOT NULL,
	[Reward35] [bit] NOT NULL,
	[Reward40] [bit] NOT NULL,
	[Reward40a] [bit] NOT NULL,
	[Reward45] [bit] NOT NULL,
	[Reward50] [bit] NOT NULL,
	[Reward52] [bit] NOT NULL,
	[Reward54] [bit] NOT NULL,
	[Reward56] [bit] NOT NULL,
	[Reward58] [bit] NOT NULL,
	[Reward60] [bit] NOT NULL,
	[OldBaseLevel] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fellowship_Reward]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fellowship_Reward](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[ItemId] [varchar](50) NOT NULL,
	[Claimed] [int] NOT NULL,
	[DateClaimed] [datetime] NULL,
	[World] [int] NULL,
	[Description] [varchar](100) NULL,
	[Level] [nvarchar](3) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Fellowship_Invite]    Script Date: 09/21/2014 17:59:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Fellowship_Invite](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[MemberId] [varchar](50) NOT NULL,
	[Accepted] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[dnn_TantraGetRankingsLvl]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dnn_TantraGetRankingsLvl]

@World VARCHAR(20),
@Number INT,
@God SMALLINT



AS

PRINT @God 
DECLARE @SSQL AS NVARCHAR(1000)

IF @God IS NULL OR @God = 0 -- means search all
BEGIN
	SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
	CASE Trimurity WHEN 1 THEN ''Brahma''
	WHEN 2 THEN ''Vishnu''
	WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
	WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
	WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
	WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
	WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
	' WITH (NOLOCK) WHERE Trimurity IN (1,2,4) and Tribe IN (1,4,16,64,2,8,32,128)
	ORDER BY CharacterLevel DESC'
END
ELSE
BEGIN
	SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
	CASE Trimurity WHEN 1 THEN ''Brahma''
	WHEN 2 THEN ''Vishnu''
	WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
	WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
	WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
	WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
	WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
	' WITH (NOLOCK) WHERE Trimurity = ' + CAST(@God AS VARCHAR) + ' AND Tribe IN (1,4,16,64,2,8,32,128)
	ORDER BY CharacterLevel DESC'
END
--PRINT @SSQL
EXEC(@SSQL)
GO
/****** Object:  StoredProcedure [dbo].[dnn_TantraGetRankings_2]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dnn_TantraGetRankings_2]

@World VARCHAR(20),
@Number INT,
@GodSearch VARCHAR(20),
@TribeSearch VARCHAR(50),
@CharacterName VARCHAR(40)

AS

--PRINT @GodSearch 
DECLARE @SSQL AS NVARCHAR(1000)

	IF (@GodSearch IS NULL OR @GodSearch = '') AND (@TribeSearch IS NULL OR @TribeSearch = '') AND (@CharacterName IS NULL OR @CharacterName = '') -- means search all regardless of God or Tribe
	BEGIN
		SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
		CASE Trimurity WHEN 1 THEN ''Brahma''
		WHEN 2 THEN ''Vishnu''
		WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
		WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
		WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
		WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
		WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
		' WITH (NOLOCK) WHERE Trimurity IN(1,2,4) and Tribe IN(1,4,16,64,2,8,32,128)
		ORDER BY BrahmanPoint DESC'
	END
	ELSE IF (@GodSearch IS NOT NULL OR @GodSearch <> '') AND (@TribeSearch IS NULL OR @TribeSearch = '') AND (@CharacterName IS NULL OR @CharacterName = '') -- means search God regardless of Tribe
	BEGIN
		SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
		CASE Trimurity WHEN 1 THEN ''Brahma''
		WHEN 2 THEN ''Vishnu''
		WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
		WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
		WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
		WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
		WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
		' WITH (NOLOCK) WHERE Trimurity IN(' + @GodSearch + ') AND Tribe IN(1,4,16,64,2,8,32,128)
		ORDER BY BrahmanPoint DESC'
	END
	ELSE IF (@GodSearch IS NULL OR @GodSearch = '') AND (@TribeSearch IS NOT NULL OR @TribeSearch <> '') AND (@CharacterName IS NULL OR @CharacterName = '') -- means search tribes regardless of God
	BEGIN
		SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
		CASE Trimurity WHEN 1 THEN ''Brahma''
		WHEN 2 THEN ''Vishnu''
		WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
		WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
		WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
		WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
		WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
		' WITH (NOLOCK) WHERE Trimurity IN(1,2,4) AND Tribe IN(' + @TribeSearch + ')
		ORDER BY BrahmanPoint DESC'
	END
	ELSE IF @CharacterName IS NOT NULL AND @CharacterName <> ''
	BEGIN
		SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
		CASE Trimurity WHEN 1 THEN ''Brahma''
		WHEN 2 THEN ''Vishnu''
		WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
		WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
		WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
		WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
		WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
		' WITH (NOLOCK) WHERE Trimurity IN(1,2,4) and Tribe IN(1,4,16,64,2,8,32,128) AND CharacterName LIKE ''' + @CharacterName + '%''
		ORDER BY BrahmanPoint DESC'
	END
	ELSE
	BEGIN
		SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
		CASE Trimurity WHEN 1 THEN ''Brahma''
		WHEN 2 THEN ''Vishnu''
		WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
		WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
		WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
		WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
		WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
		' WITH (NOLOCK) WHERE Trimurity IN(' + @GodSearch + ') AND Tribe IN(' + @TribeSearch + ')
		ORDER BY BrahmanPoint DESC'
	END


--PRINT @SSQL
EXEC(@SSQL)
GO
/****** Object:  StoredProcedure [dbo].[dnn_TantraGetRankings]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[dnn_TantraGetRankings]

@World VARCHAR(20),
@Number INT,
@God SMALLINT



AS

PRINT @God 
DECLARE @SSQL AS NVARCHAR(1000)

IF @God IS NULL OR @God = 0 -- means search all
BEGIN
	SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
	CASE Trimurity WHEN 1 THEN ''Brahma''
	WHEN 2 THEN ''Vishnu''
	WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
	WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
	WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
	WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
	WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
	' WITH (NOLOCK) WHERE Trimurity IN (1,2,4) and Tribe IN (1,4,16,64,2,8,32,128)
	ORDER BY BrahmanPoint DESC'
END
ELSE
BEGIN
	SET @SSQL = 'SELECT TOP ' + CAST(@Number AS VARCHAR) + ' Charactername, CharacterLevel, BrahmanPoint, CASE GuildName WHEN '''' THEN ''No Ashram'' ELSE GuildName END AS GuildName,
	CASE Trimurity WHEN 1 THEN ''Brahma''
	WHEN 2 THEN ''Vishnu''
	WHEN 4 THEN ''Shiva'' ELSE ''No God'' END AS God, CASE Tribe WHEN 1 THEN ''Naga''
	WHEN 2 THEN ''Kimnara'' WHEN 4 THEN ''Asura''
	WHEN 8 THEN ''Rakshasa'' WHEN 16 THEN ''Yaksa''
	WHEN 32 THEN ''Gandharva'' WHEN 64 THEN ''Deva''
	WHEN 128 THEN ''Garuda'' END AS Race,Trimurity,Tribe FROM Tantra.dbo.' + @World +
	' WITH (NOLOCK) WHERE Trimurity = ' + CAST(@God AS VARCHAR) + ' AND Tribe IN (1,4,16,64,2,8,32,128)
	ORDER BY BrahmanPoint DESC'
END
--PRINT @SSQL
EXEC(@SSQL)
GO
/****** Object:  Table [dbo].[Item_RefineLevel]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_RefineLevel](
	[Statistics_ID] [int] NOT NULL,
	[Refine_Level] [tinyint] NOT NULL,
	[Item_Count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_RefineItem]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_RefineItem](
	[Statistics_ID] [int] NOT NULL,
	[RefineItemIndex] [int] NOT NULL,
	[RefineItemCount] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Cash]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Cash](
	[Statistics_ID] [int] NOT NULL,
	[CashItemIndex] [int] NOT NULL,
	[CashItemCount] [int] NOT NULL,
	[CashItemCost] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item_Armor]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_Armor](
	[Statistics_ID] [int] NOT NULL,
	[Item_Level] [smallint] NOT NULL,
	[Item_Count] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IPRANGE2]    Script Date: 09/21/2014 17:59:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPRANGE2](
	[LOGID] [float] NULL,
	[ID] [float] NULL,
	[EMAIL] [nvarchar](255) NULL,
	[USERID] [nvarchar](255) NULL,
	[IP] [nvarchar](255) NULL,
	[DATE] [smalldatetime] NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[IPToCountry]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE FUNCTION [dbo].[IPToCountry] (@IPAddress varchar(50))  
RETURNS varchar(100) AS  
BEGIN 

Declare @IPNumber bigint, @i int, @ilast int, @country varchar(100)
--SET @IPAddress = '222.126.37.173'

SET @i = 0
SET @i = CharIndex('.',@IPAddress)
SET @IPNumber = CAST(SUBSTRING(@IPAddress,1,@i -1) AS bigint) * (256*256*256)
SET @ilast = @i 
SET @i = CharIndex('.',@IPAddress,@ilast + 1)
SET @IPNumber = @IPNumber + CAST(SUBSTRING(@IPAddress,@ilast + 1,@i - @ilast - 1) AS bigint) * (256*256)
SET @ilast = @i 
SET @i = CharIndex('.',@IPAddress,@ilast + 1)
SET @IPNumber = @IPNumber + CAST(SUBSTRING(@IPAddress,@ilast + 1,@i - @ilast - 1) AS bigint) * (256)
SET @ilast = @i 
SET @IPNumber = @IPNumber + CAST(SUBSTRING(@IPAddress,@ilast + 1,len(@IPAddress) - @ilast ) AS bigint)

SELECT @country = [Country] FROM [dbo].[IPLookup] 
WHERE [IP_From] <= @IPNumber and [IP_To] >= @IPNumber

Return @country

END
GO
/****** Object:  Table [dbo].[MaxLevel_Table]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MaxLevel_Table](
	[INDEX] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PayPlusTransactions]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayPlusTransactions](
	[ticketId] [nvarchar](50) NOT NULL,
	[userId] [nvarchar](50) NOT NULL,
	[productId] [int] NOT NULL,
	[amount] [decimal](18, 2) NOT NULL,
	[date] [datetime] NOT NULL,
	[status] [nvarchar](10) NOT NULL,
	[transactionCode] [nvarchar](50) NOT NULL,
	[worldForFreeItem] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TantraMail]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraMail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [varchar](25) NOT NULL,
	[Content] [varchar](256) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraItemtest]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraItemtest](
	[World] [int] NOT NULL,
	[Account] [varchar](50) NOT NULL,
	[ItemIndex] [int] NOT NULL,
	[ItemCount] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraItem_historico]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraItem_historico](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Mundo] [int] NULL,
	[Account] [varchar](50) NULL,
	[ItemIndex] [int] NULL,
	[ItemCount] [nchar](10) NULL,
	[Fecha] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraItem]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[World] [int] NOT NULL,
	[Account] [varchar](50) NOT NULL,
	[ItemIndex] [int] NOT NULL,
	[ItemCount] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraBackup05]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraBackup05](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildId] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
	[Account] [binary](7124) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraBackup04]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraBackup04](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildId] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
	[Account] [binary](7124) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraBackup03]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraBackup03](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](52) NOT NULL,
	[CharacterName] [varchar](20) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](20) NULL,
	[GuildID] [int] NOT NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](20) NULL,
	[Name2] [varchar](20) NULL,
	[Name3] [varchar](20) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
	[Account] [binary](7124) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraBackup02]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraBackup02](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildId] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
	[Account] [binary](7124) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraBackup01]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraBackup01](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](40) NULL,
	[GuildId] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
	[Account] [binary](7124) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraBackup00_backup]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraBackup00_backup](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](20) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
	[Account] [binary](7124) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraBackup00]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TantraBackup00](
	[idx] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](40) NOT NULL,
	[CharacterName] [varchar](40) NOT NULL,
	[CharacterLevel] [smallint] NOT NULL,
	[BrahmanPoint] [int] NOT NULL,
	[MBrahmanPoint] [int] NOT NULL,
	[Tribe] [smallint] NOT NULL,
	[Trimurity] [smallint] NOT NULL,
	[GuildName] [varchar](20) NULL,
	[GuildID] [int] NULL,
	[GuildRank] [smallint] NOT NULL,
	[curtime] [datetime] NOT NULL,
	[Name1] [varchar](40) NULL,
	[Name2] [varchar](40) NULL,
	[Name3] [varchar](40) NULL,
	[Level1] [smallint] NOT NULL,
	[Level2] [smallint] NOT NULL,
	[Level3] [smallint] NOT NULL,
	[TotalMoney] [float] NOT NULL,
	[Blocked] [tinyint] NOT NULL,
	[Account] [binary](7124) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TantraAccount03]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TantraAccount03](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](12) NULL,
	[Char1Reset] [numeric](18, 0) NULL,
	[Char2Reset] [numeric](18, 0) NULL,
	[Char3Reset] [numeric](18, 0) NULL,
	[CashBP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TantraAccount02]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TantraAccount02](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](12) NULL,
	[Char1Reset] [numeric](18, 0) NULL,
	[Char2Reset] [numeric](18, 0) NULL,
	[Char3Reset] [numeric](18, 0) NULL,
	[CashBP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TantraAccount01]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TantraAccount01](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](12) NULL,
	[Char1Reset] [numeric](18, 0) NULL,
	[Char2Reset] [numeric](18, 0) NULL,
	[Char3Reset] [numeric](18, 0) NULL,
	[CashBP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TantraAccount00]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TantraAccount00](
	[Account] [nvarchar](20) NULL,
	[Char1Reset] [int] NULL,
	[Char2Reset] [int] NULL,
	[Char3Reset] [int] NULL,
	[CashBP] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCreditCardTransactionCount]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCreditCardTransactionCount](
	[UserId] [nvarchar](50) NOT NULL,
	[Date] [datetime] NOT NULL,
	[Count] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[dbNotify_FullDatabaseBackup]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Proc [dbo].[dbNotify_FullDatabaseBackup]    
as    
/*         
   Description: Script to notify success backup via email    
   Usage: Monitoring DB Backup    
         
*/          
    
Declare @Msg nvarchar(4000)    
Declare @Date1 smalldatetime    
Declare @Priority nvarchar(10)    
Declare @Subject nvarchar(200)    
Declare @Logfile nvarchar(1000)    
    
set @Subject = 'Tabtra s: Database Full Backup Report ' + convert(nvarchar(100),getdate(), 100)    
--set @LogFile = 'E:\Backup.log'    
    
Set @Msg = '    
Dear Administrators, 
    
  Tantra Full Database has been backed up successfully for @Date1.:    
    
Thank You, 
   
Webdb01 Server   /  DBA
    
NOTE: This is a system generated email, please do not reply.    
    
'    
    
    
    
set @Msg = Replace(@Msg,'@Date1',convert(datetime,getdate(),130))    
    
    
Print @Msg    
    
    
    
declare @rc int    
exec @rc = master.dbo.xp_smtp_sendmail    
    @FROM       = N'tantradb@tantra.com.ph',    
    @FROM_NAME  = N'WEBDB01 Server',    
    @replyto    = N'francis_delrosario@abs.pinoycentral.com,ryan_samaniego@abs.pinoycentral.com,allan_lacson@abs.pinoycentral.com,zosimo_carlos@abs.pinoycentral.com',
    @TO         = N'francis_delrosario@abs.pinoycentral.com,ryan_samaniego@abs.pinoycentral.com,allan_lacson@abs.pinoycentral.com,zosimo_carlos@abs.pinoycentral.com' ,       
    @CC         = N'rommel_cuya@abs.pinoycentral.com',  
    @priority   = N'Normal',    
    @subject    = @Subject ,    
    @type       = N'text/plain',    
    @message    = @Msg,    
    @attachment = @LogFile,    
    @timeout    = 10000,    
    @server     = N'203.115.180.11'
GO
/****** Object:  StoredProcedure [dbo].[dbNotify_Diskspace]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Proc [dbo].[dbNotify_Diskspace]    
as    
/*         
   Description: Script to notify success backup via email    
   Usage: Monitoring DB Backup    
         
*/          
    
Declare @Msg nvarchar(4000)    
Declare @Date1 smalldatetime    
Declare @Priority nvarchar(10)    
Declare @Subject nvarchar(200)    
Declare @Logfile nvarchar(1000)    
    
set @Subject = 'Webdb01 s: Hardisk Space Report ' + convert(nvarchar(100),getdate(), 100)    
--set @LogFile = 'E:\Backup.log'    
    
Set @Msg = '    
Dear Administrators, 
    
  Please be informed that Webdb01 server is running out of disk space.(Less than 3 GB)  .:    
    
Thank You, 
   
Webdb01 Server   /  DBA
    
NOTE: This is a system generated email, please do not reply.    
    
'    
    
    
    
set @Msg = Replace(@Msg,'@Date1',convert(datetime,getdate(),130))    
    
    
Print @Msg    
    
    
    
declare @rc int    
exec @rc = master.dbo.xp_smtp_sendmail    
    @FROM       = N'tantradb@tantra.com.ph',    
    @FROM_NAME  = N'WEBDB01 Server',    
    @replyto    = N'francis_delrosario@abs.pinoycentral.com,ryan_samaniego@abs.pinoycentral.com,allan_lacson@abs.pinoycentral.com,zosimo_carlos@abs.pinoycentral.com',
    @TO         = N'francis_delrosario@abs.pinoycentral.com,ryan_samaniego@abs.pinoycentral.com,allan_lacson@abs.pinoycentral.com,zosimo_carlos@abs.pinoycentral.com' ,       
    @CC         = N'rommel_cuya@abs.pinoycentral.com',  
    @priority   = N'Normal',    
    @subject    = @Subject ,    
    @type       = N'text/plain',    
    @message    = @Msg,    
    @attachment = @LogFile,    
    @timeout    = 10000,    
    @server     = N'203.115.180.11'
GO
/****** Object:  StoredProcedure [dbo].[dbNotify_DatabaseBackup]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE Proc [dbo].[dbNotify_DatabaseBackup]    
as    
/*         
   Description: Script to notify success backup via email    
   Usage: Monitoring DB Backup    
         
*/          
    
Declare @Msg nvarchar(4000)    
Declare @Date1 smalldatetime    
Declare @Priority nvarchar(10)    
Declare @Subject nvarchar(200)    
Declare @Logfile nvarchar(1000)    
    
set @Subject = 'tantradb s: Database Log Backup Report ' + convert(nvarchar(100),getdate(), 100)    
--set @LogFile = 'E:\Backup.log'    
    
Set @Msg = '    
Dear Administrators, 
    
  Tantra db has been backed up successfully for @Date1.:    
    
Thank You, 
   
Webdb01 Server   /  DBA
    
NOTE: This is a system generated email, please do not reply.    
    
'    
    
    
    
set @Msg = Replace(@Msg,'@Date1',convert(datetime,getdate(),130))    
    
    
Print @Msg    
    
    
    
declare @rc int    
exec @rc = master.dbo.xp_smtp_sendmail    
    @FROM       = N'tantradb@tantra.com.ph',    
    @FROM_NAME  = N'WEBDB01 Server',    
    @replyto    = N'francis_delrosario@abs.pinoycentral.com,ryan_samaniego@abs.pinoycentral.com,allan_lacson@abs.pinoycentral.com,zosimo_carlos@abs.pinoycentral.com',
    @TO         = N'francis_delrosario@abs.pinoycentral.com,ryan_samaniego@abs.pinoycentral.com,allan_lacson@abs.pinoycentral.com,zosimo_carlos@abs.pinoycentral.com' ,       
    @CC         = N'rommel_cuya@abs.pinoycentral.com',  
    @priority   = N'Normal',    
    @subject    = @Subject ,    
    @type       = N'text/plain',    
    @message    = @Msg,    
    @attachment = @LogFile,    
    @timeout    = 10000,    
    @server     = N'203.115.180.11'
GO
/****** Object:  Table [dbo].[newplayer]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[newplayer](
	[memberid] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Regtbl]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Regtbl](
	[Registerd] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TopUpFreeItemsNew]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopUpFreeItemsNew](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitQuantity] [int] NOT NULL,
	[DateClaimed] [datetime] NOT NULL,
	[World] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopUpFreeItems]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopUpFreeItems](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[ItemId] [int] NOT NULL,
	[Claimed] [bit] NOT NULL,
	[DateClaimed] [datetime] NULL,
	[World] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TMP_ATENEO]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TMP_ATENEO](
	[EMAIL] [nvarchar](255) NULL,
	[USERID] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempTantraItem]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TempTantraItem](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[world] [int] NOT NULL,
	[account] [varchar](50) NOT NULL,
	[itemindex] [int] NOT NULL,
	[itemcount] [smallint] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[TempInsertTantraItem]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TempInsertTantraItem] 
(  
  @world as Int,
  @account as varchar(50),
  @itemIndex as int,
  @itemCount as int
)
as
  insert into dbo.TempTantraItem (world, account, itemIndex, itemcount) values (@world, @account, @itemIndex, @itemCount)

  if @@Error = 0
    return @@Identity
  else
    return -1
GO
/****** Object:  StoredProcedure [dbo].[Purge_account]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Purge_account] AS

delete from tantra.dbo.account where regdate <= getdate() - 7
GO
/****** Object:  StoredProcedure [dbo].[PopulateRank04]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[PopulateRank04] AS
delete from GameInfo04
insert into GameInfo04(UserID,CharacterName,CharacterLevel,
BrahmanPoint,Tribe,Trimurity,GuildName,GuildID,GuildRank,curtime,
Name1,Name2,Name3,Level1,Level2,Level3,TotalMoney) select UserID,
CharacterName,CharacterLevel,BrahmanPoint,Tribe,Trimurity,GuildName,
GuildID,GuildRank,curtime,Name1,Name2,Name3,Level1,Level2,Level3,
TotalMoney from TantraBackup04
GO
/****** Object:  StoredProcedure [dbo].[PopulateRank03]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[PopulateRank03] AS
delete from GameInfo03
insert into GameInfo03(UserID,CharacterName,CharacterLevel,
BrahmanPoint,Tribe,Trimurity,GuildName,GuildID,GuildRank,curtime,
Name1,Name2,Name3,Level1,Level2,Level3,TotalMoney) select UserID,
CharacterName,CharacterLevel,BrahmanPoint,Tribe,Trimurity,GuildName,
GuildID,GuildRank,curtime,Name1,Name2,Name3,Level1,Level2,Level3,
TotalMoney from TantraBackup03
GO
/****** Object:  StoredProcedure [dbo].[PopulateRank02]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[PopulateRank02] AS
delete from GameInfo02
insert into GameInfo02(UserID,CharacterName,CharacterLevel,
BrahmanPoint,Tribe,Trimurity,GuildName,GuildID,GuildRank,curtime,
Name1,Name2,Name3,Level1,Level2,Level3,TotalMoney) select UserID,
CharacterName,CharacterLevel,BrahmanPoint,Tribe,Trimurity,GuildName,
GuildID,GuildRank,curtime,Name1,Name2,Name3,Level1,Level2,Level3,
TotalMoney from TantraBackup02
GO
/****** Object:  StoredProcedure [dbo].[PopulateRank01]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[PopulateRank01] AS
delete from GameInfo01
insert into GameInfo01(UserID,CharacterName,CharacterLevel,
BrahmanPoint,Tribe,Trimurity,GuildName,GuildID,GuildRank,curtime,
Name1,Name2,Name3,Level1,Level2,Level3,TotalMoney) select UserID,
CharacterName,CharacterLevel,BrahmanPoint,Tribe,Trimurity,GuildName,
GuildID,GuildRank,curtime,Name1,Name2,Name3,Level1,Level2,Level3,
TotalMoney from TantraBackup01
GO
/****** Object:  StoredProcedure [dbo].[PopulateRank00]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE  [dbo].[PopulateRank00] AS
delete from GameInfo00
insert into GameInfo00(UserID,CharacterName,CharacterLevel,
BrahmanPoint,Tribe,Trimurity,GuildName,GuildID,GuildRank,curtime,
Name1,Name2,Name3,Level1,Level2,Level3,TotalMoney) select UserID,
CharacterName,CharacterLevel,BrahmanPoint,Tribe,Trimurity,GuildName,
GuildID,GuildRank,curtime,Name1,Name2,Name3,Level1,Level2,Level3,
TotalMoney from TantraBackup00
GO
/****** Object:  StoredProcedure [dbo].[PayPlusUpdateTransaction]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[PayPlusUpdateTransaction] 
(
  @ticketId as nvarchar(50),
  @userId as nvarchar(50),
  @status as nvarchar(10),
  @transactionCode as nvarchar(50),
  @date as datetime
)

as

update dbo.PayPlusTransactions
set status = @status, transactionCode = @transactionCode, [date] = @date
where ticketId = @ticketId and userId=@userId

return
GO
/****** Object:  StoredProcedure [dbo].[TribeGrantMemberRewardByLevel]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TribeGrantMemberRewardByLevel]
@memberId as nvarchar(50),
@baseLevel as int,
@highestLevel as int,
@thisLevel as int,
@thisLevelName as nvarchar(3),
@isRewarded as bit
as

declare @itemId as int
if @highestLevel >= @thisLevel and @baseLevel < @thisLevel and @isRewarded = 0
  begin
    select @itemId=itemId from Fellowship_TribeRewardItemList where [level]= @thisLevelName
    print @itemId
    insert into Fellowship_Reward 
      (userId, itemId, claimed, dateclaimed, world, [description], [level]) 
      VALUES 
      (@memberId, @itemId, 0, null, null, 'Reward for reaching Level ' + @thisLevelName, @thisLevelName)
    execute (N'update Fellowship_TribeMember set reward' + @thisLevelName + ' = 1 where memberId=''' + @memberId +'''')
  end
GO
/****** Object:  StoredProcedure [dbo].[TribeGrantChiefRewards]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[TribeGrantChiefRewards]
	@chieftain nvarchar(50)
AS

declare @rewards40 as int
declare @rewards45 as int
declare @rewards60 as int
declare @members45 as int
declare @members60 as int

declare @count as int
select @count = count(*) from fellowship_tribeNames where userId=@chiefTain
if @count = 0
  insert into fellowship_tribeNames (userId, tribeName) values (@chiefTain, @chiefTain) 

update fellowship_tribeNames set 
@rewards40 = rewards40 = (select count(*) from fellowship_reward where level='40a' and userId = fellowship_tribeNames.UserId),
@rewards45 = rewards45 = (select count(*) from fellowship_reward where level='45a' and userId = fellowship_tribeNames.UserId),
@rewards60 = rewards60 = (select count(*) from fellowship_reward where level='60a' and userId = fellowship_tribeNames.UserId),
memberCount = (select count(*) from fellowship_tribemember where userid = fellowship_tribeNames.UserId),
members40 = (select count(*) from fellowship_tribemember where userid = fellowship_tribeNames.UserId and highestLevel>=40),
@members45 = members45 = (select count(*) from fellowship_tribemember where userid = fellowship_tribeNames.UserId and highestLevel>=45),
@members60 = members60 = (select count(*) from fellowship_tribemember where userid = fellowship_tribeNames.UserId and highestLevel>=60)
where userId=@chiefTain

-- Grant level 40 rewards
declare @memberId as varchar(50)
declare @desc as varchar(100)
declare @itemId as integer
select @itemId=itemId from Fellowship_TribeRewardItemList where [level]= '40a'

declare members CURSOR FOR
select memberId from Fellowship_Tribemember where userId=@chieftain and highestLevel >= 40 and Reward40a=0
open members
fetch next from members INTO @memberId
while @@FETCH_STATUS=0
begin

  set @desc='Reward for Tribe Member '+ @memberId + ' reaching Level 40'
  insert into fellowship_reward 
    (userid, itemid, claimed, dateclaimed, world, [description], [level]) 
    values
    (@chiefTain, @itemId, 0, null, null, @desc, '40a')
  update Fellowship_TribeMember set reward40a=1 where memberId=@memberId
  fetch next from members INTO @memberId
end
close members
deallocate members

declare @counter as int
-- Grant level 45 rewards
select @itemId=itemId from Fellowship_TribeRewardItemList where [level]= '45a'
declare @chiefRewards as int
set @chiefRewards = @members45/5 - @rewards45
set @counter = 0
while @counter < @chiefRewards
  begin
    insert into fellowship_reward 
      (userid, itemid, claimed, dateclaimed, world, [description], [level]) 
      values
      (@chiefTain, @itemId, 0, null, null, 'Reward for FIVE(5) Tribe Members reaching Level 45', '45a')   
    set @counter = @counter + 1
  end

-- Grant level 60 rewards
select @itemId=itemId from Fellowship_TribeRewardItemList where [level]= '60a'
set @chiefRewards = @members60/7 - @rewards60
set @counter = 0
while @counter < @chiefRewards
  begin
    insert into fellowship_reward 
      (userid, itemid, claimed, dateclaimed, world, [description], [level]) 
      values
      (@chiefTain, @itemId, 0, null, null, 'Reward for SEVEN(7) Tribe Members reaching Level 60', '60a')   
    set @counter = @counter + 1
  end
GO
/****** Object:  StoredProcedure [dbo].[TribeGetUserRewardsForClaiming]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[TribeGetUserRewardsForClaiming]
@userId as nvarchar(50)
as

select ItemId, (select top 1 itemName from Fellowship_TribeRewardItemList where itemId=Fellowship_Reward.itemId) as ItemDescription, 
count(*) as [Count] 
from fellowship_reward 
where userid=@userId and claimed=0
group by itemId
GO
/****** Object:  UserDefinedFunction [dbo].[TribeGetName]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[TribeGetName]
  (@userId as varchar(50))
returns varchar(50)
as
begin
  declare @tribeName as varchar(50)
  select @tribeName=tribeName from dbo.Fellowship_TribeNames where userId=@userId
  if @@RowCount=0
    set @tribeName=@userId
  return @tribeName
end
GO
/****** Object:  StoredProcedure [dbo].[TribeSetName]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TribeSetName] 
  @userId as varchar(50),
  @tribeName as varchar(50)
as

declare @count as integer

select @count = count(*) from dbo.Fellowship_TribeNames 
  where tribeName=@tribeName and userId <> @userId

if @count=0
  begin
    update dbo.Fellowship_TribeNames set TribeName = @tribeName
    if @@RowCount = 0
      insert into dbo.Fellowship_TribeNames (userId, tribeName) values (@userId, @tribeName)
    return 0
  end
else
  return 1
GO
/****** Object:  StoredProcedure [dbo].[tribememberLevel_sp]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[tribememberLevel_sp]
@Levelx Numeric,
@Levelxx Numeric
 AS


SELECT     MemberId,UserID,Baselevel,HIghestlevel
FROM         Fellowship_TribeMember
WHERE     (HighestLevel between @Levelx and @levelxx)
Order By Userid
GO
/****** Object:  StoredProcedure [dbo].[TribeMemberAdd]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[TribeMemberAdd]
	@MemberId	nvarchar(50),
	@UserId	nvarchar(50),
	@DateReg	datetime,
	@Base		int,
	@Highest	int,
	@result int output
AS 
 SET @result = 0
 SET NOCOUNT ON

 INSERT INTO Fellowship_TribeMember (MemberId,  UserId, DateReg, BaseLevel, HighestLevel, Reward1, Reward2)
  VALUES (@MemberId,  @UserId, @DateReg, @Base, @Highest, 0, 0) /* 0 Default values 	*/
  IF @@ERROR <> 0
	SET @result = -99 --DB SP Error
GO
/****** Object:  StoredProcedure [dbo].[TribeInviteAdd]    Script Date: 09/21/2014 17:59:46 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[TribeInviteAdd]
	@UserId		nvarchar(50),
	@MemberId	nvarchar(50),
	@result int output
AS 
 SET @result = 0
 SET NOCOUNT ON


IF NOT EXISTS (SELECT * FROM Fellowship_Invite WHERE UserId = @UserId AND MemberId=@MemberId)
BEGIN
 INSERT INTO Fellowship_Invite (UserId,  MemberId, 
	Accepted)
  VALUES (@UserId,  @MemberId, 0) /* 0 Default value "Pending"	*/
  IF @@ERROR <> 0
	SET @result = -99 --DB SP Error
END
GO
/****** Object:  View [dbo].[MaxLevel_View]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MaxLevel_View]
AS
SELECT DISTINCT TOP 100 PERCENT UserID, MAX(CharacterLevel) AS Expr1
FROM         dbo.MaxLevel_Table
GROUP BY UserID
ORDER BY UserID
GO
/****** Object:  View [dbo].[vw_maxlevel]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_maxlevel]
AS
SELECT     UserID, MAX(CharacterLevel) AS CharacterLevel
FROM         dbo.MaxLevel_Table
GROUP BY UserID
GO
/****** Object:  StoredProcedure [dbo].[spTrapExtreme]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spTrapExtreme](@god as integer) as
SELECT TOP 248 characterName, CharacterLevel, brahmanPoint,
CASE guildName WHEN '' THEN 'No Guild'
ELSE guildName END AS guildName,
CASE triMurity WHEN 1 THEN 'Brahma'
WHEN 2 THEN 'Vishnu'
WHEN 4 THEN 'Shiva'
END AS Gods,
CASE tribe WHEN 1 THEN 'Naga'
WHEN 2 THEN 'Kimnara'
WHEN 4 THEN 'Asura'
WHEN 8 THEN 'Rakshasa'
WHEN 16 THEN 'Yaksa'
WHEN 32 THEN 'Gandharva'
WHEN 64 THEN 'Deva'
WHEN 128 THEN 'Garuda'
END AS Tribe
--triMurity, tribe
FROM TantraBackup04
WHERE triMurity = @god
AND tribe IN (1,4,16,64,2,8,32,128)
ORDER BY brahmanPoint DESC
GO
/****** Object:  StoredProcedure [dbo].[payplustran_sp]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[payplustran_sp]
@Month int,
@date int

AS

select * from tantra.dbo.PayPlusTransactions
 where month(tantra.dbo.PayPlusTransactions.[date]) = @month
  and day(tantra.dbo.PayPlusTransactions.[date]) = @date
GO
/****** Object:  StoredProcedure [dbo].[PayPlusGetTransaction]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[PayPlusGetTransaction] 
(
  @ticketId as nvarchar(50),
  @userId as nvarchar(50),
  @productId as int output,
  @amount as decimal(18,2) output,
  @world as smallint output,
  @status as nvarchar(10) output
)

as

select @productId=productId, @amount=amount, @world=worldForFreeItem, @status=status from dbo.PayPlusTransactions where ticketId=@ticketId and userId=@userId


return
GO
/****** Object:  StoredProcedure [dbo].[PayPlusCreateTransaction]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PayPlusCreateTransaction] 
(
  @ticketId as nvarchar(50),
  @userId as nvarchar(50),
  @productId as int,
  @amount as decimal(18,2),
  @date as datetime,
  @world as smallInt
)

as

insert into dbo.PayPlusTransactions
(ticketId, userId, productId, amount, [date], status, transactionCode, worldForFreeItem)
values
(@ticketId, @userId, @productId, @amount, @date, '', '', @world)

return
GO
/****** Object:  StoredProcedure [dbo].[K3P_getCharacterCount]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[K3P_getCharacterCount]

@username VARCHAR(40),
@characterLevel SMALLINT,
@returnCode INT OUTPUT

AS

DECLARE @World1 INTEGER,
@World2 INTEGER,
@World3 INTEGER

SET @returnCode = 0
SET @World1 = 0
SET @World2 = 0
SET @World3 = 0

SELECT @World1 = COUNT(UserID) FROM TantraBackup01
WHERE UserID = @username
AND characterLevel >= @characterLevel

SELECT @World2 = COUNT(UserID) FROM TantraBackup02
WHERE UserID = @username
AND characterLevel >= @characterLevel

SELECT @World3 = COUNT(UserID) FROM TantraBackup03
WHERE UserID = @username
AND characterLevel >= @characterLevel

SET @returnCode = @World1 + @World2 + @World3 + @returnCode

RETURN @returnCode
GO
/****** Object:  StoredProcedure [dbo].[k3a_SearchCharacter]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[k3a_SearchCharacter]

@Keyword VARCHAR(50),
@SearchType INT,
@world INT

AS

IF @SearchType = 1
BEGIN
	IF (@world = 1)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup01 WITH (NOLOCK) WHERE CharacterName  LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
	ELSE IF (@world = 2)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup02 WITH (NOLOCK) WHERE CharacterName LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
	ELSE IF (@world = 3)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup03 WITH (NOLOCK) WHERE CharacterName LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
	ELSE IF (@world = 4)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup04 WITH (NOLOCK) WHERE CharacterName LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
END
ELSE
BEGIN
	IF (@world = 1)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup01 WITH (NOLOCK) WHERE UserId  LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
	ELSE IF (@world = 2)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup02 WITH (NOLOCK) WHERE UserId LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
	ELSE IF (@world = 3)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup03 WITH (NOLOCK) WHERE UserId LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
	ELSE IF (@world = 4)
		SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
			CASE Trimurity WHEN 1 THEN 'Brahma'
			WHEN 2 THEN 'Vishnu'
			WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
			 CASE Tribe WHEN 0 THEN 'GM'
			WHEN 1 THEN 'Naga'
			WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
			WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
			WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
			WHEN 128 THEN 'Garuda' END AS Tribe
		, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup04 WITH (NOLOCK) WHERE UserId LIKE '' + @Keyword + '%'
		ORDER BY CharacterName ASC
END
GO
/****** Object:  StoredProcedure [dbo].[k3a_GetCharacters]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[k3a_GetCharacters]

@letter NVARCHAR(1),
@world INT

AS

IF (@world = 1)
	SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
		CASE Trimurity WHEN 1 THEN 'Brahma'
		WHEN 2 THEN 'Vishnu'
		WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
		 CASE Tribe WHEN 0 THEN 'GM'
		WHEN 1 THEN 'Naga'
		WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
		WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
		WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
		WHEN 128 THEN 'Garuda' END AS Tribe
	, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup01 WITH (NOLOCK) WHERE SUBSTRING(UserId,1,1) = @letter
	ORDER BY UserID ASC
ELSE IF (@world = 2)
	SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
		CASE Trimurity WHEN 1 THEN 'Brahma'
		WHEN 2 THEN 'Vishnu'
		WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
		 CASE Tribe WHEN 0 THEN 'GM'
		WHEN 1 THEN 'Naga'
		WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
		WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
		WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
		WHEN 128 THEN 'Garuda' END AS Tribe
	, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup02 WITH (NOLOCK) WHERE SUBSTRING(UserId,1,1) = @letter
	ORDER BY UserID ASC
ELSE IF (@world = 3)
	SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
		CASE Trimurity WHEN 1 THEN 'Brahma'
		WHEN 2 THEN 'Vishnu'
		WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
		 CASE Tribe WHEN 0 THEN 'GM'
		WHEN 1 THEN 'Naga'
		WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
		WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
		WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
		WHEN 128 THEN 'Garuda' END AS Tribe
	, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup03 WITH (NOLOCK) WHERE SUBSTRING(UserId,1,1) = @letter
	ORDER BY UserID ASC
ELSE IF (@world = 4)
	SELECT UserID, CharacterName, CharacterLevel, BrahmanPoint,
		CASE Trimurity WHEN 1 THEN 'Brahma'
		WHEN 2 THEN 'Vishnu'
		WHEN 4 THEN 'Shiva' ELSE 'No God' END AS Trimurity,
		 CASE Tribe WHEN 0 THEN 'GM'
		WHEN 1 THEN 'Naga'
		WHEN 2 THEN 'Kimnara' WHEN 4 THEN 'Asura'
		WHEN 8 THEN 'Rakshasa' WHEN 16 THEN 'Yaksa'
		WHEN 32 THEN 'Gandharva' WHEN 64 THEN 'Deva'
		WHEN 128 THEN 'Garuda' END AS Tribe
	, GuildName, GuildRank, Name1, Name2, Name3, Level1, Level2, Level3, TotalMoney,Blocked FROM TantraBackup04 WITH (NOLOCK) WHERE SUBSTRING(UserId,1,1) = @letter
	ORDER BY UserID ASC
GO
/****** Object:  StoredProcedure [dbo].[K3_selectCharacters]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[K3_selectCharacters]

@UserID VARCHAR(40)

AS

SELECT * FROM TantraBackup01
WHERE userID = @userID
GO
/****** Object:  StoredProcedure [dbo].[K3_selectCharacterCount]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[K3_selectCharacterCount]

@username VARCHAR(40),
@characterLevel INTEGER

AS

DECLARE @totalCount INTEGER,
@World1 INTEGER,
@World2 INTEGER,
@World3 INTEGER
SET @totalCount = 0
SET @World1 = 0
SET @World2 = 0
SET @World3 = 0

SELECT @World1 = COUNT(UserID) FROM TantraBackup01
WHERE UserID = @username
AND characterLevel >= @characterLevel

SELECT @World2 = COUNT(UserID) FROM TantraBackup02
WHERE UserID = @username
AND characterLevel >= @characterLevel

SELECT @World3 = COUNT(UserID) FROM TantraBackup03
WHERE UserID = @username
AND characterLevel >= @characterLevel

SET @totalCount = @World1 + @World2 + @World3 + @totalCount

SELECT @totalCount AS totalCount
GO
/****** Object:  StoredProcedure [dbo].[InsertTopUpFreeItem]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[InsertTopUpFreeItem]
(
  @id as uniqueIdentifier,
  @userId as nvarchar(50),
  @ItemId as int
)
AS

insert into TopUpFreeItems ([id], userId, itemId) values (@id, @userId, @itemId)
GO
/****** Object:  StoredProcedure [dbo].[InsertTantraItem]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[InsertTantraItem] 
(  
  @world as Int,
  @account as varchar(50),
  @itemIndex as int,
  @itemCount as int
)
as
  insert into dbo.TantraItem (world, account, itemIndex, itemcount) values (@world, @account, @itemIndex, @itemCount)

  if @@Error = 0
    return @@Identity
  else
    return -1
GO
/****** Object:  StoredProcedure [dbo].[IncreaseUserCreditCardTransactionCount]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[IncreaseUserCreditCardTransactionCount]
(
  @UserId as nvarchar(50),
  @Date as DateTime
)

as

declare @found as bit
declare @count as int
declare @lastDate as DateTime
set @found=1
select @count=count, @lastDate=[date] from dbo.UserCreditCardTransactionCount where userId=@userId
if @@RowCount = 0
  begin
    set @count = 0
    set @found = 0
  end
else
   if @lastDate + 29 < @Date
     set @count = 0

print @Found
if @found = 0 
  insert into dbo.UserCreditCardTransactionCount (UserId, [Date], [Count]) values (@userId, @Date, 1)
else
  if @count = 0
    update dbo.UserCreditCardTransactionCount set [count]=1, [date]=@Date where userId=@userId
  else
    update dbo.UserCreditCardTransactionCount set [count]=[count]+1 where userId=@userId

return
GO
/****** Object:  StoredProcedure [dbo].[IncreaseCreditCardTransactionCount]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[IncreaseCreditCardTransactionCount]
(
  @CreditCardNumber as varchar(50),
  @Date as DateTime
)

as

declare @found as bit
declare @count as int
declare @lastDate as DateTime
set @found=1
select @count=count, @lastDate=[date] from dbo.CreditCardTransactionCount where creditCardNumber=@creditCardNumber 
if @@RowCount = 0
  begin
    set @count = 0
    set @found = 0
  end
else
   if @lastDate + 29 < @Date
     set @count = 0

print @Found
if @found = 0 
  insert into dbo.CreditCardTransactionCount (CreditCardNumber, [Date], [Count]) values (@CreditCardNumber, @Date, 1)
else
  if @count = 0
    update dbo.CreditCardTransactionCount set [count]=1, [date]=@Date where creditCardNumber=@CreditCardNumber
  else
    update dbo.CreditCardTransactionCount set [count]=[count]+1 where creditCardNumber=@CreditCardNumber

return
GO
/****** Object:  StoredProcedure [dbo].[GrantTribeRewardsByUserEP2]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
create PROCEDURE [dbo].[GrantTribeRewardsByUserEP2]
	@chieftain nvarchar(50)
AS
DECLARE @member2 nvarchar(50), @desc nvarchar(100)

DECLARE member2_cursor CURSOR FOR
SELECT memberid from fellowship_tribemember where highestlevel>=40  and reward1=0 and userid=@chieftain

OPEN member2_cursor

FETCH NEXT FROM member2_cursor INTO @member2

WHILE @@FETCH_STATUS=0
BEGIN
	set @desc='Reward for Tribe Member '+ @member2 + ' reaching Level 40'
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 6506, 0, null, null, @desc)
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@member2, 6506, 0, null, null, 'Reward for reaching Level 40')
	UPDATE fellowship_tribemember set reward1=1 where memberid=@member2
	FETCH NEXT FROM member2_cursor INTO @member2
END
CLOSE member2_cursor
DEALLOCATE member2_cursor

DECLARE @memberid nvarchar(50), @desc2 nvarchar(100), @amandacount int

select @amandacount=count(memberid) from fellowship_tribemember where reward2=0 and highestlevel>=45 and userid=@chieftain

if(@amandacount>=5)
BEGIN
	DECLARE member_cursor CURSOR FOR
	select top 5 memberid from fellowship_tribemember where reward2=0 and highestlevel>=45 and userid=@chieftain order by datereg
	
	OPEN member_cursor

	FETCH NEXT FROM member_cursor
	INTO @memberid

	set @desc2='Reward for FIVE(5) Tribe Members reaching Level 45'
	IF @@FETCH_STATUS<>0
		PRINT 'NO REWARDS'
	ELSE
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 7071, 0, null, null, @desc2)
	WHILE @@FETCH_STATUS=0
	BEGIN
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@memberid, 6506, 0, null, null, 'Reward for reaching Level 45')
		UPDATE fellowship_tribemember set reward2=1 where memberid=@memberid
		FETCH NEXT FROM member_cursor INTO @memberid
	END	
	CLOSE member_cursor
	DEALLOCATE member_cursor
END

IF EXISTS(select * FROM fellowship_Tribemember where memberid=@chieftain AND highestlevel>=40 and reward1=0)
BEGIN
	declare @level int, @rew1 int, @mychief nvarchar(50), @desc3 nvarchar(100)

	select @level=highestlevel, @rew1=Reward1, @mychief=userid from fellowship_tribemember where memberid=@chieftain

	set @desc3= 'Reward for Tribe Member '+ @chieftain + ' reaching Level 40'	
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@mychief, 6506, 0, null, null, @desc3)
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 6506, 0, null, null, 'Reward for reaching Level 40')
	UPDATE fellowship_tribemember set reward1=1 where memberid=@chieftain
END
GO
/****** Object:  StoredProcedure [dbo].[GrantTribeRewardsByUser2]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GrantTribeRewardsByUser2]
	@chieftain nvarchar(50)
AS
DECLARE @member2 nvarchar(50), @desc nvarchar(100)

DECLARE member2_cursor CURSOR FOR
SELECT memberid from fellowship_tribemember where highestlevel>=40  and reward1=0 and userid=@chieftain

OPEN member2_cursor

FETCH NEXT FROM member2_cursor INTO @member2

WHILE @@FETCH_STATUS=0
BEGIN
	set @desc='Reward for Tribe Member '+ @member2 + ' reaching Level 40'
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 6506, 0, null, null, @desc)
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@member2, 6506, 0, null, null, 'Reward for reaching Level 40')
	UPDATE fellowship_tribemember set reward1=1 where memberid=@member2
	FETCH NEXT FROM member2_cursor INTO @member2
END
CLOSE member2_cursor
DEALLOCATE member2_cursor

DECLARE @memberid nvarchar(50), @desc2 nvarchar(100), @amandacount int

select @amandacount=count(memberid) from fellowship_tribemember where reward2=0 and highestlevel>=45 and userid=@chieftain

if(@amandacount>=5)
BEGIN
	DECLARE member_cursor CURSOR FOR
	select top 5 memberid from fellowship_tribemember where reward2=0 and highestlevel>=45 and userid=@chieftain order by datereg
	
	OPEN member_cursor

	FETCH NEXT FROM member_cursor
	INTO @memberid

	set @desc2='Reward for FIVE(5) Tribe Members reaching Level 45'
	IF @@FETCH_STATUS<>0
		PRINT 'NO REWARDS'
	ELSE
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 7071, 0, null, null, @desc2)
	WHILE @@FETCH_STATUS=0
	BEGIN
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@memberid, 6506, 0, null, null, 'Reward for reaching Level 45')
		UPDATE fellowship_tribemember set reward2=1 where memberid=@memberid
		FETCH NEXT FROM member_cursor INTO @memberid
	END	
	CLOSE member_cursor
	DEALLOCATE member_cursor
END

IF EXISTS(select * FROM fellowship_Tribemember where memberid=@chieftain AND highestlevel>=40 and reward1=0)
BEGIN
	declare @level int, @rew1 int, @mychief nvarchar(50), @desc3 nvarchar(100)

	select @level=highestlevel, @rew1=Reward1, @mychief=userid from fellowship_tribemember where memberid=@chieftain

	set @desc3= 'Reward for Tribe Member '+ @chieftain + ' reaching Level 40'	
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@mychief, 6506, 0, null, null, @desc3)
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 6506, 0, null, null, 'Reward for reaching Level 40')
	UPDATE fellowship_tribemember set reward1=1 where memberid=@chieftain
END
GO
/****** Object:  StoredProcedure [dbo].[GrantTribeRewardsByUser]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GrantTribeRewardsByUser]
	@chieftain nvarchar(50)
AS
DECLARE @member2 nvarchar(50), @desc nvarchar(100)

DECLARE member2_cursor CURSOR FOR
SELECT memberid from fellowship_tribemember where highestlevel>=40  and reward1=0 and userid=@chieftain

OPEN member2_cursor

FETCH NEXT FROM member2_cursor INTO @member2

WHILE @@FETCH_STATUS=0
BEGIN
	set @desc='Reward for Tribe Member '+ @member2 + ' reaching Level 40'
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 6506, 0, null, null, @desc)
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@member2, 6506, 0, null, null, 'Reward for reaching Level 40')
	UPDATE fellowship_tribemember set reward1=1 where memberid=@member2
	FETCH NEXT FROM member2_cursor INTO @member2
END
CLOSE member2_cursor
DEALLOCATE member2_cursor

DECLARE @memberid nvarchar(50), @desc2 nvarchar(100), @amandacount int

select @amandacount=count(memberid) from fellowship_tribemember where reward2=0 and highestlevel>=45 and userid=@chieftain

if(@amandacount>=5)
BEGIN
	DECLARE member_cursor CURSOR FOR
	select top 5 memberid from fellowship_tribemember where reward2=0 and highestlevel>=45 and userid=@chieftain order by datereg
	
	OPEN member_cursor

	FETCH NEXT FROM member_cursor
	INTO @memberid

	set @desc2='Reward for FIVE(5) Tribe Members reaching Level 45'
	IF @@FETCH_STATUS<>0
		PRINT 'NO REWARDS'
	ELSE
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 7071, 0, null, null, @desc2)
	WHILE @@FETCH_STATUS=0
	BEGIN
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@memberid, 6506, 0, null, null, 'Reward for reaching Level 45')
		UPDATE fellowship_tribemember set reward2=1 where memberid=@memberid
		FETCH NEXT FROM member_cursor INTO @memberid
	END	
	CLOSE member_cursor
	DEALLOCATE member_cursor
END

IF EXISTS(select * FROM fellowship_Tribemember where memberid=@chieftain AND highestlevel>=40 and reward1=0)
BEGIN
	declare @level int, @rew1 int, @mychief nvarchar(50), @desc3 nvarchar(100)

	select @level=highestlevel, @rew1=Reward1, @mychief=userid from fellowship_tribemember where memberid=@chieftain

	set @desc3= 'Reward for Tribe Member '+ @chieftain + ' reaching Level 40'	
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@mychief, 6506, 0, null, null, @desc3)
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@chieftain, 6506, 0, null, null, 'Reward for reaching Level 40')
	UPDATE fellowship_tribemember set reward1=1 where memberid=@chieftain
END
GO
/****** Object:  StoredProcedure [dbo].[GrantTribeRewards]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GrantTribeRewards]  AS
DECLARE @member2 nvarchar(50), @user2 nvarchar(50), @desc nvarchar(100)

DECLARE member2_cursor CURSOR FOR
SELECT userid, memberid from fellowship_tribemember where highestlevel>=40 and reward1=0 

OPEN member2_cursor

FETCH NEXT FROM member2_cursor INTO @user2, @member2

WHILE @@FETCH_STATUS=0
BEGIN
	set @desc='Reward for Tribe Member '+ @member2 + ' reaching Level 40'
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@user2, 6506, 0, null, null, @desc)
	INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@member2, 6506, 0, null, null, 'Reward for reaching Level 40')
	UPDATE fellowship_tribemember set reward1=1 where memberid=@member2
	FETCH NEXT FROM member2_cursor INTO @user2, @member2
END
CLOSE member2_cursor
DEALLOCATE member2_cursor

DECLARE @memberid nvarchar(50), @userid nvarchar(50), @desc2 nvarchar(100)

DECLARE chieftain_cursor CURSOR FOR
select userid from fellowship_tribemember where reward2=0 and highestlevel>=45 group by userid having count(memberid)>=5

OPEN chieftain_cursor

FETCH NEXT FROM chieftain_cursor
INTO @userid

WHILE @@FETCH_STATUS=0
BEGIN
	DECLARE member_cursor CURSOR FOR
	select top 5 memberid from fellowship_tribemember where reward2=0 and highestlevel>=45 and userid=@userid order by datereg
	
	OPEN member_cursor

	FETCH NEXT FROM member_cursor
	INTO @memberid

	set @desc2='Reward for FIVE(5) Tribe Members reaching Level 45'
	IF @@FETCH_STATUS<>0
		PRINT 'NO REWARDS'
	ELSE
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@userid, 7071, 0, null, null, @desc2)
	WHILE @@FETCH_STATUS=0
	BEGIN
		INSERT INTO fellowship_reward (userid, itemid, claimed, dateclaimed, world, [description]) VALUES (@memberid, 6506, 0, null, null, 'Reward for reaching Level 45')
		UPDATE fellowship_tribemember set reward2=1 where memberid=@memberid
		FETCH NEXT FROM member_cursor INTO @memberid
	END	
	CLOSE member_cursor
	DEALLOCATE member_cursor

	FETCH NEXT FROM chieftain_cursor INTO @userid
END
CLOSE chieftain_cursor
DEALLOCATE chieftain_cursor
GO
/****** Object:  View [dbo].[GMLogView]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[GMLogView]
AS
SELECT   dbo.GMLog.LogIndex, dbo.GMLog.GMID, dbo.GMInfo.GMName, 
                dbo.GMInfo.GMLevel, dbo.GMLog.SaveDate, dbo.GMLog.Description
FROM      dbo.GMInfo INNER JOIN
                dbo.GMLog ON dbo.GMInfo.GMID = dbo.GMLog.GMID
GO
/****** Object:  StoredProcedure [dbo].[DeleteUserTribeInvites]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[DeleteUserTribeInvites]
	@MemberId	nvarchar(50),
	@result int output
AS 
 SET @result = 0
 SET NOCOUNT ON

DELETE FROM Fellowship_Invite WHERE MemberId=@MemberId

  IF @@ERROR <> 0
	SET @result = -99 --DB SP Error
GO
/****** Object:  StoredProcedure [dbo].[DeleteTribeInvite]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[DeleteTribeInvite]
	@MemberId	nvarchar(50),
	@UserId	nvarchar(50),
	@result int output
AS 
 SET @result = 0
 SET NOCOUNT ON

DELETE FROM Fellowship_Invite WHERE MemberId=@MemberId AND UserId=@UserId
  IF @@ERROR <> 0
	SET @result = -99 --DB SP Error
GO
/****** Object:  StoredProcedure [dbo].[DeclineTribeInvite]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[DeclineTribeInvite]
	@MemberId	nvarchar(50),
	@UserId	nvarchar(50),
	@result int output
AS 
 SET @result = 0
 SET NOCOUNT ON

UPDATE Fellowship_Invite SET Accepted=-1 WHERE MemberId=@MemberId AND UserID=@UserId
  IF @@ERROR <> 0
	SET @result = -99 --DB SP Error
GO
/****** Object:  StoredProcedure [dbo].[BitPassUpdateTransaction]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[BitPassUpdateTransaction] 
(
  @Id as uniqueIdentifier,
  @userId as nvarchar(50),
  @productId as Int,
  @status as nvarchar(10),
  @date as datetime
)

as

update dbo.BitPassTransactions
set status = @status, [date] = @date
where [Id] = @Id and userId=@userId and productId=@productId

return
GO
/****** Object:  StoredProcedure [dbo].[BitPassGetTransaction]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[BitPassGetTransaction] 
(
  @Id as uniqueIdentifier,
  @userId as nvarchar(50),
  @productId as int,
  @amount as decimal(18,2) output,
  @world as smallint output,
  @status as nvarchar(10) output
)

as

select @amount=amount, @world=worldForFreeItem, @status=status from dbo.BitPassTransactions where [Id]=@Id and userId=@userId and productId=@productId


return
GO
/****** Object:  StoredProcedure [dbo].[BitPassCreateTransaction]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
Create PROCEDURE [dbo].[BitPassCreateTransaction] 
(
  @Id as uniqueIdentifier,
  @userId as nvarchar(50),
  @productId as int,
  @amount as decimal(18,2),
  @date as datetime,
  @world as smallInt
)

as

insert into dbo.BitPassTransactions
([Id], userId, productId, amount, [date], status, worldForFreeItem)
values
(@Id, @userId, @productId, @amount, @date, '', @world)

return
GO
/****** Object:  View [dbo].[allservers]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[allservers]
AS
SELECT     dbo.TantraBackup01.CharacterName, dbo.TantraBackup01.CharacterLevel, dbo.TantraBackup01.BrahmanPoint, dbo.TantraBackup01.Tribe, 
                      dbo.TantraBackup01.Trimurity, dbo.TantraBackup01.GuildName
FROM         dbo.TantraBackup01 INNER JOIN
                      dbo.TantraBackup02 ON dbo.TantraBackup01.idx = dbo.TantraBackup02.idx INNER JOIN
                      dbo.TantraBackup03 ON dbo.TantraBackup01.idx = dbo.TantraBackup03.idx
GO
/****** Object:  StoredProcedure [dbo].[GetTribeInviteInfo]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[GetTribeInviteInfo]
	@userid AS nvarchar(50),
	@memberid AS nvarchar(50)
AS
SET NOCOUNT ON
SELECT * FROM Fellowship_Invite  WHERE MemberId = @memberid AND UserId=@userid
GO
/****** Object:  StoredProcedure [dbo].[GetSentUserInvites]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[GetSentUserInvites]
	@userid 	AS nvarchar(50)
AS
SET NOCOUNT ON

SELECT    [id],  MemberId, Accepted
FROM        Fellowship_Invite
WHERE UserId = @userid
GO
/****** Object:  StoredProcedure [dbo].[GetPendingUserInvites]    Script Date: 09/21/2014 17:59:47 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[GetPendingUserInvites]
	@memberid 	AS nvarchar(50)
AS
SET NOCOUNT ON

SELECT    [id],  UserId, Accepted
FROM        Fellowship_Invite
WHERE MemberId = @memberid
GO
/****** Object:  StoredProcedure [dbo].[GetMaxLevel_AllWorlds]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetMaxLevel_AllWorlds]
               @user as nvarchar(50)
AS
SET NOCOUNT ON

SELECT UserId, CharacterLevel FROM MaxLevel_Table WHERE 
Userid = @user
GO
/****** Object:  StoredProcedure [dbo].[GetCreditCardTransactionCount]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetCreditCardTransactionCount]
(
  @CreditCardNumber as varchar(50),
  @Date as datetime
)

as

declare @thisDate as datetime
declare @count as smallInt
select @count=[count], @thisDate=[date] from dbo.creditCardTransactionCount where creditCardNumber=@creditCardNumber 
if @@RowCount = 0
  set @count = 0
else
  if @thisDate+29 < @date
    set @count=0
select @count
return
GO
/****** Object:  StoredProcedure [dbo].[GetCharLevels_AllWorlds]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[GetCharLevels_AllWorlds]
	@UserId AS nvarchar(50)
AS
SET NOCOUNT ON
SELECT     dbo.TantraBackup03.CharacterLevel as Level1, dbo.TantraBackup01.CharacterLevel as Level2, dbo.TantraBackup02.CharacterLevel as Level3, 
                      dbo.TantraBackup01.UserID
FROM         dbo.TantraBackup01 CROSS JOIN
                      dbo.TantraBackup02 CROSS JOIN
                      dbo.TantraBackup03
WHERE     (dbo.TantraBackup01.UserID = @UserId) AND (dbo.TantraBackup02.UserID = @UserId) AND (dbo.TantraBackup03.UserID = @UserId)
GO
/****** Object:  StoredProcedure [dbo].[GetAllTribeMembers]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[GetAllTribeMembers]
	@userid	AS nvarchar(50)
AS

SELECT     *
FROM        Fellowship_TribeMember 
WHERE UserId = @userid
ORDER BY DateReg
GO
/****** Object:  StoredProcedure [dbo].[GetUserRewards]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[GetUserRewards]
	@userid 	AS nvarchar(50),
	@claimed	AS int
AS
SET NOCOUNT ON

SELECT    a.*,  b.itemName as ItemDescription, b.RewardQuantity
FROM        Fellowship_Reward a, fellowship_TribeRewardItemList b
WHERE a.UserId = @userid and a.Claimed=@claimed and a.[level] = b.[level]
GO
/****** Object:  StoredProcedure [dbo].[GetUserHighestLevel]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetUserHighestLevel] 
	@userid nvarchar(50)
AS
declare @lvl1 int, @lvl2 int, @lvl3 int, @highest int
	set @lvl1= -99
	set @lvl2= -99
	set @lvl3= -99

	select @lvl1=characterlevel from tantrabackup01 where userid=@userid
	select @lvl2=characterlevel from tantrabackup02 where userid=@userid
	select @lvl3=characterlevel from tantrabackup03 where userid=@userid
	
	set @highest=-99

	if(@lvl1>@highest)
		set @highest=@lvl1
	if(@lvl2>@highest )
		set @highest=@lvl2
	if(@lvl3>@highest)
		set @highest=@lvl3

	return @highest
GO
/****** Object:  StoredProcedure [dbo].[GetUserFreeItemCount]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[GetUserFreeItemCount]
(
  @userId as nvarchar(50),
  @itemId as int
)

as

  select count(*) from TopUpFreeItems where userId=@userId and itemId=@itemId
GO
/****** Object:  StoredProcedure [dbo].[GetUserCreditCardTransactionCount]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserCreditCardTransactionCount]
(
  @UserId as nvarchar(50),
  @Date as datetime
)

as

declare @thisDate as datetime
declare @count as smallInt
select @count=[count], @thisDate=[date] from dbo.UserCreditCardTransactionCount where UserId=@UserId
if @@RowCount = 0
  set @count = 0
else
  if @thisDate+29 < @date
    set @count=0
select @count
return
GO
/****** Object:  StoredProcedure [dbo].[GetUserCharacterInfo]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetUserCharacterInfo]
	@userid		AS nvarchar(50),
	@world		as int
AS
SET NOCOUNT ON

if(@world=1)
	SELECT * FROM TantraBackup01 WITH (NOLOCK)  WHERE Userid = @userid
else if(@world=2)
	SELECT * FROM TantraBackup02  WITH (NOLOCK) WHERE Userid = @userid
else if(@world=3)
	SELECT * FROM TantraBackup03  WITH (NOLOCK) WHERE Userid = @userid
else if(@world=4)
	SELECT * FROM TantraBackup04  WITH (NOLOCK) WHERE Userid = @userid
GO
/****** Object:  StoredProcedure [dbo].[GiveTopUpFreeItemNew]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[GiveTopUpFreeItemNew]
(
  @userId as nvarchar(50),
  @itemId as int,
  @quantity as int,
  @unitQuantity as int,
  @dateClaimed as dateTime,
  @tantraWorld as int
)

as
  insert into dbo.TopUpFreeItemsNew (userId, itemId, quantity, unitQuantity, world, dateClaimed)
    values (@userId, @itemId, @quantity, @unitQuantity, @tantraWorld, @dateClaimed)

declare @count as int
set @count = 0
while @count < @quantity
  begin
    exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, @unitQuantity
    set @count = @count + 1
  end
-- print @count

declare @thisDate as datetime
set @thisDate = getDate()
if @thisDate >= '7/29/2005' and @thisDate < '8/11/2005' and (@itemId = 6954 or @itemId=6810)
  begin    
    declare @ticketItem as int
    set @ticketItem=7049
    exec dbo.InsertTantraItem  @tantraWorld, @userId, @ticketItem, 1
  end
GO
/****** Object:  StoredProcedure [dbo].[GiveTopUpFreeItem]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[GiveTopUpFreeItem]
(
  @userId as nvarchar(50),
  @itemId as int,
  @tantraWorld int,
  @maxFreeItems int
)

as

declare  @id as uniqueIdentifier
declare @freeItems as int
declare  @dateClaimed as dateTime
declare @itemCount as int

select @freeItems = count(*) from TopUpFreeItems where userId=@userId and itemId=@itemId

if @freeItems < @maxFreeItems
  begin
    if @itemId = 6811 -- High Quality Atman Charm
      begin
        set @itemCount = 5
        exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 240
        exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 240
        exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 240
        exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 240
        exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 240
      end
    if @itemId = 7034 -- Quality Ziva Pustika
      begin
        set @itemCount = 20
        exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 20
      end
    if @itemId = 6823 -- Quality Peito Charm of Zosimo
      begin 
        set @itemCount = 4
	exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 60
	exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 60
	exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 60
	exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 60
      end    
    if @itemId = 7027 -- Skill Reset
      begin
        set @itemCount = 1  
        exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 1
      end

    set @id  = newId()
    set @dateClaimed = getDate()
    insert into TopUpFreeItems ([id], userId, itemId, claimed, dateClaimed, world) values (@id, @userId, @itemId, 1, @dateClaimed, @tantraWorld)
    select 0
  end
else
  select @freeItems
GO
/****** Object:  StoredProcedure [dbo].[GiveFreeItem]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    PROCEDURE [dbo].[GiveFreeItem]
(
  @userId as nvarchar(50),
  @itemId as int,
  @quantity as int,
  @unitQuantity as int,
  @tantraWorld as int
)

as

declare @count as int
set @count = 0
while @count < @quantity
  begin
    exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, @unitQuantity
    set @count = @count + 1
  end
GO
/****** Object:  StoredProcedure [dbo].[GetTribeMemberInfo]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE  PROC [dbo].[GetTribeMemberInfo]
	@MemberId AS nvarchar(50)
AS
SET NOCOUNT ON
SELECT *,dbo.TribeGetName(userid) as TribeName FROM Fellowship_TribeMember  WHERE MemberId = @MemberId
GO
/****** Object:  StoredProcedure [dbo].[ClaimTribeReward]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROC [dbo].[ClaimTribeReward]

  @userid as varchar(50),
  @item as int,
  @world as int,
  @qty as int


as

DECLARE @id int

DECLARE reward_cursor CURSOR FOR
select  [id] from Fellowship_Reward where userid=@userid and itemid=@item and claimed=0

open reward_cursor

FETCH NEXT FROM reward_cursor INTO @id

if(@@FETCH_STATUS<>0)
	return -1
else
	update Fellowship_Reward set claimed=1, dateClaimed=getdate(), world=@world where userid=@userid and itemId=@item and [id]=@id

if @@RowCount > 0
  begin
    exec dbo.InsertTantraItem  @world, @userId, @item, 1
    return 0
  end
else
  return -1
GO
/****** Object:  StoredProcedure [dbo].[ClaimTopUpFreeItem]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[ClaimTopUpFreeItem]
(
  @id as uniqueIdentifier,
  @userId as nvarchar(50),
  @itemId as int,
  @dateClaimed as dateTime,
  @tantraWorld int
)

as

update TopUpFreeItems set claimed=1, dateClaimed=@dateClaimed where [id]=@id and userId=@userId and itemId=@itemId
if @@RowCount > 0
  begin
    exec dbo.InsertTantraItem  @tantraWorld, @userId, @itemId, 1
    return 0
  end
else
  return -1
GO
/****** Object:  StoredProcedure [dbo].[UpdateTribeHighestLevel2]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE  PROC [dbo].[UpdateTribeHighestLevel2]
	@userid nvarchar(50)
AS

DECLARE @member nvarchar(50)

DECLARE member_cursor CURSOR FOR
SELECT memberid from fellowship_tribemember where userid=@userid

OPEN member_cursor

FETCH NEXT FROM member_cursor INTO @member

WHILE @@FETCH_STATUS=0
BEGIN
	declare @highest int
	
	EXEC @highest=dbo.GetUserHighestLevel @member
	
	if(@highest=-99)
		set @highest=NULL

	-- update dbo.Fellowship_TribeMember set HighestLevel = @highest where memberid=@member
	FETCH NEXT FROM member_cursor INTO @member
END
CLOSE member_cursor
DEALLOCATE member_cursor

if exists( select * from fellowship_tribemember where memberid=@userid)
begin
	declare @highest2 int
	EXEC @highest2=dbo.GetUserHighestLevel @userid

	if(@highest2=-99)
		set @highest2=NULL

	-- update dbo.Fellowship_TribeMember set HighestLevel = @highest2 where memberid=@userid
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateTribeHighestLevel]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateTribeHighestLevel] as
update Fellowship_TribeMember set HighestLevel = (select CharacterLevel from vw_maxlevel
where Fellowship_TribeMember.MemberId = vw_maxlevel.UserId)
GO
/****** Object:  StoredProcedure [dbo].[TribeGrantMemberRewards]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TribeGrantMemberRewards]
 @memberId nvarchar(50)
as
declare @reward05 as bit
declare @reward10 as bit
declare @reward15 as bit
declare @reward20 as bit
declare @reward25 as bit
declare @reward30 as bit
declare @reward35 as bit
declare @reward40 as bit
declare @reward45 as bit
declare @reward50 as bit
declare @reward52 as bit
declare @reward54 as bit
declare @reward56 as bit
declare @reward58 as bit
declare @reward60 as bit
declare @baseLevel as int
declare @highestLevel as int
declare @itemId as int

select @highestLevel=highestLevel,
@baseLevel=baseLevel,
@reward05=reward05, 
@reward10=reward10, 
@reward15=reward15, 
@reward20=reward20, 
@reward25=reward25, 
@reward30=reward30, 
@reward35=reward35, 
@reward40=reward40, 
@reward45=reward45, 
@reward50=reward50, 
@reward52=reward52, 
@reward54=reward54, 
@reward56=reward56, 
@reward58=reward58, 
@reward60=reward60 
from Fellowship_TribeMember 
where memberId=@memberId

declare @level as int
declare @levelName as nvarchar(3)
declare @isRewarded as int

set @level=5
set @levelName='05'
set @isRewarded=@reward05
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=10
set @levelName='10'
set @isRewarded=@reward10
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=15
set @levelName='15'
set @isRewarded=@reward15
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=20
set @levelName='20'
set @isRewarded=@reward20
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=25
set @levelName='25'
set @isRewarded=@reward25
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=30
set @levelName='30'
set @isRewarded=@reward30
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=35
set @levelName='35'
set @isRewarded=@reward35
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=40
set @levelName='40'
set @isRewarded=@reward40
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=45
set @levelName='45'
set @isRewarded=@reward45
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=50
set @levelName='50'
set @isRewarded=@reward50
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=52
set @levelName='52'
set @isRewarded=@reward52
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=54
set @levelName='54'
set @isRewarded=@reward54
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=56
set @levelName='56'
set @isRewarded=@reward56
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=58
set @levelName='58'
set @isRewarded=@reward58
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

set @level=60
set @levelName='60'
set @isRewarded=@reward60
exec dbo.TribeGrantMemberRewardByLevel @memberId, @baseLevel, @highestLevel, @level, @levelName, @isRewarded

return
GO
/****** Object:  StoredProcedure [dbo].[TribeGrantUserRewards]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE procedure [dbo].[TribeGrantUserRewards]
@memberId as nvarchar(50)
as

-- Check if TribeMember
select count(*) from Fellowship_TribeMember where memberId=@memberId
if @@RowCount > 0
  exec dbo.TribeGrantMemberRewards @memberId

-- Check if TribeChief
select count(*) from Fellowship_TribeMember where userid=@memberId
if @@RowCount > 0
  exec dbo.TribeGrantChiefRewards @memberId
GO
/****** Object:  StoredProcedure [dbo].[TribeClaimReward]    Script Date: 09/21/2014 17:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
create procedure [dbo].[TribeClaimReward]

  @userId as nvarchar(50),
  @itemId as int,
  @world as int,
  @count as int

as

declare @id as nvarchar(50)
declare @level as nvarchar(3)
declare @quantity as int
declare @unitQuantity as int
declare @counter as int

set @counter = 1

declare rewards cursor for
select [id], a.[level], b.quantity, b.unitsPerQuantity from Fellowship_Reward a, Fellowship_TribeRewardItemList b 
  where userId=@userId 
  and a.itemId=@itemId
  and a.claimed = 0
  and a.[level] = b.[level]

open rewards
fetch next from rewards into @id, @level, @quantity, @unitQuantity
while @@FETCH_STATUS=0 and @counter <= @count
  begin
    exec dbo.GiveFreeItem @userId, @itemId, @quantity, @unitQuantity, @world
    update Fellowship_Reward set claimed=1, dateClaimed = GetDate(), world=@world where [id]=@id
    fetch next from rewards into @id, @level, @quantity, @unitQuantity
    set @counter = @counter + 1
  end
close rewards
deallocate rewards
GO
