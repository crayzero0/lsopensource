/*
 Navicat Premium Data Transfer

 Source Server         : MSSQL
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : WIN-5L13JDNA9OA\SQLEXPRESS:1433
 Source Catalog        : LosaGame_log
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 08/07/2019 19:34:03
*/


-- ----------------------------
-- Table structure for log_class_buytime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_class_buytime]') AND type IN ('U'))
	DROP TABLE [dbo].[log_class_buytime]
GO

CREATE TABLE [dbo].[log_class_buytime] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [buyTime] bigint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_class_buytime] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_class_rental_history
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_class_rental_history]') AND type IN ('U'))
	DROP TABLE [dbo].[log_class_rental_history]
GO

CREATE TABLE [dbo].[log_class_rental_history] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [friendIDX] int  NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_class_rental_history] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_game_concurrent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_game_concurrent]') AND type IN ('U'))
	DROP TABLE [dbo].[log_game_concurrent]
GO

CREATE TABLE [dbo].[log_game_concurrent] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [serverID] bigint DEFAULT ((0)) NOT NULL,
  [serverIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [serverPort] int  NOT NULL,
  [serverName] varchar(32) COLLATE Korean_Wansung_CI_AS  NULL,
  [concurrent] int DEFAULT ((0)) NOT NULL,
  [cpType] smallint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_game_concurrent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_garena_bonus_event
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_garena_bonus_event]') AND type IN ('U'))
	DROP TABLE [dbo].[log_garena_bonus_event]
GO

CREATE TABLE [dbo].[log_garena_bonus_event] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [garenaUID] varchar(130) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [bonusAmount] int  NOT NULL,
  [accountIDX] int  NOT NULL,
  [currencyBalance] int  NOT NULL,
  [resultCode] int  NOT NULL,
  [regDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[log_garena_bonus_event] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_garena_shell_change
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_garena_shell_change]') AND type IN ('U'))
	DROP TABLE [dbo].[log_garena_shell_change]
GO

CREATE TABLE [dbo].[log_garena_shell_change] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [garenaUID] varchar(130) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [shellAmount] int  NOT NULL,
  [currencyAmount] int  NOT NULL,
  [garenaTxnid] varchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [accountIDX] int  NOT NULL,
  [currencyBalance] int  NOT NULL,
  [resultCode] int  NOT NULL,
  [regDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[log_garena_shell_change] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_gift_gold
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_gift_gold]') AND type IN ('U'))
	DROP TABLE [dbo].[log_gift_gold]
GO

CREATE TABLE [dbo].[log_gift_gold] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [garenaUID] varchar(130) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [currencyAmount] int  NOT NULL,
  [currencyBalance] int  NOT NULL,
  [note] varchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [regDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[log_gift_gold] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_guild_mark
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_guild_mark]') AND type IN ('U'))
	DROP TABLE [dbo].[log_guild_mark]
GO

CREATE TABLE [dbo].[log_guild_mark] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [guildIDX] int  NOT NULL,
  [accountIDX] int  NOT NULL,
  [havepeso] bigint  NOT NULL,
  [markprice] int  NOT NULL,
  [nowmark] int  NOT NULL,
  [changemark] int  NOT NULL,
  [flag] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_guild_mark] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_cheer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_cheer]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_cheer]
GO

CREATE TABLE [dbo].[log_league_cheer] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [cheerIDX] int  NOT NULL,
  [startDate] int  NOT NULL,
  [accountIDX] int  NOT NULL,
  [leagueIDX] int  NOT NULL,
  [teamIDX] int  NOT NULL,
  [regDate] datetime  NOT NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_cheer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_info_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_info_user]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_info_user]
GO

CREATE TABLE [dbo].[log_league_info_user] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [infoIDX] int  NULL,
  [leagueIDX] int  NULL,
  [leagueName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [maxRound] smallint  NULL,
  [bannerA] int  NULL,
  [bannerB] int  NULL,
  [modeType] int  NULL,
  [maxcount] tinyint  NULL,
  [autoType] tinyint  NULL,
  [announce] nvarchar(512) COLLATE Korean_Wansung_CI_AS  NULL,
  [recruitDate] int  NULL,
  [waitDate] int  NULL,
  [regDate] datetime  NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_info_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_list]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_list]
GO

CREATE TABLE [dbo].[log_league_list] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [leagueIDX] int  NULL,
  [accountIDX] int  NULL,
  [startDate] int  NULL,
  [endDate] int  NULL,
  [leagueType] tinyint  NULL,
  [leagueState] tinyint  NULL,
  [regDate] datetime  NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_list] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_list_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_list_user]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_list_user]
GO

CREATE TABLE [dbo].[log_league_list_user] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [leagueIDX] int  NULL,
  [accountIDX] int  NULL,
  [startDate] int  NULL,
  [endDate] int  NULL,
  [leagueType] tinyint  NULL,
  [leagueState] tinyint  NULL,
  [regDate] datetime  NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_list_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_round_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_round_user]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_round_user]
GO

CREATE TABLE [dbo].[log_league_round_user] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [roundIDX] int  NULL,
  [infoIDX] int  NULL,
  [roundType1_playDate] int  NULL,
  [roundType1_presentCode1] int  NULL,
  [roundType1_presentCode2] int  NULL,
  [roundType1_presentCode3] int  NULL,
  [roundType1_presentCode4] int  NULL,
  [roundType2_playDate] int  NULL,
  [roundType2_presentCode1] int  NULL,
  [roundType2_presentCode2] int  NULL,
  [roundType2_presentCode3] int  NULL,
  [roundType2_presentCode4] int  NULL,
  [roundType3_playDate] int  NULL,
  [roundType3_presentCode1] int  NULL,
  [roundType3_presentCode2] int  NULL,
  [roundType3_presentCode3] int  NULL,
  [roundType3_presentCode4] int  NULL,
  [roundType4_playDate] int  NULL,
  [roundType4_presentCode1] int  NULL,
  [roundType4_presentCode2] int  NULL,
  [roundType4_presentCode3] int  NULL,
  [roundType4_presentCode4] int  NULL,
  [roundType5_playDate] int  NULL,
  [roundType5_presentCode1] int  NULL,
  [roundType5_presentCode2] int  NULL,
  [roundType5_presentCode3] int  NULL,
  [roundType5_presentCode4] int  NULL,
  [roundType6_playDate] int  NULL,
  [roundType6_presentCode1] int  NULL,
  [roundType6_presentCode2] int  NULL,
  [roundType6_presentCode3] int  NULL,
  [roundType6_presentCode4] int  NULL,
  [roundType7_playDate] int  NULL,
  [roundType7_presentCode1] int  NULL,
  [roundType7_presentCode2] int  NULL,
  [roundType7_presentCode3] int  NULL,
  [roundType7_presentCode4] int  NULL,
  [roundType8_playDate] int  NULL,
  [roundType8_presentCode1] int  NULL,
  [roundType8_presentCode2] int  NULL,
  [roundType8_presentCode3] int  NULL,
  [roundType8_presentCode4] int  NULL,
  [roundType9_playDate] int  NULL,
  [roundType9_presentCode1] int  NULL,
  [roundType9_presentCode2] int  NULL,
  [roundType9_presentCode3] int  NULL,
  [roundType9_presentCode4] int  NULL,
  [roundType10_playDate] int  NULL,
  [roundType10_presentCode1] int  NULL,
  [roundType10_presentCode2] int  NULL,
  [roundType10_presentCode3] int  NULL,
  [roundType10_presentCode4] int  NULL,
  [roundType11_playDate] int  NULL,
  [roundType11_presentCode1] int  NULL,
  [roundType11_presentCode2] int  NULL,
  [roundType11_presentCode3] int  NULL,
  [roundType11_presentCode4] int  NULL,
  [regDate] datetime  NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_round_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_team
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_team]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_team]
GO

CREATE TABLE [dbo].[log_league_team] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [teamIDX] int  NULL,
  [leagueIDX] int  NULL,
  [startDate] int  NULL,
  [teamName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [leaderIDX] int  NULL,
  [leagueStartPosition] smallint  NULL,
  [leaguePosition] smallint  NULL,
  [maxcount] tinyint  NULL,
  [cheerPoint] int  NULL,
  [currentRound] tinyint  NULL,
  [factionPoint] int  NULL,
  [factionType] tinyint  NULL,
  [regDate] datetime  NULL,
  [insertDate] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[log_league_team] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_team_member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_team_member]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_team_member]
GO

CREATE TABLE [dbo].[log_league_team_member] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [teamMemberIDX] int  NULL,
  [startDate] int  NULL,
  [accountIDX] int  NULL,
  [leagueIDX] int  NULL,
  [teamIDX] int  NULL,
  [joinType] tinyint  NULL,
  [regDate] datetime  NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_team_member] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_team_member_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_team_member_user]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_team_member_user]
GO

CREATE TABLE [dbo].[log_league_team_member_user] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [teamMemberIDX] int  NOT NULL,
  [startDate] int  NOT NULL,
  [accountIDX] int  NOT NULL,
  [leagueIDX] int  NOT NULL,
  [teamIDX] int  NOT NULL,
  [joinType] tinyint  NOT NULL,
  [regDate] datetime  NOT NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_team_member_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_league_team_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_league_team_user]') AND type IN ('U'))
	DROP TABLE [dbo].[log_league_team_user]
GO

CREATE TABLE [dbo].[log_league_team_user] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [teamIDX] int  NULL,
  [leagueIDX] int  NULL,
  [startDate] int  NULL,
  [teamName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [leaderIDX] int  NULL,
  [leagueStartPosition] smallint  NULL,
  [leaguePosition] smallint  NULL,
  [maxcount] tinyint  NULL,
  [cheerPoint] int  NULL,
  [currentRound] tinyint  NULL,
  [factionPoint] int  NULL,
  [factionType] tinyint  NULL,
  [regDate] datetime  NULL,
  [insertDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_league_team_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_level_playtime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_level_playtime]') AND type IN ('U'))
	DROP TABLE [dbo].[log_level_playtime]
GO

CREATE TABLE [dbo].[log_level_playtime] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [playTime] bigint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_level_playtime] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_mannerpoint
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_mannerpoint]') AND type IN ('U'))
	DROP TABLE [dbo].[log_mannerpoint]
GO

CREATE TABLE [dbo].[log_mannerpoint] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [playType] int  NOT NULL,
  [modeType] int  NOT NULL,
  [sub1Type] int  NOT NULL,
  [sub2Type] int  NOT NULL,
  [reportIDX] int  NOT NULL,
  [reportNick] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [reportpubIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [reportpriIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [receiveIDX] int  NOT NULL,
  [receiveNick] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [receivepubIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [roomInfo] varchar(2000) COLLATE Korean_Wansung_CI_AS  NULL,
  [chatInfo] varchar(3000) COLLATE Korean_Wansung_CI_AS  NULL,
  [note] varchar(1000) COLLATE Korean_Wansung_CI_AS  NULL,
  [reason] varchar(2000) COLLATE Korean_Wansung_CI_AS  NULL,
  [flag] tinyint DEFAULT ((0)) NOT NULL,
  [resultType] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_mannerpoint] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_sleep_users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_sleep_users]') AND type IN ('U'))
	DROP TABLE [dbo].[log_sleep_users]
GO

CREATE TABLE [dbo].[log_sleep_users] (
  [AccountIDX] int  NULL,
  [UserLevel] int  NULL,
  [ConnDate] datetime  NULL,
  [CpType] int  NULL,
  [RegDate] datetime  NULL,
  [MoveDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[log_sleep_users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_user_block
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_user_block]') AND type IN ('U'))
	DROP TABLE [dbo].[log_user_block]
GO

CREATE TABLE [dbo].[log_user_block] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [limitType] tinyint DEFAULT ((0)) NOT NULL,
  [limitDate] datetime DEFAULT ((0)) NOT NULL,
  [reason] nvarchar(2000) COLLATE Korean_Wansung_CI_AS  NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_user_block] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueListDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueListDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueListDB]
GO

CREATE TABLE [dbo].[userLeagueListDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [startDate] int  NOT NULL,
  [endDate] int  NOT NULL,
  [leagueType] tinyint DEFAULT ((0)) NOT NULL,
  [leagueState] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueListDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Procedure structure for USP_GARENA_SHELL_CHANGE_LOG_GET_TO_TXNID
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GARENA_SHELL_CHANGE_LOG_GET_TO_TXNID]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_GARENA_SHELL_CHANGE_LOG_GET_TO_TXNID]
GO

CREATE PROCEDURE [dbo].[USP_GARENA_SHELL_CHANGE_LOG_GET_TO_TXNID]
(
	@GARENA_TXNID		VARCHAR(32)
)	
AS
	SET NOCOUNT ON;

	SELECT idx, garenaUID, shellAmount, currencyAmount, garenaTxnid, accountIDX, currencyBalance, regDate 
	FROM dbo.log_garena_shell_change WITH(NOLOCK) 
	WHERE garenaTxnid = @GARENA_TXNID AND resultCode = 0
GO


-- ----------------------------
-- Procedure structure for USP_GARENA_BONUS_LOG_ADD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GARENA_BONUS_LOG_ADD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_GARENA_BONUS_LOG_ADD]
GO

CREATE PROCEDURE [dbo].[USP_GARENA_BONUS_LOG_ADD]  
(  
 @GARENA_UID   VARCHAR(130),  
 @BONUS_AMOUNT INT,  
 @ACCOUNT_IDX  INT,  
 @CURRENCY_BALANCE INT,  
 @RESULT_CODE  INT  
)   
AS  
 SET NOCOUNT ON;  
   
 INSERT dbo.log_garena_bonus_event (  
  garenaUID, bonusAmount, accountIDX, currencyBalance, resultCode, regDate
 )  
 VALUES  (  
  @GARENA_UID, @BONUS_AMOUNT , @ACCOUNT_IDX, @CURRENCY_BALANCE, @RESULT_CODE, GETDATE()  
 )
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GOLD_LOG_SET_ADD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GOLD_LOG_SET_ADD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GOLD_LOG_SET_ADD]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GOLD_LOG_SET_ADD]

	@accountIDX			INT,
	@garenaUID			VARCHAR(20),
	@currencyAmount		INT,
	@currencyBalance	INT,
	@note				VARCHAR(32)

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;


INSERT INTO LosaGame_log.dbo.log_gift_gold (
	accountIDX, garenaUID, currencyAmount, currencyBalance, note, regDate
)
VALUES (
	@accountIDX, @garenaUID, @currencyAmount, @currencyBalance, @note, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GOLD_LOG_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GOLD_LOG_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GOLD_LOG_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GOLD_LOG_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@GARENA_UID			VARCHAR(20)

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@GARENA_UID = '0')
BEGIN

	SELECT TOP 100 accountIDX, garenaUID, shellAmount, currencyAmount, garenaTxnid, currencyBalance, resultCode, regDate
	  FROM (
		SELECT accountIDX, garenaUID, shellAmount, currencyAmount, garenaTxnid, currencyBalance, resultCode, regDate
		  FROM dbo.log_garena_shell_change WITH(NOLOCK)
		 WHERE regDate >= @START_DATE
		   AND regDate < DATEADD(d, 1, @END_DATE)

		 UNION ALL

		SELECT accountIDX, garenaUID, 0 AS shellAmount, currencyAmount, note AS garenaTxnid, currencyBalance, 0 AS resultCode, regDate
		  FROM dbo.log_gift_gold WITH(NOLOCK)
		 WHERE regDate >= @START_DATE
		   AND regDate < DATEADD(d, 1, @END_DATE)
	  ) AS GoldLog
	 ORDER BY regDate DESC

END
ELSE
BEGIN

	SELECT accountIDX, garenaUID, shellAmount, currencyAmount, garenaTxnid, currencyBalance, resultCode, regDate
	  FROM (
		SELECT accountIDX, garenaUID, shellAmount, currencyAmount, garenaTxnid, currencyBalance, resultCode, regDate
		  FROM dbo.log_garena_shell_change WITH(NOLOCK)
		 WHERE regDate >= @START_DATE
		   AND regDate < DATEADD(d, 1, @END_DATE)
		   AND garenaUID = @GARENA_UID

		 UNION ALL

		SELECT accountIDX, garenaUID, 0 AS shellAmount, currencyAmount, note AS garenaTxnid, currencyBalance, 0 AS resultCode, regDate
		  FROM dbo.log_gift_gold WITH(NOLOCK)
		 WHERE regDate >= @START_DATE
		   AND regDate < DATEADD(d, 1, @END_DATE)
		   AND garenaUID = @GARENA_UID
	  ) AS GoldLog
	 ORDER BY regDate DESC

END
GO


-- ----------------------------
-- Procedure structure for USP_GARENA_EVENT_SHELL_CHANGE_LOG_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GARENA_EVENT_SHELL_CHANGE_LOG_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_GARENA_EVENT_SHELL_CHANGE_LOG_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_GARENA_EVENT_SHELL_CHANGE_LOG_GET_LIST]

	@GRENA_UID			VARCHAR(20),	-- 가레나UID
	@START_DATE			DATETIME,		-- 검색 기간
	@END_DATE			DATETIME		-- 검색 기간

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	SELECT accountIDX, garenaUID, shellAmount, currencyAmount, garenaTxnid, currencyBalance, resultCode, regDate
	  FROM dbo.log_garena_shell_change WITH (NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND garenaUID = @GRENA_UID
	 ORDER BY regDate DESC
GO


-- ----------------------------
-- Procedure structure for game_log_concurrent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_log_concurrent]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_log_concurrent]
GO

CREATE PROCEDURE [dbo].[game_log_concurrent]
(
	@serverID bigint
,	@serverIP varchar(15)
,	@serverPort int
,	@serverName varchar(32)
,	@concurrent int
,	@cpType smallint
)
As

	INSERT INTO log_game_concurrent (serverID, serverIP, serverPort, serverName, concurrent, cpType, regDate)
	VALUES (@serverID, @serverIP, @serverPort, @serverName, @concurrent, @cpType, getdate())
GO


-- ----------------------------
-- Procedure structure for USP_GARENA_SHELL_CHANGE_LOG_ADD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GARENA_SHELL_CHANGE_LOG_ADD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_GARENA_SHELL_CHANGE_LOG_ADD]
GO

CREATE PROCEDURE [dbo].[USP_GARENA_SHELL_CHANGE_LOG_ADD]
(
	@GARENA_UID			VARCHAR(130),
	@SHELL_AMOUNT		INT,
	@CURRENCY_AMOUNT	INT,
	@GARENA_TXNID		VARCHAR(32),
	@ACCOUNT_IDX		INT,
	@CURRENCY_BALANCE	INT,
	@RESULT_CODE		INT
)	
AS
	SET NOCOUNT ON;
	
	INSERT dbo.log_garena_shell_change (
		garenaUID, shellAmount, currencyAmount, garenaTxnid, accountIDX, currencyBalance, resultCode, regDate
	)
	VALUES 	(
		@GARENA_UID, @SHELL_AMOUNT, @CURRENCY_AMOUNT, @GARENA_TXNID, @ACCOUNT_IDX, @CURRENCY_BALANCE, @RESULT_CODE, GETDATE()
	)
GO


-- ----------------------------
-- Procedure structure for USP_GARENA_SHELL_CHANGE_LOG_CHECK_TXNID
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GARENA_SHELL_CHANGE_LOG_CHECK_TXNID]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_GARENA_SHELL_CHANGE_LOG_CHECK_TXNID]
GO

CREATE PROCEDURE [dbo].[USP_GARENA_SHELL_CHANGE_LOG_CHECK_TXNID]
(
	@GARENA_TXNID		VARCHAR(32)
)	
AS
	SET NOCOUNT ON;

	SELECT idx FROM dbo.log_garena_shell_change WITH(NOLOCK) WHERE garenaTxnid = @GARENA_TXNID
GO


-- ----------------------------
-- Indexes structure for table log_class_buytime
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_class_buytime] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_classType]
ON [dbo].[log_class_buytime] (
  [classType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_class_rental_history
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_class_rental_history] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_class_rental_history] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_friendIDX]
ON [dbo].[log_class_rental_history] (
  [friendIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_game_concurrent
-- ----------------------------
CREATE CLUSTERED INDEX [CL_log_game_concurrent]
ON [dbo].[log_game_concurrent] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_log_game_concurrent_serverID]
ON [dbo].[log_game_concurrent] (
  [serverID] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_garena_shell_change
-- ----------------------------
CREATE CLUSTERED INDEX [CL_log_garena_shell_change]
ON [dbo].[log_garena_shell_change] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_log_garena_shell_change_accountIDX]
ON [dbo].[log_garena_shell_change] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_log_garena_shell_change_garenaUID]
ON [dbo].[log_garena_shell_change] (
  [garenaUID] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_gift_gold
-- ----------------------------
CREATE NONCLUSTERED INDEX [NC_log_gift_gold_accountIDX]
ON [dbo].[log_gift_gold] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table log_gift_gold
-- ----------------------------
ALTER TABLE [dbo].[log_gift_gold] ADD CONSTRAINT [PK_log_gift_gold] PRIMARY KEY CLUSTERED ([regDate], [garenaUID], [idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table log_guild_mark
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_guild_mark] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_guild_mark] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_flag]
ON [dbo].[log_guild_mark] (
  [flag] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_guildIDX]
ON [dbo].[log_guild_mark] (
  [guildIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_cheer
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_cheer] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[log_league_cheer] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_info_user
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_info_user] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_leagueIDX]
ON [dbo].[log_league_info_user] (
  [leagueIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_list
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_list] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[log_league_list] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_list_user
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_list_user] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[log_league_list_user] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_round_user
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_round_user] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_roundIDX]
ON [dbo].[log_league_round_user] (
  [roundIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_team
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_team] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[log_league_team] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_team_member
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_team_member] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[log_league_team_member] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_team_member_user
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_team_member_user] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[log_league_team_member_user] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_league_team_user
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_league_team_user] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[log_league_team_user] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_level_playtime
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_level_playtime] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_userLevel]
ON [dbo].[log_level_playtime] (
  [userLevel] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_mannerpoint
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[log_mannerpoint] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_receiveIDX]
ON [dbo].[log_mannerpoint] (
  [receiveIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_receivepubIP]
ON [dbo].[log_mannerpoint] (
  [receivepubIP] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_reportIDX]
ON [dbo].[log_mannerpoint] (
  [reportIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_reportpubIP]
ON [dbo].[log_mannerpoint] (
  [reportpubIP] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_resultType]
ON [dbo].[log_mannerpoint] (
  [resultType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_sleep_users
-- ----------------------------
CREATE CLUSTERED INDEX [CL_log_sleep_users]
ON [dbo].[log_sleep_users] (
  [MoveDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_log_sleep_users_AccountIDX]
ON [dbo].[log_sleep_users] (
  [AccountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_user_block
-- ----------------------------
CREATE CLUSTERED INDEX [CL_log_user_block]
ON [dbo].[log_user_block] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_log_user_block_01]
ON [dbo].[log_user_block] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueListDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueListDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userLeagueListDB
-- ----------------------------
ALTER TABLE [dbo].[userLeagueListDB] ADD CONSTRAINT [PK_userLeagueListDB] PRIMARY KEY CLUSTERED ([idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

