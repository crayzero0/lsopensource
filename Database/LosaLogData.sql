/*
 Navicat Premium Data Transfer

 Source Server         : MSSQL
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : WIN-5L13JDNA9OA\SQLEXPRESS:1433
 Source Catalog        : LosaLogData
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 08/07/2019 19:46:46
*/


-- ----------------------------
-- Table structure for GAME_LOG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GAME_LOG]') AND type IN ('U'))
	DROP TABLE [dbo].[GAME_LOG]
GO

CREATE TABLE [dbo].[GAME_LOG] (
  [RegDate] datetime  NOT NULL,
  [LogIDX] bigint  IDENTITY(1,1) NOT NULL,
  [LogType] int  NOT NULL,
  [AccountIDX] int  NOT NULL,
  [UserID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [UserName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [UserLevel] int  NOT NULL,
  [UserExp] int  NOT NULL,
  [CpType] int  NOT NULL,
  [TBLIDX] int  NOT NULL,
  [ObjCode] int  NOT NULL,
  [EventType] tinyint  NOT NULL,
  [Param1] int  NOT NULL,
  [Param2] int  NOT NULL,
  [Param3] int  NOT NULL,
  [Param4] int  NOT NULL,
  [Param5] varchar(50) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [UserIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[GAME_LOG] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_bonus_gold
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_bonus_gold]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_bonus_gold]
GO

CREATE TABLE [dbo].[log_buy_item_bonus_gold] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [GoldIDX] int  NOT NULL,
  [AccountIDX] int  NOT NULL,
  [UserLevel] int DEFAULT ((0)) NOT NULL,
  [Amount] int DEFAULT ((0)) NOT NULL,
  [ItemType] int DEFAULT ((0)) NOT NULL,
  [ItemCode] int DEFAULT ((0)) NOT NULL,
  [ItemValue] int DEFAULT ((0)) NOT NULL,
  [CpType] smallint DEFAULT ((0)) NOT NULL,
  [ShopType] tinyint DEFAULT ((0)) NOT NULL,
  [UserIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [billingID] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [SuccessType] tinyint DEFAULT ((0)) NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_bonus_gold] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_class]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_class]
GO

CREATE TABLE [dbo].[log_buy_item_class] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [limitType] int DEFAULT ((0)) NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_class] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_costume
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_costume]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_costume]
GO

CREATE TABLE [dbo].[log_buy_item_costume] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_costume] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_decoration
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_decoration]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_decoration]
GO

CREATE TABLE [dbo].[log_buy_item_decoration] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [kindred] int DEFAULT ((0)) NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_decoration] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_equip
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_equip]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_equip]
GO

CREATE TABLE [dbo].[log_buy_item_equip] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [reinforce] int DEFAULT ((0)) NOT NULL,
  [machineType] int DEFAULT ((0)) NOT NULL,
  [limitDate] int  NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_equip] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_gold
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_gold]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_gold]
GO

CREATE TABLE [dbo].[log_buy_item_gold] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [itemValue] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [cpType] smallint DEFAULT ((0)) NOT NULL,
  [billingID] varchar(64) COLLATE Korean_Wansung_CI_AS  NULL,
  [buyType] tinyint DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_gold] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_sbox
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_sbox]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_sbox]
GO

CREATE TABLE [dbo].[log_buy_item_sbox] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [presentType] smallint DEFAULT ((0)) NOT NULL,
  [value1] int DEFAULT ((0)) NOT NULL,
  [value2] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [cpType] smallint DEFAULT ((0)) NOT NULL,
  [billingID] varchar(64) COLLATE Korean_Wansung_CI_AS DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [limitDate] int  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_sbox] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_buy_item_special
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_buy_item_special]') AND type IN ('U'))
	DROP TABLE [dbo].[log_buy_item_special]
GO

CREATE TABLE [dbo].[log_buy_item_special] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [itemValue] int DEFAULT ((0)) NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_buy_item_special] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_client_error
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_client_error]') AND type IN ('U'))
	DROP TABLE [dbo].[log_client_error]
GO

CREATE TABLE [dbo].[log_client_error] (
  [idx] bigint  IDENTITY(1,1) NOT NULL,
  [writeID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [servType] varchar(12) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [servZone] varchar(16) COLLATE Korean_Wansung_CI_AS  NULL,
  [logType] varchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [title] varchar(200) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [content] varchar(1500) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [comment] int DEFAULT ((0)) NOT NULL,
  [readnum] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_client_error] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_awake
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_awake]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_awake]
GO

CREATE TABLE [dbo].[log_data_awake] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [pieceCode] int DEFAULT ((0)) NOT NULL,
  [pieceUseCount] smallint DEFAULT ((0)) NOT NULL,
  [awakeType] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_awake] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_character
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_character]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_character]
GO

CREATE TABLE [dbo].[log_data_character] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [playType] int DEFAULT ((0)) NOT NULL,
  [modeType] int DEFAULT ((0)) NOT NULL,
  [subType1] int DEFAULT ((0)) NOT NULL,
  [subType2] int DEFAULT ((0)) NOT NULL,
  [playTime] int DEFAULT ((0)) NOT NULL,
  [characterType] int DEFAULT ((0)) NOT NULL,
  [kill] int DEFAULT ((0)) NOT NULL,
  [death] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_character] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_clover
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_clover]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_clover]
GO

CREATE TABLE [dbo].[log_data_clover] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [friendIDX] int DEFAULT ((0)) NOT NULL,
  [eventType] smallint DEFAULT ((0)) NOT NULL,
  [CloverCount] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_clover] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_gear_upgrade
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_gear_upgrade]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_gear_upgrade]
GO

CREATE TABLE [dbo].[log_data_gear_upgrade] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [gearCode] int DEFAULT ((0)) NOT NULL,
  [nowUpgradeValue] tinyint DEFAULT ((0)) NOT NULL,
  [resultUpgradeValue] tinyint DEFAULT ((0)) NOT NULL,
  [pieceCode] int DEFAULT ((0)) NOT NULL,
  [logType] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_gear_upgrade] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_league_present
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_league_present]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_league_present]
GO

CREATE TABLE [dbo].[log_data_league_present] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [leagueIDX] int DEFAULT ((0)) NOT NULL,
  [currentRound] tinyint DEFAULT ((0)) NOT NULL,
  [presentCode1] int DEFAULT ((0)) NOT NULL,
  [presentCode2] int DEFAULT ((0)) NOT NULL,
  [presentCode3] int DEFAULT ((0)) NOT NULL,
  [presentCode4] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_league_present] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_localinfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_localinfo]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_localinfo]
GO

CREATE TABLE [dbo].[log_data_localinfo] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [os] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [ie] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [directx] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [cpu] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [gpu] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [memory] nvarchar(100) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [systemResolution] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [losaResolution] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [screenType] tinyint DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL,
  [hashId] varchar(32) COLLATE Korean_Wansung_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[log_data_localinfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_medal
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_medal]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_medal]
GO

CREATE TABLE [dbo].[log_data_medal] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [medalType] int  NOT NULL,
  [limitType] int  NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_medal] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_medal_extend
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_medal_extend]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_medal_extend]
GO

CREATE TABLE [dbo].[log_data_medal_extend] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [slotNum] tinyint DEFAULT ((0)) NOT NULL,
  [period] int DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_medal_extend] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_pcroom
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_pcroom]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_pcroom]
GO

CREATE TABLE [dbo].[log_data_pcroom] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [playTime] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [pcnum] int DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [pcrType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_pcroom] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_peso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_peso]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_peso]
GO

CREATE TABLE [dbo].[log_data_peso] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [peso] int DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_peso] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_pet
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_pet]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_pet]
GO

CREATE TABLE [dbo].[log_data_pet] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int  NOT NULL,
  [petIDX] int  NOT NULL,
  [petCode] int DEFAULT ((0)) NOT NULL,
  [petRank] tinyint DEFAULT ((0)) NOT NULL,
  [petLevel] int DEFAULT ((0)) NOT NULL,
  [petExp] int DEFAULT ((0)) NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [logType] tinyint DEFAULT ((0)) NOT NULL,
  [logSubType] int DEFAULT ((0)) NOT NULL,
  [logNote] varchar(200) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_pet] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_piece_divide
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_piece_divide]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_piece_divide]
GO

CREATE TABLE [dbo].[log_data_piece_divide] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [materialCode] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_piece_divide] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_piece_mix
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_piece_mix]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_piece_mix]
GO

CREATE TABLE [dbo].[log_data_piece_mix] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [mixType] smallint DEFAULT ((0)) NOT NULL,
  [mixCode] int DEFAULT ((0)) NOT NULL,
  [resultType] tinyint DEFAULT ((0)) NOT NULL,
  [useA] int DEFAULT ((0)) NOT NULL,
  [useB] int DEFAULT ((0)) NOT NULL,
  [resultA] int DEFAULT ((0)) NOT NULL,
  [resultB] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_piece_mix] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_piece_obtain
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_piece_obtain]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_piece_obtain]
GO

CREATE TABLE [dbo].[log_data_piece_obtain] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(50) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [playTime] int DEFAULT ((0)) NOT NULL,
  [step] tinyint DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_piece_obtain] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_play
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_play]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_play]
GO

CREATE TABLE [dbo].[log_data_play] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [playType] int DEFAULT ((0)) NOT NULL,
  [modeType] int DEFAULT ((0)) NOT NULL,
  [subType1] int DEFAULT ((0)) NOT NULL,
  [subType2] int DEFAULT ((0)) NOT NULL,
  [playTime] int DEFAULT ((0)) NOT NULL,
  [deathTime] int DEFAULT ((0)) NOT NULL,
  [peso] int DEFAULT ((0)) NOT NULL,
  [win] int DEFAULT ((0)) NOT NULL,
  [lose] int DEFAULT ((0)) NOT NULL,
  [kill] int DEFAULT ((0)) NOT NULL,
  [death] int DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [pcnum] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_play] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_quest
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_quest]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_quest]
GO

CREATE TABLE [dbo].[log_data_quest] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [mainIDX] int DEFAULT ((0)) NOT NULL,
  [subIDX] int DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_quest] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_time
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_time]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_time]
GO

CREATE TABLE [dbo].[log_data_time] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [playTime] int DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_time] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_trade
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_trade]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_trade]
GO

CREATE TABLE [dbo].[log_data_trade] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickname] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [value1] int DEFAULT ((0)) NOT NULL,
  [value2] int DEFAULT ((0)) NOT NULL,
  [price] bigint DEFAULT ((0)) NOT NULL,
  [logType] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(16) COLLATE Korean_Wansung_CI_AS  NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_trade] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_data_tutorial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_tutorial]') AND type IN ('U'))
	DROP TABLE [dbo].[log_data_tutorial]
GO

CREATE TABLE [dbo].[log_data_tutorial] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [step] int DEFAULT ((0)) NOT NULL,
  [playTime] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_data_tutorial] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_error_billing
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_error_billing]') AND type IN ('U'))
	DROP TABLE [dbo].[log_error_billing]
GO

CREATE TABLE [dbo].[log_error_billing] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [cpType] smallint DEFAULT ((0)) NOT NULL,
  [errType] int DEFAULT ((0)) NOT NULL,
  [note] varchar(200) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_error_billing] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_event_bingo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_event_bingo]') AND type IN ('U'))
	DROP TABLE [dbo].[log_event_bingo]
GO

CREATE TABLE [dbo].[log_event_bingo] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [choiceType] tinyint DEFAULT ((0)) NOT NULL,
  [number] tinyint DEFAULT ((0)) NOT NULL,
  [stateType] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_event_bingo] SET (LOCK_ESCALATION = TABLE)
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
-- Table structure for log_present
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_present]') AND type IN ('U'))
	DROP TABLE [dbo].[log_present]
GO

CREATE TABLE [dbo].[log_present] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickname] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [receiveIDX] int  NOT NULL,
  [presentType] smallint DEFAULT ((0)) NOT NULL,
  [value1] int DEFAULT ((0)) NOT NULL,
  [value2] int DEFAULT ((0)) NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_present] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_use_gold
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_use_gold]') AND type IN ('U'))
	DROP TABLE [dbo].[log_use_gold]
GO

CREATE TABLE [dbo].[log_use_gold] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [garenaUID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [presentType] int DEFAULT ((0)) NOT NULL,
  [friendUID] varchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [itemValue] int DEFAULT ((0)) NOT NULL,
  [itemValue2] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [currencyRealCash] int DEFAULT ((0)) NOT NULL,
  [currencyBonusCash] int DEFAULT ((0)) NOT NULL,
  [result] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_use_gold] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for log_use_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_use_item]') AND type IN ('U'))
	DROP TABLE [dbo].[log_use_item]
GO

CREATE TABLE [dbo].[log_use_item] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickname] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [rowIDX] int DEFAULT ((0)) NOT NULL,
  [colIDX] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [note] varchar(200) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[log_use_item] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for SQL_ERROR_LOG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SQL_ERROR_LOG]') AND type IN ('U'))
	DROP TABLE [dbo].[SQL_ERROR_LOG]
GO

CREATE TABLE [dbo].[SQL_ERROR_LOG] (
  [ErrorID] int  IDENTITY(1,1) NOT NULL,
  [AccountIDX] int  NOT NULL,
  [ErrorNo] int  NOT NULL,
  [ErrorProcedure] varchar(50) COLLATE Korean_Wansung_CI_AS  NULL,
  [ErrorLine] int  NULL,
  [ErrorServerity] int  NULL,
  [ErrorState] int  NULL,
  [ErrorMessage] varchar(500) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [ErrorTime] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[SQL_ERROR_LOG] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- View structure for log_data_playtime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_playtime]') AND type IN ('V'))
	DROP VIEW [dbo].[log_data_playtime]
GO

CREATE VIEW [dbo].[log_data_playtime] AS SELECT accountIDX, playTime + deathTime AS 'playTime', regDate
  FROM dbo.log_data_play WITH(NOLOCK)
 WHERE logType > 0

UNION ALL

SELECT accountIDX, playTime, regDate
  FROM dbo.log_data_time WITH(NOLOCK)
 WHERE logType > 0
   AND logType NOT IN (15, 16)

UNION ALL

SELECT accountIDX, playTime, regDate
  FROM dbo.log_data_tutorial WITH(NOLOCK)
GO


-- ----------------------------
-- View structure for log_data_playtime_battle
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_playtime_battle]') AND type IN ('V'))
	DROP VIEW [dbo].[log_data_playtime_battle]
GO

CREATE VIEW [dbo].[log_data_playtime_battle] AS SELECT accountIDX, playTime + deathTime AS 'playTime', regDate
  FROM dbo.log_data_play WITH(NOLOCK)
 WHERE playType IN (4,5)

UNION ALL

SELECT accountIDX, playTime, regDate
  FROM dbo.log_data_time WITH(NOLOCK)
 WHERE logType IN (11, 12, 13, 14)
GO


-- ----------------------------
-- View structure for log_data_playtime_battle_playType4
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_playtime_battle_playType4]') AND type IN ('V'))
	DROP VIEW [dbo].[log_data_playtime_battle_playType4]
GO

CREATE VIEW [dbo].[log_data_playtime_battle_playType4] AS SELECT accountIDX, playTime + deathTime AS 'playTime', regDate
FROM dbo.log_data_play WITH(NOLOCK)
WHERE playType=4

UNION ALL

SELECT accountIDX, playTime, regDate
  FROM dbo.log_data_time WITH(NOLOCK)
 WHERE logType IN (11, 12, 17)
GO


-- ----------------------------
-- View structure for log_data_playtime_battle_playType5
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_playtime_battle_playType5]') AND type IN ('V'))
	DROP VIEW [dbo].[log_data_playtime_battle_playType5]
GO

CREATE VIEW [dbo].[log_data_playtime_battle_playType5] AS SELECT accountIDX, playTime + deathTime AS 'playTime', regDate
  FROM dbo.log_data_play WITH(NOLOCK)
 WHERE playType=5

UNION ALL

SELECT accountIDX, playTime, regDate
  FROM dbo.log_data_time WITH(NOLOCK)
 WHERE logType IN (13, 14)
GO


-- ----------------------------
-- Procedure structure for log_item_sbox_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_sbox_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_sbox_add]
GO

CREATE PROCEDURE [dbo].[log_item_sbox_add]
(
	@accountIDX INT
,	@nickName NVARCHAR(20)
,	@userLevel INT
,	@presentType SMALLINT
,	@value1 INT
,	@value2 INT
,	@amount INT
,	@cpType INT
,	@billingID VARCHAR(64)
,	@logType INT
,	@userIP VARCHAR(15)
,	@note NVARCHAR(100)
,	@limitDate INT
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_buy_item_sbox (
	accountIDX, nickName, userLevel, presentType, value1, value2, amount, cpType, billingID, logType, userIP, note, limitDate, regDate
)
VALUES (
	@accountIDX, @nickName, @userLevel, @presentType, @value1, @value2, @amount, @cpType, @billingID, @logType, @userIP, @note, @limitDate, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for log_data_medal_extend_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_medal_extend_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_medal_extend_add]
GO

CREATE PROCEDURE [dbo].[log_data_medal_extend_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@userLevel int
,	@classType int
,	@slotNum tinyint
,	@period int
,	@logType int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_medal_extend (
	accountIDX, nickName, userLevel, classType, slotNum, period, logType, regDate
)
VALUES (
	@accountIDX, @nickName, @userLevel, @classType, @slotNum, @period, @logType, getdate()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_MONITOR_PERMA_ITEM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_MONITOR_PERMA_ITEM]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_MONITOR_PERMA_ITEM]
GO

CREATE PROCEDURE [dbo].[AGENT_MONITOR_PERMA_ITEM]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)
DECLARE @classPackage1 int
DECLARE @classPackage2 int
DECLARE @classGold1 int
DECLARE @classGold2 int
DECLARE @classScroll1 int
DECLARE @classScroll2 int
DECLARE @classPermascroll1 int
DECLARE @classPermascroll2 int
DECLARE @classFishing1 int
DECLARE @classFishing2 int
DECLARE @gearTrial1 int
DECLARE @gearTrial2 int
DECLARE @gearBase1 int
DECLARE @gearBase2 int
DECLARE @gearPerma1 int
DECLARE @gearPerma2 int
DECLARE @gearPPerma1 int
DECLARE @gearPPerma2 int
DECLARE @gearTrial1P int
DECLARE @gearTrial2P int
DECLARE @gearBase1P int
DECLARE @gearBase2P int
DECLARE @gearPerma1P int
DECLARE @gearPerma2P int
DECLARE @gearTrial1R int
DECLARE @gearTrial2R int
DECLARE @gearBase1R int
DECLARE @gearBase2R int
DECLARE @gearPerma1R int
DECLARE @gearPerma2R int
DECLARE @gearRelic1 int
DECLARE @gearRelic2 int

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8), @startDate, 112)

SET @classPackage1 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND itemType=3
	   AND itemCode=3000019
)
SET @classPackage2 = @classPackage1

SET @classGold1 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold WITH(NOLOCK) WHERE (regDate >= @startDate and regDate < @endDate) and itemtype=1 and itemValue=0)
SET @classGold2 = @classGold1

SET @classScroll1 = (
	SELECT COUNT(*)
	  FROM dbo.log_present WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX=0
	   AND presentType=1
	   AND eventType=1
	   AND note='Gashapon:1000022 0:0'
)
SET @classScroll2 = (
	SELECT COUNT(*)
	  FROM dbo.log_present WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX=0
	   AND presentType=1
	   AND value2=0
	   AND eventType=1
	   AND note='Gashapon:1000022 0:0'
)

SET @classPermascroll1 = (
	SELECT COUNT(*)
	  FROM dbo.log_present WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX=0
	   AND presentType=1
	   AND eventType=1
	   AND note='Gashapon:1000035 0:0'
)
SET @classPermascroll2 = (
	SELECT COUNT(*)
	  FROM dbo.log_present WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX=0
	   AND presentType=1
	   AND value2=0
	   AND eventType=1
	   AND note='Gashapon:1000035 0:0'
)

SET @classFishing1 = (
	SELECT COUNT(*)
	  FROM dbo.log_present WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX=0
	   AND presentType=1
	   AND eventType=1
	   AND note='SpecialFishing 0:0'
)
SET @classFishing2 = (
	SELECT COUNT(*)
	  FROM dbo.log_present WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX=0
	   AND presentType=1
	   AND value2=0
	   AND eventType=1
	   AND note='SpecialFishing 0:0'
)

SET @gearTrial1 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=11
	   AND eventType=1
)
SET @gearTrial2 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=11
	   AND limitDate=0
	   AND eventType=1
)

SET @gearBase1 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=1
	   AND eventType=1
)
SET @gearBase2 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=1
	   AND limitDate=0
	   AND eventType=1
)

SET @gearPerma1 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=32
	   AND eventType=1
)
SET @gearPerma2 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=32
	   AND limitDate=0
	   AND eventType=1
)

SET @gearPPerma1 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType in (33,34,35,36)
	   AND eventType=1
)
SET @gearPPerma2 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType in (33,34,35,36)
	   AND limitDate=0
	   AND eventType=1
)

SET @gearTrial1P = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=11
	   AND eventType=3
)
SET @gearTrial2P = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=11
	   AND limitDate=0
	   AND eventType=3
)

SET @gearBase1P = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=1
	   AND eventType=3
)
SET @gearBase2P = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=1
	   AND limitDate=0
	   AND eventType=3
)

SET @gearPerma1P = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=2
	   AND eventType=3
)
SET @gearPerma2P = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=2
	   AND limitDate=0
	   AND eventType=3
)

SET @gearTrial1R = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=46
	   AND eventType=3
)
SET @gearTrial2R = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=46
	   AND limitDate=0
	   AND eventType=3
)

SET @gearBase1R = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=47
	   AND eventType=3
)
SET @gearBase2R = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=47
	   AND limitDate=0
	   AND eventType=3
)

SET @gearPerma1R = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=48
	   AND eventType=3
)
SET @gearPerma2R = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType=48
	   AND limitDate=0
	   AND eventType=3
)

SET @gearRelic1 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType in (10001, 10002)
	   AND eventType=5
)
SET @gearRelic2 = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND machineType in (10001, 10002)
	   AND limitDate=0
	   AND eventType=5
)


INSERT INTO Analytical_statistics.DBO.game_monitor_perma_item (
	class_package1, class_package2, class_gold1, class_gold2, class_scroll1, class_scroll2,
	class_permascroll1, class_permascroll2, class_fishing1, class_fishing2, gear_trial1, gear_trial2,
	gear_base1, gear_base2, gear_perma1, gear_perma2, gear_part_perma1, gear_part_perma2, gear_trial1_p, gear_trial2_p,
	gear_base1_p, gear_base2_p, gear_perma1_p, gear_perma2_p, gear_trial1_r, gear_trial2_r, gear_base1_r, gear_base2_r,
	gear_perma1_r, gear_perma2_r, gear_relic1, gear_relic2, dateIDX, analDate, regdate
)
VALUES (
	@classPackage1, @classPackage2, @classGold1, @classGold2, @classScroll1, @classScroll2,
	@classPermascroll1, @classPermascroll2,	@classFishing1, @classFishing2, @gearTrial1, @gearTrial2,
	@gearBase1, @gearBase2, @gearPerma1, @gearPerma2, @gearPPerma1, @gearPPerma2, @gearTrial1P, @gearTrial2P,
	@gearBase1P, @gearBase2P, @gearPerma1P, @gearPerma2P, @gearTrial1R, @gearTrial2R, @gearBase1R, @gearBase2R,
	@gearPerma1R, @gearPerma2R, @gearRelic1, @gearRelic2, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for log_item_special_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_special_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_special_add]
GO

CREATE PROCEDURE [dbo].[log_item_special_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@itemType int
,	@itemValue int
,	@eventType int
,	@amount int
,	@userIP varchar(15)
,	@note varchar(100)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_buy_item_special (accountIDX, nickName, itemType, itemValue, eventType, amount, userIP, note, regDate)
VALUES (@accountIDX, @nickName, @itemType, @itemValue, @eventType, @amount, @userIP, @note, GETDATE())
GO


-- ----------------------------
-- Procedure structure for USP_ADM_QUEST_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_QUEST_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_QUEST_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_QUEST_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, mainIDX, subIDX, logType, regDate
	  FROM dbo.log_data_quest WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, mainIDX, subIDX, logType, regDate
	  FROM dbo.log_data_quest WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_PESO_TOTAL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PESO_TOTAL]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PESO_TOTAL]
GO

CREATE PROCEDURE [dbo].[AGENT_PESO_TOTAL]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @region bigint
DECLARE @battleTime bigint
DECLARE @regionTime bigint
DECLARE @memberjoin bigint
DECLARE @levelup bigint
DECLARE @bankrupt bigint
DECLARE @roomout bigint
DECLARE @buyitem bigint
DECLARE @deleteclass bigint
DECLARE @fishing bigint
DECLARE @relic bigint
DECLARE @ability bigint
DECLARE @seasonend bigint
DECLARE @event1 bigint
DECLARE @nowhave bigint
DECLARE @buyclass bigint
DECLARE @buydeco bigint
DECLARE @buyspecial bigint
DECLARE @presentpeso bigint
DECLARE @presentbuypeso bigint
DECLARE @buyequip bigint
DECLARE @sellequip bigint
DECLARE @dateIDX char(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

INSERT INTO Analytical_statistics.DBO.game_peso_total (
	battle, dateIDX, analDate, regDate
)
SELECT ISNULL(SUM(peso), 0), @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE()
  FROM log_data_play WITH(NOLOCK)
 WHERE regDate >= @startDate
   AND regDate < @endDate
   AND playType=4
   AND logType > 0

SET @region = ISNULL((
	SELECT SUM(peso)
	  FROM dbo.log_data_play WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND playType=5
	   AND logType > 0), 0)

SET @battleTime = ISNULL((
	SELECT SUM(playTime)
	  FROM dbo.log_data_playtime_battle_playType4 WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate), 0)

SET @regionTime = ISNULL((
	SELECT SUM(playTime)
	  FROM dbo.log_data_playtime_battle_playType5 WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate), 0)

SELECT @memberjoin = ISNULL(SUM(CASE a.logType WHEN 1 THEN a.peso ELSE 0 END), 0),
	   @levelup = ISNULL(SUM(CASE a.logType WHEN 2 THEN a.peso ELSE 0 END), 0),
	   @bankrupt = ISNULL(SUM(CASE a.logType WHEN 3 THEN a.peso ELSE 0 END), 0),
	   @roomout = ISNULL(SUM(CASE a.logType WHEN 4 THEN a.peso ELSE 0 END), 0),
	   @buyitem = ISNULL(SUM(CASE a.logType WHEN 5 THEN a.peso ELSE 0 END), 0),
	   @deleteclass = ISNULL(SUM(CASE a.logType WHEN 6 THEN a.peso ELSE 0 END), 0),
	   @fishing = ISNULL(SUM(CASE a.logType WHEN 11 THEN a.peso ELSE 0 END), 0),
	   @ability = ISNULL(SUM(CASE a.logType WHEN 7 THEN a.peso ELSE 0 END), 0),
	   @seasonend = ISNULL(SUM(CASE a.logType WHEN 9 THEN a.peso ELSE 0 END), 0),
	   @event1 = ISNULL(SUM(CASE a.logType WHEN 10 THEN a.peso ELSE 0 END), 0),
	   @presentbuypeso = ISNULL(SUM(CASE a.logType WHEN 12 THEN a.peso ELSE 0 END), 0),
	   @presentpeso = ISNULL(SUM(CASE a.logType WHEN 13 THEN a.peso ELSE 0 END), 0),
	   @sellequip = ISNULL(SUM(CASE a.logType WHEN 14 THEN a.peso ELSE 0 END), 0),
	   @relic = ISNULL(SUM(CASE a.logType WHEN 18 THEN a.peso ELSE 0 END), 0)
  FROM (
	SELECT logType, SUM(CONVERT(bigint, peso)) AS 'peso' FROM log_data_peso WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND peso < 1000000
	 GROUP BY logType
) a

SET @nowhave = ISNULL((
	SELECT SUM(gamemoney)
	  FROM LosaGame_v140826.DBO.userGameDB), 0)

SET @buyclass = ISNULL((
	SELECT SUM(amount)
	  FROM dbo.log_buy_item_class WITH(NOLOCK)
	 WHERE regDate >= @startDate
	  AND regDate < @endDate
	  AND eventType=1), 0)

SET @buydeco = ISNULL((
	SELECT SUM(amount)
	  FROM dbo.log_buy_item_decoration WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND eventType=1), 0)

SET @buyspecial = ISNULL((
	SELECT SUM(amount)
	  FROM dbo.log_buy_item_special WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND eventType=1), 0)

SET @buyequip = ISNULL((
	SELECT SUM(amount)
	  FROM dbo.log_buy_item_equip WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND eventType=1), 0)

UPDATE Analytical_statistics.DBO.game_peso_total
   SET region = @region,
	   battleTime = @battleTime,
	   regionTime = @regionTime,
	   memberjoin = @memberjoin,
	   levelup = @levelup,
	   bankrupt = @bankrupt,
	   roomout = @roomout,
	   buyitem = @buyitem,
	   deleteclass = @deleteclass,
	   fishing = @fishing,
	   relic = @relic,
	   ability = @ability,
	   nowhave = @nowhave,
	   seasonend = @seasonend,
	   buyclass = @buyclass,
	   buydeco = @buydeco,
	   buyspecial = @buyspecial,
	   event1 = @event1,
	   presentbuypeso = @presentbuypeso,
	   presentpeso = @presentpeso,
	   buyequip = @buyequip,
	   sellequip = @sellequip
 WHERE dateIDX = @dateIDX
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAY_TIME_AVG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAY_TIME_AVG]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAY_TIME_AVG]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAY_TIME_AVG]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)
DECLARE @playTime_all int
DECLARE @playTime_new int

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

SET @playTime_all = ISNULL((
	SELECT SUM(playtime)
	  FROM dbo.log_data_playtime WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate), 0)

SET @playTime_new = ISNULL((
	SELECT SUM(playtime)
	  FROM dbo.log_data_playtime WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX IN (
		   SELECT DISTINCT(accountIDX)
			 FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		    WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10)
			  AND newType=1)), 0)

INSERT INTO Analytical_statistics.DBO.game_play_time_avg (
	playTime_all, playTime_new, dateIDX, analDate, regDate
)
VALUES (
	@playTime_all, @playTime_new, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAY_TIME_AVG_BATTLE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAY_TIME_AVG_BATTLE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAY_TIME_AVG_BATTLE]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAY_TIME_AVG_BATTLE]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)
DECLARE @playTime_all int
DECLARE @playTime_new int

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

SET @playTime_all = ISNULL((
	SELECT SUM(playtime)
	  FROM dbo.log_data_playtime_battle WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate), 0)

SET @playTime_new = ISNULL((
	SELECT SUM(playtime)
	  FROM dbo.log_data_playtime_battle WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND accountIDX IN (
		   SELECT DISTINCT(accountIDX)
			 FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		    WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10)
			  AND newType=1)), 0)

INSERT INTO Analytical_statistics.DBO.game_play_time_avg_battle (
	playTime_all, playTime_new, dateIDX, analDate, regDate
)
VALUES (
	@playTime_all, @playTime_new, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAY_TIME_BATTLE_MODETYPE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAY_TIME_BATTLE_MODETYPE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAY_TIME_BATTLE_MODETYPE]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAY_TIME_BATTLE_MODETYPE]

AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @analDate datetime
DECLARE @dateIDX char(8)
DECLARE @wait int
DECLARE @observer int
DECLARE @championwait int

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @analDate = LEFT(CONVERT(varchar(20), @startDate, 120), 10)
SET @dateIDX = CONVERT(char(8), @startDate, 112)


INSERT INTO Analytical_statistics.DBO.game_play_time_battle_modeType (
	[power], prisoner, hidden, death, teamdeath, bossraid, skeletonhero,
	soccer, kangsi, runningman, championplay, pvemnd, pvesnow, dateIDX, analDate, regDate
)
SELECT [power] = ISNULL(SUM(CASE WHEN a.modeType = 1 THEN a.playTime ELSE 0 END), 0),
	   prisoner = ISNULL(SUM(CASE WHEN a.modeType = 2 THEN a.playTime ELSE 0 END), 0),
	   hidden = ISNULL(SUM(CASE WHEN a.modeType = 3 THEN a.playTime ELSE 0 END), 0),
	   death = ISNULL(SUM(CASE WHEN a.modeType = 5 THEN a.playTime ELSE 0 END), 0),
	   teamdeath = ISNULL(SUM(CASE WHEN a.modeType = 6 THEN a.playTime ELSE 0 END), 0),
	   bossraid = ISNULL(SUM(CASE WHEN a.modeType = 7 THEN a.playTime ELSE 0 END), 0),
	   skeletonhero = ISNULL(SUM(CASE WHEN a.modeType = 8 THEN a.playTime ELSE 0 END), 0),
	   soccer = ISNULL(SUM(CASE WHEN a.modeType = 9 THEN a.playTime ELSE 0 END), 0),
	   kangsi = ISNULL(SUM(CASE WHEN a.modeType = 11 THEN a.playTime ELSE 0 END), 0),
	   runningman = ISNULL(SUM(CASE WHEN a.modeType = 14 THEN a.playTime ELSE 0 END), 0),
	   championplay = ISNULL(SUM(CASE WHEN a.modeType = 15 THEN a.playTime ELSE 0 END), 0),
	   pvemnd = ISNULL(SUM(CASE WHEN a.modeType = 16 THEN a.playTime ELSE 0 END), 0),
	   pvesnow = ISNULL(SUM(CASE WHEN a.modeType = 17 THEN a.playTime ELSE 0 END), 0),
	   @dateIDX,
	   @analDate,
	   GETDATE()
  FROM (
	SELECT modeType, SUM(playTime) + SUM(deathTime) AS 'playTime'
	  FROM dbo.log_data_play WITH(NOLOCK)
	 WHERE playType = 4
	   AND regDate >= @startDate
	   AND regdate < @endDate
	 GROUP BY modetype
) a

SET @wait = ISNULL((
	SELECT SUM(playTime)
	  FROM dbo.log_data_time WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regdate < @endDate
	   AND logType in (12,13)), 0)

SET @observer = ISNULL((
	SELECT SUM(playTime)
	  FROM dbo.log_data_time WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regdate < @endDate
	   AND logType in (11,14)), 0)

SET @championwait = (
	SELECT ISNULL(SUM(playTime), 0)
	  FROM dbo.log_data_time WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regdate < @endDate
	   AND logType in (17)
)

UPDATE Analytical_statistics.DBO.game_play_time_battle_modeType
   SET [wait]=@wait,
	   observer=@observer,
	   championwait=@championwait
 WHERE dateIDX=@dateIDX
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAY_TIME_FISHING
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAY_TIME_FISHING]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAY_TIME_FISHING]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAY_TIME_FISHING]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

INSERT INTO Analytical_statistics.DBO.game_play_time_fishing (
	playTime, dateIDX, analDate, regDate
)
SELECT ISNULL(SUM(playTime), 0), @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE()
  FROM dbo.log_data_time WITH(NOLOCK)
 WHERE regDate >= @startDate
   AND regDate < @endDate
   AND logType=15
GO


-- ----------------------------
-- Procedure structure for log_present_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_present_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_present_add]
GO

CREATE PROCEDURE [dbo].[log_present_add]
(
	@accountIDX int
,	@nickname varchar(20)
,	@receiveIDX int
,	@presentType smallint
,	@value1 int
,	@value2 int
,	@eventType int
,	@userIP varchar(15)
,	@note varchar(100)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_present (
	accountIDX, nickname, receiveIDX, presentType, value1, value2, eventType, userIP, note, regDate
)
VALUES (
	@accountIDX, @nickName, @receiveIDX, @presentType, @value1, @value2, @eventType, @userIP, @note, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for log_data_pcroom_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_pcroom_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_pcroom_add]
GO

CREATE PROCEDURE [dbo].[log_data_pcroom_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@playTime int
,	@userIP varchar(15)
,	@pcnum int
,	@logType int
,	@pcrType int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_pcroom (accountIDX, nickName, playTime, userIP, pcnum, logType, pcrType, regDate)
VALUES (@accountIDX, @nickName, @playTime, @userIP, @pcnum, @logType, @pcrType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAY_TIME_PLAYTYPE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAY_TIME_PLAYTYPE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAY_TIME_PLAYTYPE]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAY_TIME_PLAYTYPE]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)
DECLARE @headquarter bigint, @square bigint, @battle bigint, @region bigint

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

SET @headquarter = ISNULL((SELECT SUM(playTime) FROM log_data_time WITH(NOLOCK) WHERE regDate > @startDate and regDate < @endDate and logType < 10), 0)
SET @headquarter = @headquarter + ISNULL((SELECT SUM(playTime) + SUM(deathTime) FROM log_data_play WITH(NOLOCK) WHERE regDate > @startDate and regDate < @endDate and modeType=13), 0)
SET @square = ISNULL((SELECT SUM(playTime) + SUM(deathTime) FROM log_data_play WITH(NOLOCK) WHERE regDate > @startDate and regDate < @endDate and logType > 0 and playType=3), 0)
SET @battle = ISNULL((SELECT SUM(playTime) FROM log_data_playtime_battle_playType4 WITH(NOLOCK) WHERE regDate > @startDate and regDate < @endDate), 0)
SET @region = ISNULL((SELECT SUM(playTime) FROM log_data_playtime_battle_playType5 WITH(NOLOCK) WHERE regDate > @startDate and regDate < @endDate), 0)

INSERT INTO Analytical_statistics.DBO.game_play_time_playtype (headquarter, [square], battle, region, dateIDX, analDate, regDate)
VALUES (@headquarter, @square, @battle, @region, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PRESENT_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PRESENT_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PRESENT_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PRESENT_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, accountIDX, nickname, presentType, value1, value2, eventType, note, regDate
	  FROM dbo.log_present WITH (NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, accountIDX, nickname, presentType, value1, value2, eventType, note, regDate
	  FROM dbo.log_present WITH (NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND receiveIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAY_TIME_RELIC
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAY_TIME_RELIC]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAY_TIME_RELIC]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAY_TIME_RELIC]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	INSERT INTO Analytical_statistics.DBO.game_play_time_relic (playTime, dateIDX, analDate, regDate)
	SELECT ISNULL(SUM(playTime), 0), @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE()
	FROM log_data_time WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate and logType=16
GO


-- ----------------------------
-- Procedure structure for log_data_peso_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_peso_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_peso_add]
GO

CREATE PROCEDURE [dbo].[log_data_peso_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@peso int
,	@logType int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_peso (accountIDX, nickName, peso, logType, regDate)
VALUES (@accountIDX, @nickName, @peso, @logType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAY_TIME_ZERO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAY_TIME_ZERO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAY_TIME_ZERO]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAY_TIME_ZERO]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)
	DECLARE @failTutorial int, @notTutorial int, @endnotTutorial int

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	INSERT INTO Analytical_statistics.DBO.game_play_time_zero_np (tutorial1, tutorial2, tutorial3, tutorial4, tutorial5, tutorial6, tutorial7, tutorial8, tutorial9, tutorial10, tutorial11, tutorial12, tutorial13, tutorial14, tutorial15, tutorial16, dateIDX, analDate, regDate)

	SELECT	tutorial1 = ISNULL(SUM(CASE d.step WHEN 1 THEN d.cnt ELSE 0 END), 0)
,			tutorial2 = ISNULL(SUM(CASE d.step WHEN 2 THEN d.cnt ELSE 0 END), 0)
,			tutorial3 = ISNULL(SUM(CASE d.step WHEN 3 THEN d.cnt ELSE 0 END), 0)
,			tutorial4 = ISNULL(SUM(CASE d.step WHEN 4 THEN d.cnt ELSE 0 END), 0)
,			tutorial5 = ISNULL(SUM(CASE d.step WHEN 5 THEN d.cnt ELSE 0 END), 0)
,			tutorial6 = ISNULL(SUM(CASE d.step WHEN 6 THEN d.cnt ELSE 0 END), 0)
,			tutorial7 = ISNULL(SUM(CASE d.step WHEN 7 THEN d.cnt ELSE 0 END), 0)
,			tutorial8 = ISNULL(SUM(CASE d.step WHEN 8 THEN d.cnt ELSE 0 END), 0)
,			tutorial9 = ISNULL(SUM(CASE d.step WHEN 9 THEN d.cnt ELSE 0 END), 0)
,			tutorial10 = ISNULL(SUM(CASE d.step WHEN 10 THEN d.cnt ELSE 0 END), 0)
,			tutorial11 = ISNULL(SUM(CASE d.step WHEN 11 THEN d.cnt ELSE 0 END), 0)
,			tutorial12 = ISNULL(SUM(CASE d.step WHEN 12 THEN d.cnt ELSE 0 END), 0)
,			tutorial13 = ISNULL(SUM(CASE d.step WHEN 13 THEN d.cnt ELSE 0 END), 0)
,			tutorial14 = ISNULL(SUM(CASE d.step WHEN 14 THEN d.cnt ELSE 0 END), 0)
,			tutorial15 = ISNULL(SUM(CASE d.step WHEN 15 THEN d.cnt ELSE 0 END), 0)
,			tutorial16 = ISNULL(SUM(CASE d.step WHEN 16 THEN d.cnt ELSE 0 END), 0)
,			@dateIDX
,			LEFT(CONVERT(varchar(20), @startDate, 120),10)
,			GETDATE()
	FROM (
		SELECT step, COUNT(*) AS 'cnt' FROM (
			SELECT accountIDX, MAX(step) AS 'step' FROM log_data_tutorial WITH(NOLOCK)
			WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (
				SELECT accountIDX FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
				WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1 and accountIDX not in (
					SELECT DISTINCT(accountIDX) FROM log_data_tutorial WITH(NOLOCK) WHERE regdate >= @startDate and regdate < @endDate and accountIDX in (
						SELECT accountIDX FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
						WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1
					) and step = -1
				)
			) GROUP BY accountIDX
		) c GROUP BY step
	) d

	SET @failTutorial = (
		SELECT COUNT(*)
		FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1 and accountIDX not in (
			SELECT DISTINCT(accountIDX) FROM log_data_tutorial WITH(NOLOCK)
			WHERE regDate >= @startDate and regdate < @endDate and accountIDX in (
				SELECT accountIDX FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
				WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1
			) and step = -1
		)
	)

	SET @endnotTutorial = (
		SELECT tutorial1+tutorial2+tutorial3+tutorial4+tutorial5+tutorial6+tutorial7+tutorial8+tutorial9+tutorial10+tutorial11+tutorial12+tutorial13+tutorial14+tutorial15+tutorial16
		FROM Analytical_statistics.DBO.game_play_time_zero_np WITH(NOLOCK)
		WHERE dateIDX=@dateIDX
	)

	SET @notTutorial = @failTutorial - @endnotTutorial

	DECLARE @total int, @s int, @hq int, @shq int

	SET @total = (
		SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1 and battle_playTime=0
	)
	SET @s = (
		SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		WHERE analdate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1 and battle_playTime=0 and square_playTime > 0 and headquarterTime = 0
	)
	SET @shq = (
		SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		WHERE analdate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1 and battle_playTime=0 and square_playTime > 0 and headquarterTime > 0
	)
	SET @hq = @total - @failTutorial - @s - @shq

	UPDATE Analytical_statistics.DBO.game_play_time_zero_np SET
		totalsum = @total
,		tutorial0 = @notTutorial
,		play_s = @s
,		play_hq = @hq
,		play_shq = @shq 
	WHERE dateIDX = @dateIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PLAYTIME_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PLAYTIME_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PLAYTIME_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PLAYTIME_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, playTime, logType, regDate
	  FROM dbo.log_data_time WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, playTime, logType, regDate
	  FROM dbo.log_data_time WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAYER_COUNT_PLAY_PESO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAYER_COUNT_PLAY_PESO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAYER_COUNT_PLAY_PESO]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAYER_COUNT_PLAY_PESO]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)
	DECLARE @P0000000000 int, @P0000001000 int, @P0100002000 int, @P0200003000 int, @P0300004000 int, @P0400005000 int
	DECLARE @P0500006000 int, @P0600007000 int, @P0700008000 int, @P0800009000 int, @P0900010000 int
	DECLARE @P1000011000 int, @P1100012000 int, @P1200013000 int, @P1300014000 int, @P1400015000 int
	DECLARE @P1500016000 int, @P1600017000 int, @P1700018000 int, @P1800019000 int, @P1900020000 int, @P2000000000 int
	DECLARE @todayPeso table ( accountIDX int, amount int )

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	INSERT INTO @todayPeso (accountIDX, amount)
	SELECT accountIDX, SUM(peso)
	FROM log_data_play WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate and playType in (4,5) and logType > 0
	GROUP BY accountIDX

	SET @P0000000000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount = 0), 0)
	SET @P0000001000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 0 and amount <= 1000), 0)
	SET @P0100002000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 1000 and amount <= 2000), 0)
	SET @P0200003000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 2000 and amount <= 3000), 0)
	SET @P0300004000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 3000 and amount <= 4000), 0)
	SET @P0400005000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 4000 and amount <= 5000), 0)
	SET @P0500006000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 5000 and amount <= 6000), 0)
	SET @P0600007000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 6000 and amount <= 7000), 0)
	SET @P0700008000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 7000 and amount <= 8000), 0)
	SET @P0800009000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 8000 and amount <= 9000), 0)
	SET @P0900010000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 9000 and amount <= 10000), 0)
	SET @P1000011000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 10000 and amount <= 11000), 0)
	SET @P1100012000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 11000 and amount <= 12000), 0)
	SET @P1200013000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 12000 and amount <= 13000), 0)
	SET @P1300014000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 13000 and amount <= 14000), 0)
	SET @P1400015000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 14000 and amount <= 15000), 0)
	SET @P1500016000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 15000 and amount <= 16000), 0)
	SET @P1600017000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 16000 and amount <= 17000), 0)
	SET @P1700018000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 17000 and amount <= 18000), 0)
	SET @P1800019000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 18000 and amount <= 19000), 0)
	SET @P1900020000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 19000 and amount <= 20000), 0)
	SET @P2000000000 = ISNULL((SELECT COUNT(*) FROM @todayPeso WHERE amount > 20000), 0)

	INSERT INTO Analytical_statistics.DBO.game_player_count_play_peso (P0000000000, P0000001000, P0100002000, P0200003000, P0300004000, P0400005000, P0500006000, P0600007000, P0700008000, P0800009000, P0900010000, P1000011000, P1100012000, P1200013000, P1300014000, P1400015000, P1500016000, P1600017000, P1700018000, P1800019000, P1900020000, P2000000000, dateIDX, analDate, regDate)
	VALUES (@P0000000000, @P0000001000, @P0100002000, @P0200003000, @P0300004000, @P0400005000, @P0500006000, @P0600007000, @P0700008000, @P0800009000, @P0900010000, @P1000011000, @P1100012000, @P1200013000, @P1300014000, @P1400015000, @P1500016000, @P1600017000, @P1700018000, @P1800019000, @P1900020000, @P2000000000, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_data_pet_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_pet_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_pet_add]
GO

CREATE PROCEDURE [dbo].[log_data_pet_add]

	@ACCOUNT_IDX	INT,
	@NICKNAME		NVARCHAR(20),
	@USERLEVEL		INT,
	@PET_IDX		INT,
	@PTE_CODE		INT,
	@PET_RANK		TINYINT,
	@PET_LEVEL		INT,
	@PET_EXP		INT,
	@ITEM_CODE		INT,
	@LOG_TYPE		TINYINT,
	@LOG_SUB_TYPE	INT,
	@LOG_NOTE		VARCHAR(200)
	
AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	BEGIN

		INSERT dbo.log_data_pet WITH(ROWLOCK, XLOCK) (accountIDX, nickName, userLevel, petIDX, petCode, petRank, petLevel, petExp, itemCode, logType, logSubType, logNote) VALUES
		(@ACCOUNT_IDX, @NICKNAME, @USERLEVEL, @PET_IDX, @PTE_CODE, @PET_RANK, @PET_LEVEL, @PET_EXP, @ITEM_CODE, @LOG_TYPE, @LOG_SUB_TYPE, @LOG_NOTE)
	END
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAYER_COUNT_REGDATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAYER_COUNT_REGDATE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAYER_COUNT_REGDATE]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAYER_COUNT_REGDATE]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)
	DECLARE @oldcnt int, @newcnt int

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	SET @oldcnt = (
		SELECT count(DISTINCT(accountidx))
		FROM log_data_playtime WITH(NOLOCK)
		WHERE regDate >= @startDate and regDate < @endDate
	)
	SET @newcnt = (
		SELECT count(DISTINCT(accountIDX))
		FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		WHERE analDate = LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1
	)
	SET @oldcnt = @oldcnt - @newcnt

	INSERT INTO Analytical_statistics.DBO.game_player_count_regdate (oldplayer, newplayer, dateIDX, analDate, regDate)
	VALUES (@oldcnt, @newcnt, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for SC_ERROR_LOG_ADD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SC_ERROR_LOG_ADD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[SC_ERROR_LOG_ADD]
GO

CREATE PROCEDURE [dbo].[SC_ERROR_LOG_ADD]
(
	@servType varchar(12)
,	@servZone varchar(16)
,	@logType varchar(32)
,	@title varchar(200)
,	@content varchar(1500)
)
AS

SET NOCOUNT ON

DECLARE @writeID varchar(12)
SET @writeID = 'logger'

INSERT INTO dbo.Log_client_error (writeID, servType, servZone, logType, title, [content], regDate)
VALUES (@writeID, @servType, @servZone, @logType, @title, @content, GETDATE())
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PLAY_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PLAY_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PLAY_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PLAY_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, playType, modeType, subType1, subType2,
	       playTime, deathTime, peso, win, lose, [kill], death, logType, regDate
	  FROM dbo.log_data_play WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, playType, modeType, subType1, subType2, playTime, deathTime, peso, win, 
		   lose, [kill], death, logType, regDate
	  FROM dbo.log_data_play WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAYER_COUNT_TIME_ZONE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAYER_COUNT_TIME_ZONE]

AS

SET NOCOUNT ON

	DECLARE @C0 int, @C1 int, @C2 int, @C3 int, @C4 int, @C5 int, @C6 int, @C7 int, @C8 int, @C9 int, @C10 int
	DECLARE @C11 int, @C12 int, @C13 int, @C14 int, @C15 int, @C16 int, @C17 int, @C18 int, @C19 int, @C20 int
	DECLARE @C21 int, @C22 int, @C23 int, @C24 int, @C25 int, @C26 int, @C27 int, @C28 int, @C29 int, @C30 int
	DECLARE @C31 int, @C32 int, @C33 int, @C34 int, @C35 int, @C36 int, @C37 int, @C38 int, @C39 int, @C40 int
	DECLARE @C41 int, @C42 int, @C43 int, @C44 int, @C45 int, @C46 int, @C47 int, @C48 int

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	SET @C0 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime = 0)
	SET @C1 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 0 and a.playTime <= 1800)
	SET @C2 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 1800 and a.playTime <= 3600)
	SET @C3 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 3600 and a.playTime <= 5400)
	SET @C4 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 5400 and a.playTime <= 7200)
	SET @C5 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 7200 and a.playTime <= 9000)
	SET @C6 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 9000 and a.playTime <= 10800)
	SET @C7 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 10800 and a.playTime <= 12600)
	SET @C8 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 12600 and a.playTime <= 14400)
	SET @C9 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 14400 and a.playTime <= 16200)
	SET @C10 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 16200 and a.playTime <= 18000)
	SET @C11 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 18000 and a.playTime <= 19800)
	SET @C12 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 19800 and a.playTime <= 21600)
	SET @C13 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 21600 and a.playTime <= 23400)
	SET @C14 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 23400 and a.playTime <= 25200)
	SET @C15 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 25200 and a.playTime <= 27000)
	SET @C16 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 27000 and a.playTime <= 28800)
	SET @C17 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 28800 and a.playTime <= 30600)
	SET @C18 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 30600 and a.playTime <= 32400)
	SET @C19 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 32400 and a.playTime <= 34200)
	SET @C20 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 34200 and a.playTime <= 36000)
	SET @C21 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 36000 and a.playTime <= 37800)
	SET @C22 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 37800 and a.playTime <= 39600)
	SET @C23 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 39600 and a.playTime <= 41400)
	SET @C24 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 41400 and a.playTime <= 43200)
	SET @C25 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 43200 and a.playTime <= 45000)
	SET @C26 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 45000 and a.playTime <= 46800)
	SET @C27 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 46800 and a.playTime <= 48600)
	SET @C28 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 48600 and a.playTime <= 50400)
	SET @C29 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 50400 and a.playTime <= 52200)
	SET @C30 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 52200 and a.playTime <= 54000)
	SET @C31 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 54000 and a.playTime <= 55800)
	SET @C32 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 55800 and a.playTime <= 57600)
	SET @C33 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 57600 and a.playTime <= 59400)
	SET @C34 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 59400 and a.playTime <= 61200)
	SET @C35 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 61200 and a.playTime <= 63000)
	SET @C36 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 63000 and a.playTime <= 64800)
	SET @C37 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 64800 and a.playTime <= 66600)
	SET @C38 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 66600 and a.playTime <= 68400)
	SET @C39 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 68400 and a.playTime <= 70200)
	SET @C40 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 70200 and a.playTime <= 72000)
	SET @C41 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 72000 and a.playTime <= 73800)
	SET @C42 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 73800 and a.playTime <= 75600)
	SET @C43 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 75600 and a.playTime <= 77400)
	SET @C44 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 77400 and a.playTime <= 79200)
	SET @C45 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 79200 and a.playTime <= 81000)
	SET @C46 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 81000 and a.playTime <= 82800)
	SET @C47 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 82800 and a.playTime <= 84600)
	SET @C48 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 84600 and a.playTime <= 86400)

	INSERT INTO Analytical_statistics.DBO.game_player_count_time_zone (M00000000, M00000030, M00300060, M00600090, M00900120, M01200150, M01500180, M01800210, M02100240, M02400270, M02700300, M03000330, M03300360, M03600390, M03900420, M04200450, M04500480, M04800510, M05100540, M05400570, M05700600, M06000630, M06300660, M06600690, M06900720, M07200750, M07500780, M07800810, M08100840, M08400870, M08700900, M09000930, M09300960, M09600990, M09901020, M10201050, M10501080, M10801110, M11101140, M11401170, M11701200, M12001230, M12301260, M12601290, M12901320, M13201350, M13501380, M13801410, M14101440, dateIDX, analDate, regDate)
	VALUES (@C0, @C1, @C2, @C3, @C4, @C5, @C6, @C7, @C8, @C9, @C10, @C11, @C12, @C13, @C14, @C15, @C16, @C17, @C18, @C19, @C20, @C21, @C22, @C23, @C24, @C25, @C26, @C27, @C28, @C29, @C30, @C31, @C32, @C33, @C34, @C35, @C36, @C37, @C38, @C39, @C40, @C41, @C42, @C43, @C44, @C45, @C46, @C47, @C48, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_data_piece_divide_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_piece_divide_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_piece_divide_add]
GO

CREATE PROCEDURE [dbo].[log_data_piece_divide_add]
(
	@accountIDX int
,	@nickName nvarchar(20)
,	@userLevel int
,	@itemType int
,	@itemCode int
,	@amount int
,	@materialCode int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_piece_divide (
	accountIDX, nickName, userLevel, itemType, itemCode, amount, materialCode, regDate
)
VALUES (
	@accountIDX, @nickName, @userLevel, @itemType, @itemCode, @amount, @materialCode, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE]

AS

SET NOCOUNT ON

	DECLARE @C0 int, @C1 int, @C2 int, @C3 int, @C4 int, @C5 int, @C6 int, @C7 int, @C8 int, @C9 int, @C10 int
	DECLARE @C11 int, @C12 int, @C13 int, @C14 int, @C15 int, @C16 int, @C17 int, @C18 int, @C19 int, @C20 int
	DECLARE @C21 int, @C22 int, @C23 int, @C24 int, @C25 int, @C26 int, @C27 int, @C28 int, @C29 int, @C30 int
	DECLARE @C31 int, @C32 int, @C33 int, @C34 int, @C35 int, @C36 int, @C37 int, @C38 int, @C39 int, @C40 int
	DECLARE @C41 int, @C42 int, @C43 int, @C44 int, @C45 int, @C46 int, @C47 int, @C48 int

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	SET @C0 = (SELECT count(DISTINCT(accountIDX)) FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate)
	SET @C1 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 0 and a.playTime <= 1800)
	SET @C2 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 1800 and a.playTime <= 3600)
	SET @C3 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 3600 and a.playTime <= 5400)
	SET @C4 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 5400 and a.playTime <= 7200)
	SET @C5 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 7200 and a.playTime <= 9000)
	SET @C6 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 9000 and a.playTime <= 10800)
	SET @C7 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 10800 and a.playTime <= 12600)
	SET @C8 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 12600 and a.playTime <= 14400)
	SET @C9 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 14400 and a.playTime <= 16200)
	SET @C10 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 16200 and a.playTime <= 18000)
	SET @C11 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 18000 and a.playTime <= 19800)
	SET @C12 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 19800 and a.playTime <= 21600)
	SET @C13 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 21600 and a.playTime <= 23400)
	SET @C14 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 23400 and a.playTime <= 25200)
	SET @C15 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 25200 and a.playTime <= 27000)
	SET @C16 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 27000 and a.playTime <= 28800)
	SET @C17 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 28800 and a.playTime <= 30600)
	SET @C18 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 30600 and a.playTime <= 32400)
	SET @C19 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 32400 and a.playTime <= 34200)
	SET @C20 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 34200 and a.playTime <= 36000)
	SET @C21 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 36000 and a.playTime <= 37800)
	SET @C22 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 37800 and a.playTime <= 39600)
	SET @C23 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 39600 and a.playTime <= 41400)
	SET @C24 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 41400 and a.playTime <= 43200)
	SET @C25 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 43200 and a.playTime <= 45000)
	SET @C26 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 45000 and a.playTime <= 46800)
	SET @C27 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 46800 and a.playTime <= 48600)
	SET @C28 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 48600 and a.playTime <= 50400)
	SET @C29 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 50400 and a.playTime <= 52200)
	SET @C30 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 52200 and a.playTime <= 54000)
	SET @C31 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 54000 and a.playTime <= 55800)
	SET @C32 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 55800 and a.playTime <= 57600)
	SET @C33 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 57600 and a.playTime <= 59400)
	SET @C34 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 59400 and a.playTime <= 61200)
	SET @C35 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 61200 and a.playTime <= 63000)
	SET @C36 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 63000 and a.playTime <= 64800)
	SET @C37 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 64800 and a.playTime <= 66600)
	SET @C38 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 66600 and a.playTime <= 68400)
	SET @C39 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 68400 and a.playTime <= 70200)
	SET @C40 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 70200 and a.playTime <= 72000)
	SET @C41 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 72000 and a.playTime <= 73800)
	SET @C42 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 73800 and a.playTime <= 75600)
	SET @C43 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 75600 and a.playTime <= 77400)
	SET @C44 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 77400 and a.playTime <= 79200)
	SET @C45 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 79200 and a.playTime <= 81000)
	SET @C46 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 81000 and a.playTime <= 82800)
	SET @C47 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 82800 and a.playTime <= 84600)
	SET @C48 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate GROUP BY accountIDX) a WHERE a.playTime > 84600 and a.playTime <= 86400)

	SET @C0 = @C0 - (@C1+@C2+@C3+@C4+@C5+@C6+@C7+@C8+@C9+@C10+@C11+@C12+@C13+@C14+@C15+@C16+@C17+@C18+@C19+@C20+@C21+@C22+@C23+@C24+@C25+@C26+@C27+@C28+@C29+@C30+@C31+@C32+@C33+@C34+@C35+@C36+@C37+@C38+@C39+@C40+@C41+@C42+@C43+@C44+@C45+@C46+@C47+@C48)

	INSERT INTO Analytical_statistics.DBO.game_player_count_time_zone_battle (M00000000, M00000030, M00300060, M00600090, M00900120, M01200150, M01500180, M01800210, M02100240, M02400270, M02700300, M03000330, M03300360, M03600390, M03900420, M04200450, M04500480, M04800510, M05100540, M05400570, M05700600, M06000630, M06300660, M06600690, M06900720, M07200750, M07500780, M07800810, M08100840, M08400870, M08700900, M09000930, M09300960, M09600990, M09901020, M10201050, M10501080, M10801110, M11101140, M11401170, M11701200, M12001230, M12301260, M12601290, M12901320, M13201350, M13501380, M13801410, M14101440, dateIDX, analDate, regDate)
	VALUES (@C0, @C1, @C2, @C3, @C4, @C5, @C6, @C7, @C8, @C9, @C10, @C11, @C12, @C13, @C14, @C15, @C16, @C17, @C18, @C19, @C20, @C21, @C22, @C23, @C24, @C25, @C26, @C27, @C28, @C29, @C30, @C31, @C32, @C33, @C34, @C35, @C36, @C37, @C38, @C39, @C40, @C41, @C42, @C43, @C44, @C45, @C46, @C47, @C48, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_data_piece_mix_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_piece_mix_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_piece_mix_add]
GO

CREATE PROCEDURE [dbo].[log_data_piece_mix_add]
(
	@accountIDX int
,	@nickName nvarchar(20)
,	@userLevel int
,	@mixType smallint
,	@mixCode int
,	@resultType tinyint
,	@useA int
,	@useB int
,	@resultA int
,	@resultB int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_piece_mix (
	accountIDX, nickName, userLevel, mixType, mixCode, resultType, useA, useB, resultA, resultB, regDate
)
VALUES (
	@accountIDX, @nickName, @userLevel, @mixType, @mixCode, @resultType, @useA, @useB, @resultA, @resultB, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE_NP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE_NP]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE_NP]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_BATTLE_NP]

AS

SET NOCOUNT ON

	DECLARE @C0 int, @C1 int, @C2 int, @C3 int, @C4 int, @C5 int, @C6 int, @C7 int, @C8 int, @C9 int, @C10 int
	DECLARE @C11 int, @C12 int, @C13 int, @C14 int, @C15 int, @C16 int, @C17 int, @C18 int, @C19 int, @C20 int
	DECLARE @C21 int, @C22 int, @C23 int, @C24 int, @C25 int, @C26 int, @C27 int, @C28 int, @C29 int, @C30 int, @C31 int

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)
	DECLARE @newAccountIDX table (accountIDX int)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	INSERT INTO @newAccountIDX
	SELECT DISTINCT(accountIDX) FROM Analytical_statistics.DBO.game_user_data WHERE analDate = LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1

	SET @C0 = (SELECT COUNT(*) FROM @newAccountIDX)
	SET @C1 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 0 and a.playTime <= 600)
	SET @C2 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 600 and a.playTime <= 1200)
	SET @C3 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 1200 and a.playTime <= 1800)
	SET @C4 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 1800 and a.playTime <= 2400)
	SET @C5 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 2400 and a.playTime <= 3000)
	SET @C6 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 3000 and a.playTime <= 3600)
	SET @C7 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 3600 and a.playTime <= 4200)
	SET @C8 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 4200 and a.playTime <= 4800)
	SET @C9 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 4800 and a.playTime <= 5400)
	SET @C10 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 5400 and a.playTime <= 6000)
	SET @C11 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 6000 and a.playTime <= 6600)
	SET @C12 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 6600 and a.playTime <= 7200)
	SET @C13 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 7200 and a.playTime <= 7800)
	SET @C14 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 7800 and a.playTime <= 8400)
	SET @C15 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 8400 and a.playTime <= 9000)
	SET @C16 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 9000 and a.playTime <= 9600)
	SET @C17 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 9600 and a.playTime <= 10200)
	SET @C18 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 10200 and a.playTime <= 10800)
	SET @C19 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 10800 and a.playTime <= 11400)
	SET @C20 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 11400 and a.playTime <= 12000)
	SET @C21 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 12000 and a.playTime <= 12600)
	SET @C22 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 12600 and a.playTime <= 13200)
	SET @C23 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 13200 and a.playTime <= 13800)
	SET @C24 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 13800 and a.playTime <= 14400)
	SET @C25 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 14400 and a.playTime <= 15000)
	SET @C26 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 15000 and a.playTime <= 15600)
	SET @C27 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 15600 and a.playTime <= 16200)
	SET @C28 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 16200 and a.playTime <= 16800)
	SET @C29 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 16800 and a.playTime <= 17400)
	SET @C30 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 17400 and a.playTime <= 18000)
	SET @C31 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime_battle WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 18000 and a.playTime <= 86400)

	SET @C0 = @C0 - (@C1+@C2+@C3+@C4+@C5+@C6+@C7+@C8+@C9+@C10+@C11+@C12+@C13+@C14+@C15+@C16+@C17+@C18+@C19+@C20+@C21+@C22+@C23+@C24+@C25+@C26+@C27+@C28+@C29+@C30+@C31)

	INSERT INTO Analytical_statistics.DBO.game_player_count_time_zone_battle_np (M00000000, M00000010, M00100020, M00200030, M00300040, M00400050, M00500060, M00600070, M00700080, M00800090, M00900100, M01000110, M01100120, M01200130, M01300140, M01400150, M01500160, M01600170, M01700180, M01800190, M01900200, M02000210, M02100220, M02200230, M02300240, M02400250, M02500260, M02600270, M02700280, M02800290, M02900300, M03001440, dateIDX, analDate, regDate)
	VALUES (@C0, @C1, @C2, @C3, @C4, @C5, @C6, @C7, @C8, @C9, @C10, @C11, @C12, @C13, @C14, @C15, @C16, @C17, @C18, @C19, @C20, @C21, @C22, @C23, @C24, @C25, @C26, @C27, @C28, @C29, @C30, @C31, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_data_piece_obtain_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_piece_obtain_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_piece_obtain_add]
GO

CREATE PROCEDURE [dbo].[log_data_piece_obtain_add]
(
	@accountIDX int
,	@nickName nvarchar(20)
,	@userLevel int
,	@playTime int
,	@step tinyint
,	@amount int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_piece_obtain (
	accountIDX, nickName, userLevel, playTime, step, amount, regDate
)
VALUES (
	@accountIDX, @nickName, @userLevel, @playTime, @step, @amount, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAYER_COUNT_TIME_ZONE_NP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_NP]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_NP]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAYER_COUNT_TIME_ZONE_NP]

AS

SET NOCOUNT ON

	DECLARE @C0 int, @C1 int, @C2 int, @C3 int, @C4 int, @C5 int, @C6 int, @C7 int, @C8 int, @C9 int, @C10 int
	DECLARE @C11 int, @C12 int, @C13 int, @C14 int, @C15 int, @C16 int, @C17 int, @C18 int, @C19 int, @C20 int
	DECLARE @C21 int, @C22 int, @C23 int, @C24 int, @C25 int, @C26 int, @C27 int, @C28 int, @C29 int, @C30 int, @C31 int

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)
	DECLARE @newAccountIDX table (accountIDX int)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	INSERT INTO @newAccountIDX
	SELECT DISTINCT(accountIDX)
	FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
	WHERE analDate = LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1

	SET @C0 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime = 0)
	SET @C1 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 0 and a.playTime <= 600)
	SET @C2 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 600 and a.playTime <= 1200)
	SET @C3 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 1200 and a.playTime <= 1800)
	SET @C4 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 1800 and a.playTime <= 2400)
	SET @C5 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 2400 and a.playTime <= 3000)
	SET @C6 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 3000 and a.playTime <= 3600)
	SET @C7 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 3600 and a.playTime <= 4200)
	SET @C8 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 4200 and a.playTime <= 4800)
	SET @C9 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 4800 and a.playTime <= 5400)
	SET @C10 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 5400 and a.playTime <= 6000)
	SET @C11 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 6000 and a.playTime <= 6600)
	SET @C12 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 6600 and a.playTime <= 7200)
	SET @C13 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 7200 and a.playTime <= 7800)
	SET @C14 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 7800 and a.playTime <= 8400)
	SET @C15 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 8400 and a.playTime <= 9000)
	SET @C16 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 9000 and a.playTime <= 9600)
	SET @C17 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 9600 and a.playTime <= 10200)
	SET @C18 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 10200 and a.playTime <= 10800)
	SET @C19 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 10800 and a.playTime <= 11400)
	SET @C20 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 11400 and a.playTime <= 12000)
	SET @C21 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 12000 and a.playTime <= 12600)
	SET @C22 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 12600 and a.playTime <= 13200)
	SET @C23 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 13200 and a.playTime <= 13800)
	SET @C24 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 13800 and a.playTime <= 14400)
	SET @C25 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 14400 and a.playTime <= 15000)
	SET @C26 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 15000 and a.playTime <= 15600)
	SET @C27 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 15600 and a.playTime <= 16200)
	SET @C28 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 16200 and a.playTime <= 16800)
	SET @C29 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 16800 and a.playTime <= 17400)
	SET @C30 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 17400 and a.playTime <= 18000)
	SET @C31 = (SELECT COUNT(*) FROM (SELECT accountIDX, SUM(playTime) AS 'playTime' FROM log_data_playtime WITH(NOLOCK) WHERE regDate >= @startDate and regDate < @endDate and accountIDX in (SELECT accountIDX FROM @newAccountIDX) GROUP BY accountIDX) a WHERE a.playTime > 18000 and a.playTime <= 86400)

	INSERT INTO Analytical_statistics.DBO.game_player_count_time_zone_np (M00000000, M00000010, M00100020, M00200030, M00300040, M00400050, M00500060, M00600070, M00700080, M00800090, M00900100, M01000110, M01100120, M01200130, M01300140, M01400150, M01500160, M01600170, M01700180, M01800190, M01900200, M02000210, M02100220, M02200230, M02300240, M02400250, M02500260, M02600270, M02700280, M02800290, M02900300, M03001440, dateIDX, analDate, regDate)
	VALUES (@C0, @C1, @C2, @C3, @C4, @C5, @C6, @C7, @C8, @C9, @C10, @C11, @C12, @C13, @C14, @C15, @C16, @C17, @C18, @C19, @C20, @C21, @C22, @C23, @C24, @C25, @C26, @C27, @C28, @C29, @C30, @C31, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_errorLog_set_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_errorLog_set_log]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_errorLog_set_log]
GO

CREATE PROCEDURE [dbo].[log_errorLog_set_log]

	@ACCOUNT_IDX		INT

AS
SET NOCOUNT ON
	
	DECLARE @ERROR_NO			INT
	DECLARE @ERROR_PROC			VARCHAR(50)
	DECLARE @ERROR_LINE			INT
	DECLARE @ERROR_SEVERITY		INT
	DECLARE @ERROR_STATE		INT
	DECLARE @ERROR_MESSAGE		VARCHAR(500)
				
	SELECT  @ERROR_NO		= ERROR_NUMBER(), 
			@ERROR_PROC		= ERROR_PROCEDURE(), 
			@ERROR_LINE		= ERROR_LINE(), 
			@ERROR_SEVERITY	= ERROR_SEVERITY(), 
			@ERROR_STATE	= ERROR_STATE(), 
			@ERROR_MESSAGE	= ERROR_MESSAGE()


	BEGIN TRAN

		INSERT dbo.SQL_ERROR_LOG VALUES 
		(@ACCOUNT_IDX, @ERROR_NO, @ERROR_PROC, @ERROR_LINE, @ERROR_SEVERITY, @ERROR_STATE, @ERROR_MESSAGE, GETDATE())

	COMMIT TRAN
	
	RETURN 1;
GO


-- ----------------------------
-- Procedure structure for log_data_play_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_play_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_play_add]
GO

CREATE PROCEDURE [dbo].[log_data_play_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@playType int
,	@modeType int
,	@subType1 int
,	@subType2 int
,	@playTime int
,	@deathTime int
,	@peso int
,	@win int
,	@lose int
,	@kill int
,	@death int
,	@logType int
,	@pcnum int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_play (
	accountIDX, nickName, playType, modeType, subType1, subType2, playTime, deathTime, peso, win, lose, [kill], death, logType, pcnum, regDate
)
VALUES (
	@accountIDX, @nickName, @playType, @modeType, @subType1, @subType2, @playTime, @deathTime, @peso, @win, @lose, @kill, @death, @logType, @pcnum, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for log_data_quest_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_quest_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_quest_add]
GO

CREATE PROCEDURE [dbo].[log_data_quest_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@userLevel int
,	@mainIDX int
,	@subIDX int
,	@logType int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_quest (accountIDX, nickName, userLevel, mainIDX, subIDX, logType, regDate)
VALUES (@accountIDX, @nickName, @userLevel, @mainIDX, @subIDX, @logType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_data_time_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_time_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_time_add]
GO

CREATE PROCEDURE [dbo].[log_data_time_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@playTime int
,	@logType int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_time (accountIDX, nickName, playTime, logType, regDate)
VALUES (@accountIDX, @nickName, @playTime, @logType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_gameLog_set_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_gameLog_set_log]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_gameLog_set_log]
GO

CREATE PROCEDURE [dbo].[log_gameLog_set_log]  
  
 @LOG_TYPE		INT,  
 @ACCOUNT_IDX	INT,  
 @USER_ID		VARCHAR(20),  
 @USER_NAME		VARCHAR(20),  
 @USER_LEVEL	INT,  
 @USER_EXP		INT,  
 @CHANNEL_TYPE  INT,  
 @TBL_INDEX		INT,  
 @OBJECT_CODE	INT,  
 @EVENT_TYPE	TINYINT,   
 @PARAM_1   	INT,  
 @PARAM_2   	INT,  
 @PARAM_3   	INT,  
 @PARAM_4   	INT,  
 @PARAM_5   	VARCHAR(50),  
 @USER_IP   	VARCHAR(15)  
   
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
  
 DECLARE @nReturn   INT   
 DECLARE @REG_DATE   DATETIME  
  
 SET @nReturn=0   -- True  
 SET @REG_DATE=GETDATE()  
  
   
  
 BEGIN TRY  
    
  BEGIN TRAN  
   INSERT dbo.GAME_LOG WITH (XLOCK, ROWLOCK) (RegDate, LogType, AccountIDX, UserID, UserName, UserLevel, UserExp, CpType, TBLIDX, ObjCode, EventType, Param1, Param2, Param3, Param4, Param5, UserIP)  
   VALUES (@REG_DATE, @LOG_TYPE, @ACCOUNT_IDX, @USER_ID, @USER_NAME, @USER_LEVEL, @USER_EXP, @CHANNEL_TYPE, @TBL_INDEX, @OBJECT_CODE, @EVENT_TYPE, @PARAM_1, @PARAM_2, @PARAM_3, @PARAM_4, @PARAM_5, @USER_IP)  
  COMMIT TRAN  
      
 END TRY  
 BEGIN CATCH  
  
  ROLLBACK TRAN      
  EXEC dbo.log_errorLog_set_log @ACCOUNT_IDX  
  RETURN -1  
  
 END CATCH  
  
 RETURN 0;
GO


-- ----------------------------
-- Function structure for DEFINE_SEARCH_END_DATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DEFINE_SEARCH_END_DATE]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[DEFINE_SEARCH_END_DATE]
GO

CREATE FUNCTION [dbo].[DEFINE_SEARCH_END_DATE]
(
	@searchType CHAR(1)		-- D: 일, W: 주, M: 월
)
RETURNS DATETIME
AS

BEGIN

DECLARE @returnValue DATETIME
DECLARE @day INT

IF (@searchType = 'D')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10)
END
ELSE IF (@searchType = 'W')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10)
END
ELSE IF (@searchType = 'M')
BEGIN
	SET @day = DAY(GETDATE()) - 1
	SET @returnValue = DATEADD(d, -@day, LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10))
END

RETURN @returnValue;

END
GO


-- ----------------------------
-- Function structure for DEFINE_SEARCH_START_DATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DEFINE_SEARCH_START_DATE]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[DEFINE_SEARCH_START_DATE]
GO

CREATE FUNCTION [dbo].[DEFINE_SEARCH_START_DATE]
(
	@searchType CHAR(1)		-- D: 일, W: 주, M: 월
)
RETURNS DATETIME
AS

BEGIN

DECLARE @returnValue DATETIME
DECLARE @day INT

IF (@searchType = 'D')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE()-1, 120), 10)
END
ELSE IF (@searchType = 'W')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE()-7, 120), 10)
END
ELSE IF (@searchType = 'M')
BEGIN
	SET @day = DAY(GETDATE()) - 1
	SET @returnValue = DATEADD(mm, -1, DATEADD(d, -@day, LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10)))
END

RETURN @returnValue

END
GO


-- ----------------------------
-- Procedure structure for JOB_STAT_GOLD_SALES_ITEM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[JOB_STAT_GOLD_SALES_ITEM]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[JOB_STAT_GOLD_SALES_ITEM]
GO

CREATE PROCEDURE [dbo].[JOB_STAT_GOLD_SALES_ITEM]

AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

DECLARE @dateType CHAR(1)
DECLARE @startDate DATETIME
DECLARE @endDate DATETIME
DECLARE @statDate SMALLDATETIME
DECLARE @dateISO CHAR(8)

SET @dateType = 'D'
SET @startDate = dbo.DEFINE_SEARCH_START_DATE(@dateType)
SET @endDate = dbo.DEFINE_SEARCH_END_DATE(@dateType)
SET @statDate = LEFT(CONVERT(VARCHAR(20), @startDate, 120), 10)
SET @dateISO = CONVERT(CHAR(8), @startDate, 112)

INSERT INTO LosaStatistics.dbo.TBL_STAT_GOLD_SALES_ITEM (
	itemType, itemCode, itemValue, ItemCount, ItemAmount, dateISO, statDate
)
SELECT itemType, itemCode, itemValue, COUNT(*) AS ItemCount, SUM(amount) AS ItemAmount, @dateISO, @statDate
  FROM dbo.log_buy_item_gold WITH (NOLOCK)
 WHERE regDate >= @startDate
   AND regDate < @endDate
 GROUP BY itemType, itemCode, itemValue
GO


-- ----------------------------
-- Procedure structure for log_data_trade_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_trade_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_trade_add]
GO

CREATE PROCEDURE [dbo].[log_data_trade_add]
(
	@accountIDX int
,	@nickname varchar(20)
,	@itemType int
,	@value1 int
,	@value2 int
,	@price bigint
,	@logType int
,	@userIP varchar(16)
,	@note varchar(100)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_trade (accountIDX, nickname, itemType, value1, value2, price, logType, userIP, note, regDate)
VALUES (@accountIDX, @nickName, @itemType, @value1, @value2, @price, @logType, @userIP, @note, GETDATE())
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PIECE_OBTAIN_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PIECE_OBTAIN_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PIECE_OBTAIN_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PIECE_OBTAIN_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, userLevel, playTime, step, amount, regDate
	  FROM dbo.log_data_piece_obtain WITH (NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, userLevel, playTime, step, amount, regDate
	  FROM dbo.log_data_piece_obtain WITH (NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for log_data_tutorial_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_tutorial_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_tutorial_add]
GO

CREATE PROCEDURE [dbo].[log_data_tutorial_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@step int
,	@playTime int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_tutorial (accountIDX, nickName, step, playTime, regDate)
VALUES (@accountIDX, @nickName, @step, @playTime, GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_item_costume_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_costume_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_costume_add]
GO

CREATE PROCEDURE [dbo].[log_item_costume_add]
(
	@accountIDX		INT,
	@nickName		NVARCHAR(20),
	@userLevel		INT,
	@itemCode		INT,
	@eventType		INT,
	@amount			INT,
	@userIP			VARCHAR(15),
	@note			VARCHAR(100)
)
AS
SET NOCOUNT ON

INSERT INTO dbo.log_buy_item_costume (
	accountIDX, nickName, userLevel, itemCode, eventType, amount, userIP, note, regDate
)
VALUES (
	@accountIDX, @nickName, @userLevel, @itemCode, @eventType, @amount, @userIP, @note, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for log_error_billing_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_error_billing_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_error_billing_add]
GO

CREATE PROCEDURE [dbo].[log_error_billing_add]
(
	@cpType smallint
,	@errType int
,	@note varchar(200)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_error_billing (cpType, errType, note, regDate)
VALUES (@cpType, @errType, @note, GETDATE())
GO


-- ----------------------------
-- Procedure structure for AGENT_TRADE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_TRADE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_TRADE]
GO

CREATE PROCEDURE [dbo].[AGENT_TRADE]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime
	DECLARE @dateIDX char(8)
	DECLARE @sellCnt int, @sellAmt bigint, @buyCnt int, @buyAmt bigint
	DECLARE @cancelCnt int, @cancelAmt bigint, @expireCnt int, @expireAmt bigint

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	SET @sellCnt = (SELECT COUNT(*) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=1)
	SET @sellAmt = ISNULL((SELECT SUM(price) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=1), 0)

	SET @buyCnt = (SELECT COUNT(*) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=2)
	SET @buyAmt = ISNULL((SELECT SUM(price) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=2), 0)

	SET @cancelCnt = (SELECT COUNT(*) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=3)
	SET @cancelAmt = ISNULL((SELECT SUM(price) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=3), 0)

	SET @expireCnt = (SELECT COUNT(*) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=4)
	SET @expireAmt = ISNULL((SELECT SUM(price) FROM log_data_trade WITH(NOLOCK) WHERE regDate >= @startDate and regdate < @endDate and logtype=4), 0)

	INSERT INTO Analytical_statistics.DBO.game_item_trade (sellCnt, sellAmt, buyCnt, buyAmt, cancelCnt, cancelAmt, expireCnt, expireAmt, dateIDX, analDate, regDate)
	VALUES (@sellCnt, @sellAmt, @buyCnt, @buyAmt, @cancelCnt, @cancelAmt, @expireCnt, @expireAmt, @dateIDX, LEFT(@startDate, 10), GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_event_bingo_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_event_bingo_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_event_bingo_add]
GO

CREATE PROCEDURE [dbo].[log_event_bingo_add]
(
	@accountIDX int
,	@nickName nvarchar(20)
,	@choiceType tinyint
,	@number tinyint
,	@stateType tinyint
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_event_bingo (accountIDX, nickName, choiceType, number, stateType, regDate)
VALUES (@accountIDX, @nickName, @choiceType, @number, @stateType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_item_class_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_class_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_class_add]
GO

CREATE PROCEDURE [dbo].[log_item_class_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@userLevel int
,	@classType int
,	@limitType int
,	@eventType int
,	@amount int
,	@userIP varchar(15)
,	@note varchar(100)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_buy_item_class (accountIDX, nickName, userLevel, classType, limitType, eventType, amount, userIP, note, regDate)
VALUES (@accountIDX, @nickName, @userLevel, @classType, @limitType, @eventType, @amount, @userIP, @note, GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_item_decoration_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_decoration_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_decoration_add]
GO

CREATE PROCEDURE [dbo].[log_item_decoration_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@classType int
,	@kindred int
,	@itemType int
,	@itemCode int
,	@eventType int
,	@amount int
,	@userIP varchar(15)
,	@note varchar(100)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_buy_item_decoration (accountIDX, nickName, classType, kindred, itemType, itemCode, eventType, amount, userIP, note, regDate)
VALUES (@accountIDX, @nickName, @classType, @kindred, @itemType, @itemCode, @eventType, @amount, @userIP, @note, GETDATE())
GO


-- ----------------------------
-- Procedure structure for log_use_gold_set
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_use_gold_set]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_use_gold_set]
GO

CREATE PROCEDURE [dbo].[log_use_gold_set]   
(  
 @accountIDX   INT			-- accountidx   
, @garenaUID   VARCHAR(20)	-- 가레나 uid  
, @presentType  INT         -- 일반구매 : 0 ,선물 : 1  
, @friendUID   VARCHAR(20)	-- 선물받은 친구 uid  
, @itemType   INT			-- 1 용병, 2: 3: 특별~  
, @itemValue   INT			-- type 에 따른 value  
, @itemValue2   INT			-- type 에 따른 value  
, @amount    INT			-- 아이템 가격  
, @goodsName    VARCHAR(100)-- 상품이름
, @currencyRealCash INT		-- 남은 실캐쉬  
, @currencyBonusCash  INT   -- 남은 보너스 캐쉬     
, @result    INT			-- 골드 차감 결과  
)  
AS  
BEGIN  
   
 SET NOCOUNT ON;  
   
 INSERT INTO log_use_gold ( accountIDX, garenaUID, presentType, friendUID, itemType, itemValue, itemValue2, amount, note, currencyRealCash, currencyBonusCash,  result, regDate )  
 VALUES (@accountIDX, @garenaUID, @presentType, @friendUID, @itemType, @itemValue, @itemValue2, @amount, @goodsName, @currencyRealCash, @currencyBonusCash,  @result, GETDATE() )  
   
 IF @@ROWCOUNT = 0 OR @@ERROR <> 0   
  RETURN -1;  
   
   
   
END
GO


-- ----------------------------
-- Procedure structure for log_item_equip_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_equip_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_equip_add]
GO

CREATE PROCEDURE [dbo].[log_item_equip_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@itemType int
,	@itemCode int
,	@reinforce int
,	@machineType int
,	@limitDate int
,	@eventType int
,	@amount int
,	@userIP varchar(15)
,	@note varchar(100)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_buy_item_equip (
	accountIDX, nickName, itemType, itemCode, reinforce, machineType, limitDate, eventType, amount, userIP, note, regDate
)
VALUES (
	@accountIDX, @nickName, @itemType, @itemCode, @reinforce, @machineType, @limitDate, @eventType, @amount, @userIP, @note, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for log_item_gold_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_gold_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_gold_add]
GO

CREATE PROCEDURE [dbo].[log_item_gold_add]  
(  
 @accountIDX int  
, @nickName varchar(20)  
, @userLevel int  
, @itemType int  
, @itemCode int  
, @itemValue int  
, @amount int  
, @cpType smallint  
, @billingID varchar(64)  
, @userIP varchar(15)  
, @note varchar(100)  
, @buyType tinyint  
)  
AS  
  
SET NOCOUNT ON  
  
INSERT INTO dbo.log_buy_item_gold (  
 accountIDX, nickname, userLevel, itemType, itemCode, itemValue, amount, cpType, billingID, buyType, userIP, note, regDate  
)  
VALUES (  
 @accountIDX, @nickname, @userLevel, @itemType, @itemCode, @itemValue, @amount, @cpType, @billingID, @buyType, @userIP, @note, GETDATE()  
)
GO


-- ----------------------------
-- Function structure for DEFINE_SEARCH_PEND_DATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DEFINE_SEARCH_PEND_DATE]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[DEFINE_SEARCH_PEND_DATE]
GO

CREATE FUNCTION [dbo].[DEFINE_SEARCH_PEND_DATE]
(
	@searchType CHAR(1)		-- D: 일, W: 주, M: 월
)
RETURNS DATETIME
AS

BEGIN

DECLARE @returnValue DATETIME
DECLARE @day INT

IF (@searchType = 'D')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE()-1, 120), 10)
END
ELSE IF (@searchType = 'W')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE()-7, 120), 10)
END
ELSE IF (@searchType = 'M')
BEGIN
	SET @day = DAY(GETDATE()) - 1
	SET @returnValue = DATEADD(mm, -1, DATEADD(d, -@day, LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10)))
END

RETURN @returnValue;

END
GO


-- ----------------------------
-- Function structure for DEFINE_SEARCH_PSTART_DATE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DEFINE_SEARCH_PSTART_DATE]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[DEFINE_SEARCH_PSTART_DATE]
GO

CREATE FUNCTION [dbo].[DEFINE_SEARCH_PSTART_DATE]
(
	@searchType CHAR(1)		-- D: 일, W: 주, M: 월
)
RETURNS DATETIME
AS

BEGIN

DECLARE @returnValue DATETIME
DECLARE @day INT

IF (@searchType = 'D')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE()-2, 120), 10)
END
ELSE IF (@searchType = 'W')
BEGIN
	SET @returnValue = LEFT(CONVERT(VARCHAR(20), GETDATE()-14, 120), 10)
END
ELSE IF (@searchType = 'M')
BEGIN
	SET @day = DAY(GETDATE()) - 1
	SET @returnValue = DATEADD(mm, -1, DATEADD(mm, -1, DATEADD(d, -@day, LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10))))
END

RETURN @returnValue

END
GO


-- ----------------------------
-- Procedure structure for AGENT_MEMBER_JOIN_COUNT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_MEMBER_JOIN_COUNT]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_MEMBER_JOIN_COUNT]
GO

CREATE PROCEDURE [dbo].[AGENT_MEMBER_JOIN_COUNT]

AS

DECLARE @yDate DATETIME
DECLARE @dateIDX CHAR(8)
DECLARE @cName CHAR(5)
DECLARE @strSQL VARCHAR(200)
DECLARE @cnt INT
DECLARE @i INT
DECLARE @intLoop INT
DECLARE @sumTotal INT
DECLARE @userMember TABLE
(
	accountIDX INT,
	regDate DATETIME
)

SET @yDate = LEFT(CONVERT(VARCHAR(20), GETDATE()-1, 120), 10)
SET @dateIDX = CONVERT(CHAR(8), @yDate, 112)

IF (NOT EXISTS (SELECT * FROM Analytical_statistics.DBO.member_join_count WITH(NOLOCK) WHERE dateIDX=@dateIDX))
BEGIN
	INSERT INTO Analytical_statistics.DBO.member_join_count (
		T0001, T0102, T0203, T0304, T0405, T0506, T0607, T0708, T0809, T0910,
		T1011, T1112, T1213, T1314, T1415, T1516, T1617, T1718, T1819, T1920,
		T2021, T2122, T2223, T2324, sumDay, dateIDX, analDate
	)
	VALUES (
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, @dateIDX, @yDate
	)
END


INSERT INTO @userMember (accountIDX, regDate)
SELECT accountIDX, regDate
  FROM LosaGame_v140826.DBO.userMemberDB WITH(NOLOCK)
 WHERE regDate >= @yDate
   AND regDate < DATEADD(d, 1, @yDate)


SET @cnt = 0
SET @i = 0
SET @intLoop = 24
SET @sumTotal = 0

WHILE (@intLoop > 0)
BEGIN
	SET @cnt = (
		SELECT COUNT(*)
		  FROM @userMember
		 WHERE regDate >= DATEADD(hh, @i, @yDate)
		   AND regDate < DATEADD(hh, @i+1, @yDate)
	)
	SET @cName = (
		SELECT cName
		  FROM Analytical_statistics.DBO.DEFINE_COLUMNNAME WITH(NOLOCK)
		 WHERE idx = @i + 1
	)
	SET @strSQL = ''
	SET @strSQL = @strSQL + ' UPDATE Analytical_statistics.DBO.member_join_count '
	SET @strSQL = @strSQL + '    SET ' + @cName + ' = ' + CONVERT(VARCHAR(6), @cnt)
	SET @strSQL = @strSQL + '  WHERE dateIDX = ''' + @dateIDX + ''''
	EXEC (@strSQL)

	SET @i = @i + 1
	SET @intLoop = @intLoop - 1
	SET @sumTotal = @sumTotal + @cnt
END


UPDATE Analytical_statistics.DBO.member_join_count
   SET sumDay = @sumTotal
 WHERE dateIDX = @dateIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PIECE_MIX_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PIECE_MIX_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PIECE_MIX_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PIECE_MIX_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, userLevel, mixType, mixCode, resultType, useA, useB, resultA, resultB, regDate
	  FROM dbo.log_data_piece_mix WITH (NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, userLevel, mixType, mixCode, resultType, useA, useB, resultA, resultB, regDate
	  FROM dbo.log_data_piece_mix WITH (NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_MONITOR_PESO_DAILY_TOP100
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_MONITOR_PESO_DAILY_TOP100]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_MONITOR_PESO_DAILY_TOP100]
GO

CREATE PROCEDURE [dbo].[AGENT_MONITOR_PESO_DAILY_TOP100]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @dateIDX char(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

INSERT INTO Analytical_statistics.dbo.game_monitor_peso_daily_top100 (
	accountIDX, nickname, userLevel, obtainpeso, [rank], dateIDX, analDate, regDate
)
SELECT TOP 100 accountIDX, nickname, userLevel, totalpeso,
	   RANK() OVER(ORDER BY totalpeso DESC) AS 'rank', @dateIDX AS 'dateIDX',
	   LEFT(CONVERT(varchar(20), @startDate, 120),10) AS 'analDate', GETDATE() AS 'regDate'
  FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
 WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10)
GO


-- ----------------------------
-- Procedure structure for AGENT_MONITOR_PESO_HAVE_TOP100
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_MONITOR_PESO_HAVE_TOP100]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_MONITOR_PESO_HAVE_TOP100]
GO

CREATE PROCEDURE [dbo].[AGENT_MONITOR_PESO_HAVE_TOP100]

AS

SET NOCOUNT ON

DECLARE @startDate datetime, @dateIDX char(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

INSERT INTO Analytical_statistics.dbo.game_monitor_peso_have_top100 (
	accountIDX, nickname, userLevel, havepeso, [rank], dateIDX, analDate, regDate
)
SELECT TOP 100 a.accountIDX, b.nickname, a.userLevel, a.gameMoney,
	   RANK() OVER(ORDER BY gameMoney DESC) AS 'rank', @dateIDX AS 'dateIDX', LEFT(CONVERT(varchar(20), @startDate, 120),10) AS 'analDate', GETDATE() AS 'regDate'
  FROM LosaGame_v140826.DBO.userGameDB a WITH(NOLOCK)
  JOIN LosaGame_v140826.DBO.userMemberDB b WITH(NOLOCK)
    ON a.accountIDX=b.accountIDX
GO


-- ----------------------------
-- Procedure structure for AGENT_PLAYER_COUNT_HAVE_PESO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_PLAYER_COUNT_HAVE_PESO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_PLAYER_COUNT_HAVE_PESO]
GO

CREATE PROCEDURE [dbo].[AGENT_PLAYER_COUNT_HAVE_PESO]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime
	DECLARE @dateIDX char(8)
	DECLARE @P000000000000 int, @P000000005000 int, @P005000010000 int, @P010000015000 int, @P015000020000 int, @P020000025000 int
	DECLARE @P025000030000 int, @P030000035000 int, @P035000040000 int, @P040000045000 int, @P045000050000 int, @P050000055000 int
	DECLARE @P055000060000 int, @P060000065000 int, @P065000070000 int, @P070000075000 int, @P075000080000 int, @P080000085000 int
	DECLARE @P085000090000 int, @P090000095000 int, @P095000100000 int, @P100000105000 int, @P105000110000 int, @P110000115000 int
	DECLARE @P115000120000 int, @P120000125000 int, @P125000130000 int, @P130000135000 int, @P135000140000 int, @P140000145000 int
	DECLARE @P145000150000 int, @P150000155000 int, @P155000160000 int, @P160000165000 int, @P165000170000 int, @P170000175000 int
	DECLARE @P175000180000 int, @P180000185000 int, @P185000190000 int, @P190000195000 int, @P195000200000 int, @P200000000000 int

	SET @startDate = LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10)
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	SET @P000000000000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso = 0), 0)
	SET @P000000005000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 0 and havepeso <= 5000), 0)
	SET @P005000010000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 5000 and havepeso <= 10000), 0)
	SET @P010000015000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 10000 and havepeso <= 15000), 0)
	SET @P015000020000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 15000 and havepeso <= 20000), 0)
	SET @P020000025000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 20000 and havepeso <= 25000), 0)
	SET @P025000030000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 25000 and havepeso <= 30000), 0)
	SET @P030000035000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 30000 and havepeso <= 35000), 0)
	SET @P035000040000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 35000 and havepeso <= 40000), 0)
	SET @P040000045000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 40000 and havepeso <= 45000), 0)
	SET @P045000050000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 45000 and havepeso <= 50000), 0)
	SET @P050000055000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 50000 and havepeso <= 55000), 0)
	SET @P055000060000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 55000 and havepeso <= 60000), 0)
	SET @P060000065000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 60000 and havepeso <= 65000), 0)
	SET @P065000070000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 65000 and havepeso <= 70000), 0)
	SET @P070000075000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 70000 and havepeso <= 75000), 0)
	SET @P075000080000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 75000 and havepeso <= 80000), 0)
	SET @P080000085000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 80000 and havepeso <= 85000), 0)
	SET @P085000090000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 85000 and havepeso <= 90000), 0)
	SET @P090000095000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 90000 and havepeso <= 95000), 0)
	SET @P095000100000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 95000 and havepeso <= 100000), 0)
	SET @P100000105000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 100000 and havepeso <= 105000), 0)
	SET @P105000110000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 105000 and havepeso <= 110000), 0)
	SET @P110000115000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 110000 and havepeso <= 115000), 0)
	SET @P115000120000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 115000 and havepeso <= 120000), 0)
	SET @P120000125000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 120000 and havepeso <= 125000), 0)
	SET @P125000130000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 125000 and havepeso <= 130000), 0)
	SET @P130000135000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 130000 and havepeso <= 135000), 0)
	SET @P135000140000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 135000 and havepeso <= 140000), 0)
	SET @P140000145000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 140000 and havepeso <= 145000), 0)
	SET @P145000150000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 145000 and havepeso <= 150000), 0)
	SET @P150000155000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 150000 and havepeso <= 155000), 0)
	SET @P155000160000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 155000 and havepeso <= 160000), 0)
	SET @P160000165000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 160000 and havepeso <= 165000), 0)
	SET @P165000170000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 165000 and havepeso <= 170000), 0)
	SET @P170000175000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 170000 and havepeso <= 175000), 0)
	SET @P175000180000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 175000 and havepeso <= 180000), 0)
	SET @P180000185000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 180000 and havepeso <= 185000), 0)
	SET @P185000190000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 185000 and havepeso <= 190000), 0)
	SET @P190000195000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 190000 and havepeso <= 195000), 0)
	SET @P195000200000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 195000 and havepeso <= 200000), 0)
	SET @P200000000000 = ISNULL((SELECT COUNT(*) FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK) WHERE analDate=@startDate and havepeso > 200000 and accountIDX not in (209274,322139,209270,209275,209272,209273,1105,1106,209271,380032,1107,209264,209268,1108,209267,209276,281811,209269,2304)), 0)

	INSERT INTO Analytical_statistics.DBO.game_player_count_have_peso (P000000000000, P000000005000, P005000010000, P010000015000, P015000020000, P020000025000, P025000030000, P030000035000, P035000040000, P040000045000, P045000050000, P050000055000, P055000060000, P060000065000, P065000070000, P070000075000, P075000080000, P080000085000, P085000090000, P090000095000, P095000100000, P100000105000, P105000110000, P110000115000, P115000120000, P120000125000, P125000130000, P130000135000, P135000140000, P140000145000, P145000150000, P150000155000, P155000160000, P160000165000, P165000170000, P170000175000, P175000180000, P180000185000, P185000190000, P190000195000, P195000200000, P200000000000, dateIDX, analDate, regDate)
	VALUES (@P000000000000, @P000000005000, @P005000010000, @P010000015000, @P015000020000, @P020000025000, @P025000030000, @P030000035000, @P035000040000, @P040000045000, @P045000050000, @P050000055000, @P055000060000, @P060000065000, @P065000070000, @P070000075000, @P075000080000, @P080000085000, @P085000090000, @P090000095000, @P095000100000, @P100000105000, @P105000110000, @P110000115000, @P115000120000, @P120000125000, @P125000130000, @P130000135000, @P135000140000, @P140000145000, @P145000150000, @P150000155000, @P155000160000, @P160000165000, @P165000170000, @P170000175000, @P175000180000, @P180000185000, @P185000190000, @P190000195000, @P195000200000, @P200000000000, @dateIDX, @startDate, GETDATE())
GO


-- ----------------------------
-- Procedure structure for AGENT_USER_LEVEL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_USER_LEVEL]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_USER_LEVEL]
GO

CREATE PROCEDURE [dbo].[AGENT_USER_LEVEL]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime, @clbDate datetime
	DECLARE @dateIDX char(8)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)
	SET @clbDate = '2009-01-29'

	INSERT INTO Analytical_statistics.DBO.game_user_level (lv00, lv01, lv02, lv03, lv04, lv05, lv06, lv07, lv08, lv09, lv10, lv11, lv12, lv13, lv14, lv15, lv16, lv17, lv18, lv19, lv20, lv21, lv22, lv23, lv24, lv25, lv26, lv27, lv28, lv29, lv30, lv31, lv32, lv33, lv34, lv35, lv36, lv37, lv38, lv39, lv40, lv41, lv42, lv43, lv44, lv45, lv46, lv47, lv48, lv49, lv50, lv51, lv52, lv53, lv54, lv55, dateIDX, analDate, regDate)

	SELECT	lv00 = ISNULL(SUM(CASE WHEN a.userLevel = 0 THEN a.cnt ELSE 0 END), 0)
,			lv01 = ISNULL(SUM(CASE WHEN a.userLevel = 1 THEN a.cnt ELSE 0 END), 0)
,			lv02 = ISNULL(SUM(CASE WHEN a.userLevel = 2 THEN a.cnt ELSE 0 END), 0)
,			lv03 = ISNULL(SUM(CASE WHEN a.userLevel = 3 THEN a.cnt ELSE 0 END), 0)
,			lv04 = ISNULL(SUM(CASE WHEN a.userLevel = 4 THEN a.cnt ELSE 0 END), 0)
,			lv05 = ISNULL(SUM(CASE WHEN a.userLevel = 5 THEN a.cnt ELSE 0 END), 0)
,			lv06 = ISNULL(SUM(CASE WHEN a.userLevel = 6 THEN a.cnt ELSE 0 END), 0)
,			lv07 = ISNULL(SUM(CASE WHEN a.userLevel = 7 THEN a.cnt ELSE 0 END), 0)
,			lv08 = ISNULL(SUM(CASE WHEN a.userLevel = 8 THEN a.cnt ELSE 0 END), 0)
,			lv09 = ISNULL(SUM(CASE WHEN a.userLevel = 9 THEN a.cnt ELSE 0 END), 0)
,			lv10 = ISNULL(SUM(CASE WHEN a.userLevel = 10 THEN a.cnt ELSE 0 END), 0)
,			lv11 = ISNULL(SUM(CASE WHEN a.userLevel = 11 THEN a.cnt ELSE 0 END), 0)
,			lv12 = ISNULL(SUM(CASE WHEN a.userLevel = 12 THEN a.cnt ELSE 0 END), 0)
,			lv13 = ISNULL(SUM(CASE WHEN a.userLevel = 13 THEN a.cnt ELSE 0 END), 0)
,			lv14 = ISNULL(SUM(CASE WHEN a.userLevel = 14 THEN a.cnt ELSE 0 END), 0)
,			lv15 = ISNULL(SUM(CASE WHEN a.userLevel = 15 THEN a.cnt ELSE 0 END), 0)
,			lv16 = ISNULL(SUM(CASE WHEN a.userLevel = 16 THEN a.cnt ELSE 0 END), 0)
,			lv17 = ISNULL(SUM(CASE WHEN a.userLevel = 17 THEN a.cnt ELSE 0 END), 0)
,			lv18 = ISNULL(SUM(CASE WHEN a.userLevel = 18 THEN a.cnt ELSE 0 END), 0)
,			lv19 = ISNULL(SUM(CASE WHEN a.userLevel = 19 THEN a.cnt ELSE 0 END), 0)
,			lv20 = ISNULL(SUM(CASE WHEN a.userLevel = 20 THEN a.cnt ELSE 0 END), 0)
,			lv21 = ISNULL(SUM(CASE WHEN a.userLevel = 21 THEN a.cnt ELSE 0 END), 0)
,			lv22 = ISNULL(SUM(CASE WHEN a.userLevel = 22 THEN a.cnt ELSE 0 END), 0)
,			lv23 = ISNULL(SUM(CASE WHEN a.userLevel = 23 THEN a.cnt ELSE 0 END), 0)
,			lv24 = ISNULL(SUM(CASE WHEN a.userLevel = 24 THEN a.cnt ELSE 0 END), 0)
,			lv25 = ISNULL(SUM(CASE WHEN a.userLevel = 25 THEN a.cnt ELSE 0 END), 0)
,			lv26 = ISNULL(SUM(CASE WHEN a.userLevel = 26 THEN a.cnt ELSE 0 END), 0)
,			lv27 = ISNULL(SUM(CASE WHEN a.userLevel = 27 THEN a.cnt ELSE 0 END), 0)
,			lv28 = ISNULL(SUM(CASE WHEN a.userLevel = 28 THEN a.cnt ELSE 0 END), 0)
,			lv29 = ISNULL(SUM(CASE WHEN a.userLevel = 29 THEN a.cnt ELSE 0 END), 0)
,			lv30 = ISNULL(SUM(CASE WHEN a.userLevel = 30 THEN a.cnt ELSE 0 END), 0)
,			lv31 = ISNULL(SUM(CASE WHEN a.userLevel = 31 THEN a.cnt ELSE 0 END), 0)
,			lv32 = ISNULL(SUM(CASE WHEN a.userLevel = 32 THEN a.cnt ELSE 0 END), 0)
,			lv33 = ISNULL(SUM(CASE WHEN a.userLevel = 33 THEN a.cnt ELSE 0 END), 0)
,			lv34 = ISNULL(SUM(CASE WHEN a.userLevel = 34 THEN a.cnt ELSE 0 END), 0)
,			lv35 = ISNULL(SUM(CASE WHEN a.userLevel = 35 THEN a.cnt ELSE 0 END), 0)
,			lv36 = ISNULL(SUM(CASE WHEN a.userLevel = 36 THEN a.cnt ELSE 0 END), 0)
,			lv37 = ISNULL(SUM(CASE WHEN a.userLevel = 37 THEN a.cnt ELSE 0 END), 0)
,			lv38 = ISNULL(SUM(CASE WHEN a.userLevel = 38 THEN a.cnt ELSE 0 END), 0)
,			lv39 = ISNULL(SUM(CASE WHEN a.userLevel = 39 THEN a.cnt ELSE 0 END), 0)
,			lv40 = ISNULL(SUM(CASE WHEN a.userLevel = 40 THEN a.cnt ELSE 0 END), 0)
,			lv41 = ISNULL(SUM(CASE WHEN a.userLevel = 41 THEN a.cnt ELSE 0 END), 0)
,			lv42 = ISNULL(SUM(CASE WHEN a.userLevel = 42 THEN a.cnt ELSE 0 END), 0)
,			lv43 = ISNULL(SUM(CASE WHEN a.userLevel = 43 THEN a.cnt ELSE 0 END), 0)
,			lv44 = ISNULL(SUM(CASE WHEN a.userLevel = 44 THEN a.cnt ELSE 0 END), 0)
,			lv45 = ISNULL(SUM(CASE WHEN a.userLevel = 45 THEN a.cnt ELSE 0 END), 0)
,			lv46 = ISNULL(SUM(CASE WHEN a.userLevel = 46 THEN a.cnt ELSE 0 END), 0)
,			lv47 = ISNULL(SUM(CASE WHEN a.userLevel = 47 THEN a.cnt ELSE 0 END), 0)
,			lv48 = ISNULL(SUM(CASE WHEN a.userLevel = 48 THEN a.cnt ELSE 0 END), 0)
,			lv49 = ISNULL(SUM(CASE WHEN a.userLevel = 49 THEN a.cnt ELSE 0 END), 0)
,			lv50 = ISNULL(SUM(CASE WHEN a.userLevel = 50 THEN a.cnt ELSE 0 END), 0)
,			lv51 = ISNULL(SUM(CASE WHEN a.userLevel = 51 THEN a.cnt ELSE 0 END), 0)
,			lv52 = ISNULL(SUM(CASE WHEN a.userLevel = 52 THEN a.cnt ELSE 0 END), 0)
,			lv53 = ISNULL(SUM(CASE WHEN a.userLevel = 53 THEN a.cnt ELSE 0 END), 0)
,			lv54 = ISNULL(SUM(CASE WHEN a.userLevel = 54 THEN a.cnt ELSE 0 END), 0)
,			lv55 = ISNULL(SUM(CASE WHEN a.userLevel = 55 THEN a.cnt ELSE 0 END), 0)
,			@dateIDX
,			LEFT(CONVERT(varchar(20), @startDate, 120),10)
,			GETDATE()
	FROM (
		SELECT userLevel, COUNT(*) as 'cnt'
		FROM LosaGame_v140826.DBO.userGameDB WITH(NOLOCK)
		WHERE connDate > @clbDate
		GROUP BY userLevel
	) a
GO


-- ----------------------------
-- Procedure structure for AGENT_USER_LEVEL_SELECTDAY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_USER_LEVEL_SELECTDAY]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_USER_LEVEL_SELECTDAY]
GO

CREATE PROCEDURE [dbo].[AGENT_USER_LEVEL_SELECTDAY]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime, @clbDate datetime
	DECLARE @dateIDX char(8)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	INSERT INTO Analytical_statistics.DBO.game_user_level_selectday (lv00, lv01, lv02, lv03, lv04, lv05, lv06, lv07, lv08, lv09, lv10, lv11, lv12, lv13, lv14, lv15, lv16, lv17, lv18, lv19, lv20, lv21, lv22, lv23, lv24, lv25, lv26, lv27, lv28, lv29, lv30, lv31, lv32, lv33, lv34, lv35, lv36, lv37, lv38, lv39, lv40, lv41, lv42, lv43, lv44, lv45, lv46, lv47, lv48, lv49, lv50, lv51, lv52, lv53, lv54, lv55, dateIDX, analDate, regDate)

	SELECT	lv00 = ISNULL(SUM(CASE WHEN a.userLevel = 0 THEN a.cnt ELSE 0 END), 0)
,			lv01 = ISNULL(SUM(CASE WHEN a.userLevel = 1 THEN a.cnt ELSE 0 END), 0)
,			lv02 = ISNULL(SUM(CASE WHEN a.userLevel = 2 THEN a.cnt ELSE 0 END), 0)
,			lv03 = ISNULL(SUM(CASE WHEN a.userLevel = 3 THEN a.cnt ELSE 0 END), 0)
,			lv04 = ISNULL(SUM(CASE WHEN a.userLevel = 4 THEN a.cnt ELSE 0 END), 0)
,			lv05 = ISNULL(SUM(CASE WHEN a.userLevel = 5 THEN a.cnt ELSE 0 END), 0)
,			lv06 = ISNULL(SUM(CASE WHEN a.userLevel = 6 THEN a.cnt ELSE 0 END), 0)
,			lv07 = ISNULL(SUM(CASE WHEN a.userLevel = 7 THEN a.cnt ELSE 0 END), 0)
,			lv08 = ISNULL(SUM(CASE WHEN a.userLevel = 8 THEN a.cnt ELSE 0 END), 0)
,			lv09 = ISNULL(SUM(CASE WHEN a.userLevel = 9 THEN a.cnt ELSE 0 END), 0)
,			lv10 = ISNULL(SUM(CASE WHEN a.userLevel = 10 THEN a.cnt ELSE 0 END), 0)
,			lv11 = ISNULL(SUM(CASE WHEN a.userLevel = 11 THEN a.cnt ELSE 0 END), 0)
,			lv12 = ISNULL(SUM(CASE WHEN a.userLevel = 12 THEN a.cnt ELSE 0 END), 0)
,			lv13 = ISNULL(SUM(CASE WHEN a.userLevel = 13 THEN a.cnt ELSE 0 END), 0)
,			lv14 = ISNULL(SUM(CASE WHEN a.userLevel = 14 THEN a.cnt ELSE 0 END), 0)
,			lv15 = ISNULL(SUM(CASE WHEN a.userLevel = 15 THEN a.cnt ELSE 0 END), 0)
,			lv16 = ISNULL(SUM(CASE WHEN a.userLevel = 16 THEN a.cnt ELSE 0 END), 0)
,			lv17 = ISNULL(SUM(CASE WHEN a.userLevel = 17 THEN a.cnt ELSE 0 END), 0)
,			lv18 = ISNULL(SUM(CASE WHEN a.userLevel = 18 THEN a.cnt ELSE 0 END), 0)
,			lv19 = ISNULL(SUM(CASE WHEN a.userLevel = 19 THEN a.cnt ELSE 0 END), 0)
,			lv20 = ISNULL(SUM(CASE WHEN a.userLevel = 20 THEN a.cnt ELSE 0 END), 0)
,			lv21 = ISNULL(SUM(CASE WHEN a.userLevel = 21 THEN a.cnt ELSE 0 END), 0)
,			lv22 = ISNULL(SUM(CASE WHEN a.userLevel = 22 THEN a.cnt ELSE 0 END), 0)
,			lv23 = ISNULL(SUM(CASE WHEN a.userLevel = 23 THEN a.cnt ELSE 0 END), 0)
,			lv24 = ISNULL(SUM(CASE WHEN a.userLevel = 24 THEN a.cnt ELSE 0 END), 0)
,			lv25 = ISNULL(SUM(CASE WHEN a.userLevel = 25 THEN a.cnt ELSE 0 END), 0)
,			lv26 = ISNULL(SUM(CASE WHEN a.userLevel = 26 THEN a.cnt ELSE 0 END), 0)
,			lv27 = ISNULL(SUM(CASE WHEN a.userLevel = 27 THEN a.cnt ELSE 0 END), 0)
,			lv28 = ISNULL(SUM(CASE WHEN a.userLevel = 28 THEN a.cnt ELSE 0 END), 0)
,			lv29 = ISNULL(SUM(CASE WHEN a.userLevel = 29 THEN a.cnt ELSE 0 END), 0)
,			lv30 = ISNULL(SUM(CASE WHEN a.userLevel = 30 THEN a.cnt ELSE 0 END), 0)
,			lv31 = ISNULL(SUM(CASE WHEN a.userLevel = 31 THEN a.cnt ELSE 0 END), 0)
,			lv32 = ISNULL(SUM(CASE WHEN a.userLevel = 32 THEN a.cnt ELSE 0 END), 0)
,			lv33 = ISNULL(SUM(CASE WHEN a.userLevel = 33 THEN a.cnt ELSE 0 END), 0)
,			lv34 = ISNULL(SUM(CASE WHEN a.userLevel = 34 THEN a.cnt ELSE 0 END), 0)
,			lv35 = ISNULL(SUM(CASE WHEN a.userLevel = 35 THEN a.cnt ELSE 0 END), 0)
,			lv36 = ISNULL(SUM(CASE WHEN a.userLevel = 36 THEN a.cnt ELSE 0 END), 0)
,			lv37 = ISNULL(SUM(CASE WHEN a.userLevel = 37 THEN a.cnt ELSE 0 END), 0)
,			lv38 = ISNULL(SUM(CASE WHEN a.userLevel = 38 THEN a.cnt ELSE 0 END), 0)
,			lv39 = ISNULL(SUM(CASE WHEN a.userLevel = 39 THEN a.cnt ELSE 0 END), 0)
,			lv40 = ISNULL(SUM(CASE WHEN a.userLevel = 40 THEN a.cnt ELSE 0 END), 0)
,			lv41 = ISNULL(SUM(CASE WHEN a.userLevel = 41 THEN a.cnt ELSE 0 END), 0)
,			lv42 = ISNULL(SUM(CASE WHEN a.userLevel = 42 THEN a.cnt ELSE 0 END), 0)
,			lv43 = ISNULL(SUM(CASE WHEN a.userLevel = 43 THEN a.cnt ELSE 0 END), 0)
,			lv44 = ISNULL(SUM(CASE WHEN a.userLevel = 44 THEN a.cnt ELSE 0 END), 0)
,			lv45 = ISNULL(SUM(CASE WHEN a.userLevel = 45 THEN a.cnt ELSE 0 END), 0)
,			lv46 = ISNULL(SUM(CASE WHEN a.userLevel = 46 THEN a.cnt ELSE 0 END), 0)
,			lv47 = ISNULL(SUM(CASE WHEN a.userLevel = 47 THEN a.cnt ELSE 0 END), 0)
,			lv48 = ISNULL(SUM(CASE WHEN a.userLevel = 48 THEN a.cnt ELSE 0 END), 0)
,			lv49 = ISNULL(SUM(CASE WHEN a.userLevel = 49 THEN a.cnt ELSE 0 END), 0)
,			lv50 = ISNULL(SUM(CASE WHEN a.userLevel = 50 THEN a.cnt ELSE 0 END), 0)
,			lv51 = ISNULL(SUM(CASE WHEN a.userLevel = 51 THEN a.cnt ELSE 0 END), 0)
,			lv52 = ISNULL(SUM(CASE WHEN a.userLevel = 52 THEN a.cnt ELSE 0 END), 0)
,			lv53 = ISNULL(SUM(CASE WHEN a.userLevel = 53 THEN a.cnt ELSE 0 END), 0)
,			lv54 = ISNULL(SUM(CASE WHEN a.userLevel = 54 THEN a.cnt ELSE 0 END), 0)
,			lv55 = ISNULL(SUM(CASE WHEN a.userLevel = 55 THEN a.cnt ELSE 0 END), 0)
,			@dateIDX
,			LEFT(CONVERT(varchar(20), @startDate, 120),10)
,			GETDATE()
	FROM (
		SELECT userLevel, COUNT(*) as 'cnt'
		FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10)
		GROUP BY userLevel
	) a
GO


-- ----------------------------
-- Procedure structure for AGENT_USER_LEVEL_SELECTDAY_NP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_USER_LEVEL_SELECTDAY_NP]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_USER_LEVEL_SELECTDAY_NP]
GO

CREATE PROCEDURE [dbo].[AGENT_USER_LEVEL_SELECTDAY_NP]

AS

SET NOCOUNT ON

	DECLARE @startDate datetime, @endDate datetime, @clbDate datetime
	DECLARE @dateIDX char(8)

	SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
	SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
	SET @dateIDX = CONVERT(char(8),@startDate,112)

	INSERT INTO Analytical_statistics.DBO.game_user_level_selectday_np (lv00, lv01, lv02, lv03, lv04, lv05, lv06, lv07, lv08, lv09, lv10, lv11, lv12, lv13, lv14, lv15, lv16, lv17, lv18, lv19, lv20, lv21, lv22, lv23, lv24, lv25, lv26, lv27, lv28, lv29, lv30, lv31, lv32, lv33, lv34, lv35, lv36, lv37, lv38, lv39, lv40, lv41, lv42, lv43, lv44, lv45, lv46, lv47, lv48, lv49, lv50, lv51, lv52, lv53, lv54, lv55, dateIDX, analDate, regDate)

	SELECT	lv00 = ISNULL(SUM(CASE WHEN a.userLevel = 0 THEN a.cnt ELSE 0 END), 0)
,			lv01 = ISNULL(SUM(CASE WHEN a.userLevel = 1 THEN a.cnt ELSE 0 END), 0)
,			lv02 = ISNULL(SUM(CASE WHEN a.userLevel = 2 THEN a.cnt ELSE 0 END), 0)
,			lv03 = ISNULL(SUM(CASE WHEN a.userLevel = 3 THEN a.cnt ELSE 0 END), 0)
,			lv04 = ISNULL(SUM(CASE WHEN a.userLevel = 4 THEN a.cnt ELSE 0 END), 0)
,			lv05 = ISNULL(SUM(CASE WHEN a.userLevel = 5 THEN a.cnt ELSE 0 END), 0)
,			lv06 = ISNULL(SUM(CASE WHEN a.userLevel = 6 THEN a.cnt ELSE 0 END), 0)
,			lv07 = ISNULL(SUM(CASE WHEN a.userLevel = 7 THEN a.cnt ELSE 0 END), 0)
,			lv08 = ISNULL(SUM(CASE WHEN a.userLevel = 8 THEN a.cnt ELSE 0 END), 0)
,			lv09 = ISNULL(SUM(CASE WHEN a.userLevel = 9 THEN a.cnt ELSE 0 END), 0)
,			lv10 = ISNULL(SUM(CASE WHEN a.userLevel = 10 THEN a.cnt ELSE 0 END), 0)
,			lv11 = ISNULL(SUM(CASE WHEN a.userLevel = 11 THEN a.cnt ELSE 0 END), 0)
,			lv12 = ISNULL(SUM(CASE WHEN a.userLevel = 12 THEN a.cnt ELSE 0 END), 0)
,			lv13 = ISNULL(SUM(CASE WHEN a.userLevel = 13 THEN a.cnt ELSE 0 END), 0)
,			lv14 = ISNULL(SUM(CASE WHEN a.userLevel = 14 THEN a.cnt ELSE 0 END), 0)
,			lv15 = ISNULL(SUM(CASE WHEN a.userLevel = 15 THEN a.cnt ELSE 0 END), 0)
,			lv16 = ISNULL(SUM(CASE WHEN a.userLevel = 16 THEN a.cnt ELSE 0 END), 0)
,			lv17 = ISNULL(SUM(CASE WHEN a.userLevel = 17 THEN a.cnt ELSE 0 END), 0)
,			lv18 = ISNULL(SUM(CASE WHEN a.userLevel = 18 THEN a.cnt ELSE 0 END), 0)
,			lv19 = ISNULL(SUM(CASE WHEN a.userLevel = 19 THEN a.cnt ELSE 0 END), 0)
,			lv20 = ISNULL(SUM(CASE WHEN a.userLevel = 20 THEN a.cnt ELSE 0 END), 0)
,			lv21 = ISNULL(SUM(CASE WHEN a.userLevel = 21 THEN a.cnt ELSE 0 END), 0)
,			lv22 = ISNULL(SUM(CASE WHEN a.userLevel = 22 THEN a.cnt ELSE 0 END), 0)
,			lv23 = ISNULL(SUM(CASE WHEN a.userLevel = 23 THEN a.cnt ELSE 0 END), 0)
,			lv24 = ISNULL(SUM(CASE WHEN a.userLevel = 24 THEN a.cnt ELSE 0 END), 0)
,			lv25 = ISNULL(SUM(CASE WHEN a.userLevel = 25 THEN a.cnt ELSE 0 END), 0)
,			lv26 = ISNULL(SUM(CASE WHEN a.userLevel = 26 THEN a.cnt ELSE 0 END), 0)
,			lv27 = ISNULL(SUM(CASE WHEN a.userLevel = 27 THEN a.cnt ELSE 0 END), 0)
,			lv28 = ISNULL(SUM(CASE WHEN a.userLevel = 28 THEN a.cnt ELSE 0 END), 0)
,			lv29 = ISNULL(SUM(CASE WHEN a.userLevel = 29 THEN a.cnt ELSE 0 END), 0)
,			lv30 = ISNULL(SUM(CASE WHEN a.userLevel = 30 THEN a.cnt ELSE 0 END), 0)
,			lv31 = ISNULL(SUM(CASE WHEN a.userLevel = 31 THEN a.cnt ELSE 0 END), 0)
,			lv32 = ISNULL(SUM(CASE WHEN a.userLevel = 32 THEN a.cnt ELSE 0 END), 0)
,			lv33 = ISNULL(SUM(CASE WHEN a.userLevel = 33 THEN a.cnt ELSE 0 END), 0)
,			lv34 = ISNULL(SUM(CASE WHEN a.userLevel = 34 THEN a.cnt ELSE 0 END), 0)
,			lv35 = ISNULL(SUM(CASE WHEN a.userLevel = 35 THEN a.cnt ELSE 0 END), 0)
,			lv36 = ISNULL(SUM(CASE WHEN a.userLevel = 36 THEN a.cnt ELSE 0 END), 0)
,			lv37 = ISNULL(SUM(CASE WHEN a.userLevel = 37 THEN a.cnt ELSE 0 END), 0)
,			lv38 = ISNULL(SUM(CASE WHEN a.userLevel = 38 THEN a.cnt ELSE 0 END), 0)
,			lv39 = ISNULL(SUM(CASE WHEN a.userLevel = 39 THEN a.cnt ELSE 0 END), 0)
,			lv40 = ISNULL(SUM(CASE WHEN a.userLevel = 40 THEN a.cnt ELSE 0 END), 0)
,			lv41 = ISNULL(SUM(CASE WHEN a.userLevel = 41 THEN a.cnt ELSE 0 END), 0)
,			lv42 = ISNULL(SUM(CASE WHEN a.userLevel = 42 THEN a.cnt ELSE 0 END), 0)
,			lv43 = ISNULL(SUM(CASE WHEN a.userLevel = 43 THEN a.cnt ELSE 0 END), 0)
,			lv44 = ISNULL(SUM(CASE WHEN a.userLevel = 44 THEN a.cnt ELSE 0 END), 0)
,			lv45 = ISNULL(SUM(CASE WHEN a.userLevel = 45 THEN a.cnt ELSE 0 END), 0)
,			lv46 = ISNULL(SUM(CASE WHEN a.userLevel = 46 THEN a.cnt ELSE 0 END), 0)
,			lv47 = ISNULL(SUM(CASE WHEN a.userLevel = 47 THEN a.cnt ELSE 0 END), 0)
,			lv48 = ISNULL(SUM(CASE WHEN a.userLevel = 48 THEN a.cnt ELSE 0 END), 0)
,			lv49 = ISNULL(SUM(CASE WHEN a.userLevel = 49 THEN a.cnt ELSE 0 END), 0)
,			lv50 = ISNULL(SUM(CASE WHEN a.userLevel = 50 THEN a.cnt ELSE 0 END), 0)
,			lv51 = ISNULL(SUM(CASE WHEN a.userLevel = 51 THEN a.cnt ELSE 0 END), 0)
,			lv52 = ISNULL(SUM(CASE WHEN a.userLevel = 52 THEN a.cnt ELSE 0 END), 0)
,			lv53 = ISNULL(SUM(CASE WHEN a.userLevel = 53 THEN a.cnt ELSE 0 END), 0)
,			lv54 = ISNULL(SUM(CASE WHEN a.userLevel = 54 THEN a.cnt ELSE 0 END), 0)
,			lv55 = ISNULL(SUM(CASE WHEN a.userLevel = 55 THEN a.cnt ELSE 0 END), 0)
,			@dateIDX
,			LEFT(CONVERT(varchar(20), @startDate, 120),10)
,			GETDATE()
	FROM (
		SELECT userLevel, COUNT(*) as 'cnt'
		FROM Analytical_statistics.DBO.game_user_data WITH(NOLOCK)
		WHERE analDate=LEFT(CONVERT(varchar(20), @startDate, 120),10) and newType=1
		GROUP BY userLevel
	) a
GO


-- ----------------------------
-- Procedure structure for log_item_bonus_gold_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_item_bonus_gold_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_item_bonus_gold_set_add]
GO

CREATE PROCEDURE [dbo].[log_item_bonus_gold_set_add]

	@AccountIDX		INT,				-- 유저인덱스
	@GoldIDX		INT,				-- userGoldDB > idx 값
	@UserLevel		INT,				-- 유저레벨
	@Amount			INT,				-- 사용금액
	@ItemType		INT,				-- 아이템타입
	@ItemCode		INT,				-- 아이템코드
	@ItemValue		INT,				-- 아이템벨류
	@CpType			SMALLINT,			-- 0: 아이오, 300: 엠게임, ... , 900: 한게임
	@ShopType		TINYINT,			-- 1: 게임, 2: 웹, 3: ....
	@UserIP			VARCHAR(15),		-- 아이피
	@BillingID		NVARCHAR(100),		-- 비고
	@SuccessType	TINYINT				-- 0: 성공, 1 : 잔액부족, 2:DB에러

AS    

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

INSERT INTO dbo.log_buy_item_bonus_gold (
	AccountIDX, GoldIDX, UserLevel, Amount, ItemType, ItemCode, ItemValue, CpType, ShopType, UserIP, BillingID, SuccessType, RegDate
)
VALUES (
	@AccountIDX, @GoldIDX, @UserLevel, @Amount, @ItemType, @ItemCode, @ItemValue, @CpType, @ShopType, @UserIP, @BillingID, @SuccessType, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PIECE_DIVIDE_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PIECE_DIVIDE_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PIECE_DIVIDE_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PIECE_DIVIDE_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, userLevel, itemType, itemCode, amount, materialCode, regDate
	  FROM dbo.log_data_piece_divide WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, userLevel, itemType, itemCode, amount, materialCode, regDate
	  FROM dbo.log_data_piece_divide WITH(NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PET_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PET_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PET_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PET_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, userLevel, petIDX, petCode, petRank, petLevel, petExp,
	       itemCode, logType, logSubType, logNote, regDate
	  FROM dbo.log_data_pet WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, userLevel, petIDX, petCode, petRank, petLevel, petExp,
	       itemCode, logType, logSubType, logNote, regDate
	  FROM dbo.log_data_pet WITH(NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PESO_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PESO_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PESO_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PESO_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, peso, logType, regDate
	  FROM dbo.log_data_peso WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, peso, logType, regDate
	  FROM dbo.log_data_peso WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
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
AS

SET NOCOUNT ON

INSERT INTO dbo.log_game_concurrent (serverID, serverIP, serverPort, serverName, concurrent, cpType, regDate)
VALUES (@serverID, @serverIP, @serverPort, @serverName, @concurrent, @cpType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEDAL_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEDAL_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEDAL_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEDAL_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, medalType, limitType, logType, regDate
	  FROM dbo.log_data_medal WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, medalType, limitType, logType, regDate 
	  FROM dbo.log_data_medal WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for game_log_use_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_log_use_item]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_log_use_item]
GO

CREATE PROCEDURE [dbo].[game_log_use_item]
(
	@accountIDX int
,	@nickname varchar(20)
,	@itemType int
,	@itemCode int
,	@itemRowIDX int
,	@itemColIDX int
,	@userIP varchar(15)
,	@note varchar(200)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_use_item (accountIDX, nickname, itemType, itemCode, rowIDX, colIDX, userIP, note, regDate)
VALUES (@accountIDX, @nickname, @itemType, @itemCode, @itemRowIDX, @itemColIDX, @userIP, @note, GETDATE())
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GOLD_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GOLD_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GOLD_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GOLD_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickname, userLevel, itemType, itemCode, itemValue, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_gold WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickname, userLevel, itemType, itemCode, itemValue, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_gold WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for log_data_awake_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_awake_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_awake_add]
GO

CREATE PROCEDURE [dbo].[log_data_awake_add]
(
	@accountIDX		INT,
	@nickName		NVARCHAR(20),
	@userLevel		INT,
	@classType		INT,
	@pieceCode		INT,
	@pieceUseCount	SMALLINT,
	@awakeType		TINYINT
)	
AS

SET NOCOUNT ON

BEGIN

INSERT dbo.log_data_awake (
	accountIDX, nickName, userLevel, classType, pieceCode, pieceUseCount, awakeType, regDate
)
VALUES 	(
	@accountIDX, @nickName, @userLevel, @classType, @pieceCode, @pieceUseCount, @awakeType, GETDATE()
)

END
GO


-- ----------------------------
-- Procedure structure for AGENT_CLASS_BUY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_CLASS_BUY]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_CLASS_BUY]
GO

CREATE PROCEDURE [dbo].[AGENT_CLASS_BUY]

AS

SET NOCOUNT ON

DECLARE @startDate DATETIME
DECLARE @endDate DATETIME
DECLARE @dateIDX CHAR(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(VARCHAR(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(CHAR(8),@startDate,112)

INSERT INTO Analytical_statistics.DBO.game_class_buy (
	class1, class2, class3, class4, class5, class6, class7, class8, class9, class10,
	class11, class12, class13, class14, class15, class16, class17, class18, class19, class20,
	class21, class22, class23, class24, class25, class26, class27, class28, class29, class30,
	class31, class32, class33, class34, class35, class36, class37, class38, class39, class40,
	class41, class42, class43, class44, class45, class46, class47, class48, class49, class50,
	class51, class52, class53, class54, class55, class56, class57, class58, class59, class60,
	class61, class62, class63, class64, class65, class66, class67, class68, class69, class70,
	class71, class72, class73, class74, class75, class76, class77, class78, class79, class80,
	class81, class82, class83, class84, class85, class86, class87, class88, class89, class90,
	class91, class92, class93, class94, class95, class96, class97, class98, class99, class100,
	dateIDX, analDate, regdate
)
SELECT ISNULL(SUM(CASE a.classType WHEN 1 THEN a.sumTime ELSE 0 END), 0) AS class1,
	   ISNULL(SUM(CASE a.classType WHEN 2 THEN a.sumTime ELSE 0 END), 0) AS class2,
	   ISNULL(SUM(CASE a.classType WHEN 3 THEN a.sumTime ELSE 0 END), 0) AS class3,
	   ISNULL(SUM(CASE a.classType WHEN 4 THEN a.sumTime ELSE 0 END), 0) AS class4,
	   ISNULL(SUM(CASE a.classType WHEN 5 THEN a.sumTime ELSE 0 END), 0) AS class5,
	   ISNULL(SUM(CASE a.classType WHEN 6 THEN a.sumTime ELSE 0 END), 0) AS class6,
	   ISNULL(SUM(CASE a.classType WHEN 7 THEN a.sumTime ELSE 0 END), 0) AS class7,
	   ISNULL(SUM(CASE a.classType WHEN 8 THEN a.sumTime ELSE 0 END), 0) AS class8,
	   ISNULL(SUM(CASE a.classType WHEN 9 THEN a.sumTime ELSE 0 END), 0) AS class9,
	   ISNULL(SUM(CASE a.classType WHEN 10 THEN a.sumTime ELSE 0 END), 0) AS class10,
	   ISNULL(SUM(CASE a.classType WHEN 11 THEN a.sumTime ELSE 0 END), 0) AS class11,
	   ISNULL(SUM(CASE a.classType WHEN 12 THEN a.sumTime ELSE 0 END), 0) AS class12,
	   ISNULL(SUM(CASE a.classType WHEN 13 THEN a.sumTime ELSE 0 END), 0) AS class13,
	   ISNULL(SUM(CASE a.classType WHEN 14 THEN a.sumTime ELSE 0 END), 0) AS class14,
	   ISNULL(SUM(CASE a.classType WHEN 15 THEN a.sumTime ELSE 0 END), 0) AS class15,
	   ISNULL(SUM(CASE a.classType WHEN 16 THEN a.sumTime ELSE 0 END), 0) AS class16,
	   ISNULL(SUM(CASE a.classType WHEN 17 THEN a.sumTime ELSE 0 END), 0) AS class17,
	   ISNULL(SUM(CASE a.classType WHEN 18 THEN a.sumTime ELSE 0 END), 0) AS class18,
	   ISNULL(SUM(CASE a.classType WHEN 19 THEN a.sumTime ELSE 0 END), 0) AS class19,
	   ISNULL(SUM(CASE a.classType WHEN 20 THEN a.sumTime ELSE 0 END), 0) AS class20,
	   ISNULL(SUM(CASE a.classType WHEN 21 THEN a.sumTime ELSE 0 END), 0) AS class21,
	   ISNULL(SUM(CASE a.classType WHEN 22 THEN a.sumTime ELSE 0 END), 0) AS class22,
	   ISNULL(SUM(CASE a.classType WHEN 23 THEN a.sumTime ELSE 0 END), 0) AS class23,
	   ISNULL(SUM(CASE a.classType WHEN 24 THEN a.sumTime ELSE 0 END), 0) AS class24,
	   ISNULL(SUM(CASE a.classType WHEN 25 THEN a.sumTime ELSE 0 END), 0) AS class25,
	   ISNULL(SUM(CASE a.classType WHEN 26 THEN a.sumTime ELSE 0 END), 0) AS class26,
	   ISNULL(SUM(CASE a.classType WHEN 27 THEN a.sumTime ELSE 0 END), 0) AS class27,
	   ISNULL(SUM(CASE a.classType WHEN 28 THEN a.sumTime ELSE 0 END), 0) AS class28,
	   ISNULL(SUM(CASE a.classType WHEN 29 THEN a.sumTime ELSE 0 END), 0) AS class29,
	   ISNULL(SUM(CASE a.classType WHEN 30 THEN a.sumTime ELSE 0 END), 0) AS class30,
	   ISNULL(SUM(CASE a.classType WHEN 31 THEN a.sumTime ELSE 0 END), 0) AS class31,
	   ISNULL(SUM(CASE a.classType WHEN 32 THEN a.sumTime ELSE 0 END), 0) AS class32,
	   ISNULL(SUM(CASE a.classType WHEN 33 THEN a.sumTime ELSE 0 END), 0) AS class33,
	   ISNULL(SUM(CASE a.classType WHEN 34 THEN a.sumTime ELSE 0 END), 0) AS class34,
	   ISNULL(SUM(CASE a.classType WHEN 35 THEN a.sumTime ELSE 0 END), 0) AS class35,
	   ISNULL(SUM(CASE a.classType WHEN 36 THEN a.sumTime ELSE 0 END), 0) AS class36,
	   ISNULL(SUM(CASE a.classType WHEN 37 THEN a.sumTime ELSE 0 END), 0) AS class37,
	   ISNULL(SUM(CASE a.classType WHEN 38 THEN a.sumTime ELSE 0 END), 0) AS class38,
	   ISNULL(SUM(CASE a.classType WHEN 39 THEN a.sumTime ELSE 0 END), 0) AS class39,
	   ISNULL(SUM(CASE a.classType WHEN 40 THEN a.sumTime ELSE 0 END), 0) AS class40,
	   ISNULL(SUM(CASE a.classType WHEN 41 THEN a.sumTime ELSE 0 END), 0) AS class41,
	   ISNULL(SUM(CASE a.classType WHEN 42 THEN a.sumTime ELSE 0 END), 0) AS class42,
	   ISNULL(SUM(CASE a.classType WHEN 43 THEN a.sumTime ELSE 0 END), 0) AS class43,
	   ISNULL(SUM(CASE a.classType WHEN 44 THEN a.sumTime ELSE 0 END), 0) AS class44,
	   ISNULL(SUM(CASE a.classType WHEN 45 THEN a.sumTime ELSE 0 END), 0) AS class45,
	   ISNULL(SUM(CASE a.classType WHEN 46 THEN a.sumTime ELSE 0 END), 0) AS class46,
	   ISNULL(SUM(CASE a.classType WHEN 47 THEN a.sumTime ELSE 0 END), 0) AS class47,
	   ISNULL(SUM(CASE a.classType WHEN 48 THEN a.sumTime ELSE 0 END), 0) AS class48,
	   ISNULL(SUM(CASE a.classType WHEN 49 THEN a.sumTime ELSE 0 END), 0) AS class49,
	   ISNULL(SUM(CASE a.classType WHEN 50 THEN a.sumTime ELSE 0 END), 0) AS class50,
	   ISNULL(SUM(CASE a.classType WHEN 51 THEN a.sumTime ELSE 0 END), 0) AS class51,
	   ISNULL(SUM(CASE a.classType WHEN 52 THEN a.sumTime ELSE 0 END), 0) AS class52,
	   ISNULL(SUM(CASE a.classType WHEN 53 THEN a.sumTime ELSE 0 END), 0) AS class53,
	   ISNULL(SUM(CASE a.classType WHEN 54 THEN a.sumTime ELSE 0 END), 0) AS class54,
	   ISNULL(SUM(CASE a.classType WHEN 55 THEN a.sumTime ELSE 0 END), 0) AS class55,
	   ISNULL(SUM(CASE a.classType WHEN 56 THEN a.sumTime ELSE 0 END), 0) AS class56,
	   ISNULL(SUM(CASE a.classType WHEN 57 THEN a.sumTime ELSE 0 END), 0) AS class57,
	   ISNULL(SUM(CASE a.classType WHEN 58 THEN a.sumTime ELSE 0 END), 0) AS class58,
	   ISNULL(SUM(CASE a.classType WHEN 59 THEN a.sumTime ELSE 0 END), 0) AS class59,
	   ISNULL(SUM(CASE a.classType WHEN 60 THEN a.sumTime ELSE 0 END), 0) AS class60,
	   ISNULL(SUM(CASE a.classType WHEN 61 THEN a.sumTime ELSE 0 END), 0) AS class61,
	   ISNULL(SUM(CASE a.classType WHEN 62 THEN a.sumTime ELSE 0 END), 0) AS class62,
	   ISNULL(SUM(CASE a.classType WHEN 63 THEN a.sumTime ELSE 0 END), 0) AS class63,
	   ISNULL(SUM(CASE a.classType WHEN 64 THEN a.sumTime ELSE 0 END), 0) AS class64,
	   ISNULL(SUM(CASE a.classType WHEN 65 THEN a.sumTime ELSE 0 END), 0) AS class65,
	   ISNULL(SUM(CASE a.classType WHEN 66 THEN a.sumTime ELSE 0 END), 0) AS class66,
	   ISNULL(SUM(CASE a.classType WHEN 67 THEN a.sumTime ELSE 0 END), 0) AS class67,
	   ISNULL(SUM(CASE a.classType WHEN 68 THEN a.sumTime ELSE 0 END), 0) AS class68,
	   ISNULL(SUM(CASE a.classType WHEN 69 THEN a.sumTime ELSE 0 END), 0) AS class69,
	   ISNULL(SUM(CASE a.classType WHEN 70 THEN a.sumTime ELSE 0 END), 0) AS class70,
	   ISNULL(SUM(CASE a.classType WHEN 71 THEN a.sumTime ELSE 0 END), 0) AS class71,
	   ISNULL(SUM(CASE a.classType WHEN 72 THEN a.sumTime ELSE 0 END), 0) AS class72,
	   ISNULL(SUM(CASE a.classType WHEN 73 THEN a.sumTime ELSE 0 END), 0) AS class73,
	   ISNULL(SUM(CASE a.classType WHEN 74 THEN a.sumTime ELSE 0 END), 0) AS class74,
	   ISNULL(SUM(CASE a.classType WHEN 75 THEN a.sumTime ELSE 0 END), 0) AS class75,
	   ISNULL(SUM(CASE a.classType WHEN 76 THEN a.sumTime ELSE 0 END), 0) AS class76,
	   ISNULL(SUM(CASE a.classType WHEN 77 THEN a.sumTime ELSE 0 END), 0) AS class77,
	   ISNULL(SUM(CASE a.classType WHEN 78 THEN a.sumTime ELSE 0 END), 0) AS class78,
	   ISNULL(SUM(CASE a.classType WHEN 79 THEN a.sumTime ELSE 0 END), 0) AS class79,
	   ISNULL(SUM(CASE a.classType WHEN 80 THEN a.sumTime ELSE 0 END), 0) AS class80,
	   ISNULL(SUM(CASE a.classType WHEN 81 THEN a.sumTime ELSE 0 END), 0) AS class81,
	   ISNULL(SUM(CASE a.classType WHEN 82 THEN a.sumTime ELSE 0 END), 0) AS class82,
	   ISNULL(SUM(CASE a.classType WHEN 83 THEN a.sumTime ELSE 0 END), 0) AS class83,
	   ISNULL(SUM(CASE a.classType WHEN 84 THEN a.sumTime ELSE 0 END), 0) AS class84,
	   ISNULL(SUM(CASE a.classType WHEN 85 THEN a.sumTime ELSE 0 END), 0) AS class85,
	   ISNULL(SUM(CASE a.classType WHEN 86 THEN a.sumTime ELSE 0 END), 0) AS class86,
	   ISNULL(SUM(CASE a.classType WHEN 87 THEN a.sumTime ELSE 0 END), 0) AS class87,
	   ISNULL(SUM(CASE a.classType WHEN 88 THEN a.sumTime ELSE 0 END), 0) AS class88,
	   ISNULL(SUM(CASE a.classType WHEN 89 THEN a.sumTime ELSE 0 END), 0) AS class89,
	   ISNULL(SUM(CASE a.classType WHEN 90 THEN a.sumTime ELSE 0 END), 0) AS class90,
	   ISNULL(SUM(CASE a.classType WHEN 91 THEN a.sumTime ELSE 0 END), 0) AS class91,
	   ISNULL(SUM(CASE a.classType WHEN 92 THEN a.sumTime ELSE 0 END), 0) AS class92,
	   ISNULL(SUM(CASE a.classType WHEN 93 THEN a.sumTime ELSE 0 END), 0) AS class93,
	   ISNULL(SUM(CASE a.classType WHEN 94 THEN a.sumTime ELSE 0 END), 0) AS class94,
	   ISNULL(SUM(CASE a.classType WHEN 95 THEN a.sumTime ELSE 0 END), 0) AS class95,
	   ISNULL(SUM(CASE a.classType WHEN 96 THEN a.sumTime ELSE 0 END), 0) AS class96,
	   ISNULL(SUM(CASE a.classType WHEN 97 THEN a.sumTime ELSE 0 END), 0) AS class97,
	   ISNULL(SUM(CASE a.classType WHEN 98 THEN a.sumTime ELSE 0 END), 0) AS class98,
	   ISNULL(SUM(CASE a.classType WHEN 99 THEN a.sumTime ELSE 0 END), 0) AS class99,
	   ISNULL(SUM(CASE a.classType WHEN 100 THEN a.sumTime ELSE 0 END), 0) AS class100,
	   @dateIDX, LEFT(CONVERT(VARCHAR(20), @startDate, 120),10), GETDATE()
  FROM (
	SELECT classType, SUM(limitType) AS 'sumTime'
	  FROM dbo.log_buy_item_class WITH(NOLOCK) 
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND eventType=1
	 GROUP BY classType
) a
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GEAR_UPGRADE_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GEAR_UPGRADE_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GEAR_UPGRADE_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GEAR_UPGRADE_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, userLevel, gearCode, nowUpgradeValue, resultUpgradeValue, pieceCode, logType, regDate
	  FROM dbo.log_data_gear_upgrade WITH (NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, userLevel, gearCode, nowUpgradeValue, resultUpgradeValue, pieceCode, logType, regDate
	  FROM dbo.log_data_gear_upgrade WITH (NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for log_data_character_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_character_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_character_add]
GO

CREATE PROCEDURE [dbo].[log_data_character_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@playType int
,	@modeType int
,	@subType1 int
,	@subType2 int
,	@playTime int
,	@characterType int
,	@kill int
,	@death int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_character (
	accountIDX, nickName, playType, modeType, subType1, subType2, playTime, characterType, [kill], death, regDate
)
VALUES (
	@accountIDX, @nickName, @playType, @modeType, @subType1, @subType2, @playTime, @characterType, @kill, @death, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GEAR_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GEAR_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GEAR_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GEAR_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, itemType, itemCode, reinforce, machineType, limitDate, eventType, amount, userIP, note, regDate 
	  FROM dbo.log_buy_item_equip WITH (NOLOCK) 
	 WHERE regDate >= @START_DATE 
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, itemType, itemCode, reinforce, machineType, limitDate, eventType, amount, userIP, note, regDate 
	  FROM dbo.log_buy_item_equip WITH (NOLOCK) 
	 WHERE regDate >= @START_DATE 
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_CLASS_BUY_GOLD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_CLASS_BUY_GOLD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_CLASS_BUY_GOLD]
GO

CREATE PROCEDURE [dbo].[AGENT_CLASS_BUY_GOLD]

AS

SET NOCOUNT ON

DECLARE @startDate DATETIME
DECLARE @endDate DATETIME
DECLARE @dateIDX CHAR(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(VARCHAR(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(VARCHAR(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(CHAR(8),@startDate,112)

INSERT INTO Analytical_statistics.DBO.game_class_buy_gold (
	class1, class2, class3, class4, class5, class6, class7, class8, class9, class10,
	class11, class12, class13, class14, class15, class16, class17, class18, class19, class20,
	class21, class22, class23, class24, class25, class26, class27, class28, class29, class30,
	class31, class32, class33, class34, class35, class36, class37, class38, class39, class40,
	class41, class42, class43, class44, class45, class46, class47, class48, class49, class50,
	class51, class52, class53, class54, class55, class56, class57, class58, class59, class60,
	class61, class62, class63, class64, class65, class66, class67, class68, class69, class70,
	class71, class72, class73, class74, class75, class76, class77, class78, class79, class80,
	class81, class82, class83, class84, class85, class86, class87, class88, class89, class90,
	class91, class92, class93, class94, class95, class96, class97, class98, class99, class100,
	dateIDX, analDate, regdate
)
SELECT ISNULL(SUM(CASE a.itemCode WHEN 1 THEN a.cnt ELSE 0 END), 0) AS class1,
	   ISNULL(SUM(CASE a.itemCode WHEN 2 THEN a.cnt ELSE 0 END), 0) AS class2,
	   ISNULL(SUM(CASE a.itemCode WHEN 3 THEN a.cnt ELSE 0 END), 0) AS class3,
	   ISNULL(SUM(CASE a.itemCode WHEN 4 THEN a.cnt ELSE 0 END), 0) AS class4,
	   ISNULL(SUM(CASE a.itemCode WHEN 5 THEN a.cnt ELSE 0 END), 0) AS class5,
	   ISNULL(SUM(CASE a.itemCode WHEN 6 THEN a.cnt ELSE 0 END), 0) AS class6,
	   ISNULL(SUM(CASE a.itemCode WHEN 7 THEN a.cnt ELSE 0 END), 0) AS class7,
	   ISNULL(SUM(CASE a.itemCode WHEN 8 THEN a.cnt ELSE 0 END), 0) AS class8,
	   ISNULL(SUM(CASE a.itemCode WHEN 9 THEN a.cnt ELSE 0 END), 0) AS class9,
	   ISNULL(SUM(CASE a.itemCode WHEN 10 THEN a.cnt ELSE 0 END), 0) AS class10,
	   ISNULL(SUM(CASE a.itemCode WHEN 11 THEN a.cnt ELSE 0 END), 0) AS class11,
	   ISNULL(SUM(CASE a.itemCode WHEN 12 THEN a.cnt ELSE 0 END), 0) AS class12,
	   ISNULL(SUM(CASE a.itemCode WHEN 13 THEN a.cnt ELSE 0 END), 0) AS class13,
	   ISNULL(SUM(CASE a.itemCode WHEN 14 THEN a.cnt ELSE 0 END), 0) AS class14,
	   ISNULL(SUM(CASE a.itemCode WHEN 15 THEN a.cnt ELSE 0 END), 0) AS class15,
	   ISNULL(SUM(CASE a.itemCode WHEN 16 THEN a.cnt ELSE 0 END), 0) AS class16,
	   ISNULL(SUM(CASE a.itemCode WHEN 17 THEN a.cnt ELSE 0 END), 0) AS class17,
	   ISNULL(SUM(CASE a.itemCode WHEN 18 THEN a.cnt ELSE 0 END), 0) AS class18,
	   ISNULL(SUM(CASE a.itemCode WHEN 19 THEN a.cnt ELSE 0 END), 0) AS class19,
	   ISNULL(SUM(CASE a.itemCode WHEN 20 THEN a.cnt ELSE 0 END), 0) AS class20,
	   ISNULL(SUM(CASE a.itemCode WHEN 21 THEN a.cnt ELSE 0 END), 0) AS class21,
	   ISNULL(SUM(CASE a.itemCode WHEN 22 THEN a.cnt ELSE 0 END), 0) AS class22,
	   ISNULL(SUM(CASE a.itemCode WHEN 23 THEN a.cnt ELSE 0 END), 0) AS class23,
	   ISNULL(SUM(CASE a.itemCode WHEN 24 THEN a.cnt ELSE 0 END), 0) AS class24,
	   ISNULL(SUM(CASE a.itemCode WHEN 25 THEN a.cnt ELSE 0 END), 0) AS class25,
	   ISNULL(SUM(CASE a.itemCode WHEN 26 THEN a.cnt ELSE 0 END), 0) AS class26,
	   ISNULL(SUM(CASE a.itemCode WHEN 27 THEN a.cnt ELSE 0 END), 0) AS class27,
	   ISNULL(SUM(CASE a.itemCode WHEN 28 THEN a.cnt ELSE 0 END), 0) AS class28,
	   ISNULL(SUM(CASE a.itemCode WHEN 29 THEN a.cnt ELSE 0 END), 0) AS class29,
	   ISNULL(SUM(CASE a.itemCode WHEN 30 THEN a.cnt ELSE 0 END), 0) AS class30,
	   ISNULL(SUM(CASE a.itemCode WHEN 31 THEN a.cnt ELSE 0 END), 0) AS class31,
	   ISNULL(SUM(CASE a.itemCode WHEN 32 THEN a.cnt ELSE 0 END), 0) AS class32,
	   ISNULL(SUM(CASE a.itemCode WHEN 33 THEN a.cnt ELSE 0 END), 0) AS class33,
	   ISNULL(SUM(CASE a.itemCode WHEN 34 THEN a.cnt ELSE 0 END), 0) AS class34,
	   ISNULL(SUM(CASE a.itemCode WHEN 35 THEN a.cnt ELSE 0 END), 0) AS class35,
	   ISNULL(SUM(CASE a.itemCode WHEN 36 THEN a.cnt ELSE 0 END), 0) AS class36,
	   ISNULL(SUM(CASE a.itemCode WHEN 37 THEN a.cnt ELSE 0 END), 0) AS class37,
	   ISNULL(SUM(CASE a.itemCode WHEN 38 THEN a.cnt ELSE 0 END), 0) AS class38,
	   ISNULL(SUM(CASE a.itemCode WHEN 39 THEN a.cnt ELSE 0 END), 0) AS class39,
	   ISNULL(SUM(CASE a.itemCode WHEN 40 THEN a.cnt ELSE 0 END), 0) AS class40,
	   ISNULL(SUM(CASE a.itemCode WHEN 41 THEN a.cnt ELSE 0 END), 0) AS class41,
	   ISNULL(SUM(CASE a.itemCode WHEN 42 THEN a.cnt ELSE 0 END), 0) AS class42,
	   ISNULL(SUM(CASE a.itemCode WHEN 43 THEN a.cnt ELSE 0 END), 0) AS class43,
	   ISNULL(SUM(CASE a.itemCode WHEN 44 THEN a.cnt ELSE 0 END), 0) AS class44,
	   ISNULL(SUM(CASE a.itemCode WHEN 45 THEN a.cnt ELSE 0 END), 0) AS class45,
	   ISNULL(SUM(CASE a.itemCode WHEN 46 THEN a.cnt ELSE 0 END), 0) AS class46,
	   ISNULL(SUM(CASE a.itemCode WHEN 47 THEN a.cnt ELSE 0 END), 0) AS class47,
	   ISNULL(SUM(CASE a.itemCode WHEN 48 THEN a.cnt ELSE 0 END), 0) AS class48,
	   ISNULL(SUM(CASE a.itemCode WHEN 49 THEN a.cnt ELSE 0 END), 0) AS class49,
	   ISNULL(SUM(CASE a.itemCode WHEN 50 THEN a.cnt ELSE 0 END), 0) AS class50,
	   ISNULL(SUM(CASE a.itemCode WHEN 51 THEN a.cnt ELSE 0 END), 0) AS class51,
	   ISNULL(SUM(CASE a.itemCode WHEN 52 THEN a.cnt ELSE 0 END), 0) AS class52,
	   ISNULL(SUM(CASE a.itemCode WHEN 53 THEN a.cnt ELSE 0 END), 0) AS class53,
	   ISNULL(SUM(CASE a.itemCode WHEN 54 THEN a.cnt ELSE 0 END), 0) AS class54,
	   ISNULL(SUM(CASE a.itemCode WHEN 55 THEN a.cnt ELSE 0 END), 0) AS class55,
	   ISNULL(SUM(CASE a.itemCode WHEN 56 THEN a.cnt ELSE 0 END), 0) AS class56,
	   ISNULL(SUM(CASE a.itemCode WHEN 57 THEN a.cnt ELSE 0 END), 0) AS class57,
	   ISNULL(SUM(CASE a.itemCode WHEN 58 THEN a.cnt ELSE 0 END), 0) AS class58,
	   ISNULL(SUM(CASE a.itemCode WHEN 59 THEN a.cnt ELSE 0 END), 0) AS class59,
	   ISNULL(SUM(CASE a.itemCode WHEN 60 THEN a.cnt ELSE 0 END), 0) AS class60,
	   ISNULL(SUM(CASE a.itemCode WHEN 61 THEN a.cnt ELSE 0 END), 0) AS class61,
	   ISNULL(SUM(CASE a.itemCode WHEN 62 THEN a.cnt ELSE 0 END), 0) AS class62,
	   ISNULL(SUM(CASE a.itemCode WHEN 63 THEN a.cnt ELSE 0 END), 0) AS class63,
	   ISNULL(SUM(CASE a.itemCode WHEN 64 THEN a.cnt ELSE 0 END), 0) AS class64,
	   ISNULL(SUM(CASE a.itemCode WHEN 65 THEN a.cnt ELSE 0 END), 0) AS class65,
	   ISNULL(SUM(CASE a.itemCode WHEN 66 THEN a.cnt ELSE 0 END), 0) AS class66,
	   ISNULL(SUM(CASE a.itemCode WHEN 67 THEN a.cnt ELSE 0 END), 0) AS class67,
	   ISNULL(SUM(CASE a.itemCode WHEN 68 THEN a.cnt ELSE 0 END), 0) AS class68,
	   ISNULL(SUM(CASE a.itemCode WHEN 69 THEN a.cnt ELSE 0 END), 0) AS class69,
	   ISNULL(SUM(CASE a.itemCode WHEN 70 THEN a.cnt ELSE 0 END), 0) AS class70,
	   ISNULL(SUM(CASE a.itemCode WHEN 71 THEN a.cnt ELSE 0 END), 0) AS class71,
	   ISNULL(SUM(CASE a.itemCode WHEN 72 THEN a.cnt ELSE 0 END), 0) AS class72,
	   ISNULL(SUM(CASE a.itemCode WHEN 73 THEN a.cnt ELSE 0 END), 0) AS class73,
	   ISNULL(SUM(CASE a.itemCode WHEN 74 THEN a.cnt ELSE 0 END), 0) AS class74,
	   ISNULL(SUM(CASE a.itemCode WHEN 75 THEN a.cnt ELSE 0 END), 0) AS class75,
	   ISNULL(SUM(CASE a.itemCode WHEN 76 THEN a.cnt ELSE 0 END), 0) AS class76,
	   ISNULL(SUM(CASE a.itemCode WHEN 77 THEN a.cnt ELSE 0 END), 0) AS class77,
	   ISNULL(SUM(CASE a.itemCode WHEN 78 THEN a.cnt ELSE 0 END), 0) AS class78,
	   ISNULL(SUM(CASE a.itemCode WHEN 79 THEN a.cnt ELSE 0 END), 0) AS class79,
	   ISNULL(SUM(CASE a.itemCode WHEN 80 THEN a.cnt ELSE 0 END), 0) AS class80,
	   ISNULL(SUM(CASE a.itemCode WHEN 81 THEN a.cnt ELSE 0 END), 0) AS class81,
	   ISNULL(SUM(CASE a.itemCode WHEN 82 THEN a.cnt ELSE 0 END), 0) AS class82,
	   ISNULL(SUM(CASE a.itemCode WHEN 83 THEN a.cnt ELSE 0 END), 0) AS class83,
	   ISNULL(SUM(CASE a.itemCode WHEN 84 THEN a.cnt ELSE 0 END), 0) AS class84,
	   ISNULL(SUM(CASE a.itemCode WHEN 85 THEN a.cnt ELSE 0 END), 0) AS class85,
	   ISNULL(SUM(CASE a.itemCode WHEN 86 THEN a.cnt ELSE 0 END), 0) AS class86,
	   ISNULL(SUM(CASE a.itemCode WHEN 87 THEN a.cnt ELSE 0 END), 0) AS class87,
	   ISNULL(SUM(CASE a.itemCode WHEN 88 THEN a.cnt ELSE 0 END), 0) AS class88,
	   ISNULL(SUM(CASE a.itemCode WHEN 89 THEN a.cnt ELSE 0 END), 0) AS class89,
	   ISNULL(SUM(CASE a.itemCode WHEN 90 THEN a.cnt ELSE 0 END), 0) AS class90,
	   ISNULL(SUM(CASE a.itemCode WHEN 91 THEN a.cnt ELSE 0 END), 0) AS class91,
	   ISNULL(SUM(CASE a.itemCode WHEN 92 THEN a.cnt ELSE 0 END), 0) AS class92,
	   ISNULL(SUM(CASE a.itemCode WHEN 93 THEN a.cnt ELSE 0 END), 0) AS class93,
	   ISNULL(SUM(CASE a.itemCode WHEN 94 THEN a.cnt ELSE 0 END), 0) AS class94,
	   ISNULL(SUM(CASE a.itemCode WHEN 95 THEN a.cnt ELSE 0 END), 0) AS class95,
	   ISNULL(SUM(CASE a.itemCode WHEN 96 THEN a.cnt ELSE 0 END), 0) AS class96,
	   ISNULL(SUM(CASE a.itemCode WHEN 97 THEN a.cnt ELSE 0 END), 0) AS class97,
	   ISNULL(SUM(CASE a.itemCode WHEN 98 THEN a.cnt ELSE 0 END), 0) AS class98,
	   ISNULL(SUM(CASE a.itemCode WHEN 99 THEN a.cnt ELSE 0 END), 0) AS class99,
	   ISNULL(SUM(CASE a.itemCode WHEN 100 THEN a.cnt ELSE 0 END), 0) AS class100,
	   @dateIDX, LEFT(CONVERT(VARCHAR(20), @startDate, 120),10), GETDATE()
  FROM (
	SELECT itemCode, COUNT(*) AS 'cnt'
	  FROM dbo.log_buy_item_gold WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND itemtype=1
	   AND itemValue=0
	 GROUP BY itemCode
  ) a
GO


-- ----------------------------
-- Procedure structure for AGENT_CLASS_BUY_PREMIUM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_CLASS_BUY_PREMIUM]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_CLASS_BUY_PREMIUM]
GO

CREATE PROCEDURE [dbo].[AGENT_CLASS_BUY_PREMIUM]

AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @analDate datetime
DECLARE @dateIDX char(8)
DECLARE @classType int
DECLARE @p1_package int
DECLARE @p1_perma int
DECLARE @p1_30hr int
DECLARE @p2_package int
DECLARE @p2_perma int
DECLARE @p2_30hr int
DECLARE @p3_package int
DECLARE @p3_perma int
DECLARE @p3_30hr int
DECLARE @p4_package int
DECLARE @p4_perma int
DECLARE @p4_30hr int
DECLARE @p5_package int
DECLARE @p5_perma int
DECLARE @p5_30hr int
DECLARE @p6_package int
DECLARE @p6_perma int
DECLARE @p6_30hr int
DECLARE @p7_package int
DECLARE @p7_perma int
DECLARE @p7_30hr int
DECLARE @p8_package int
DECLARE @p8_perma int
DECLARE @p8_30hr int
DECLARE @p9_package int
DECLARE @p9_perma int
DECLARE @p9_30hr int
DECLARE @p10_package int
DECLARE @p10_perma int
DECLARE @p10_30hr int
DECLARE @p11_package int
DECLARE @p11_perma int
DECLARE @p11_30hr int
DECLARE @p12_package int
DECLARE @p12_perma int
DECLARE @p12_30hr int
DECLARE @p13_package int
DECLARE @p13_perma int
DECLARE @p13_30hr int
DECLARE @p14_package int
DECLARE @p14_perma int
DECLARE @p14_30hr int
DECLARE @p15_package int
DECLARE @p15_perma int
DECLARE @p15_30hr int
DECLARE @p16_package int
DECLARE @p16_perma int
DECLARE @p16_30hr int
DECLARE @p17_package int
DECLARE @p17_perma int
DECLARE @p17_30hr int
DECLARE @p18_package int
DECLARE @p18_perma int
DECLARE @p18_30hr int
DECLARE @p19_package int
DECLARE @p19_perma int
DECLARE @p19_30hr int
DECLARE @p20_package int
DECLARE @p20_perma int
DECLARE @p20_30hr int
DECLARE @p21_package int
DECLARE @p21_perma int
DECLARE @p21_30hr int
DECLARE @p22_package int
DECLARE @p22_perma int
DECLARE @p22_30hr int
DECLARE @p23_package int
DECLARE @p23_perma int
DECLARE @p23_30hr int
DECLARE @p24_package int
DECLARE @p24_perma int
DECLARE @p24_30hr int
DECLARE @p25_package int
DECLARE @p25_perma int
DECLARE @p25_30hr int
DECLARE @p26_package int
DECLARE @p26_perma int
DECLARE @p26_30hr int
DECLARE @p27_package int
DECLARE @p27_perma int
DECLARE @p27_30hr int
DECLARE @p28_package int
DECLARE @p28_perma int
DECLARE @p28_30hr int
DECLARE @p29_package int
DECLARE @p29_perma int
DECLARE @p29_30hr int
DECLARE @p30_package int
DECLARE @p30_perma int
DECLARE @p30_30hr int
DECLARE @p31_package int
DECLARE @p31_perma int
DECLARE @p31_30hr int
DECLARE @p32_package int
DECLARE @p32_perma int
DECLARE @p32_30hr int
DECLARE @p33_package int
DECLARE @p33_perma int
DECLARE @p33_30hr int
DECLARE @p34_package int
DECLARE @p34_perma int
DECLARE @p34_30hr int
DECLARE @p35_package int
DECLARE @p35_perma int
DECLARE @p35_30hr int
DECLARE @p36_package int
DECLARE @p36_perma int
DECLARE @p36_30hr int
DECLARE @p37_package int
DECLARE @p37_perma int
DECLARE @p37_30hr int
DECLARE @p38_package int
DECLARE @p38_perma int
DECLARE @p38_30hr int
DECLARE @p39_package int
DECLARE @p39_perma int
DECLARE @p39_30hr int
DECLARE @p40_package int
DECLARE @p40_perma int
DECLARE @p40_30hr int
DECLARE @p41_package int
DECLARE @p41_perma int
DECLARE @p41_30hr int
DECLARE @p42_package int
DECLARE @p42_perma int
DECLARE @p42_30hr int
DECLARE @p43_package int
DECLARE @p43_perma int
DECLARE @p43_30hr int
DECLARE @p44_package int
DECLARE @p44_perma int
DECLARE @p44_30hr int
DECLARE @p45_package int
DECLARE @p45_perma int
DECLARE @p45_30hr int
DECLARE @p46_package int
DECLARE @p46_perma int
DECLARE @p46_30hr int
DECLARE @p47_package int
DECLARE @p47_perma int
DECLARE @p47_30hr int
DECLARE @p48_package int
DECLARE @p48_perma int
DECLARE @p48_30hr int
DECLARE @p49_package int
DECLARE @p49_perma int
DECLARE @p49_30hr int
DECLARE @p50_package int
DECLARE @p50_perma int
DECLARE @p50_30hr int

SET @startDate = LEFT(CONVERT(VARCHAR(20), GETDATE()-1, 120),10)
SET @endDate = LEFT(CONVERT(VARCHAR(20), GETDATE(), 120),10)
SET @analDate = LEFT(CONVERT(VARCHAR(20), @startDate, 120), 10)
SET @dateIDX = CONVERT(CHAR(8),@startDate,112)

SET @classType = 30
SET @p1_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p1_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p1_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 32
	SET @p2_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p2_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p2_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 35
SET @p3_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p3_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p3_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 37
SET @p4_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p4_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p4_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 39
SET @p5_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p5_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p5_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 41
SET @p6_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p6_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p6_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 43
SET @p7_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p7_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	  WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p7_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 48
SET @p8_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p8_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p8_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 50
SET @p9_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p9_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p9_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 52
SET @p10_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p10_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p10_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 54
SET @p11_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p11_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p11_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 56
SET @p12_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p12_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p12_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 58
SET @p13_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p13_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p13_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 60
SET @p14_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p14_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p14_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 62
SET @p15_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p15_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p15_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 71
SET @p16_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p16_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p16_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 74
SET @p17_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p17_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p17_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 77
SET @p18_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p18_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p18_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 80
SET @p19_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p19_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p19_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 82
SET @p20_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p20_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p20_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)

SET @classType = 84
SET @p21_package = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_class
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND eventType=11
	   AND classtype=@classType
	   AND limitType=0
)
SET @p21_perma = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=0
)
SET @p21_30hr = (
	SELECT COUNT(*)
	  FROM dbo.log_buy_item_gold
	 WHERE regdate >= @startDate
	   AND regdate < @endDate
	   AND itemType=1
	   AND itemCode=@classType
	   AND itemValue=108000
)


INSERT INTO Analytical_statistics.DBO.game_class_buy_premium (
	premium1_package, premium1_perma, premium1_30hr, premium2_package, premium2_perma, premium2_30hr,
	premium3_package, premium3_perma, premium3_30hr, premium4_package, premium4_perma, premium4_30hr,
	premium5_package, premium5_perma, premium5_30hr, premium6_package, premium6_perma, premium6_30hr,
	premium7_package, premium7_perma, premium7_30hr, premium8_package, premium8_perma, premium8_30hr,
	premium9_package, premium9_perma, premium9_30hr, premium10_package, premium10_perma, premium10_30hr,
	premium11_package, premium11_perma, premium11_30hr, premium12_package, premium12_perma, premium12_30hr,
	premium13_package, premium13_perma, premium13_30hr, premium14_package, premium14_perma, premium14_30hr,
	premium15_package, premium15_perma, premium15_30hr, premium16_package, premium16_perma, premium16_30hr,
	premium17_package, premium17_perma, premium17_30hr, premium18_package, premium18_perma, premium18_30hr,
	premium19_package, premium19_perma, premium19_30hr, premium20_package, premium20_perma, premium20_30hr,
	dateIDX, analDate, regdate
)
VALUES (
	@p1_package, @p1_perma, @p1_30hr, @p2_package, @p2_perma, @p2_30hr,
	@p3_package, @p3_perma, @p3_30hr, @p4_package, @p4_perma, @p4_30hr,
	@p5_package, @p5_perma, @p5_30hr, @p6_package, @p6_perma, @p6_30hr,
	@p7_package, @p7_perma, @p7_30hr, @p8_package, @p8_perma, @p8_30hr,
	@p9_package, @p9_perma, @p9_30hr, @p10_package, @p10_perma, @p10_30hr,
	@p11_package, @p11_perma, @p11_30hr, @p12_package, @p12_perma, @p12_30hr,
	@p13_package, @p13_perma, @p13_30hr, @p14_package, @p14_perma, @p14_30hr,
	@p15_package, @p15_perma, @p15_30hr, @p16_package, @p16_perma, @p16_30hr,
	@p17_package, @p17_perma, @p17_30hr, @p18_package, @p18_perma, @p18_30hr,
	@p19_package, @p19_perma, @p19_30hr, @p20_package, @p20_perma, @p20_30hr,
	@dateIDX, @analDate, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_CLASS_BUY_TYPE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_CLASS_BUY_TYPE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_CLASS_BUY_TYPE]
GO

CREATE PROCEDURE [dbo].[AGENT_CLASS_BUY_TYPE]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

INSERT INTO Analytical_statistics.DBO.game_class_buy_type (
	firstselect, buy2H, buy10H, fill, classgroupup, classup, pcroom, event, bankrupt, practice, dateIDX, analDate, regDate
)
VALUES (
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, @dateIDX, LEFT(CONVERT(varchar(20), @startDate, 120),10), GETDATE()
)

UPDATE Analytical_statistics.DBO.game_class_buy_type
   SET firstselect = ISNULL((
		SELECT SUM(limitType)
		  FROM dbo.log_buy_item_class WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
		   AND eventType=5), 0)
 WHERE dateIDX = @dateIDX

UPDATE Analytical_statistics.DBO.game_class_buy_type
   SET buy2H = ISNULL((
		SELECT SUM(limitType)
		  FROM dbo.log_buy_item_class WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
		   AND eventType=1
		   AND limitType=7200), 0)
 WHERE dateIDX = @dateIDX

UPDATE Analytical_statistics.DBO.game_class_buy_type
   SET classgroupup = ISNULL((
		SELECT SUM(limitType)
		  FROM dbo.log_buy_item_class WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
		   AND eventType=2), 0)
 WHERE dateIDX = @dateIDX

UPDATE Analytical_statistics.DBO.game_class_buy_type
   SET bankrupt = ISNULL((
		SELECT SUM(limitType)
		  FROM dbo.log_buy_item_class WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
		   AND eventType=6), 0)
 WHERE dateIDX = @dateIDX
GO


-- ----------------------------
-- Procedure structure for log_data_clover_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_clover_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_clover_add]
GO

CREATE PROCEDURE [dbo].[log_data_clover_add]
(
	@userIDX int
,	@FriendIDX int
,	@Type smallint
,	@Count int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_clover( accountIDX, friendIDX, eventType, CloverCount, regDate )
VALUES ( @userIDX, @FriendIDX, @Type, @Count, GETDATE() )
GO


-- ----------------------------
-- Procedure structure for USP_ADM_DECO_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_DECO_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_DECO_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_DECO_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, classType, kindred, itemType, itemCode, eventType, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_decoration WITH (NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, classType, kindred, itemType, itemCode, eventType, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_decoration WITH (NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for log_data_gear_upgrade_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_gear_upgrade_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_gear_upgrade_add]
GO

CREATE PROCEDURE [dbo].[log_data_gear_upgrade_add]
(
	@accountIDX				INT,			-- 유저 인덱스
	@nickName				NVARCHAR(20),	-- 유저 닉네임
	@userLevel				INT,			-- 유저 레벨
	@gearCode				INT,			-- 강화 장비 코드
	@nowUpgradeValue		TINYINT,		-- 업그레이드 전 강화 값
	@resultUpgradeValue		TINYINT,		-- 업그레이드 이후 강화 값
	@pieceCode				INT,			-- 조각 코드
	@logType				INT				-- 로그 구분 [1: 강화 성공, 2: 강화 실패]
)	
AS

SET NOCOUNT ON
SET LOCK_TIMEOUT 10000

BEGIN

	INSERT dbo.log_data_gear_upgrade (
		accountIDX, nickName, userLevel, gearCode, nowUpgradeValue, resultUpgradeValue, pieceCode, logType, regDate
	)
	VALUES (
		@accountIDX, @nickName, @userLevel, @gearCode, @nowUpgradeValue, @resultUpgradeValue, @pieceCode, @logType, GETDATE()
	)

END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_CLASS_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_CLASS_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_CLASS_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_CLASS_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, classType, limitType, eventType, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_class WITH(NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, classType, limitType, eventType, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_class WITH(NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_CLASS_DATA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_CLASS_DATA]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_CLASS_DATA]
GO

CREATE PROCEDURE [dbo].[AGENT_CLASS_DATA]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @analDate datetime
DECLARE @dateIDX char(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @analDate = LEFT(CONVERT(varchar(20), @startDate, 120), 10)
SET @dateIDX = CONVERT(char(8), @startDate, 112)

INSERT INTO Analytical_statistics.DBO.game_class_data (
	class1_playTime, class1_kill, class1_death, class2_playTime, class2_kill, class2_death, 
	class3_playTime, class3_kill, class3_death, class4_playTime, class4_kill, class4_death, 
	class5_playTime, class5_kill, class5_death, class6_playTime, class6_kill, class6_death, 
	class7_playTime, class7_kill, class7_death, class8_playTime, class8_kill, class8_death, 
	class9_playTime, class9_kill, class9_death, class10_playTime, class10_kill, class10_death, 
	class11_playTime, class11_kill, class11_death, class12_playTime, class12_kill, class12_death, 
	class13_playTime, class13_kill, class13_death, class14_playTime, class14_kill, class14_death, 
	class15_playTime, class15_kill, class15_death, class16_playTime, class16_kill, class16_death, 
	class17_playTime, class17_kill, class17_death, class18_playTime, class18_kill, class18_death, 
	class19_playTime, class19_kill, class19_death, class20_playTime, class20_kill, class20_death, 
	class21_playTime, class21_kill, class21_death, class22_playTime, class22_kill, class22_death, 
	class23_playTime, class23_kill, class23_death, class24_playTime, class24_kill, class24_death, 
	class25_playTime, class25_kill, class25_death, class26_playTime, class26_kill, class26_death, 
	class27_playTime, class27_kill, class27_death, class28_playTime, class28_kill, class28_death, 
	class29_playTime, class29_kill, class29_death, class30_playTime, class30_kill, class30_death, 
	class31_playTime, class31_kill, class31_death, class32_playTime, class32_kill, class32_death, 
	class33_playTime, class33_kill, class33_death, class34_playTime, class34_kill, class34_death, 
	class35_playTime, class35_kill, class35_death, class36_playTime, class36_kill, class36_death, 
	class37_playTime, class37_kill, class37_death, class38_playTime, class38_kill, class38_death, 
	class39_playTime, class39_kill, class39_death, class40_playTime, class40_kill, class40_death, 
	class41_playTime, class41_kill, class41_death, class42_playTime, class42_kill, class42_death, 
	class43_playTime, class43_kill, class43_death, class44_playTime, class44_kill, class44_death, 
	class45_playTime, class45_kill, class45_death, class46_playTime, class46_kill, class46_death, 
	class47_playTime, class47_kill, class47_death, class48_playTime, class48_kill, class48_death, 
	class49_playTime, class49_kill, class49_death, class50_playTime, class50_kill, class50_death, 
	class51_playTime, class51_kill, class51_death, class52_playTime, class52_kill, class52_death, 
	class53_playTime, class53_kill, class53_death, class54_playTime, class54_kill, class54_death, 
	class55_playTime, class55_kill, class55_death, class56_playTime, class56_kill, class56_death, 
	class57_playTime, class57_kill, class57_death, class58_playTime, class58_kill, class58_death, 
	class59_playTime, class59_kill, class59_death, class60_playTime, class60_kill, class60_death, 
	class61_playTime, class61_kill, class61_death, class62_playTime, class62_kill, class62_death, 
	class63_playTime, class63_kill, class63_death, class64_playTime, class64_kill, class64_death, 
	class65_playTime, class65_kill, class65_death, class66_playTime, class66_kill, class66_death, 
	class67_playTime, class67_kill, class67_death, class68_playTime, class68_kill, class68_death, 
	class69_playTime, class69_kill, class69_death, class70_playTime, class70_kill, class70_death, 
	class71_playTime, class71_kill, class71_death, class72_playTime, class72_kill, class72_death, 
	class73_playTime, class73_kill, class73_death, class74_playTime, class74_kill, class74_death, 
	class75_playTime, class75_kill, class75_death, class76_playTime, class76_kill, class76_death, 
	class77_playTime, class77_kill, class77_death, class78_playTime, class78_kill, class78_death, 
	class79_playTime, class79_kill, class79_death, class80_playTime, class80_kill, class80_death, 
	class81_playTime, class81_kill, class81_death, class82_playTime, class82_kill, class82_death, 
	class83_playTime, class83_kill, class83_death, class84_playTime, class84_kill, class84_death, 
	class85_playTime, class85_kill, class85_death, class86_playTime, class86_kill, class86_death, 
	class87_playTime, class87_kill, class87_death, class88_playTime, class88_kill, class88_death, 
	class89_playTime, class89_kill, class89_death, class90_playTime, class90_kill, class90_death, 
	class91_playTime, class91_kill, class91_death, class92_playTime, class92_kill, class92_death, 
	class93_playTime, class93_kill, class93_death, class94_playTime, class94_kill, class94_death, 
	class95_playTime, class95_kill, class95_death, class96_playTime, class96_kill, class96_death, 
	class97_playTime, class97_kill, class97_death, class98_playTime, class98_kill, class98_death, 
	class99_playTime, class99_kill, class99_death, class100_playTime, class100_kill, class100_death, 
	dateIDX, analDate, regdate
)
SELECT class1_playTime = ISNULL(SUM(CASE characterType WHEN 1 THEN playTime ELSE 0 END), 0),
	   class1_kill = ISNULL(SUM(CASE characterType WHEN 1 THEN cnt_kill ELSE 0 END), 0),
	   class1_death = ISNULL(SUM(CASE characterType WHEN 1 THEN cnt_death ELSE 0 END), 0),
	   class2_playTime = ISNULL(SUM(CASE characterType WHEN 2 THEN playTime ELSE 0 END), 0),
	   class2_kill	 = ISNULL(SUM(CASE characterType WHEN 2 THEN cnt_kill ELSE 0 END), 0),
	   class2_death = ISNULL(SUM(CASE characterType WHEN 2 THEN cnt_death ELSE 0 END), 0),
	   class3_playTime = ISNULL(SUM(CASE characterType WHEN 3 THEN playTime ELSE 0 END), 0),
	   class3_kill	 = ISNULL(SUM(CASE characterType WHEN 3 THEN cnt_kill ELSE 0 END), 0),
	   class3_death = ISNULL(SUM(CASE characterType WHEN 3 THEN cnt_death ELSE 0 END), 0),
	   class4_playTime = ISNULL(SUM(CASE characterType WHEN 4 THEN playTime ELSE 0 END), 0),
	   class4_kill	 = ISNULL(SUM(CASE characterType WHEN 4 THEN cnt_kill ELSE 0 END), 0),
	   class4_death = ISNULL(SUM(CASE characterType WHEN 4 THEN cnt_death ELSE 0 END), 0),
	   class5_playTime = ISNULL(SUM(CASE characterType WHEN 5 THEN playTime ELSE 0 END), 0),
	   class5_kill	 = ISNULL(SUM(CASE characterType WHEN 5 THEN cnt_kill ELSE 0 END), 0),
	   class5_death = ISNULL(SUM(CASE characterType WHEN 5 THEN cnt_death ELSE 0 END), 0),
	   class6_playTime = ISNULL(SUM(CASE characterType WHEN 6 THEN playTime ELSE 0 END), 0),
	   class6_kill	 = ISNULL(SUM(CASE characterType WHEN 6 THEN cnt_kill ELSE 0 END), 0),
	   class6_death = ISNULL(SUM(CASE characterType WHEN 6 THEN cnt_death ELSE 0 END), 0),
	   class7_playTime = ISNULL(SUM(CASE characterType WHEN 7 THEN playTime ELSE 0 END), 0),
	   class7_kill	 = ISNULL(SUM(CASE characterType WHEN 7 THEN cnt_kill ELSE 0 END), 0),
	   class7_death = ISNULL(SUM(CASE characterType WHEN 7 THEN cnt_death ELSE 0 END), 0),
	   class8_playTime = ISNULL(SUM(CASE characterType WHEN 8 THEN playTime ELSE 0 END), 0),
	   class8_kill	 = ISNULL(SUM(CASE characterType WHEN 8 THEN cnt_kill ELSE 0 END), 0),
	   class8_death = ISNULL(SUM(CASE characterType WHEN 8 THEN cnt_death ELSE 0 END), 0),
	   class9_playTime = ISNULL(SUM(CASE characterType WHEN 9 THEN playTime ELSE 0 END), 0),
	   class9_kill	 = ISNULL(SUM(CASE characterType WHEN 9 THEN cnt_kill ELSE 0 END), 0),
	   class9_death = ISNULL(SUM(CASE characterType WHEN 9 THEN cnt_death ELSE 0 END), 0),
	   class10_playTime = ISNULL(SUM(CASE characterType WHEN 10 THEN playTime ELSE 0 END), 0),
	   class10_kill = ISNULL(SUM(CASE characterType WHEN 10 THEN cnt_kill ELSE 0 END), 0),
	   class10_death = ISNULL(SUM(CASE characterType WHEN 10 THEN cnt_death ELSE 0 END), 0),
	   class11_playTime = ISNULL(SUM(CASE characterType WHEN 11 THEN playTime ELSE 0 END), 0),
	   class11_kill = ISNULL(SUM(CASE characterType WHEN 11 THEN cnt_kill ELSE 0 END), 0),
	   class11_death = ISNULL(SUM(CASE characterType WHEN 11 THEN cnt_death ELSE 0 END), 0),
	   class12_playTime = ISNULL(SUM(CASE characterType WHEN 12 THEN playTime ELSE 0 END), 0),
	   class12_kill = ISNULL(SUM(CASE characterType WHEN 12 THEN cnt_kill ELSE 0 END), 0),
	   class12_death = ISNULL(SUM(CASE characterType WHEN 12 THEN cnt_death ELSE 0 END), 0),
	   class13_playTime = ISNULL(SUM(CASE characterType WHEN 13 THEN playTime ELSE 0 END), 0),
	   class13_kill = ISNULL(SUM(CASE characterType WHEN 13 THEN cnt_kill ELSE 0 END), 0),
	   class13_death = ISNULL(SUM(CASE characterType WHEN 13 THEN cnt_death ELSE 0 END), 0),
	   class14_playTime = ISNULL(SUM(CASE characterType WHEN 14 THEN playTime ELSE 0 END), 0),
	   class14_kill = ISNULL(SUM(CASE characterType WHEN 14 THEN cnt_kill ELSE 0 END), 0),
	   class14_death = ISNULL(SUM(CASE characterType WHEN 14 THEN cnt_death ELSE 0 END), 0),
	   class15_playTime = ISNULL(SUM(CASE characterType WHEN 15 THEN playTime ELSE 0 END), 0),
	   class15_kill = ISNULL(SUM(CASE characterType WHEN 15 THEN cnt_kill ELSE 0 END), 0),
	   class15_death = ISNULL(SUM(CASE characterType WHEN 15 THEN cnt_death ELSE 0 END), 0),
	   class16_playTime = ISNULL(SUM(CASE characterType WHEN 16 THEN playTime ELSE 0 END), 0),
	   class16_kill = ISNULL(SUM(CASE characterType WHEN 16 THEN cnt_kill ELSE 0 END), 0),
	   class16_death = ISNULL(SUM(CASE characterType WHEN 16 THEN cnt_death ELSE 0 END), 0),
	   class17_playTime = ISNULL(SUM(CASE characterType WHEN 17 THEN playTime ELSE 0 END), 0),
	   class17_kill = ISNULL(SUM(CASE characterType WHEN 17 THEN cnt_kill ELSE 0 END), 0),
	   class17_death = ISNULL(SUM(CASE characterType WHEN 17 THEN cnt_death ELSE 0 END), 0),
	   class18_playTime = ISNULL(SUM(CASE characterType WHEN 18 THEN playTime ELSE 0 END), 0),
	   class18_kill = ISNULL(SUM(CASE characterType WHEN 18 THEN cnt_kill ELSE 0 END), 0),
	   class18_death = ISNULL(SUM(CASE characterType WHEN 18 THEN cnt_death ELSE 0 END), 0),
	   class19_playTime = ISNULL(SUM(CASE characterType WHEN 19 THEN playTime ELSE 0 END), 0),
	   class19_kill = ISNULL(SUM(CASE characterType WHEN 19 THEN cnt_kill ELSE 0 END), 0),
	   class19_death = ISNULL(SUM(CASE characterType WHEN 19 THEN cnt_death ELSE 0 END), 0),
	   class20_playTime = ISNULL(SUM(CASE characterType WHEN 20 THEN playTime ELSE 0 END), 0),
	   class20_kill = ISNULL(SUM(CASE characterType WHEN 20 THEN cnt_kill ELSE 0 END), 0),
	   class20_death = ISNULL(SUM(CASE characterType WHEN 20 THEN cnt_death ELSE 0 END), 0),
	   class21_playTime = ISNULL(SUM(CASE characterType WHEN 21 THEN playTime ELSE 0 END), 0),
	   class21_kill = ISNULL(SUM(CASE characterType WHEN 21 THEN cnt_kill ELSE 0 END), 0),
	   class21_death = ISNULL(SUM(CASE characterType WHEN 21 THEN cnt_death ELSE 0 END), 0),
	   class22_playTime = ISNULL(SUM(CASE characterType WHEN 22 THEN playTime ELSE 0 END), 0),
	   class22_kill = ISNULL(SUM(CASE characterType WHEN 22 THEN cnt_kill ELSE 0 END), 0),
	   class22_death = ISNULL(SUM(CASE characterType WHEN 22 THEN cnt_death ELSE 0 END), 0),
	   class23_playTime = ISNULL(SUM(CASE characterType WHEN 23 THEN playTime ELSE 0 END), 0),
	   class23_kill = ISNULL(SUM(CASE characterType WHEN 23 THEN cnt_kill ELSE 0 END), 0),
	   class23_death = ISNULL(SUM(CASE characterType WHEN 23 THEN cnt_death ELSE 0 END), 0),
	   class24_playTime = ISNULL(SUM(CASE characterType WHEN 24 THEN playTime ELSE 0 END), 0),
	   class24_kill = ISNULL(SUM(CASE characterType WHEN 24 THEN cnt_kill ELSE 0 END), 0),
	   class24_death = ISNULL(SUM(CASE characterType WHEN 24 THEN cnt_death ELSE 0 END), 0),
	   class25_playTime = ISNULL(SUM(CASE characterType WHEN 25 THEN playTime ELSE 0 END), 0),
	   class25_kill = ISNULL(SUM(CASE characterType WHEN 25 THEN cnt_kill ELSE 0 END), 0),
	   class25_death = ISNULL(SUM(CASE characterType WHEN 25 THEN cnt_death ELSE 0 END), 0),
	   class26_playTime = ISNULL(SUM(CASE characterType WHEN 26 THEN playTime ELSE 0 END), 0),
	   class26_kill = ISNULL(SUM(CASE characterType WHEN 26 THEN cnt_kill ELSE 0 END), 0),
	   class26_death = ISNULL(SUM(CASE characterType WHEN 26 THEN cnt_death ELSE 0 END), 0),
	   class27_playTime = ISNULL(SUM(CASE characterType WHEN 27 THEN playTime ELSE 0 END), 0),
	   class27_kill = ISNULL(SUM(CASE characterType WHEN 27 THEN cnt_kill ELSE 0 END), 0),
	   class27_death = ISNULL(SUM(CASE characterType WHEN 27 THEN cnt_death ELSE 0 END), 0),
	   class28_playTime = ISNULL(SUM(CASE characterType WHEN 28 THEN playTime ELSE 0 END), 0),
	   class28_kill = ISNULL(SUM(CASE characterType WHEN 28 THEN cnt_kill ELSE 0 END), 0),
	   class28_death = ISNULL(SUM(CASE characterType WHEN 28 THEN cnt_death ELSE 0 END), 0),
	   class29_playTime = ISNULL(SUM(CASE characterType WHEN 29 THEN playTime ELSE 0 END), 0),
	   class29_kill = ISNULL(SUM(CASE characterType WHEN 29 THEN cnt_kill ELSE 0 END), 0),
	   class29_death = ISNULL(SUM(CASE characterType WHEN 29 THEN cnt_death ELSE 0 END), 0),
	   class30_playTime = ISNULL(SUM(CASE characterType WHEN 30 THEN playTime ELSE 0 END), 0),
	   class30_kill = ISNULL(SUM(CASE characterType WHEN 30 THEN cnt_kill ELSE 0 END), 0),
	   class30_death = ISNULL(SUM(CASE characterType WHEN 30 THEN cnt_death ELSE 0 END), 0),
	   class31_playTime = ISNULL(SUM(CASE characterType WHEN 31 THEN playTime ELSE 0 END), 0),
	   class31_kill = ISNULL(SUM(CASE characterType WHEN 31 THEN cnt_kill ELSE 0 END), 0),
	   class31_death = ISNULL(SUM(CASE characterType WHEN 31 THEN cnt_death ELSE 0 END), 0),
	   class32_playTime = ISNULL(SUM(CASE characterType WHEN 32 THEN playTime ELSE 0 END), 0),
	   class32_kill = ISNULL(SUM(CASE characterType WHEN 32 THEN cnt_kill ELSE 0 END), 0),
	   class32_death = ISNULL(SUM(CASE characterType WHEN 32 THEN cnt_death ELSE 0 END), 0),
	   class33_playTime = ISNULL(SUM(CASE characterType WHEN 33 THEN playTime ELSE 0 END), 0),
	   class33_kill = ISNULL(SUM(CASE characterType WHEN 33 THEN cnt_kill ELSE 0 END), 0),
	   class33_death = ISNULL(SUM(CASE characterType WHEN 33 THEN cnt_death ELSE 0 END), 0),
	   class34_playTime = ISNULL(SUM(CASE characterType WHEN 34 THEN playTime ELSE 0 END), 0),
	   class34_kill = ISNULL(SUM(CASE characterType WHEN 34 THEN cnt_kill ELSE 0 END), 0),
	   class34_death = ISNULL(SUM(CASE characterType WHEN 34 THEN cnt_death ELSE 0 END), 0),
	   class35_playTime = ISNULL(SUM(CASE characterType WHEN 35 THEN playTime ELSE 0 END), 0),
	   class35_kill = ISNULL(SUM(CASE characterType WHEN 35 THEN cnt_kill ELSE 0 END), 0),
	   class35_death = ISNULL(SUM(CASE characterType WHEN 35 THEN cnt_death ELSE 0 END), 0),
	   class36_playTime = ISNULL(SUM(CASE characterType WHEN 36 THEN playTime ELSE 0 END), 0),
	   class36_kill = ISNULL(SUM(CASE characterType WHEN 36 THEN cnt_kill ELSE 0 END), 0),
	   class36_death = ISNULL(SUM(CASE characterType WHEN 36 THEN cnt_death ELSE 0 END), 0),
	   class37_playTime = ISNULL(SUM(CASE characterType WHEN 37 THEN playTime ELSE 0 END), 0),
	   class37_kill = ISNULL(SUM(CASE characterType WHEN 37 THEN cnt_kill ELSE 0 END), 0),
	   class37_death = ISNULL(SUM(CASE characterType WHEN 37 THEN cnt_death ELSE 0 END), 0),
	   class38_playTime = ISNULL(SUM(CASE characterType WHEN 38 THEN playTime ELSE 0 END), 0),
	   class38_kill = ISNULL(SUM(CASE characterType WHEN 38 THEN cnt_kill ELSE 0 END), 0),
	   class38_death = ISNULL(SUM(CASE characterType WHEN 38 THEN cnt_death ELSE 0 END), 0),
	   class39_playTime = ISNULL(SUM(CASE characterType WHEN 39 THEN playTime ELSE 0 END), 0),
	   class39_kill = ISNULL(SUM(CASE characterType WHEN 39 THEN cnt_kill ELSE 0 END), 0),
	   class39_death = ISNULL(SUM(CASE characterType WHEN 39 THEN cnt_death ELSE 0 END), 0),
	   class40_playTime = ISNULL(SUM(CASE characterType WHEN 40 THEN playTime ELSE 0 END), 0),
	   class40_kill = ISNULL(SUM(CASE characterType WHEN 40 THEN cnt_kill ELSE 0 END), 0),
	   class40_death = ISNULL(SUM(CASE characterType WHEN 40 THEN cnt_death ELSE 0 END), 0),
	   class41_playTime = ISNULL(SUM(CASE characterType WHEN 41 THEN playTime ELSE 0 END), 0),
	   class41_kill = ISNULL(SUM(CASE characterType WHEN 41 THEN cnt_kill ELSE 0 END), 0),
	   class41_death = ISNULL(SUM(CASE characterType WHEN 41 THEN cnt_death ELSE 0 END), 0),
	   class42_playTime = ISNULL(SUM(CASE characterType WHEN 42 THEN playTime ELSE 0 END), 0),
	   class42_kill = ISNULL(SUM(CASE characterType WHEN 42 THEN cnt_kill ELSE 0 END), 0),
	   class42_death = ISNULL(SUM(CASE characterType WHEN 42 THEN cnt_death ELSE 0 END), 0),
	   class43_playTime = ISNULL(SUM(CASE characterType WHEN 43 THEN playTime ELSE 0 END), 0),
	   class43_kill = ISNULL(SUM(CASE characterType WHEN 43 THEN cnt_kill ELSE 0 END), 0),
	   class43_death = ISNULL(SUM(CASE characterType WHEN 43 THEN cnt_death ELSE 0 END), 0),
	   class44_playTime = ISNULL(SUM(CASE characterType WHEN 44 THEN playTime ELSE 0 END), 0),
	   class44_kill = ISNULL(SUM(CASE characterType WHEN 44 THEN cnt_kill ELSE 0 END), 0),
	   class44_death = ISNULL(SUM(CASE characterType WHEN 44 THEN cnt_death ELSE 0 END), 0),
	   class45_playTime = ISNULL(SUM(CASE characterType WHEN 45 THEN playTime ELSE 0 END), 0),
	   class45_kill = ISNULL(SUM(CASE characterType WHEN 45 THEN cnt_kill ELSE 0 END), 0),
	   class45_death = ISNULL(SUM(CASE characterType WHEN 45 THEN cnt_death ELSE 0 END), 0),
	   class46_playTime = ISNULL(SUM(CASE characterType WHEN 46 THEN playTime ELSE 0 END), 0),
	   class46_kill = ISNULL(SUM(CASE characterType WHEN 46 THEN cnt_kill ELSE 0 END), 0),
	   class46_death = ISNULL(SUM(CASE characterType WHEN 46 THEN cnt_death ELSE 0 END), 0),
	   class47_playTime = ISNULL(SUM(CASE characterType WHEN 47 THEN playTime ELSE 0 END), 0),
	   class47_kill = ISNULL(SUM(CASE characterType WHEN 47 THEN cnt_kill ELSE 0 END), 0),
	   class47_death = ISNULL(SUM(CASE characterType WHEN 47 THEN cnt_death ELSE 0 END), 0),
	   class48_playTime = ISNULL(SUM(CASE characterType WHEN 48 THEN playTime ELSE 0 END), 0),
	   class48_kill = ISNULL(SUM(CASE characterType WHEN 48 THEN cnt_kill ELSE 0 END), 0),
	   class48_death = ISNULL(SUM(CASE characterType WHEN 48 THEN cnt_death ELSE 0 END), 0),
	   class49_playTime = ISNULL(SUM(CASE characterType WHEN 49 THEN playTime ELSE 0 END), 0),
	   class49_kill = ISNULL(SUM(CASE characterType WHEN 49 THEN cnt_kill ELSE 0 END), 0),
	   class49_death = ISNULL(SUM(CASE characterType WHEN 49 THEN cnt_death ELSE 0 END), 0),
	   class50_playTime = ISNULL(SUM(CASE characterType WHEN 50 THEN playTime ELSE 0 END), 0),
	   class50_kill = ISNULL(SUM(CASE characterType WHEN 50 THEN cnt_kill ELSE 0 END), 0),
	   class50_death = ISNULL(SUM(CASE characterType WHEN 50 THEN cnt_death ELSE 0 END), 0),
	   class51_playTime = ISNULL(SUM(CASE characterType WHEN 51 THEN playTime ELSE 0 END), 0),
	   class51_kill = ISNULL(SUM(CASE characterType WHEN 51 THEN cnt_kill ELSE 0 END), 0),
	   class51_death = ISNULL(SUM(CASE characterType WHEN 51 THEN cnt_death ELSE 0 END), 0),
	   class52_playTime = ISNULL(SUM(CASE characterType WHEN 52 THEN playTime ELSE 0 END), 0),
	   class52_kill = ISNULL(SUM(CASE characterType WHEN 52 THEN cnt_kill ELSE 0 END), 0),
	   class52_death = ISNULL(SUM(CASE characterType WHEN 52 THEN cnt_death ELSE 0 END), 0),
	   class53_playTime = ISNULL(SUM(CASE characterType WHEN 53 THEN playTime ELSE 0 END), 0),
	   class53_kill = ISNULL(SUM(CASE characterType WHEN 53 THEN cnt_kill ELSE 0 END), 0),
	   class53_death = ISNULL(SUM(CASE characterType WHEN 53 THEN cnt_death ELSE 0 END), 0),
	   class54_playTime = ISNULL(SUM(CASE characterType WHEN 54 THEN playTime ELSE 0 END), 0),
	   class54_kill = ISNULL(SUM(CASE characterType WHEN 54 THEN cnt_kill ELSE 0 END), 0),
	   class54_death = ISNULL(SUM(CASE characterType WHEN 54 THEN cnt_death ELSE 0 END), 0),
	   class55_playTime = ISNULL(SUM(CASE characterType WHEN 55 THEN playTime ELSE 0 END), 0),
	   class55_kill = ISNULL(SUM(CASE characterType WHEN 55 THEN cnt_kill ELSE 0 END), 0),
	   class55_death = ISNULL(SUM(CASE characterType WHEN 55 THEN cnt_death ELSE 0 END), 0),
	   class56_playTime = ISNULL(SUM(CASE characterType WHEN 56 THEN playTime ELSE 0 END), 0),
	   class56_kill = ISNULL(SUM(CASE characterType WHEN 56 THEN cnt_kill ELSE 0 END), 0),
	   class56_death = ISNULL(SUM(CASE characterType WHEN 56 THEN cnt_death ELSE 0 END), 0),
	   class57_playTime = ISNULL(SUM(CASE characterType WHEN 57 THEN playTime ELSE 0 END), 0),
	   class57_kill = ISNULL(SUM(CASE characterType WHEN 57 THEN cnt_kill ELSE 0 END), 0),
	   class57_death = ISNULL(SUM(CASE characterType WHEN 57 THEN cnt_death ELSE 0 END), 0),
	   class58_playTime = ISNULL(SUM(CASE characterType WHEN 58 THEN playTime ELSE 0 END), 0),
	   class58_kill = ISNULL(SUM(CASE characterType WHEN 58 THEN cnt_kill ELSE 0 END), 0),
	   class58_death = ISNULL(SUM(CASE characterType WHEN 58 THEN cnt_death ELSE 0 END), 0),
	   class59_playTime = ISNULL(SUM(CASE characterType WHEN 59 THEN playTime ELSE 0 END), 0),
	   class59_kill = ISNULL(SUM(CASE characterType WHEN 59 THEN cnt_kill ELSE 0 END), 0),
	   class59_death = ISNULL(SUM(CASE characterType WHEN 59 THEN cnt_death ELSE 0 END), 0),
	   class60_playTime = ISNULL(SUM(CASE characterType WHEN 60 THEN playTime ELSE 0 END), 0),
	   class60_kill = ISNULL(SUM(CASE characterType WHEN 60 THEN cnt_kill ELSE 0 END), 0),
	   class60_death = ISNULL(SUM(CASE characterType WHEN 60 THEN cnt_death ELSE 0 END), 0),
	   class61_playTime = ISNULL(SUM(CASE characterType WHEN 61 THEN playTime ELSE 0 END), 0),
	   class61_kill = ISNULL(SUM(CASE characterType WHEN 61 THEN cnt_kill ELSE 0 END), 0),
	   class61_death = ISNULL(SUM(CASE characterType WHEN 61 THEN cnt_death ELSE 0 END), 0),
	   class62_playTime = ISNULL(SUM(CASE characterType WHEN 62 THEN playTime ELSE 0 END), 0),
	   class62_kill = ISNULL(SUM(CASE characterType WHEN 62 THEN cnt_kill ELSE 0 END), 0),
	   class62_death = ISNULL(SUM(CASE characterType WHEN 62 THEN cnt_death ELSE 0 END), 0),
	   class63_playTime = ISNULL(SUM(CASE characterType WHEN 63 THEN playTime ELSE 0 END), 0),
	   class63_kill = ISNULL(SUM(CASE characterType WHEN 63 THEN cnt_kill ELSE 0 END), 0),
	   class63_death = ISNULL(SUM(CASE characterType WHEN 63 THEN cnt_death ELSE 0 END), 0),
	   class64_playTime = ISNULL(SUM(CASE characterType WHEN 64 THEN playTime ELSE 0 END), 0),
	   class64_kill = ISNULL(SUM(CASE characterType WHEN 64 THEN cnt_kill ELSE 0 END), 0),
	   class64_death = ISNULL(SUM(CASE characterType WHEN 64 THEN cnt_death ELSE 0 END), 0),
	   class65_playTime = ISNULL(SUM(CASE characterType WHEN 65 THEN playTime ELSE 0 END), 0),
	   class65_kill = ISNULL(SUM(CASE characterType WHEN 65 THEN cnt_kill ELSE 0 END), 0),
	   class65_death = ISNULL(SUM(CASE characterType WHEN 65 THEN cnt_death ELSE 0 END), 0),
	   class66_playTime = ISNULL(SUM(CASE characterType WHEN 66 THEN playTime ELSE 0 END), 0),
	   class66_kill = ISNULL(SUM(CASE characterType WHEN 66 THEN cnt_kill ELSE 0 END), 0),
	   class66_death = ISNULL(SUM(CASE characterType WHEN 66 THEN cnt_death ELSE 0 END), 0),
	   class67_playTime = ISNULL(SUM(CASE characterType WHEN 67 THEN playTime ELSE 0 END), 0),
	   class67_kill = ISNULL(SUM(CASE characterType WHEN 67 THEN cnt_kill ELSE 0 END), 0),
	   class67_death = ISNULL(SUM(CASE characterType WHEN 67 THEN cnt_death ELSE 0 END), 0),
	   class68_playTime = ISNULL(SUM(CASE characterType WHEN 68 THEN playTime ELSE 0 END), 0),
	   class68_kill = ISNULL(SUM(CASE characterType WHEN 68 THEN cnt_kill ELSE 0 END), 0),
	   class68_death = ISNULL(SUM(CASE characterType WHEN 68 THEN cnt_death ELSE 0 END), 0),
	   class69_playTime = ISNULL(SUM(CASE characterType WHEN 69 THEN playTime ELSE 0 END), 0),
	   class69_kill = ISNULL(SUM(CASE characterType WHEN 69 THEN cnt_kill ELSE 0 END), 0),
	   class69_death = ISNULL(SUM(CASE characterType WHEN 69 THEN cnt_death ELSE 0 END), 0),
	   class70_playTime = ISNULL(SUM(CASE characterType WHEN 70 THEN playTime ELSE 0 END), 0),
	   class70_kill = ISNULL(SUM(CASE characterType WHEN 70 THEN cnt_kill ELSE 0 END), 0),
	   class70_death = ISNULL(SUM(CASE characterType WHEN 70 THEN cnt_death ELSE 0 END), 0),
	   class71_playTime = ISNULL(SUM(CASE characterType WHEN 71 THEN playTime ELSE 0 END), 0),
	   class71_kill = ISNULL(SUM(CASE characterType WHEN 71 THEN cnt_kill ELSE 0 END), 0),
	   class71_death = ISNULL(SUM(CASE characterType WHEN 71 THEN cnt_death ELSE 0 END), 0),
	   class72_playTime = ISNULL(SUM(CASE characterType WHEN 72 THEN playTime ELSE 0 END), 0),
	   class72_kill = ISNULL(SUM(CASE characterType WHEN 72 THEN cnt_kill ELSE 0 END), 0),
	   class72_death = ISNULL(SUM(CASE characterType WHEN 72 THEN cnt_death ELSE 0 END), 0),
	   class73_playTime = ISNULL(SUM(CASE characterType WHEN 73 THEN playTime ELSE 0 END), 0),
	   class73_kill = ISNULL(SUM(CASE characterType WHEN 73 THEN cnt_kill ELSE 0 END), 0),
	   class73_death = ISNULL(SUM(CASE characterType WHEN 73 THEN cnt_death ELSE 0 END), 0),
	   class74_playTime = ISNULL(SUM(CASE characterType WHEN 74 THEN playTime ELSE 0 END), 0),
	   class74_kill = ISNULL(SUM(CASE characterType WHEN 74 THEN cnt_kill ELSE 0 END), 0),
	   class74_death = ISNULL(SUM(CASE characterType WHEN 74 THEN cnt_death ELSE 0 END), 0),
	   class75_playTime = ISNULL(SUM(CASE characterType WHEN 75 THEN playTime ELSE 0 END), 0),
	   class75_kill = ISNULL(SUM(CASE characterType WHEN 75 THEN cnt_kill ELSE 0 END), 0),
	   class75_death = ISNULL(SUM(CASE characterType WHEN 75 THEN cnt_death ELSE 0 END), 0),
	   class76_playTime = ISNULL(SUM(CASE characterType WHEN 76 THEN playTime ELSE 0 END), 0),
	   class76_kill = ISNULL(SUM(CASE characterType WHEN 76 THEN cnt_kill ELSE 0 END), 0),
	   class76_death = ISNULL(SUM(CASE characterType WHEN 76 THEN cnt_death ELSE 0 END), 0),
	   class77_playTime = ISNULL(SUM(CASE characterType WHEN 77 THEN playTime ELSE 0 END), 0),
	   class77_kill = ISNULL(SUM(CASE characterType WHEN 77 THEN cnt_kill ELSE 0 END), 0),
	   class77_death = ISNULL(SUM(CASE characterType WHEN 77 THEN cnt_death ELSE 0 END), 0),
	   class78_playTime = ISNULL(SUM(CASE characterType WHEN 78 THEN playTime ELSE 0 END), 0),
	   class78_kill = ISNULL(SUM(CASE characterType WHEN 78 THEN cnt_kill ELSE 0 END), 0),
	   class78_death = ISNULL(SUM(CASE characterType WHEN 78 THEN cnt_death ELSE 0 END), 0),
	   class79_playTime = ISNULL(SUM(CASE characterType WHEN 79 THEN playTime ELSE 0 END), 0),
	   class79_kill = ISNULL(SUM(CASE characterType WHEN 79 THEN cnt_kill ELSE 0 END), 0),
	   class79_death = ISNULL(SUM(CASE characterType WHEN 79 THEN cnt_death ELSE 0 END), 0),
	   class80_playTime = ISNULL(SUM(CASE characterType WHEN 80 THEN playTime ELSE 0 END), 0),
	   class80_kill = ISNULL(SUM(CASE characterType WHEN 80 THEN cnt_kill ELSE 0 END), 0),
	   class80_death = ISNULL(SUM(CASE characterType WHEN 80 THEN cnt_death ELSE 0 END), 0),
	   class81_playTime = ISNULL(SUM(CASE characterType WHEN 81 THEN playTime ELSE 0 END), 0),
	   class81_kill = ISNULL(SUM(CASE characterType WHEN 81 THEN cnt_kill ELSE 0 END), 0),
	   class81_death = ISNULL(SUM(CASE characterType WHEN 81 THEN cnt_death ELSE 0 END), 0),
	   class82_playTime = ISNULL(SUM(CASE characterType WHEN 82 THEN playTime ELSE 0 END), 0),
	   class82_kill = ISNULL(SUM(CASE characterType WHEN 82 THEN cnt_kill ELSE 0 END), 0),
	   class82_death = ISNULL(SUM(CASE characterType WHEN 82 THEN cnt_death ELSE 0 END), 0),
	   class83_playTime = ISNULL(SUM(CASE characterType WHEN 83 THEN playTime ELSE 0 END), 0),
	   class83_kill = ISNULL(SUM(CASE characterType WHEN 83 THEN cnt_kill ELSE 0 END), 0),
	   class83_death = ISNULL(SUM(CASE characterType WHEN 83 THEN cnt_death ELSE 0 END), 0),
	   class84_playTime = ISNULL(SUM(CASE characterType WHEN 84 THEN playTime ELSE 0 END), 0),
	   class84_kill = ISNULL(SUM(CASE characterType WHEN 84 THEN cnt_kill ELSE 0 END), 0),
	   class84_death = ISNULL(SUM(CASE characterType WHEN 84 THEN cnt_death ELSE 0 END), 0),
	   class85_playTime = ISNULL(SUM(CASE characterType WHEN 85 THEN playTime ELSE 0 END), 0),
	   class85_kill = ISNULL(SUM(CASE characterType WHEN 85 THEN cnt_kill ELSE 0 END), 0),
	   class85_death = ISNULL(SUM(CASE characterType WHEN 85 THEN cnt_death ELSE 0 END), 0),
	   class86_playTime = ISNULL(SUM(CASE characterType WHEN 86 THEN playTime ELSE 0 END), 0),
	   class86_kill = ISNULL(SUM(CASE characterType WHEN 86 THEN cnt_kill ELSE 0 END), 0),
	   class86_death = ISNULL(SUM(CASE characterType WHEN 86 THEN cnt_death ELSE 0 END), 0),
	   class87_playTime = ISNULL(SUM(CASE characterType WHEN 87 THEN playTime ELSE 0 END), 0),
	   class87_kill = ISNULL(SUM(CASE characterType WHEN 87 THEN cnt_kill ELSE 0 END), 0),
	   class87_death = ISNULL(SUM(CASE characterType WHEN 87 THEN cnt_death ELSE 0 END), 0),
	   class88_playTime = ISNULL(SUM(CASE characterType WHEN 88 THEN playTime ELSE 0 END), 0),
	   class88_kill = ISNULL(SUM(CASE characterType WHEN 88 THEN cnt_kill ELSE 0 END), 0),
	   class88_death = ISNULL(SUM(CASE characterType WHEN 88 THEN cnt_death ELSE 0 END), 0),
	   class89_playTime = ISNULL(SUM(CASE characterType WHEN 89 THEN playTime ELSE 0 END), 0),
	   class89_kill = ISNULL(SUM(CASE characterType WHEN 89 THEN cnt_kill ELSE 0 END), 0),
	   class89_death = ISNULL(SUM(CASE characterType WHEN 89 THEN cnt_death ELSE 0 END), 0),
	   class90_playTime = ISNULL(SUM(CASE characterType WHEN 90 THEN playTime ELSE 0 END), 0),
	   class90_kill = ISNULL(SUM(CASE characterType WHEN 90 THEN cnt_kill ELSE 0 END), 0),
	   class90_death = ISNULL(SUM(CASE characterType WHEN 90 THEN cnt_death ELSE 0 END), 0),
	   class91_playTime = ISNULL(SUM(CASE characterType WHEN 91 THEN playTime ELSE 0 END), 0),
	   class91_kill = ISNULL(SUM(CASE characterType WHEN 91 THEN cnt_kill ELSE 0 END), 0),
	   class91_death = ISNULL(SUM(CASE characterType WHEN 91 THEN cnt_death ELSE 0 END), 0),
	   class92_playTime = ISNULL(SUM(CASE characterType WHEN 92 THEN playTime ELSE 0 END), 0),
	   class92_kill = ISNULL(SUM(CASE characterType WHEN 92 THEN cnt_kill ELSE 0 END), 0),
	   class92_death = ISNULL(SUM(CASE characterType WHEN 92 THEN cnt_death ELSE 0 END), 0),
	   class93_playTime = ISNULL(SUM(CASE characterType WHEN 93 THEN playTime ELSE 0 END), 0),
	   class93_kill = ISNULL(SUM(CASE characterType WHEN 93 THEN cnt_kill ELSE 0 END), 0),
	   class93_death = ISNULL(SUM(CASE characterType WHEN 93 THEN cnt_death ELSE 0 END), 0),
	   class94_playTime = ISNULL(SUM(CASE characterType WHEN 94 THEN playTime ELSE 0 END), 0),
	   class94_kill = ISNULL(SUM(CASE characterType WHEN 94 THEN cnt_kill ELSE 0 END), 0),
	   class94_death = ISNULL(SUM(CASE characterType WHEN 94 THEN cnt_death ELSE 0 END), 0),
	   class95_playTime = ISNULL(SUM(CASE characterType WHEN 95 THEN playTime ELSE 0 END), 0),
	   class95_kill = ISNULL(SUM(CASE characterType WHEN 95 THEN cnt_kill ELSE 0 END), 0),
	   class95_death = ISNULL(SUM(CASE characterType WHEN 95 THEN cnt_death ELSE 0 END), 0),
	   class96_playTime = ISNULL(SUM(CASE characterType WHEN 96 THEN playTime ELSE 0 END), 0),
	   class96_kill = ISNULL(SUM(CASE characterType WHEN 96 THEN cnt_kill ELSE 0 END), 0),
	   class96_death = ISNULL(SUM(CASE characterType WHEN 96 THEN cnt_death ELSE 0 END), 0),
	   class97_playTime = ISNULL(SUM(CASE characterType WHEN 97 THEN playTime ELSE 0 END), 0),
	   class97_kill = ISNULL(SUM(CASE characterType WHEN 97 THEN cnt_kill ELSE 0 END), 0),
	   class97_death = ISNULL(SUM(CASE characterType WHEN 97 THEN cnt_death ELSE 0 END), 0),
	   class98_playTime = ISNULL(SUM(CASE characterType WHEN 98 THEN playTime ELSE 0 END), 0),
	   class98_kill = ISNULL(SUM(CASE characterType WHEN 98 THEN cnt_kill ELSE 0 END), 0),
	   class98_death = ISNULL(SUM(CASE characterType WHEN 98 THEN cnt_death ELSE 0 END), 0),
	   class99_playTime = ISNULL(SUM(CASE characterType WHEN 99 THEN playTime ELSE 0 END), 0),
	   class99_kill = ISNULL(SUM(CASE characterType WHEN 99 THEN cnt_kill ELSE 0 END), 0),
	   class99_death = ISNULL(SUM(CASE characterType WHEN 99 THEN cnt_death ELSE 0 END), 0),
	   class100_playTime = ISNULL(SUM(CASE characterType WHEN 100 THEN playTime ELSE 0 END), 0),
	   class100_kill = ISNULL(SUM(CASE characterType WHEN 100 THEN cnt_kill ELSE 0 END), 0),
	   class100_death = ISNULL(SUM(CASE characterType WHEN 100 THEN cnt_death ELSE 0 END), 0),
	   @dateIDX, @analDate, GETDATE() 
  FROM (
	SELECT characterType, SUM([kill]) as 'cnt_kill', SUM(death) as 'cnt_death', SUM(playTime) as 'playTime'
	  FROM dbo.log_data_character WITH(NOLOCK)
	 WHERE regDate >= @startDate
	   AND regDate < @endDate
	   AND modeType NOT IN (8, 13)
	 GROUP BY characterType
) a
GO


-- ----------------------------
-- Procedure structure for log_data_league_present_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_league_present_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_league_present_add]
GO

CREATE PROCEDURE [dbo].[log_data_league_present_add]
(
	@accountIDX int
,	@nickName nvarchar(20)
,	@leagueIDX int
,	@currentRound tinyint
,	@presentCode1 int
,	@presentCode2 int
,	@presentCode3 int
,	@presentCode4 int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_league_present (
	accountIDX, nickName, leagueIDX, currentRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
)
VALUES (
	@accountIDX, @nickName, @leagueIDX, @currentRound, @presentCode1, @presentCode2, @presentCode3, @presentCode4, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_AWAKE_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_AWAKE_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_AWAKE_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_AWAKE_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, userLevel, classType, pieceCode, pieceUseCount, awakeType, regDate
	  FROM dbo.log_data_awake WITH (NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, userLevel, classType, pieceCode, pieceUseCount, awakeType, regDate
	  FROM dbo.log_data_awake WITH(NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for AGENT_GAME_CONCURRENT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_GAME_CONCURRENT]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_GAME_CONCURRENT]
GO

CREATE PROCEDURE [dbo].[AGENT_GAME_CONCURRENT]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @analDate datetime
DECLARE @dateIDX char(8)
DECLARE @T0001 int, @T0102 int, @T0203 int, @T0304 int, @T0405 int, @T0506 int, @T0607 int, @T0708 int, @T0809 int, @T0910 int
DECLARE @T1011 int, @T1112 int, @T1213 int, @T1314 int, @T1415 int, @T1516 int, @T1617 int, @T1718 int, @T1819 int, @T1920 int
DECLARE @T2021 int, @T2122 int, @T2223 int, @T2324 int

SET @startDate = LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10)
SET @endDate = LEFT(CONVERT(varchar(20), GETDATE(), 120), 10)
SET @analDate = LEFT(CONVERT(varchar(20), @startDate, 120), 10)
SET @dateIDX = CONVERT(char(8),@startDate,112)

IF (NOT EXISTS(SELECT * FROM Analytical_statistics.DBO.game_concurrent WITH(NOLOCK) WHERE dateIDX=@dateIDX))
BEGIN
	INSERT INTO Analytical_statistics.DBO.game_concurrent (
		T0001, T0102, T0203, T0304, T0405, T0506, T0607, T0708, T0809, T0910,
		T1011, T1112, T1213, T1314, T1415, T1516, T1617, T1718, T1819, T1920,
		T2021, T2122, T2223, T2324, dateIDX, analDate, regDate
	)
	VALUES (
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, @dateIDX, @startDate, GETDATE()
	)
END

SELECT @T0001 = SUM(CASE CONVERT(tinyint,nTime) WHEN 0 THEN cnt ELSE 0 END),
	   @T0102 = SUM(CASE CONVERT(tinyint,nTime) WHEN 1 THEN cnt ELSE 0 END),
	   @T0203 = SUM(CASE CONVERT(tinyint,nTime) WHEN 2 THEN cnt ELSE 0 END),
	   @T0304 = SUM(CASE CONVERT(tinyint,nTime) WHEN 3 THEN cnt ELSE 0 END),
	   @T0405 = SUM(CASE CONVERT(tinyint,nTime) WHEN 4 THEN cnt ELSE 0 END),
	   @T0506 = SUM(CASE CONVERT(tinyint,nTime) WHEN 5 THEN cnt ELSE 0 END),
	   @T0607 = SUM(CASE CONVERT(tinyint,nTime) WHEN 6 THEN cnt ELSE 0 END),
	   @T0708 = SUM(CASE CONVERT(tinyint,nTime) WHEN 7 THEN cnt ELSE 0 END),
	   @T0809 = SUM(CASE CONVERT(tinyint,nTime) WHEN 8 THEN cnt ELSE 0 END),
	   @T0910 = SUM(CASE CONVERT(tinyint,nTime) WHEN 9 THEN cnt ELSE 0 END),
	   @T1011 = SUM(CASE CONVERT(tinyint,nTime) WHEN 10 THEN cnt ELSE 0 END),
	   @T1112 = SUM(CASE CONVERT(tinyint,nTime) WHEN 11 THEN cnt ELSE 0 END),
	   @T1213 = SUM(CASE CONVERT(tinyint,nTime) WHEN 12 THEN cnt ELSE 0 END),
	   @T1314 = SUM(CASE CONVERT(tinyint,nTime) WHEN 13 THEN cnt ELSE 0 END),
	   @T1415 = SUM(CASE CONVERT(tinyint,nTime) WHEN 14 THEN cnt ELSE 0 END),
	   @T1516 = SUM(CASE CONVERT(tinyint,nTime) WHEN 15 THEN cnt ELSE 0 END),
	   @T1617 = SUM(CASE CONVERT(tinyint,nTime) WHEN 16 THEN cnt ELSE 0 END),
	   @T1718 = SUM(CASE CONVERT(tinyint,nTime) WHEN 17 THEN cnt ELSE 0 END),
	   @T1819 = SUM(CASE CONVERT(tinyint,nTime) WHEN 18 THEN cnt ELSE 0 END),
	   @T1920 = SUM(CASE CONVERT(tinyint,nTime) WHEN 19 THEN cnt ELSE 0 END),
	   @T2021 = SUM(CASE CONVERT(tinyint,nTime) WHEN 20 THEN cnt ELSE 0 END),
	   @T2122 = SUM(CASE CONVERT(tinyint,nTime) WHEN 21 THEN cnt ELSE 0 END),
	   @T2223 = SUM(CASE CONVERT(tinyint,nTime) WHEN 22 THEN cnt ELSE 0 END),
	   @T2324 = SUM(CASE CONVERT(tinyint,nTime) WHEN 23 THEN cnt ELSE 0 END)
  FROM (
	SELECT LEFT(nTime, 2) AS 'nTime', MAX(cnt) AS 'cnt'
	  FROM (
		SELECT LEFT(CONVERT(nvarchar(13),regdate,108),5) AS 'nTime', SUM(concurrent) AS 'cnt'
		  FROM dbo.log_game_concurrent WITH(NOLOCK)
		 WHERE regdate >= @startDate and regdate < @endDate and serverID = 0
		 GROUP BY LEFT(CONVERT(nvarchar(13),regdate,108),5)
	  ) a
	 GROUP BY LEFT(nTime, 2)
) b


UPDATE Analytical_statistics.DBO.game_concurrent
   SET T0001 = @T0001,
	   T0102 = @T0102,
	   T0203 = @T0203,
	   T0304 = @T0304,
	   T0405 = @T0405,
	   T0506 = @T0506,
	   T0607 = @T0607,
	   T0708 = @T0708,
	   T0809 = @T0809,
	   T0910 = @T0910,
	   T1011 = @T1011,
	   T1112 = @T1112,
	   T1213 = @T1213,
	   T1314 = @T1314,
	   T1415 = @T1415,
	   T1516 = @T1516,
	   T1617 = @T1617,
	   T1718 = @T1718,
	   T1819 = @T1819,
	   T1920 = @T1920,
	   T2021 = @T2021,
	   T2122 = @T2122,
	   T2223 = @T2223,
	   T2324 = @T2324
 WHERE dateIDX = @dateIDX
GO


-- ----------------------------
-- Procedure structure for AGENT_GAME_CONCURRENT_LOOP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_GAME_CONCURRENT_LOOP]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_GAME_CONCURRENT_LOOP]
GO

CREATE PROCEDURE [dbo].[AGENT_GAME_CONCURRENT_LOOP]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)
DECLARE @T0001 int, @T0102 int, @T0203 int, @T0304 int, @T0405 int, @T0506 int, @T0607 int, @T0708 int, @T0809 int, @T0910 int
DECLARE @T1011 int, @T1112 int, @T1213 int, @T1314 int, @T1415 int, @T1516 int, @T1617 int, @T1718 int, @T1819 int, @T1920 int
DECLARE @T2021 int, @T2122 int, @T2223 int, @T2324 int

SET @startDate = LEFT(CONVERT(varchar(20), GETDATE(), 120), 10)
SET @endDate = LEFT(CONVERT(varchar(20), GETDATE()+1, 120), 10)

SET @dateIDX = CONVERT(char(8),@startDate,112)

IF (NOT EXISTS (SELECT * FROM Analytical_statistics.DBO.game_concurrent WITH(NOLOCK) WHERE dateIDX=@dateIDX))
BEGIN
	INSERT INTO Analytical_statistics.DBO.game_concurrent (
		T0001, T0102, T0203, T0304, T0405, T0506, T0607, T0708, T0809, T0910,
		T1011, T1112, T1213, T1314, T1415, T1516, T1617, T1718, T1819, T1920,
		T2021, T2122, T2223, T2324, dateIDX, analDate, regDate
	)
	VALUES (
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, @dateIDX, @startDate, GETDATE()
	)
END

SELECT @T0001 = SUM(CASE CONVERT(tinyint,nTime) WHEN 0 THEN cnt ELSE 0 END),
	   @T0102 = SUM(CASE CONVERT(tinyint,nTime) WHEN 1 THEN cnt ELSE 0 END),
	   @T0203 = SUM(CASE CONVERT(tinyint,nTime) WHEN 2 THEN cnt ELSE 0 END),
	   @T0304 = SUM(CASE CONVERT(tinyint,nTime) WHEN 3 THEN cnt ELSE 0 END),
	   @T0405 = SUM(CASE CONVERT(tinyint,nTime) WHEN 4 THEN cnt ELSE 0 END),
	   @T0506 = SUM(CASE CONVERT(tinyint,nTime) WHEN 5 THEN cnt ELSE 0 END),
	   @T0607 = SUM(CASE CONVERT(tinyint,nTime) WHEN 6 THEN cnt ELSE 0 END),
	   @T0708 = SUM(CASE CONVERT(tinyint,nTime) WHEN 7 THEN cnt ELSE 0 END),
	   @T0809 = SUM(CASE CONVERT(tinyint,nTime) WHEN 8 THEN cnt ELSE 0 END),
	   @T0910 = SUM(CASE CONVERT(tinyint,nTime) WHEN 9 THEN cnt ELSE 0 END),
	   @T1011 = SUM(CASE CONVERT(tinyint,nTime) WHEN 10 THEN cnt ELSE 0 END),
	   @T1112 = SUM(CASE CONVERT(tinyint,nTime) WHEN 11 THEN cnt ELSE 0 END),
	   @T1213 = SUM(CASE CONVERT(tinyint,nTime) WHEN 12 THEN cnt ELSE 0 END),
	   @T1314 = SUM(CASE CONVERT(tinyint,nTime) WHEN 13 THEN cnt ELSE 0 END),
	   @T1415 = SUM(CASE CONVERT(tinyint,nTime) WHEN 14 THEN cnt ELSE 0 END),
	   @T1516 = SUM(CASE CONVERT(tinyint,nTime) WHEN 15 THEN cnt ELSE 0 END),
	   @T1617 = SUM(CASE CONVERT(tinyint,nTime) WHEN 16 THEN cnt ELSE 0 END),
	   @T1718 = SUM(CASE CONVERT(tinyint,nTime) WHEN 17 THEN cnt ELSE 0 END),
	   @T1819 = SUM(CASE CONVERT(tinyint,nTime) WHEN 18 THEN cnt ELSE 0 END),
	   @T1920 = SUM(CASE CONVERT(tinyint,nTime) WHEN 19 THEN cnt ELSE 0 END),
	   @T2021 = SUM(CASE CONVERT(tinyint,nTime) WHEN 20 THEN cnt ELSE 0 END),
	   @T2122 = SUM(CASE CONVERT(tinyint,nTime) WHEN 21 THEN cnt ELSE 0 END),
	   @T2223 = SUM(CASE CONVERT(tinyint,nTime) WHEN 22 THEN cnt ELSE 0 END),
	   @T2324 = SUM(CASE CONVERT(tinyint,nTime) WHEN 23 THEN cnt ELSE 0 END)
  FROM (
	SELECT LEFT(nTime, 2) AS 'nTime', MAX(cnt) AS 'cnt'
	  FROM (
		SELECT LEFT(CONVERT(nvarchar(13),regdate,108),5) AS 'nTime', SUM(concurrent) AS 'cnt'
		  FROM dbo.log_game_concurrent WITH(NOLOCK)
		 WHERE regdate >= @startDate
		   AND regdate < @endDate
		   AND serverID = 0
		 GROUP BY LEFT(CONVERT(nvarchar(13),regdate,108),5)
	  ) a
	 GROUP BY LEFT(nTime, 2)
) b

UPDATE Analytical_statistics.DBO.game_concurrent
   SET T0001 = @T0001,
	   T0102 = @T0102,
	   T0203 = @T0203,
	   T0304 = @T0304,
	   T0405 = @T0405,
	   T0506 = @T0506,
	   T0607 = @T0607,
	   T0708 = @T0708,
	   T0809 = @T0809,
	   T0910 = @T0910,
	   T1011 = @T1011,
	   T1112 = @T1112,
	   T1213 = @T1213,
	   T1314 = @T1314,
	   T1415 = @T1415,
	   T1516 = @T1516,
	   T1617 = @T1617,
	   T1718 = @T1718,
	   T1819 = @T1819,
	   T1920 = @T1920,
	   T2021 = @T2021,
	   T2122 = @T2122,
	   T2223 = @T2223,
	   T2324 = @T2324
 WHERE dateIDX = @dateIDX
GO


-- ----------------------------
-- Procedure structure for log_data_localinfo_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_localinfo_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_localinfo_add]
GO

CREATE PROCEDURE [dbo].[log_data_localinfo_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@userLevel int
,	@os nvarchar(100)
,	@ie nvarchar(100)
,	@directx nvarchar(100)
,	@cpu nvarchar(100)
,	@gpu nvarchar(100)
,	@memory nvarchar(100)
,	@systemResolution nvarchar(20)
,	@losaResolution nvarchar(20)
,	@screenType tinyint
,	@userIP varchar(15)
,   @hash varchar(32)
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_localinfo (
	accountIDX, nickName, userLevel, os, ie, directx, cpu, gpu, memory, systemResolution, losaResolution, screenType, userIP, regDate, hashId
)
VALUES (
	@accountIDX, @nickName, @userLevel, @os, @ie, @directx, @cpu, @gpu, @memory, @systemResolution, @losaResolution, @screenType, @userIP, GETDATE(), @hash
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_TRADE_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_TRADE_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_TRADE_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_TRADE_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;


IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickname, itemType, value1, value2, price, logType, userIP, note, regDate
	  FROM dbo.log_data_trade WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickname, itemType, value1, value2, price, logType, userIP, note, regDate
	  FROM dbo.log_data_trade WITH(NOLOCK)
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Procedure structure for log_data_medal_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_data_medal_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_data_medal_add]
GO

CREATE PROCEDURE [dbo].[log_data_medal_add]
(
	@accountIDX int
,	@nickName varchar(20)
,	@medalType int
,	@limitType int
,	@logType int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.log_data_medal (accountIDX, nickName, medalType, limitType, logType, regDate)
VALUES (@accountIDX, @nickName, @medalType, @limitType, @logType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for AGENT_GAME_DATA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_GAME_DATA]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_GAME_DATA]
GO

CREATE PROCEDURE [dbo].[AGENT_GAME_DATA]

AS

SET NOCOUNT ON

DECLARE @startDate datetime
DECLARE @endDate datetime
DECLARE @dateIDX char(8)

SET @startDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE()-1, 120), 10))
SET @endDate = DATEADD(hh, 4, LEFT(CONVERT(varchar(20), GETDATE(), 120), 10))
SET @dateIDX = CONVERT(char(8),@startDate,112)

INSERT INTO Analytical_statistics.DBO.game_user_data (
	accountIDX, nickName, playTime, totalpeso, [kill], death, dateIDX, analDate, regDate
)
SELECT accountIDX,
	   nickName,
	   SUM(playTime) + SUM(deathTime) as 'playTime',
	   SUM(peso),
	   SUM([kill]) as 'kill',
	   SUM(death) as 'death',
	   @dateIDX,
	   LEFT(CONVERT(varchar(20), @startDate, 120),10),
	   GETDATE() 
  FROM log_data_play WITH(NOLOCK)
 WHERE (regDate >= @startDate and regDate < @endDate) and logType > 0
 GROUP BY accountIDX, nickName

INSERT INTO Analytical_statistics.DBO.game_user_data (
	accountIDX, nickName, dateIDX, analDate, regDate
)
SELECT accountIDX,
	   nickName,
	   @dateIDX,
	   LEFT(CONVERT(varchar(20), @startDate, 120),10),
	   GETDATE() 
  FROM dbo.log_data_tutorial WITH(NOLOCK)
 WHERE regDate >= @startDate
   AND regDate < @endDate
   AND accountIDX NOT IN (
		SELECT DISTINCT(accountIDX)
		  FROM log_data_play WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
	   )
   AND accountIDX not in (
		SELECT DISTINCT(accountIDX)
		  FROM dbo.log_data_time WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
	   )
 GROUP BY accountIDX, nickName

INSERT INTO Analytical_statistics.DBO.game_user_data (
	accountIDX, nickName, dateIDX, analDate, regDate
)
SELECT accountIDX,
	   nickName,
	   @dateIDX,
	   LEFT(CONVERT(varchar(20), @startDate, 120),10),
	   GETDATE() 
  FROM dbo.log_data_tutorial WITH(NOLOCK)
 WHERE regDate >= @startDate
   AND regDate < @endDate
   AND accountIDX NOT IN (
		SELECT DISTINCT(accountIDX)
		  FROM dbo.log_data_play WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
	   )
   AND accountIDX NOT IN (
		SELECT DISTINCT(accountIDX)
		  FROM dbo.log_data_time WITH(NOLOCK)
		 WHERE regDate >= @startDate
		   AND regDate < @endDate
	   )
 GROUP BY accountIDX, nickName

UPDATE a SET playTime = a.playTime + b.playTime
FROM (
	SELECT accountIDX, SUM(playTime) as 'playTime' FROM log_data_time WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate and logType > 10 and logType not in (15,16)
	GROUP BY accountIDX
) b INNER JOIN Analytical_statistics.DBO.game_user_data a WITH(NOLOCK) on b.accountIDX = a.accountIDX
WHERE a.dateIDX=@dateIDX

UPDATE a SET headquarterTime = b.playTime
FROM (
	SELECT accountIDX, SUM(playTime) as 'playTime'
	FROM log_data_time WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate and logType < 10
	GROUP BY accountIDX
) b INNER JOIN Analytical_statistics.DBO.game_user_data a WITH(NOLOCK) on b.accountIDX = a.accountIDX
WHERE a.dateIDX=@dateIDX

UPDATE a SET playTime = a.playTime + b.playTime
FROM (
	SELECT accountIDX, SUM(playTime) as 'playTime' FROM log_data_tutorial WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate
	GROUP BY accountIDX
) b INNER JOIN Analytical_statistics.DBO.game_user_data a WITH(NOLOCK) on b.accountIDX = a.accountIDX
WHERE a.dateIDX=@dateIDX

UPDATE a SET totalpeso = a.totalpeso + b.total_peso
FROM (
	SELECT accountIDX, SUM(peso) as 'total_peso' FROM log_data_peso WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate and peso > 0
	GROUP BY accountIDX
) b INNER JOIN Analytical_statistics.DBO.game_user_data a WITH(NOLOCK) on b.accountIDX = a.accountIDX
WHERE a.dateIDX=@dateIDX

UPDATE a SET havepeso = b.gameMoney, userLevel = b.userLevel 
FROM (
	SELECT accountIDX, gameMoney, userLevel
	FROM LosaGame_v140826.DBO.userGameDB WITH(NOLOCK)
) b INNER JOIN Analytical_statistics.DBO.game_user_data a WITH(NOLOCK) on b.accountIDX = a.accountIDX
WHERE dateIDX=@dateIDX

UPDATE a SET
	square_playTime = b.playTime
,	square_peso = b.total_peso
,	square_kill = b.cnt_kill
,	square_death = b.cnt_death
FROM (
	SELECT	accountIDX
,			SUM(playTime) + SUM(deathTime) as 'playTime'
,			SUM(peso) as 'total_peso'
,			SUM([kill]) as 'cnt_kill'
,			SUM(death) as 'cnt_death'
	FROM log_data_play WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate and playType=3 and logType > 0
	GROUP BY accountIDX
) b INNER JOIN Analytical_statistics.DBO.game_user_data a WITH(NOLOCK) on b.accountIDX = a.accountIDX
WHERE a.dateIDX=@dateIDX

UPDATE a SET
	battle_playTime = b.playTime
,	battle_peso = b.total_peso
,	battle_kill = b.cnt_kill
,	battle_death = b.cnt_death
FROM (
	SELECT	accountIDX
,			SUM(playTime) + SUM(deathTime) as 'playTime'
,			SUM(peso) as 'total_peso'
,			SUM([kill]) as 'cnt_kill'
,			SUM(death) as 'cnt_death'
	FROM log_data_play WITH(NOLOCK)
	WHERE regDate >= @startDate and regDate < @endDate and playType in (4, 5) and logType > 0
	GROUP BY accountIDX
) b INNER JOIN Analytical_statistics.DBO.game_user_data a WITH(NOLOCK) on b.accountIDX = a.accountIDX
WHERE a.dateIDX=@dateIDX

UPDATE Analytical_statistics.DBO.game_user_data SET
	newType=1
WHERE dateIDX=@dateIDX and accountIDX not in (
	SELECT DISTINCT(accountIDX) FROM Analytical_statistics.DBO.DEFINE_PLAYUSER WITH(NOLOCK)
) and analDate < LEFT(CONVERT(varchar(20), @endDate, 120),10)

INSERT INTO Analytical_statistics.DBO.DEFINE_PLAYUSER (accountIDX)
SELECT DISTINCT(accountIDX) FROM Analytical_statistics.DBO.game_user_data
WHERE accountIDX not in (
	SELECT accountIDX FROM Analytical_statistics.DBO.DEFINE_PLAYUSER
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_SPECIAL_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_SPECIAL_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_SPECIAL_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_SPECIAL_GET_LIST]

	@START_DATE			DATETIME,
	@END_DATE			DATETIME,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@ACCOUNT_IDX = 0)
BEGIN
	SELECT TOP 100 idx, nickName, itemType, itemValue, eventType, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_special WITH(NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	 ORDER BY regDate DESC
END
ELSE
BEGIN
	SELECT idx, nickName, itemType, itemValue, eventType, amount, userIP, note, regDate
	  FROM dbo.log_buy_item_special WITH(NOLOCK) 
	 WHERE regDate >= @START_DATE
	   AND regDate < DATEADD(d, 1, @END_DATE)
	   AND accountIDX = @ACCOUNT_IDX
	 ORDER BY regDate DESC
END
GO


-- ----------------------------
-- Primary Key structure for table GAME_LOG
-- ----------------------------
ALTER TABLE [dbo].[GAME_LOG] ADD CONSTRAINT [PK_GAME_LOG_LogIndex] PRIMARY KEY CLUSTERED ([RegDate], [LogIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_bonus_gold
-- ----------------------------
CREATE NONCLUSTERED INDEX [NC_log_buy_item_bonus_gold_AccountIDX]
ON [dbo].[log_buy_item_bonus_gold] (
  [AccountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_log_buy_item_bonus_gold_GoldIDX]
ON [dbo].[log_buy_item_bonus_gold] (
  [GoldIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table log_buy_item_bonus_gold
-- ----------------------------
ALTER TABLE [dbo].[log_buy_item_bonus_gold] ADD CONSTRAINT [PK_log_buy_item_bonus_gold] PRIMARY KEY CLUSTERED ([RegDate], [idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_class
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_buy_item_class] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_buy_item_class] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_eventType]
ON [dbo].[log_buy_item_class] (
  [eventType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_costume
-- ----------------------------
CREATE CLUSTERED INDEX [CL_log_buy_item_costume]
ON [dbo].[log_buy_item_costume] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_log_buy_item_costume_accountIDX]
ON [dbo].[log_buy_item_costume] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_decoration
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_buy_item_decoration] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_buy_item_decoration] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_eventType]
ON [dbo].[log_buy_item_decoration] (
  [eventType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_equip
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_buy_item_equip] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_buy_item_equip] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_eventType]
ON [dbo].[log_buy_item_equip] (
  [eventType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_gold
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_buy_item_gold] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_buy_item_gold] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_itemType]
ON [dbo].[log_buy_item_gold] (
  [itemType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_sbox
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_buy_item_sbox] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_buy_item_sbox] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_presentType]
ON [dbo].[log_buy_item_sbox] (
  [presentType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_buy_item_special
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_buy_item_special] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_buy_item_special] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_log_buy_item_special_accountIDX]
ON [dbo].[log_buy_item_special] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_client_error
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_client_error] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[log_client_error] (
  [idx] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_logType]
ON [dbo].[log_client_error] (
  [logType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_awake
-- ----------------------------
CREATE CLUSTERED INDEX [CI_log_data_awake]
ON [dbo].[log_data_awake] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_log_data_awake_accountIDX]
ON [dbo].[log_data_awake] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_log_data_awake_idx]
ON [dbo].[log_data_awake] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_character
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_character] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_character] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_clover
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_clover] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_clover] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_eventType]
ON [dbo].[log_data_clover] (
  [eventType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_gear_upgrade
-- ----------------------------
CREATE CLUSTERED INDEX [CL_log_data_gear_upgrade]
ON [dbo].[log_data_gear_upgrade] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_log_data_pet_accountIDX]
ON [dbo].[log_data_gear_upgrade] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_log_data_pet_idx]
ON [dbo].[log_data_gear_upgrade] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_league_present
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_league_present] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_league_present] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_localinfo
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_localinfo] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_localinfo] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_medal
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_medal] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_medal] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_logType]
ON [dbo].[log_data_medal] (
  [logType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_medal_extend
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_medal_extend] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_medal_extend] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_pcroom
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_pcroom] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_pcroom] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_peso
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_peso] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_peso] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_logType]
ON [dbo].[log_data_peso] (
  [logType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_pet
-- ----------------------------
CREATE CLUSTERED INDEX [CI_log_data_pet]
ON [dbo].[log_data_pet] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NX_log_data_pet_accountIDX]
ON [dbo].[log_data_pet] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NX_log_data_pet_idx]
ON [dbo].[log_data_pet] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_piece_divide
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_piece_divide] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_piece_divide] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_piece_mix
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_piece_mix] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_piece_mix] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_piece_obtain
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_piece_obtain] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_piece_obtain] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_play
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_play] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_play] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_logType]
ON [dbo].[log_data_play] (
  [logType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_quest
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_quest] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_quest] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_logType]
ON [dbo].[log_data_quest] (
  [logType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_time
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_time] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_time] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_logType]
ON [dbo].[log_data_time] (
  [logType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_trade
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_trade] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_trade] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_logType]
ON [dbo].[log_data_trade] (
  [logType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_data_tutorial
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_data_tutorial] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_data_tutorial] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_error_billing
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_error_billing] (
  [regDate] ASC
)  
 
GO


-- ----------------------------
-- Indexes structure for table log_event_bingo
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_event_bingo] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_event_bingo] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_game_concurrent
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_game_concurrent] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_serverID]
ON [dbo].[log_game_concurrent] (
  [serverID] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_log_game_concurrent_serverID]
ON [dbo].[log_game_concurrent] (
  [serverID] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_present
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[log_present] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[log_present] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_eventType]
ON [dbo].[log_present] (
  [eventType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table log_use_item
-- ----------------------------
CREATE CLUSTERED INDEX [idx_nickname]
ON [dbo].[log_use_item] (
  [nickname] ASC
)  
 
GO


-- ----------------------------
-- Primary Key structure for table SQL_ERROR_LOG
-- ----------------------------
ALTER TABLE [dbo].[SQL_ERROR_LOG] ADD CONSTRAINT [PK__SQL_ERRO__358565CA10E07F16] PRIMARY KEY CLUSTERED ([ErrorID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

