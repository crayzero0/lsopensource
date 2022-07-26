/*
 Navicat Premium Data Transfer

 Source Server         : MSSQL
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : WIN-5L13JDNA9OA\SQLEXPRESS:1433
 Source Catalog        : LosaGame
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 08/07/2019 19:40:30
*/


-- ----------------------------
-- Table structure for define_class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[define_class]') AND type IN ('U'))
	DROP TABLE [dbo].[define_class]
GO

CREATE TABLE [dbo].[define_class] (
  [idx] smallint  NOT NULL,
  [classHanName] varchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [classEngName] varchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [movieorderby] smallint  NOT NULL,
  [limitrankingLevel] tinyint DEFAULT ((0)) NOT NULL,
  [limituseLevel] smallint DEFAULT ((0)) NOT NULL,
  [premiumType] tinyint DEFAULT ((0)) NOT NULL,
  [classFullName] varchar(50) COLLATE Korean_Wansung_CI_AS  NULL,
  [rareType] tinyint DEFAULT ((0)) NULL,
  [attackType] tinyint DEFAULT ((1)) NULL,
  [powerupType] tinyint DEFAULT ((0)) NULL,
  [display] tinyint DEFAULT ((1)) NULL,
  [description] varchar(2000) COLLATE Korean_Wansung_CI_AS DEFAULT ('No Introduction') NULL
)
GO

ALTER TABLE [dbo].[define_class] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for define_class_price
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[define_class_price]') AND type IN ('U'))
	DROP TABLE [dbo].[define_class_price]
GO

CREATE TABLE [dbo].[define_class_price] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [class1_price] int DEFAULT ((0)) NOT NULL,
  [class2_price] int DEFAULT ((0)) NOT NULL,
  [class3_price] int DEFAULT ((0)) NOT NULL,
  [class4_price] int DEFAULT ((0)) NOT NULL,
  [class5_price] int DEFAULT ((0)) NOT NULL,
  [class6_price] int DEFAULT ((0)) NOT NULL,
  [class7_price] int DEFAULT ((0)) NOT NULL,
  [class8_price] int DEFAULT ((0)) NOT NULL,
  [class9_price] int DEFAULT ((0)) NOT NULL,
  [class10_price] int DEFAULT ((0)) NOT NULL,
  [class11_price] int DEFAULT ((0)) NOT NULL,
  [class12_price] int DEFAULT ((0)) NOT NULL,
  [class13_price] int DEFAULT ((0)) NOT NULL,
  [class14_price] int DEFAULT ((0)) NOT NULL,
  [class15_price] int DEFAULT ((0)) NOT NULL,
  [class16_price] int DEFAULT ((0)) NOT NULL,
  [class17_price] int DEFAULT ((0)) NOT NULL,
  [class18_price] int DEFAULT ((0)) NOT NULL,
  [class19_price] int DEFAULT ((0)) NOT NULL,
  [class20_price] int DEFAULT ((0)) NOT NULL,
  [class21_price] int DEFAULT ((0)) NOT NULL,
  [class22_price] int DEFAULT ((0)) NOT NULL,
  [class23_price] int DEFAULT ((0)) NOT NULL,
  [class24_price] int DEFAULT ((0)) NOT NULL,
  [class25_price] int DEFAULT ((0)) NOT NULL,
  [class26_price] int DEFAULT ((0)) NOT NULL,
  [class27_price] int DEFAULT ((0)) NOT NULL,
  [class28_price] int DEFAULT ((0)) NOT NULL,
  [class29_price] int DEFAULT ((0)) NOT NULL,
  [class30_price] int DEFAULT ((0)) NOT NULL,
  [class31_price] int DEFAULT ((0)) NOT NULL,
  [class32_price] int DEFAULT ((0)) NOT NULL,
  [class33_price] int DEFAULT ((0)) NOT NULL,
  [class34_price] int DEFAULT ((0)) NOT NULL,
  [class35_price] int DEFAULT ((0)) NOT NULL,
  [class36_price] int DEFAULT ((0)) NOT NULL,
  [class37_price] int DEFAULT ((0)) NOT NULL,
  [class38_price] int DEFAULT ((0)) NOT NULL,
  [class39_price] int DEFAULT ((0)) NOT NULL,
  [class40_price] int DEFAULT ((0)) NOT NULL,
  [class41_price] int DEFAULT ((0)) NOT NULL,
  [class42_price] int DEFAULT ((0)) NOT NULL,
  [class43_price] int DEFAULT ((0)) NOT NULL,
  [class44_price] int DEFAULT ((0)) NOT NULL,
  [class45_price] int DEFAULT ((0)) NOT NULL,
  [class46_price] int DEFAULT ((0)) NOT NULL,
  [class47_price] int DEFAULT ((0)) NOT NULL,
  [class48_price] int DEFAULT ((0)) NOT NULL,
  [class49_price] int DEFAULT ((0)) NOT NULL,
  [class50_price] int DEFAULT ((0)) NOT NULL,
  [class51_price] int DEFAULT ((0)) NOT NULL,
  [class52_price] int DEFAULT ((0)) NOT NULL,
  [class53_price] int DEFAULT ((0)) NOT NULL,
  [class54_price] int DEFAULT ((0)) NOT NULL,
  [class55_price] int DEFAULT ((0)) NOT NULL,
  [class56_price] int DEFAULT ((0)) NOT NULL,
  [class57_price] int DEFAULT ((0)) NOT NULL,
  [class58_price] int DEFAULT ((0)) NOT NULL,
  [class59_price] int DEFAULT ((0)) NOT NULL,
  [class60_price] int DEFAULT ((0)) NOT NULL,
  [class61_price] int DEFAULT ((0)) NOT NULL,
  [class62_price] int DEFAULT ((0)) NOT NULL,
  [class63_price] int DEFAULT ((0)) NOT NULL,
  [class64_price] int DEFAULT ((0)) NOT NULL,
  [class65_price] int DEFAULT ((0)) NOT NULL,
  [class66_price] int DEFAULT ((0)) NOT NULL,
  [class67_price] int DEFAULT ((0)) NOT NULL,
  [class68_price] int DEFAULT ((0)) NOT NULL,
  [class69_price] int DEFAULT ((0)) NOT NULL,
  [class70_price] int DEFAULT ((0)) NOT NULL,
  [class71_price] int DEFAULT ((0)) NOT NULL,
  [class72_price] int DEFAULT ((0)) NOT NULL,
  [class73_price] int DEFAULT ((0)) NOT NULL,
  [class74_price] int DEFAULT ((0)) NOT NULL,
  [class75_price] int DEFAULT ((0)) NOT NULL,
  [class76_price] int DEFAULT ((0)) NOT NULL,
  [class77_price] int DEFAULT ((0)) NOT NULL,
  [class78_price] int DEFAULT ((0)) NOT NULL,
  [class79_price] int DEFAULT ((0)) NOT NULL,
  [class80_price] int DEFAULT ((0)) NOT NULL,
  [class81_price] int DEFAULT ((0)) NOT NULL,
  [class82_price] int DEFAULT ((0)) NOT NULL,
  [class83_price] int DEFAULT ((0)) NOT NULL,
  [class84_price] int DEFAULT ((0)) NOT NULL,
  [class85_price] int DEFAULT ((0)) NOT NULL,
  [class86_price] int DEFAULT ((0)) NOT NULL,
  [class87_price] int DEFAULT ((0)) NOT NULL,
  [class88_price] int DEFAULT ((0)) NOT NULL,
  [class89_price] int DEFAULT ((0)) NOT NULL,
  [class90_price] int DEFAULT ((0)) NOT NULL,
  [class91_price] int DEFAULT ((0)) NOT NULL,
  [class92_price] int DEFAULT ((0)) NOT NULL,
  [class93_price] int DEFAULT ((0)) NOT NULL,
  [class94_price] int DEFAULT ((0)) NOT NULL,
  [class95_price] int DEFAULT ((0)) NOT NULL,
  [class96_price] int DEFAULT ((0)) NOT NULL,
  [class97_price] int DEFAULT ((0)) NOT NULL,
  [class98_price] int DEFAULT ((0)) NOT NULL,
  [class99_price] int DEFAULT ((0)) NOT NULL,
  [class100_price] int DEFAULT ((0)) NOT NULL,
  [class101_price] int DEFAULT ((0)) NOT NULL,
  [class102_price] int DEFAULT ((0)) NOT NULL,
  [class103_price] int DEFAULT ((0)) NOT NULL,
  [class104_price] int DEFAULT ((0)) NOT NULL,
  [class105_price] int DEFAULT ((0)) NOT NULL,
  [class106_price] int DEFAULT ((0)) NOT NULL,
  [class107_price] int DEFAULT ((0)) NOT NULL,
  [class108_price] int DEFAULT ((0)) NOT NULL,
  [class109_price] int DEFAULT ((0)) NOT NULL,
  [class110_price] int DEFAULT ((0)) NOT NULL,
  [class111_price] int DEFAULT ((0)) NOT NULL,
  [class112_price] int DEFAULT ((0)) NOT NULL,
  [class113_price] int DEFAULT ((0)) NOT NULL,
  [class114_price] int DEFAULT ((0)) NOT NULL,
  [class115_price] int DEFAULT ((0)) NOT NULL,
  [class116_price] int DEFAULT ((0)) NOT NULL,
  [class117_price] int DEFAULT ((0)) NOT NULL,
  [class118_price] int DEFAULT ((0)) NOT NULL,
  [class119_price] int DEFAULT ((0)) NOT NULL,
  [class120_price] int DEFAULT ((0)) NOT NULL,
  [class121_price] int DEFAULT ((0)) NOT NULL,
  [class122_price] int DEFAULT ((0)) NOT NULL,
  [class123_price] int DEFAULT ((0)) NOT NULL,
  [class124_price] int DEFAULT ((0)) NOT NULL,
  [class125_price] int DEFAULT ((0)) NOT NULL,
  [class126_price] int DEFAULT ((0)) NOT NULL,
  [class127_price] int DEFAULT ((0)) NOT NULL,
  [class128_price] int DEFAULT ((0)) NOT NULL,
  [class129_price] int DEFAULT ((0)) NOT NULL,
  [class130_price] int DEFAULT ((0)) NOT NULL,
  [class131_price] int DEFAULT ((0)) NOT NULL,
  [class132_price] int DEFAULT ((0)) NOT NULL,
  [class133_price] int DEFAULT ((0)) NOT NULL,
  [class134_price] int DEFAULT ((0)) NOT NULL,
  [class135_price] int DEFAULT ((0)) NOT NULL,
  [class136_price] int DEFAULT ((0)) NOT NULL,
  [class137_price] int DEFAULT ((0)) NOT NULL,
  [class138_price] int DEFAULT ((0)) NOT NULL,
  [class139_price] int DEFAULT ((0)) NOT NULL,
  [class140_price] int DEFAULT ((0)) NOT NULL,
  [class141_price] int DEFAULT ((0)) NOT NULL,
  [class142_price] int DEFAULT ((0)) NOT NULL,
  [class143_price] int DEFAULT ((0)) NOT NULL,
  [class144_price] int DEFAULT ((0)) NOT NULL,
  [class145_price] int DEFAULT ((0)) NOT NULL,
  [class146_price] int DEFAULT ((0)) NOT NULL,
  [class147_price] int DEFAULT ((0)) NOT NULL,
  [class148_price] int DEFAULT ((0)) NOT NULL,
  [class149_price] int DEFAULT ((0)) NOT NULL,
  [class150_price] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[define_class_price] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for define_custom_customidx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[define_custom_customidx]') AND type IN ('U'))
	DROP TABLE [dbo].[define_custom_customidx]
GO

CREATE TABLE [dbo].[define_custom_customidx] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[define_custom_customidx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for define_encode_key
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[define_encode_key]') AND type IN ('U'))
	DROP TABLE [dbo].[define_encode_key]
GO

CREATE TABLE [dbo].[define_encode_key] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [encodeKey] char(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[define_encode_key] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for define_game_server
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[define_game_server]') AND type IN ('U'))
	DROP TABLE [dbo].[define_game_server]
GO

CREATE TABLE [dbo].[define_game_server] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [serverID] bigint DEFAULT ((0)) NOT NULL,
  [serverIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [serverPort] int  NOT NULL,
  [serverName] varchar(50) COLLATE Korean_Wansung_CI_AS  NULL,
  [clientPort] int  NOT NULL,
  [connNumber] int DEFAULT ((0)) NOT NULL,
  [status] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[define_game_server] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for define_gear_customidx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[define_gear_customidx]') AND type IN ('U'))
	DROP TABLE [dbo].[define_gear_customidx]
GO

CREATE TABLE [dbo].[define_gear_customidx] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[define_gear_customidx] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for define_hero_price
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[define_hero_price]') AND type IN ('U'))
	DROP TABLE [dbo].[define_hero_price]
GO

CREATE TABLE [dbo].[define_hero_price] (
  [HeroCode] int DEFAULT ((0)) NOT NULL,
  [HeroPrice] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[define_hero_price] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for event_chuchun
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[event_chuchun]') AND type IN ('U'))
	DROP TABLE [dbo].[event_chuchun]
GO

CREATE TABLE [dbo].[event_chuchun] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [friendIDX] int  NOT NULL,
  [flag] tinyint DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userType] tinyint DEFAULT ((0)) NOT NULL,
  [itemFlag] tinyint DEFAULT ((0)) NOT NULL,
  [cpID] nvarchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [cpType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[event_chuchun] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for event_item_limited
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[event_item_limited]') AND type IN ('U'))
	DROP TABLE [dbo].[event_item_limited]
GO

CREATE TABLE [dbo].[event_item_limited] (
  [AccountIDX] int  NOT NULL,
  [EventType] tinyint  NOT NULL,
  [GoodsIndex] int  NOT NULL,
  [GoodsCount] tinyint  NOT NULL
)
GO

ALTER TABLE [dbo].[event_item_limited] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TB_LTS_WEEKTIME_PARENT_CHILD_INFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TB_LTS_WEEKTIME_PARENT_CHILD_INFO]') AND type IN ('U'))
	DROP TABLE [dbo].[TB_LTS_WEEKTIME_PARENT_CHILD_INFO]
GO

CREATE TABLE [dbo].[TB_LTS_WEEKTIME_PARENT_CHILD_INFO] (
  [PARENT_ID] varchar(25) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [CHILD_ID] varchar(25) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Agree_Type] char(1) COLLATE Korean_Wansung_CI_AS DEFAULT ('N') NULL,
  [AgreeDate] datetime  NULL,
  [RegIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [RegDate] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[TB_LTS_WEEKTIME_PARENT_CHILD_INFO] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TBL_migration_error_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TBL_migration_error_log]') AND type IN ('U'))
	DROP TABLE [dbo].[TBL_migration_error_log]
GO

CREATE TABLE [dbo].[TBL_migration_error_log] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [AsiasoftID] nvarchar(128) COLLATE Korean_Wansung_CI_AS DEFAULT ((0)) NOT NULL,
  [GarenaUID] varchar(20) COLLATE Korean_Wansung_CI_AS DEFAULT ((0)) NOT NULL,
  [GarenaID] nvarchar(32) COLLATE Korean_Wansung_CI_AS DEFAULT ((0)) NOT NULL,
  [errorCode] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[TBL_migration_error_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TBL_migration_mapping_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TBL_migration_mapping_log]') AND type IN ('U'))
	DROP TABLE [dbo].[TBL_migration_mapping_log]
GO

CREATE TABLE [dbo].[TBL_migration_mapping_log] (
  [accountIDX] int  NOT NULL,
  [GarenaID] nvarchar(32) COLLATE Korean_Wansung_CI_AS DEFAULT ((0)) NOT NULL,
  [GarenaUID] varchar(20) COLLATE Korean_Wansung_CI_AS DEFAULT ((0)) NOT NULL,
  [AsiasoftID] nvarchar(128) COLLATE Korean_Wansung_CI_AS DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[TBL_migration_mapping_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TBL_obt_event_bug_reporting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TBL_obt_event_bug_reporting]') AND type IN ('U'))
	DROP TABLE [dbo].[TBL_obt_event_bug_reporting]
GO

CREATE TABLE [dbo].[TBL_obt_event_bug_reporting] (
  [accountIDX] int  NOT NULL,
  [brType] tinyint DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[TBL_obt_event_bug_reporting] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TBL_obt_event_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TBL_obt_event_log]') AND type IN ('U'))
	DROP TABLE [dbo].[TBL_obt_event_log]
GO

CREATE TABLE [dbo].[TBL_obt_event_log] (
  [accountIDX] int  NOT NULL,
  [eventType] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[TBL_obt_event_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for TBL_RANKING_AWARD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TBL_RANKING_AWARD]') AND type IN ('U'))
	DROP TABLE [dbo].[TBL_RANKING_AWARD]
GO

CREATE TABLE [dbo].[TBL_RANKING_AWARD] (
  [accountIDX] int  NULL,
  [awardType] int  NULL,
  [prevRanking] int  NULL,
  [nowRanking] int  NULL,
  [point] int  NULL
)
GO

ALTER TABLE [dbo].[TBL_RANKING_AWARD] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userAbilityDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userAbilityDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userAbilityDB]
GO

CREATE TABLE [dbo].[userAbilityDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [class1_type] int DEFAULT ((0)) NOT NULL,
  [class1_basic01] tinyint DEFAULT ((0)) NOT NULL,
  [class1_basic02] tinyint DEFAULT ((0)) NOT NULL,
  [class1_basic03] tinyint DEFAULT ((0)) NOT NULL,
  [class1_basic04] tinyint DEFAULT ((0)) NOT NULL,
  [class1_skill1_sd] tinyint DEFAULT ((0)) NOT NULL,
  [class1_skill1_asd] tinyint DEFAULT ((0)) NOT NULL,
  [class1_skill1_ad] tinyint DEFAULT ((0)) NOT NULL,
  [class1_skill1_as] tinyint DEFAULT ((0)) NOT NULL,
  [class1_timeslot] int DEFAULT ((0)) NOT NULL,
  [class1_limitdate] datetime DEFAULT (getdate()) NOT NULL,
  [class2_type] int DEFAULT ((0)) NOT NULL,
  [class2_basic01] tinyint DEFAULT ((0)) NOT NULL,
  [class2_basic02] tinyint DEFAULT ((0)) NOT NULL,
  [class2_basic03] tinyint DEFAULT ((0)) NOT NULL,
  [class2_basic04] tinyint DEFAULT ((0)) NOT NULL,
  [class2_skill1_sd] tinyint DEFAULT ((0)) NOT NULL,
  [class2_skill1_asd] tinyint DEFAULT ((0)) NOT NULL,
  [class2_skill1_ad] tinyint DEFAULT ((0)) NOT NULL,
  [class2_skill1_as] tinyint DEFAULT ((0)) NOT NULL,
  [class2_timeslot] int DEFAULT ((0)) NOT NULL,
  [class2_limitdate] datetime DEFAULT (getdate()) NOT NULL,
  [class3_type] int DEFAULT ((0)) NOT NULL,
  [class3_basic01] tinyint DEFAULT ((0)) NOT NULL,
  [class3_basic02] tinyint DEFAULT ((0)) NOT NULL,
  [class3_basic03] tinyint DEFAULT ((0)) NOT NULL,
  [class3_basic04] tinyint DEFAULT ((0)) NOT NULL,
  [class3_skill1_sd] tinyint DEFAULT ((0)) NOT NULL,
  [class3_skill1_asd] tinyint DEFAULT ((0)) NOT NULL,
  [class3_skill1_ad] tinyint DEFAULT ((0)) NOT NULL,
  [class3_skill1_as] tinyint DEFAULT ((0)) NOT NULL,
  [class3_timeslot] int DEFAULT ((0)) NOT NULL,
  [class3_limitdate] datetime DEFAULT (getdate()) NOT NULL,
  [class4_type] int DEFAULT ((0)) NOT NULL,
  [class4_basic01] tinyint DEFAULT ((0)) NOT NULL,
  [class4_basic02] tinyint DEFAULT ((0)) NOT NULL,
  [class4_basic03] tinyint DEFAULT ((0)) NOT NULL,
  [class4_basic04] tinyint DEFAULT ((0)) NOT NULL,
  [class4_skill1_sd] tinyint DEFAULT ((0)) NOT NULL,
  [class4_skill1_asd] tinyint DEFAULT ((0)) NOT NULL,
  [class4_skill1_ad] tinyint DEFAULT ((0)) NOT NULL,
  [class4_skill1_as] tinyint DEFAULT ((0)) NOT NULL,
  [class4_timeslot] int DEFAULT ((0)) NOT NULL,
  [class4_limitdate] datetime DEFAULT (getdate()) NOT NULL,
  [class5_type] int DEFAULT ((0)) NOT NULL,
  [class5_basic01] tinyint DEFAULT ((0)) NOT NULL,
  [class5_basic02] tinyint DEFAULT ((0)) NOT NULL,
  [class5_basic03] tinyint DEFAULT ((0)) NOT NULL,
  [class5_basic04] tinyint DEFAULT ((0)) NOT NULL,
  [class5_skill1_sd] tinyint DEFAULT ((0)) NOT NULL,
  [class5_skill1_asd] tinyint DEFAULT ((0)) NOT NULL,
  [class5_skill1_ad] tinyint DEFAULT ((0)) NOT NULL,
  [class5_skill1_as] tinyint DEFAULT ((0)) NOT NULL,
  [class5_timeslot] int DEFAULT ((0)) NOT NULL,
  [class5_limitdate] datetime DEFAULT (getdate()) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userAbilityDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userAccessoryDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userAccessoryDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userAccessoryDB]
GO

CREATE TABLE [dbo].[userAccessoryDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [AccountIDX] int  NOT NULL,
  [ItemCode] int DEFAULT ((0)) NOT NULL,
  [PeriodType] tinyint DEFAULT ((0)) NOT NULL,
  [PeriodDate] datetime DEFAULT ('1999-01-01') NOT NULL,
  [StatValue] int DEFAULT ((0)) NOT NULL,
  [ClassType] int DEFAULT ((0)) NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userAccessoryDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userAttendanceDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userAttendanceDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userAttendanceDB]
GO

CREATE TABLE [dbo].[userAttendanceDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [checkDate] datetime  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userAttendanceDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userAttendDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userAttendDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userAttendDB]
GO

CREATE TABLE [dbo].[userAttendDB] (
  [AccountIDX] int  NOT NULL,
  [AttendCount] int  NOT NULL,
  [RewardTable] int  NOT NULL,
  [ConnectDate] datetime  NOT NULL,
  [RegDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[userAttendDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userAwardDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userAwardDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userAwardDB]
GO

CREATE TABLE [dbo].[userAwardDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int DEFAULT ((0)) NOT NULL,
  [award1_type] int DEFAULT ((0)) NOT NULL,
  [award1_number] int DEFAULT ((0)) NOT NULL,
  [award1_point] int DEFAULT ((0)) NOT NULL,
  [award2_type] int DEFAULT ((0)) NOT NULL,
  [award2_number] int DEFAULT ((0)) NOT NULL,
  [award2_point] int DEFAULT ((0)) NOT NULL,
  [award3_type] int DEFAULT ((0)) NOT NULL,
  [award3_number] int DEFAULT ((0)) NOT NULL,
  [award3_point] int DEFAULT ((0)) NOT NULL,
  [award4_type] int DEFAULT ((0)) NOT NULL,
  [award4_number] int DEFAULT ((0)) NOT NULL,
  [award4_point] int DEFAULT ((0)) NOT NULL,
  [award5_type] int DEFAULT ((0)) NOT NULL,
  [award5_number] int DEFAULT ((0)) NOT NULL,
  [award5_point] int DEFAULT ((0)) NOT NULL,
  [award6_type] int DEFAULT ((0)) NOT NULL,
  [award6_number] int DEFAULT ((0)) NOT NULL,
  [award6_point] int DEFAULT ((0)) NOT NULL,
  [award7_type] int DEFAULT ((0)) NOT NULL,
  [award7_number] int DEFAULT ((0)) NOT NULL,
  [award7_point] int DEFAULT ((0)) NOT NULL,
  [award8_type] int DEFAULT ((0)) NOT NULL,
  [award8_number] int DEFAULT ((0)) NOT NULL,
  [award8_point] int DEFAULT ((0)) NOT NULL,
  [award9_type] int DEFAULT ((0)) NOT NULL,
  [award9_number] int DEFAULT ((0)) NOT NULL,
  [award9_point] int DEFAULT ((0)) NOT NULL,
  [award10_type] int DEFAULT ((0)) NOT NULL,
  [award10_number] int DEFAULT ((0)) NOT NULL,
  [award10_point] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userAwardDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userCharacterDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userCharacterDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userCharacterDB]
GO

CREATE TABLE [dbo].[userCharacterDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [ClassType] int DEFAULT ((0)) NOT NULL,
  [CI_type] int DEFAULT ((0)) NOT NULL,
  [CI_gender] int DEFAULT ((0)) NOT NULL,
  [CI_beard] int DEFAULT ((0)) NOT NULL,
  [CI_face] int DEFAULT ((0)) NOT NULL,
  [CI_hair] int DEFAULT ((0)) NOT NULL,
  [CI_skinColor] int DEFAULT ((0)) NOT NULL,
  [CI_hairColor] int DEFAULT ((0)) NOT NULL,
  [CI_trinket] int DEFAULT ((0)) NOT NULL,
  [CI_position] int DEFAULT ((-1)) NOT NULL,
  [CI_underwear] int DEFAULT ((0)) NOT NULL,
  [EI1_type] int DEFAULT ((0)) NOT NULL,
  [EI2_type] int DEFAULT ((0)) NOT NULL,
  [EI3_type] int DEFAULT ((0)) NOT NULL,
  [EI4_type] int DEFAULT ((0)) NOT NULL,
  [limitTime] int DEFAULT ((0)) NOT NULL,
  [limitType] int DEFAULT ((0)) NOT NULL,
  [leaderType] smallint DEFAULT ((0)) NOT NULL,
  [rentalType] smallint DEFAULT ((0)) NOT NULL,
  [rentalTime] int DEFAULT ((0)) NOT NULL,
  [awakeType] tinyint DEFAULT ((0)) NOT NULL,
  [awakeTime] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userCharacterDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userClassDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userClassDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userClassDB]
GO

CREATE TABLE [dbo].[userClassDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [class1_type] int DEFAULT ((0)) NOT NULL,
  [class1_level] int DEFAULT ((0)) NOT NULL,
  [class1_expert] int DEFAULT ((0)) NOT NULL,
  [class1_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class2_type] int DEFAULT ((0)) NOT NULL,
  [class2_level] int DEFAULT ((0)) NOT NULL,
  [class2_expert] int DEFAULT ((0)) NOT NULL,
  [class2_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class3_type] int DEFAULT ((0)) NOT NULL,
  [class3_level] int DEFAULT ((0)) NOT NULL,
  [class3_expert] int DEFAULT ((0)) NOT NULL,
  [class3_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class4_type] int DEFAULT ((0)) NOT NULL,
  [class4_level] int DEFAULT ((0)) NOT NULL,
  [class4_expert] int DEFAULT ((0)) NOT NULL,
  [class4_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class5_type] int DEFAULT ((0)) NOT NULL,
  [class5_level] int DEFAULT ((0)) NOT NULL,
  [class5_expert] int DEFAULT ((0)) NOT NULL,
  [class5_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class6_type] int DEFAULT ((0)) NOT NULL,
  [class6_level] int DEFAULT ((0)) NOT NULL,
  [class6_expert] int DEFAULT ((0)) NOT NULL,
  [class6_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class7_type] int DEFAULT ((0)) NOT NULL,
  [class7_level] int DEFAULT ((0)) NOT NULL,
  [class7_expert] int DEFAULT ((0)) NOT NULL,
  [class7_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class8_type] int DEFAULT ((0)) NOT NULL,
  [class8_level] int DEFAULT ((0)) NOT NULL,
  [class8_expert] int DEFAULT ((0)) NOT NULL,
  [class8_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class9_type] int DEFAULT ((0)) NOT NULL,
  [class9_level] int DEFAULT ((0)) NOT NULL,
  [class9_expert] int DEFAULT ((0)) NOT NULL,
  [class9_stat] tinyint DEFAULT ((0)) NOT NULL,
  [class10_type] int DEFAULT ((0)) NOT NULL,
  [class10_level] int DEFAULT ((0)) NOT NULL,
  [class10_expert] int DEFAULT ((0)) NOT NULL,
  [class10_stat] tinyint DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[userClassDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userCloverDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userCloverDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userCloverDB]
GO

CREATE TABLE [dbo].[userCloverDB] (
  [accountIDX] int  NOT NULL,
  [CloverCnt] int DEFAULT ((0)) NOT NULL,
  [LastChargeDate] int DEFAULT ((0)) NOT NULL,
  [RemainTime] smallint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userCloverDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userCoinDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userCoinDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userCoinDB]
GO

CREATE TABLE [dbo].[userCoinDB] (
  [AccountIDX] int  NOT NULL,
  [UpdateDate] datetime  NOT NULL,
  [CoinType] tinyint DEFAULT ((0)) NOT NULL,
  [RegDate] datetime DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[userCoinDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userConfigDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userConfigDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userConfigDB]
GO

CREATE TABLE [dbo].[userConfigDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [keyvalue] varchar(200) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userConfigDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userCooperationDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userCooperationDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userCooperationDB]
GO

CREATE TABLE [dbo].[userCooperationDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [userID] varchar(12) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [cpIDX] bigint DEFAULT ((0)) NULL,
  [cpID] varchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [cpType] int  NOT NULL,
  [note] varchar(100) COLLATE Korean_Wansung_CI_AS  NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userCooperationDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userCostumeDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userCostumeDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userCostumeDB]
GO

CREATE TABLE [dbo].[userCostumeDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [itemCode] int DEFAULT ((0)) NOT NULL,
  [mcustom] int DEFAULT ((0)) NOT NULL,
  [fcustom] int DEFAULT ((0)) NOT NULL,
  [periodType] tinyint DEFAULT ((0)) NOT NULL,
  [periodDate] datetime DEFAULT ((0)) NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userCostumeDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userEventBingo_Number
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userEventBingo_Number]') AND type IN ('U'))
	DROP TABLE [dbo].[userEventBingo_Number]
GO

CREATE TABLE [dbo].[userEventBingo_Number] (
  [accountIDX] int  NOT NULL,
  [number1] tinyint DEFAULT ((0)) NOT NULL,
  [number2] tinyint DEFAULT ((0)) NOT NULL,
  [number3] tinyint DEFAULT ((0)) NOT NULL,
  [number4] tinyint DEFAULT ((0)) NOT NULL,
  [number5] tinyint DEFAULT ((0)) NOT NULL,
  [number6] tinyint DEFAULT ((0)) NOT NULL,
  [number7] tinyint DEFAULT ((0)) NOT NULL,
  [number8] tinyint DEFAULT ((0)) NOT NULL,
  [number9] tinyint DEFAULT ((0)) NOT NULL,
  [number10] tinyint DEFAULT ((0)) NOT NULL,
  [number11] tinyint DEFAULT ((0)) NOT NULL,
  [number12] tinyint DEFAULT ((0)) NOT NULL,
  [number13] tinyint DEFAULT ((0)) NOT NULL,
  [number14] tinyint DEFAULT ((0)) NOT NULL,
  [number15] tinyint DEFAULT ((0)) NOT NULL,
  [number16] tinyint DEFAULT ((0)) NOT NULL,
  [number17] tinyint DEFAULT ((0)) NOT NULL,
  [number18] tinyint DEFAULT ((0)) NOT NULL,
  [number19] tinyint DEFAULT ((0)) NOT NULL,
  [number20] tinyint DEFAULT ((0)) NOT NULL,
  [number21] tinyint DEFAULT ((0)) NOT NULL,
  [number22] tinyint DEFAULT ((0)) NOT NULL,
  [number23] tinyint DEFAULT ((0)) NOT NULL,
  [number24] tinyint DEFAULT ((0)) NOT NULL,
  [number25] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userEventBingo_Number] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userEventBingo_Present
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userEventBingo_Present]') AND type IN ('U'))
	DROP TABLE [dbo].[userEventBingo_Present]
GO

CREATE TABLE [dbo].[userEventBingo_Present] (
  [accountIDX] int  NOT NULL,
  [item1] tinyint DEFAULT ((0)) NOT NULL,
  [item2] tinyint DEFAULT ((0)) NOT NULL,
  [item3] tinyint DEFAULT ((0)) NOT NULL,
  [item4] tinyint DEFAULT ((0)) NOT NULL,
  [item5] tinyint DEFAULT ((0)) NOT NULL,
  [item6] tinyint DEFAULT ((0)) NOT NULL,
  [item7] tinyint DEFAULT ((0)) NOT NULL,
  [item8] tinyint DEFAULT ((0)) NOT NULL,
  [item9] tinyint DEFAULT ((0)) NOT NULL,
  [item10] tinyint DEFAULT ((0)) NOT NULL,
  [item11] tinyint DEFAULT ((0)) NOT NULL,
  [item12] tinyint DEFAULT ((0)) NOT NULL,
  [item13] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userEventBingo_Present] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userEventDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userEventDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userEventDB]
GO

CREATE TABLE [dbo].[userEventDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [value1] int DEFAULT ((0)) NOT NULL,
  [value2] int DEFAULT ((0)) NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userEventDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userEventPirateRoulette_Number
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userEventPirateRoulette_Number]') AND type IN ('U'))
	DROP TABLE [dbo].[userEventPirateRoulette_Number]
GO

CREATE TABLE [dbo].[userEventPirateRoulette_Number] (
  [accountidx] int  NOT NULL,
  [HP] int  NOT NULL,
  [slot1] tinyint DEFAULT ((0)) NOT NULL,
  [slot2] tinyint DEFAULT ((0)) NOT NULL,
  [slot3] tinyint DEFAULT ((0)) NOT NULL,
  [slot4] tinyint DEFAULT ((0)) NOT NULL,
  [slot5] tinyint DEFAULT ((0)) NOT NULL,
  [slot6] tinyint DEFAULT ((0)) NOT NULL,
  [slot7] tinyint DEFAULT ((0)) NOT NULL,
  [slot8] tinyint DEFAULT ((0)) NOT NULL,
  [slot9] tinyint DEFAULT ((0)) NOT NULL,
  [slot10] tinyint DEFAULT ((0)) NOT NULL,
  [slot11] tinyint DEFAULT ((0)) NOT NULL,
  [slot12] tinyint DEFAULT ((0)) NOT NULL,
  [slot13] tinyint DEFAULT ((0)) NOT NULL,
  [slot14] tinyint DEFAULT ((0)) NOT NULL,
  [slot15] tinyint DEFAULT ((0)) NOT NULL,
  [slot16] tinyint DEFAULT ((0)) NOT NULL,
  [slot17] tinyint DEFAULT ((0)) NOT NULL,
  [slot18] tinyint DEFAULT ((0)) NOT NULL,
  [slot19] tinyint DEFAULT ((0)) NOT NULL,
  [slot20] tinyint DEFAULT ((0)) NOT NULL,
  [slot21] tinyint DEFAULT ((0)) NOT NULL,
  [slot22] tinyint DEFAULT ((0)) NOT NULL,
  [slot23] tinyint DEFAULT ((0)) NOT NULL,
  [slot24] tinyint DEFAULT ((0)) NOT NULL,
  [slot25] tinyint DEFAULT ((0)) NOT NULL,
  [slot26] tinyint DEFAULT ((0)) NOT NULL,
  [slot27] tinyint DEFAULT ((0)) NOT NULL,
  [slot28] tinyint DEFAULT ((0)) NOT NULL,
  [slot29] tinyint DEFAULT ((0)) NOT NULL,
  [slot30] tinyint DEFAULT ((0)) NOT NULL,
  [slot31] tinyint DEFAULT ((0)) NOT NULL,
  [slot32] tinyint DEFAULT ((0)) NOT NULL,
  [slot33] tinyint DEFAULT ((0)) NOT NULL,
  [slot34] tinyint DEFAULT ((0)) NOT NULL,
  [slot35] tinyint DEFAULT ((0)) NOT NULL,
  [slot36] tinyint DEFAULT ((0)) NOT NULL,
  [slot37] tinyint DEFAULT ((0)) NOT NULL,
  [slot38] tinyint DEFAULT ((0)) NOT NULL,
  [slot39] tinyint DEFAULT ((0)) NOT NULL,
  [slot40] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[userEventPirateRoulette_Number] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userEventPirateRoulette_Present
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userEventPirateRoulette_Present]') AND type IN ('U'))
	DROP TABLE [dbo].[userEventPirateRoulette_Present]
GO

CREATE TABLE [dbo].[userEventPirateRoulette_Present] (
  [accountidx] int  NOT NULL,
  [reward1] tinyint DEFAULT ((0)) NOT NULL,
  [reward2] tinyint DEFAULT ((0)) NOT NULL,
  [reward3] tinyint DEFAULT ((0)) NOT NULL,
  [reward4] tinyint DEFAULT ((0)) NOT NULL,
  [reward5] tinyint DEFAULT ((0)) NOT NULL,
  [reward6] tinyint DEFAULT ((0)) NOT NULL,
  [reward7] tinyint DEFAULT ((0)) NOT NULL,
  [reward8] tinyint DEFAULT ((0)) NOT NULL,
  [reward9] tinyint DEFAULT ((0)) NOT NULL,
  [reward10] tinyint DEFAULT ((0)) NOT NULL,
  [reward11] tinyint DEFAULT ((0)) NOT NULL,
  [reward12] tinyint DEFAULT ((0)) NOT NULL,
  [reward13] tinyint DEFAULT ((0)) NOT NULL,
  [reward14] tinyint DEFAULT ((0)) NOT NULL,
  [reward15] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[userEventPirateRoulette_Present] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userFishDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userFishDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userFishDB]
GO

CREATE TABLE [dbo].[userFishDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [fish1_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish1_an] int DEFAULT ((0)) NOT NULL,
  [fish2_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish2_an] int DEFAULT ((0)) NOT NULL,
  [fish3_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish3_an] int DEFAULT ((0)) NOT NULL,
  [fish4_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish4_an] int DEFAULT ((0)) NOT NULL,
  [fish5_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish5_an] int DEFAULT ((0)) NOT NULL,
  [fish6_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish6_an] int DEFAULT ((0)) NOT NULL,
  [fish7_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish7_an] int DEFAULT ((0)) NOT NULL,
  [fish8_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish8_an] int DEFAULT ((0)) NOT NULL,
  [fish9_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish9_an] int DEFAULT ((0)) NOT NULL,
  [fish10_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish10_an] int DEFAULT ((0)) NOT NULL,
  [fish11_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish11_an] int DEFAULT ((0)) NOT NULL,
  [fish12_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish12_an] int DEFAULT ((0)) NOT NULL,
  [fish13_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish13_an] int DEFAULT ((0)) NOT NULL,
  [fish14_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish14_an] int DEFAULT ((0)) NOT NULL,
  [fish15_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish15_an] int DEFAULT ((0)) NOT NULL,
  [fish16_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish16_an] int DEFAULT ((0)) NOT NULL,
  [fish17_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish17_an] int DEFAULT ((0)) NOT NULL,
  [fish18_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish18_an] int DEFAULT ((0)) NOT NULL,
  [fish19_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish19_an] int DEFAULT ((0)) NOT NULL,
  [fish20_type] tinyint DEFAULT ((0)) NOT NULL,
  [fish20_an] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userFishDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userFriendBestDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userFriendBestDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userFriendBestDB]
GO

CREATE TABLE [dbo].[userFriendBestDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [friendIDX] int  NOT NULL,
  [flag] int DEFAULT ((0)) NOT NULL,
  [flagTime] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userFriendBestDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userFriendDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userFriendDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userFriendDB]
GO

CREATE TABLE [dbo].[userFriendDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [userAccIDX] int  NOT NULL,
  [friendAccIDX] int  NOT NULL,
  [sendCloverCnt] int DEFAULT ((0)) NOT NULL,
  [sendCloverDate] int DEFAULT ((0)) NOT NULL,
  [receiveCloverCnt] int DEFAULT ((0)) NOT NULL,
  [receiveCloverDate] int DEFAULT ((0)) NOT NULL,
  [receiveBCloverCnt] int DEFAULT ((0)) NOT NULL,
  [flag] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userFriendDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userGameDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userGameDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userGameDB]
GO

CREATE TABLE [dbo].[userGameDB] (
  [accountIDX] int  NOT NULL,
  [userState] int DEFAULT ((0)) NOT NULL,
  [gameMoney] bigint DEFAULT ((0)) NOT NULL,
  [playTime] int DEFAULT ((0)) NOT NULL,
  [conn_count] int DEFAULT ((0)) NOT NULL,
  [userLevel] int DEFAULT ((0)) NOT NULL,
  [userEXP] int DEFAULT ((0)) NOT NULL,
  [userFishingLevel] int DEFAULT ((0)) NOT NULL,
  [userFishingEXP] int DEFAULT ((0)) NOT NULL,
  [userExcavationLevel] int DEFAULT ((0)) NOT NULL,
  [userExcavationEXP] int DEFAULT ((0)) NOT NULL,
  [userHerocEXP] int DEFAULT ((0)) NOT NULL,
  [userHerosEXP] int DEFAULT ((0)) NOT NULL,
  [rencpoint] int DEFAULT ((0)) NOT NULL,
  [renspoint] int DEFAULT ((0)) NOT NULL,
  [relateLevel] int DEFAULT ((0)) NOT NULL,
  [regionType] int DEFAULT ((0)) NOT NULL,
  [refillData] int DEFAULT ((0)) NOT NULL,
  [connDate] datetime DEFAULT (getdate()) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userGameDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userGuildAttendDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userGuildAttendDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userGuildAttendDB]
GO

CREATE TABLE [dbo].[userGuildAttendDB] (
  [InitDate] datetime  NOT NULL,
  [AccountIDX] int  NOT NULL,
  [GuildIDX] int  NOT NULL,
  [RegDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[userGuildAttendDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userGuildDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userGuildDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userGuildDB]
GO

CREATE TABLE [dbo].[userGuildDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [guildName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [aboutguild] varchar(110) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [guildmark] int  NOT NULL,
  [ranking] int DEFAULT ((0)) NOT NULL,
  [point] int DEFAULT ((0)) NOT NULL,
  [todaypoint] int DEFAULT ((0)) NOT NULL,
  [guildLevel] int DEFAULT ((0)) NOT NULL,
  [maxcount] int DEFAULT ((0)) NOT NULL,
  [membercount] int DEFAULT ((0)) NOT NULL,
  [today_vc] int DEFAULT ((0)) NOT NULL,
  [total_vc] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userGuildDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userGuildHQDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userGuildHQDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userGuildHQDB]
GO

CREATE TABLE [dbo].[userGuildHQDB] (
  [GuildIDX] int  NOT NULL,
  [ItemSerial] bigint  IDENTITY(1,1) NOT NULL,
  [ItemCode] int  NOT NULL,
  [ItemXZ] int DEFAULT ((0)) NOT NULL,
  [ItemY] int DEFAULT ((0)) NOT NULL,
  [ItemRotate] tinyint DEFAULT ((0)) NOT NULL,
  [ItemDecoScore] int DEFAULT ((0)) NOT NULL,
  [ItemStatus] tinyint DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[userGuildHQDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userGuildHQVerDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userGuildHQVerDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userGuildHQVerDB]
GO

CREATE TABLE [dbo].[userGuildHQVerDB] (
  [GuildIDX] int  NOT NULL,
  [VerStatus] bigint DEFAULT ((0)) NOT NULL,
  [UptDate] datetime DEFAULT ((0)) NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userGuildHQVerDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userGuildInfoDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userGuildInfoDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userGuildInfoDB]
GO

CREATE TABLE [dbo].[userGuildInfoDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [guildIDX] int  NOT NULL,
  [guildPosition] varchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [guildJoinType] int DEFAULT ((0)) NOT NULL,
  [msg] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL,
  [AttendDate] datetime DEFAULT ((0)) NOT NULL,
  [GuildRankDate] datetime DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[userGuildInfoDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userHqDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userHqDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userHqDB]
GO

CREATE TABLE [dbo].[userHqDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [class1_type] int DEFAULT ((0)) NOT NULL,
  [class1_posx] int DEFAULT ((0)) NOT NULL,
  [class1_posy] int DEFAULT ((0)) NOT NULL,
  [class2_type] int DEFAULT ((0)) NOT NULL,
  [class2_posx] int DEFAULT ((0)) NOT NULL,
  [class2_posy] int DEFAULT ((0)) NOT NULL,
  [class3_type] int DEFAULT ((0)) NOT NULL,
  [class3_posx] int DEFAULT ((0)) NOT NULL,
  [class3_posy] int DEFAULT ((0)) NOT NULL,
  [class4_type] int DEFAULT ((0)) NOT NULL,
  [class4_posx] int DEFAULT ((0)) NOT NULL,
  [class4_posy] int DEFAULT ((0)) NOT NULL,
  [class5_type] int DEFAULT ((0)) NOT NULL,
  [class5_posx] int DEFAULT ((0)) NOT NULL,
  [class5_posy] int DEFAULT ((0)) NOT NULL,
  [class6_type] int DEFAULT ((0)) NOT NULL,
  [class6_posx] int DEFAULT ((0)) NOT NULL,
  [class6_posy] int DEFAULT ((0)) NOT NULL,
  [class7_type] int DEFAULT ((0)) NOT NULL,
  [class7_posx] int DEFAULT ((0)) NOT NULL,
  [class7_posy] int DEFAULT ((0)) NOT NULL,
  [class8_type] int DEFAULT ((0)) NOT NULL,
  [class8_posx] int DEFAULT ((0)) NOT NULL,
  [class8_posy] int DEFAULT ((0)) NOT NULL,
  [class9_type] int DEFAULT ((0)) NOT NULL,
  [class9_posx] int DEFAULT ((0)) NOT NULL,
  [class9_posy] int DEFAULT ((0)) NOT NULL,
  [class10_type] int DEFAULT ((0)) NOT NULL,
  [class10_posx] int DEFAULT ((0)) NOT NULL,
  [class10_posy] int DEFAULT ((0)) NOT NULL,
  [lockType] smallint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userHqDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userItemDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userItemDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userItemDB]
GO

CREATE TABLE [dbo].[userItemDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [item1_type] int DEFAULT ((0)) NOT NULL,
  [item1_code] int DEFAULT ((0)) NOT NULL,
  [item2_type] int DEFAULT ((0)) NOT NULL,
  [item2_code] int DEFAULT ((0)) NOT NULL,
  [item3_type] int DEFAULT ((0)) NOT NULL,
  [item3_code] int DEFAULT ((0)) NOT NULL,
  [item4_type] int DEFAULT ((0)) NOT NULL,
  [item4_code] int DEFAULT ((0)) NOT NULL,
  [item5_type] int DEFAULT ((0)) NOT NULL,
  [item5_code] int DEFAULT ((0)) NOT NULL,
  [item6_type] int DEFAULT ((0)) NOT NULL,
  [item6_code] int DEFAULT ((0)) NOT NULL,
  [item7_type] int DEFAULT ((0)) NOT NULL,
  [item7_code] int DEFAULT ((0)) NOT NULL,
  [item8_type] int DEFAULT ((0)) NOT NULL,
  [item8_code] int DEFAULT ((0)) NOT NULL,
  [item9_type] int DEFAULT ((0)) NOT NULL,
  [item9_code] int DEFAULT ((0)) NOT NULL,
  [item10_type] int DEFAULT ((0)) NOT NULL,
  [item10_code] int DEFAULT ((0)) NOT NULL,
  [item11_type] int DEFAULT ((0)) NOT NULL,
  [item11_code] int DEFAULT ((0)) NOT NULL,
  [item12_type] int DEFAULT ((0)) NOT NULL,
  [item12_code] int DEFAULT ((0)) NOT NULL,
  [item13_type] int DEFAULT ((0)) NOT NULL,
  [item13_code] int DEFAULT ((0)) NOT NULL,
  [item14_type] int DEFAULT ((0)) NOT NULL,
  [item14_code] int DEFAULT ((0)) NOT NULL,
  [item15_type] int DEFAULT ((0)) NOT NULL,
  [item15_code] int DEFAULT ((0)) NOT NULL,
  [item16_type] int DEFAULT ((0)) NOT NULL,
  [item16_code] int DEFAULT ((0)) NOT NULL,
  [item17_type] int DEFAULT ((0)) NOT NULL,
  [item17_code] int DEFAULT ((0)) NOT NULL,
  [item18_type] int DEFAULT ((0)) NOT NULL,
  [item18_code] int DEFAULT ((0)) NOT NULL,
  [item19_type] int DEFAULT ((0)) NOT NULL,
  [item19_code] int DEFAULT ((0)) NOT NULL,
  [item20_type] int DEFAULT ((0)) NOT NULL,
  [item20_code] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[userItemDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userItemDB_Temp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userItemDB_Temp]') AND type IN ('U'))
	DROP TABLE [dbo].[userItemDB_Temp]
GO

CREATE TABLE [dbo].[userItemDB_Temp] (
  [idx] int  NULL,
  [accountIDX] int  NULL,
  [item1_type] int  NULL,
  [item1_code] int  NULL,
  [item2_type] int  NULL,
  [item2_code] int  NULL,
  [item3_type] int  NULL,
  [item3_code] int  NULL,
  [item4_type] int  NULL,
  [item4_code] int  NULL,
  [item5_type] int  NULL,
  [item5_code] int  NULL,
  [item6_type] int  NULL,
  [item6_code] int  NULL,
  [item7_type] int  NULL,
  [item7_code] int  NULL,
  [item8_type] int  NULL,
  [item8_code] int  NULL,
  [item9_type] int  NULL,
  [item9_code] int  NULL,
  [item10_type] int  NULL,
  [item10_code] int  NULL,
  [item11_type] int  NULL,
  [item11_code] int  NULL,
  [item12_type] int  NULL,
  [item12_code] int  NULL,
  [item13_type] int  NULL,
  [item13_code] int  NULL,
  [item14_type] int  NULL,
  [item14_code] int  NULL,
  [item15_type] int  NULL,
  [item15_code] int  NULL,
  [item16_type] int  NULL,
  [item16_code] int  NULL,
  [item17_type] int  NULL,
  [item17_code] int  NULL,
  [item18_type] int  NULL,
  [item18_code] int  NULL,
  [item19_type] int  NULL,
  [item19_code] int  NULL,
  [item20_type] int  NULL,
  [item20_code] int  NULL
)
GO

ALTER TABLE [dbo].[userItemDB_Temp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userItemEtcDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userItemEtcDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userItemEtcDB]
GO

CREATE TABLE [dbo].[userItemEtcDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [item1_type] int DEFAULT ((0)) NOT NULL,
  [item1_value1] int DEFAULT ((0)) NOT NULL,
  [item1_value2] int DEFAULT ((0)) NOT NULL,
  [item2_type] int DEFAULT ((0)) NOT NULL,
  [item2_value1] int DEFAULT ((0)) NOT NULL,
  [item2_value2] int DEFAULT ((0)) NOT NULL,
  [item3_type] int DEFAULT ((0)) NOT NULL,
  [item3_value1] int DEFAULT ((0)) NOT NULL,
  [item3_value2] int DEFAULT ((0)) NOT NULL,
  [item4_type] int DEFAULT ((0)) NOT NULL,
  [item4_value1] int DEFAULT ((0)) NOT NULL,
  [item4_value2] int DEFAULT ((0)) NOT NULL,
  [item5_type] int DEFAULT ((0)) NOT NULL,
  [item5_value1] int DEFAULT ((0)) NOT NULL,
  [item5_value2] int DEFAULT ((0)) NOT NULL,
  [item6_type] int DEFAULT ((0)) NOT NULL,
  [item6_value1] int DEFAULT ((0)) NOT NULL,
  [item6_value2] int DEFAULT ((0)) NOT NULL,
  [item7_type] int DEFAULT ((0)) NOT NULL,
  [item7_value1] int DEFAULT ((0)) NOT NULL,
  [item7_value2] int DEFAULT ((0)) NOT NULL,
  [item8_type] int DEFAULT ((0)) NOT NULL,
  [item8_value1] int DEFAULT ((0)) NOT NULL,
  [item8_value2] int DEFAULT ((0)) NOT NULL,
  [item9_type] int DEFAULT ((0)) NOT NULL,
  [item9_value1] int DEFAULT ((0)) NOT NULL,
  [item9_value2] int DEFAULT ((0)) NOT NULL,
  [item10_type] int DEFAULT ((0)) NOT NULL,
  [item10_value1] int DEFAULT ((0)) NOT NULL,
  [item10_value2] int DEFAULT ((0)) NOT NULL,
  [item11_type] int DEFAULT ((0)) NOT NULL,
  [item11_value1] int DEFAULT ((0)) NOT NULL,
  [item11_value2] int DEFAULT ((0)) NOT NULL,
  [item12_type] int DEFAULT ((0)) NOT NULL,
  [item12_value1] int DEFAULT ((0)) NOT NULL,
  [item12_value2] int DEFAULT ((0)) NOT NULL,
  [item13_type] int DEFAULT ((0)) NOT NULL,
  [item13_value1] int DEFAULT ((0)) NOT NULL,
  [item13_value2] int DEFAULT ((0)) NOT NULL,
  [item14_type] int DEFAULT ((0)) NOT NULL,
  [item14_value1] int DEFAULT ((0)) NOT NULL,
  [item14_value2] int DEFAULT ((0)) NOT NULL,
  [item15_type] int DEFAULT ((0)) NOT NULL,
  [item15_value1] int DEFAULT ((0)) NOT NULL,
  [item15_value2] int DEFAULT ((0)) NOT NULL,
  [item16_type] int DEFAULT ((0)) NOT NULL,
  [item16_value1] int DEFAULT ((0)) NOT NULL,
  [item16_value2] int DEFAULT ((0)) NOT NULL,
  [item17_type] int DEFAULT ((0)) NOT NULL,
  [item17_value1] int DEFAULT ((0)) NOT NULL,
  [item17_value2] int DEFAULT ((0)) NOT NULL,
  [item18_type] int DEFAULT ((0)) NOT NULL,
  [item18_value1] int DEFAULT ((0)) NOT NULL,
  [item18_value2] int DEFAULT ((0)) NOT NULL,
  [item19_type] int DEFAULT ((0)) NOT NULL,
  [item19_value1] int DEFAULT ((0)) NOT NULL,
  [item19_value2] int DEFAULT ((0)) NOT NULL,
  [item20_type] int DEFAULT ((0)) NOT NULL,
  [item20_value1] int DEFAULT ((0)) NOT NULL,
  [item20_value2] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[userItemEtcDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userItemExtraDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userItemExtraDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userItemExtraDB]
GO

CREATE TABLE [dbo].[userItemExtraDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [item1_type] int DEFAULT ((0)) NOT NULL,
  [item1_reinforce] int DEFAULT ((0)) NOT NULL,
  [item1_slotindex] int DEFAULT ((0)) NOT NULL,
  [item1_tradetype] int DEFAULT ((0)) NOT NULL,
  [item1_mcustom] int DEFAULT ((0)) NOT NULL,
  [item1_fcustom] int DEFAULT ((0)) NOT NULL,
  [item1_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item1_limitType] int DEFAULT ((0)) NOT NULL,
  [item1_limitDate] datetime  NOT NULL,
  [item2_type] int DEFAULT ((0)) NOT NULL,
  [item2_reinforce] int DEFAULT ((0)) NOT NULL,
  [item2_slotindex] int DEFAULT ((0)) NOT NULL,
  [item2_tradetype] int DEFAULT ((0)) NOT NULL,
  [item2_mcustom] int DEFAULT ((0)) NOT NULL,
  [item2_fcustom] int DEFAULT ((0)) NOT NULL,
  [item2_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item2_limitType] int DEFAULT ((0)) NOT NULL,
  [item2_limitDate] datetime  NOT NULL,
  [item3_type] int DEFAULT ((0)) NOT NULL,
  [item3_reinforce] int DEFAULT ((0)) NOT NULL,
  [item3_slotindex] int DEFAULT ((0)) NOT NULL,
  [item3_tradetype] int DEFAULT ((0)) NOT NULL,
  [item3_mcustom] int DEFAULT ((0)) NOT NULL,
  [item3_fcustom] int DEFAULT ((0)) NOT NULL,
  [item3_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item3_limitType] int DEFAULT ((0)) NOT NULL,
  [item3_limitDate] datetime  NOT NULL,
  [item4_type] int DEFAULT ((0)) NOT NULL,
  [item4_reinforce] int DEFAULT ((0)) NOT NULL,
  [item4_slotindex] int DEFAULT ((0)) NOT NULL,
  [item4_tradetype] int DEFAULT ((0)) NOT NULL,
  [item4_mcustom] int DEFAULT ((0)) NOT NULL,
  [item4_fcustom] int DEFAULT ((0)) NOT NULL,
  [item4_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item4_limitType] int DEFAULT ((0)) NOT NULL,
  [item4_limitDate] datetime  NOT NULL,
  [item5_type] int DEFAULT ((0)) NOT NULL,
  [item5_reinforce] int DEFAULT ((0)) NOT NULL,
  [item5_slotindex] int DEFAULT ((0)) NOT NULL,
  [item5_tradetype] int DEFAULT ((0)) NOT NULL,
  [item5_mcustom] int DEFAULT ((0)) NOT NULL,
  [item5_fcustom] int DEFAULT ((0)) NOT NULL,
  [item5_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item5_limitType] int DEFAULT ((0)) NOT NULL,
  [item5_limitDate] datetime  NOT NULL,
  [item6_type] int DEFAULT ((0)) NOT NULL,
  [item6_reinforce] int DEFAULT ((0)) NOT NULL,
  [item6_slotindex] int DEFAULT ((0)) NOT NULL,
  [item6_tradetype] int DEFAULT ((0)) NOT NULL,
  [item6_mcustom] int DEFAULT ((0)) NOT NULL,
  [item6_fcustom] int DEFAULT ((0)) NOT NULL,
  [item6_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item6_limitType] int DEFAULT ((0)) NOT NULL,
  [item6_limitDate] datetime  NOT NULL,
  [item7_type] int DEFAULT ((0)) NOT NULL,
  [item7_reinforce] int DEFAULT ((0)) NOT NULL,
  [item7_slotindex] int DEFAULT ((0)) NOT NULL,
  [item7_tradetype] int DEFAULT ((0)) NOT NULL,
  [item7_mcustom] int DEFAULT ((0)) NOT NULL,
  [item7_fcustom] int DEFAULT ((0)) NOT NULL,
  [item7_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item7_limitType] int DEFAULT ((0)) NOT NULL,
  [item7_limitDate] datetime  NOT NULL,
  [item8_type] int DEFAULT ((0)) NOT NULL,
  [item8_reinforce] int DEFAULT ((0)) NOT NULL,
  [item8_slotindex] int DEFAULT ((0)) NOT NULL,
  [item8_tradetype] int DEFAULT ((0)) NOT NULL,
  [item8_mcustom] int DEFAULT ((0)) NOT NULL,
  [item8_fcustom] int DEFAULT ((0)) NOT NULL,
  [item8_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item8_limitType] int DEFAULT ((0)) NOT NULL,
  [item8_limitDate] datetime  NOT NULL,
  [item9_type] int DEFAULT ((0)) NOT NULL,
  [item9_reinforce] int DEFAULT ((0)) NOT NULL,
  [item9_slotindex] int DEFAULT ((0)) NOT NULL,
  [item9_tradetype] int DEFAULT ((0)) NOT NULL,
  [item9_mcustom] int DEFAULT ((0)) NOT NULL,
  [item9_fcustom] int DEFAULT ((0)) NOT NULL,
  [item9_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item9_limitType] int DEFAULT ((0)) NOT NULL,
  [item9_limitDate] datetime  NOT NULL,
  [item10_type] int DEFAULT ((0)) NOT NULL,
  [item10_reinforce] int DEFAULT ((0)) NOT NULL,
  [item10_slotindex] int DEFAULT ((0)) NOT NULL,
  [item10_tradetype] int DEFAULT ((0)) NOT NULL,
  [item10_mcustom] int DEFAULT ((0)) NOT NULL,
  [item10_fcustom] int DEFAULT ((0)) NOT NULL,
  [item10_failexp] smallint DEFAULT ((0)) NOT NULL,
  [item10_limitType] int DEFAULT ((0)) NOT NULL,
  [item10_limitDate] datetime  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userItemExtraDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userItemMedalDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userItemMedalDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userItemMedalDB]
GO

CREATE TABLE [dbo].[userItemMedalDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [item1_type] int DEFAULT ((0)) NOT NULL,
  [item1_class] int DEFAULT ((0)) NOT NULL,
  [item1_limitType] int DEFAULT ((0)) NOT NULL,
  [item1_limitDate] datetime  NOT NULL,
  [item2_type] int DEFAULT ((0)) NOT NULL,
  [item2_class] int DEFAULT ((0)) NOT NULL,
  [item2_limitType] int DEFAULT ((0)) NOT NULL,
  [item2_limitDate] datetime  NOT NULL,
  [item3_type] int DEFAULT ((0)) NOT NULL,
  [item3_class] int DEFAULT ((0)) NOT NULL,
  [item3_limitType] int DEFAULT ((0)) NOT NULL,
  [item3_limitDate] datetime  NOT NULL,
  [item4_type] int DEFAULT ((0)) NOT NULL,
  [item4_class] int DEFAULT ((0)) NOT NULL,
  [item4_limitType] int DEFAULT ((0)) NOT NULL,
  [item4_limitDate] datetime  NOT NULL,
  [item5_type] int DEFAULT ((0)) NOT NULL,
  [item5_class] int DEFAULT ((0)) NOT NULL,
  [item5_limitType] int DEFAULT ((0)) NOT NULL,
  [item5_limitDate] datetime  NOT NULL,
  [item6_type] int DEFAULT ((0)) NOT NULL,
  [item6_class] int DEFAULT ((0)) NOT NULL,
  [item6_limitType] int DEFAULT ((0)) NOT NULL,
  [item6_limitDate] datetime  NOT NULL,
  [item7_type] int DEFAULT ((0)) NOT NULL,
  [item7_class] int DEFAULT ((0)) NOT NULL,
  [item7_limitType] int DEFAULT ((0)) NOT NULL,
  [item7_limitDate] datetime  NOT NULL,
  [item8_type] int DEFAULT ((0)) NOT NULL,
  [item8_class] int DEFAULT ((0)) NOT NULL,
  [item8_limitType] int DEFAULT ((0)) NOT NULL,
  [item8_limitDate] datetime  NOT NULL,
  [item9_type] int DEFAULT ((0)) NOT NULL,
  [item9_class] int DEFAULT ((0)) NOT NULL,
  [item9_limitType] int DEFAULT ((0)) NOT NULL,
  [item9_limitDate] datetime  NOT NULL,
  [item10_type] int DEFAULT ((0)) NOT NULL,
  [item10_class] int DEFAULT ((0)) NOT NULL,
  [item10_limitType] int DEFAULT ((0)) NOT NULL,
  [item10_limitDate] datetime  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userItemMedalDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userItemMedalExtendDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userItemMedalExtendDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userItemMedalExtendDB]
GO

CREATE TABLE [dbo].[userItemMedalExtendDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [medal1_class] int DEFAULT ((0)) NOT NULL,
  [medal1_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal1_period] int DEFAULT ((0)) NOT NULL,
  [medal2_class] int DEFAULT ((0)) NOT NULL,
  [medal2_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal2_period] int DEFAULT ((0)) NOT NULL,
  [medal3_class] int DEFAULT ((0)) NOT NULL,
  [medal3_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal3_period] int DEFAULT ((0)) NOT NULL,
  [medal4_class] int DEFAULT ((0)) NOT NULL,
  [medal4_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal4_period] int DEFAULT ((0)) NOT NULL,
  [medal5_class] int DEFAULT ((0)) NOT NULL,
  [medal5_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal5_period] int DEFAULT ((0)) NOT NULL,
  [medal6_class] int DEFAULT ((0)) NOT NULL,
  [medal6_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal6_period] int DEFAULT ((0)) NOT NULL,
  [medal7_class] int DEFAULT ((0)) NOT NULL,
  [medal7_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal7_period] int DEFAULT ((0)) NOT NULL,
  [medal8_class] int DEFAULT ((0)) NOT NULL,
  [medal8_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal8_period] int DEFAULT ((0)) NOT NULL,
  [medal9_class] int DEFAULT ((0)) NOT NULL,
  [medal9_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal9_period] int DEFAULT ((0)) NOT NULL,
  [medal10_class] int DEFAULT ((0)) NOT NULL,
  [medal10_slot] tinyint DEFAULT ((0)) NOT NULL,
  [medal10_period] int DEFAULT ((0)) NOT NULL,
  [regDate] nchar(10) COLLATE Korean_Wansung_CI_AS DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userItemMedalExtendDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueAuthDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueAuthDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueAuthDB]
GO

CREATE TABLE [dbo].[userLeagueAuthDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [leagueIDX] int  NOT NULL,
  [accountIDX] int  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueAuthDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueCheerDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueCheerDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueCheerDB]
GO

CREATE TABLE [dbo].[userLeagueCheerDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [leagueIDX] int  NOT NULL,
  [teamIDX] int  NOT NULL,
  [regDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueCheerDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueInfoDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueInfoDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueInfoDB]
GO

CREATE TABLE [dbo].[userLeagueInfoDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [leagueIDX] int DEFAULT ((0)) NOT NULL,
  [leagueName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [maxRound] smallint  NOT NULL,
  [bannerA] int DEFAULT ((0)) NOT NULL,
  [bannerB] int DEFAULT ((0)) NOT NULL,
  [modeType] int DEFAULT ((0)) NOT NULL,
  [maxcount] tinyint DEFAULT ((0)) NOT NULL,
  [autoType] tinyint DEFAULT ((0)) NOT NULL,
  [announce] nvarchar(512) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [recruitDate] int DEFAULT ((0)) NOT NULL,
  [waitDate] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueInfoDB] SET (LOCK_ESCALATION = TABLE)
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
-- Table structure for userLeagueRewardCheerDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueRewardCheerDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueRewardCheerDB]
GO

CREATE TABLE [dbo].[userLeagueRewardCheerDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [rewardPeso] int  NOT NULL,
  [startDate] int  NOT NULL,
  [flag] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueRewardCheerDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueRewardDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueRewardDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueRewardDB]
GO

CREATE TABLE [dbo].[userLeagueRewardDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [startDate] int  NOT NULL,
  [currentRound] tinyint DEFAULT ((0)) NOT NULL,
  [userFactionType] int DEFAULT ((0)) NOT NULL,
  [winnerFactionType] int DEFAULT ((0)) NOT NULL,
  [rewardPeso] int DEFAULT ((0)) NOT NULL,
  [factionRank] int DEFAULT ((0)) NOT NULL,
  [factionPoint] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueRewardDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueRewardUserDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueRewardUserDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueRewardUserDB]
GO

CREATE TABLE [dbo].[userLeagueRewardUserDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [leagueIDX] int DEFAULT ((0)) NOT NULL,
  [sendNickname] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [leagueName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [roundnum] int DEFAULT ((0)) NOT NULL,
  [maxRound] smallint DEFAULT ((0)) NOT NULL,
  [presentCode1] int DEFAULT ((0)) NOT NULL,
  [presentCode2] int DEFAULT ((0)) NOT NULL,
  [presentCode3] int DEFAULT ((0)) NOT NULL,
  [presentCode4] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueRewardUserDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueRoundDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueRoundDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueRoundDB]
GO

CREATE TABLE [dbo].[userLeagueRoundDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [infoIDX] int DEFAULT ((0)) NOT NULL,
  [roundType1_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType1_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType1_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType1_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType1_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType2_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType2_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType2_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType2_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType2_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType3_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType3_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType3_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType3_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType3_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType4_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType4_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType4_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType4_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType4_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType5_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType5_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType5_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType5_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType5_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType6_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType6_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType6_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType6_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType6_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType7_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType7_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType7_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType7_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType7_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType8_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType8_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType8_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType8_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType8_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType9_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType9_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType9_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType9_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType9_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType10_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType10_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType10_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType10_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType10_presentCode4] int DEFAULT ((0)) NOT NULL,
  [roundType11_playDate] int DEFAULT ((0)) NOT NULL,
  [roundType11_presentCode1] int DEFAULT ((0)) NOT NULL,
  [roundType11_presentCode2] int DEFAULT ((0)) NOT NULL,
  [roundType11_presentCode3] int DEFAULT ((0)) NOT NULL,
  [roundType11_presentCode4] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueRoundDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueTeamDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueTeamDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueTeamDB]
GO

CREATE TABLE [dbo].[userLeagueTeamDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [leagueIDX] int  NOT NULL,
  [teamName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [leaderIDX] int  NOT NULL,
  [leagueStartPosition] smallint DEFAULT ((0)) NOT NULL,
  [leaguePosition] smallint DEFAULT ((0)) NOT NULL,
  [maxcount] tinyint DEFAULT ((0)) NOT NULL,
  [cheerPoint] int DEFAULT ((0)) NOT NULL,
  [currentRound] tinyint DEFAULT ((0)) NOT NULL,
  [factionPoint] int DEFAULT ((0)) NOT NULL,
  [factionType] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueTeamDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueTeamMemberDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueTeamMemberDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueTeamMemberDB]
GO

CREATE TABLE [dbo].[userLeagueTeamMemberDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [leagueIDX] int DEFAULT ((0)) NOT NULL,
  [teamIDX] int DEFAULT ((0)) NOT NULL,
  [joinType] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueTeamMemberDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueWinnerHistoryDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueWinnerHistoryDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueWinnerHistoryDB]
GO

CREATE TABLE [dbo].[userLeagueWinnerHistoryDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [leagueTitle] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [startDate] int  NOT NULL,
  [endDate] int  NOT NULL,
  [teamIDX] int  NOT NULL,
  [teamName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [factionName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [factionType] int  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueWinnerHistoryDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLeagueWinnerInfoDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLeagueWinnerInfoDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLeagueWinnerInfoDB]
GO

CREATE TABLE [dbo].[userLeagueWinnerInfoDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [nickName] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userLevel] int  NOT NULL,
  [historyIDX] int DEFAULT ((0)) NOT NULL,
  [teamIDX] int DEFAULT ((0)) NOT NULL,
  [classType] int DEFAULT ((0)) NOT NULL,
  [classGender] int DEFAULT ((0)) NOT NULL,
  [classFace] int DEFAULT ((0)) NOT NULL,
  [classHair] int DEFAULT ((0)) NOT NULL,
  [classSkinColor] int DEFAULT ((0)) NOT NULL,
  [classHairColor] int DEFAULT ((0)) NOT NULL,
  [classUnderwear] int DEFAULT ((0)) NOT NULL,
  [classGear1] int DEFAULT ((0)) NOT NULL,
  [classGear2] int DEFAULT ((0)) NOT NULL,
  [classGear3] int DEFAULT ((0)) NOT NULL,
  [classGear4] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLeagueWinnerInfoDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userLoginDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userLoginDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userLoginDB]
GO

CREATE TABLE [dbo].[userLoginDB] (
  [accountIDX] int  NOT NULL,
  [encodeKey] char(15) COLLATE Korean_Wansung_CI_AS DEFAULT ('111111111111111') NOT NULL,
  [gameServerID] bigint DEFAULT ((0)) NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [connDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userLoginDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userMemberDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userMemberDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userMemberDB]
GO

CREATE TABLE [dbo].[userMemberDB] (
  [accountIDX] int  IDENTITY(1,1) NOT NULL,
  [userID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [nickName] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userPWD] varchar(24) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [email] varchar(50) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [mailling] tinyint  NOT NULL,
  [userType] smallint DEFAULT ((100)) NOT NULL,
  [joinType] smallint DEFAULT ((1)) NOT NULL,
  [eventType] int DEFAULT ((0)) NOT NULL,
  [cpType] smallint DEFAULT ((0)) NOT NULL,
  [limitType] smallint DEFAULT ((0)) NOT NULL,
  [limitDate] datetime DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userMemberDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userMissionDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userMissionDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userMissionDB]
GO

CREATE TABLE [dbo].[userMissionDB] (
  [AccountIDX] int  NOT NULL,
  [MissionType] tinyint  NOT NULL,
  [MissionCode] int  NOT NULL,
  [MissionValue] int  NOT NULL,
  [MissionStatus] tinyint DEFAULT ((1)) NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userMissionDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userMoneyDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userMoneyDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userMoneyDB]
GO

CREATE TABLE [dbo].[userMoneyDB] (
  [accountIDX] int  NOT NULL,
  [realCash] int DEFAULT ((0)) NOT NULL,
  [bonusCash] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userMoneyDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userNameDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userNameDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userNameDB]
GO

CREATE TABLE [dbo].[userNameDB] (
  [accountIDX] int  NOT NULL,
  [userName] varchar(10) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userBirthday] char(6) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userJumin1] char(12) COLLATE Korean_Wansung_CI_AS  NULL,
  [userJumin2] char(14) COLLATE Korean_Wansung_CI_AS  NULL,
  [virtualJumin] varchar(13) COLLATE Korean_Wansung_CI_AS  NULL,
  [ipinCI] varchar(88) COLLATE Korean_Wansung_CI_AS  NULL,
  [ipinDI] varchar(64) COLLATE Korean_Wansung_CI_AS  NULL,
  [userEnCode] varchar(64) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [userNumber] tinyint  NOT NULL,
  [userGender] tinyint  NOT NULL,
  [returnValue] tinyint  NOT NULL,
  [userIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [realType] tinyint DEFAULT ((0)) NOT NULL,
  [certType] char(1) COLLATE Korean_Wansung_CI_AS DEFAULT ('J') NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userNameDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userPersonalHQDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userPersonalHQDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userPersonalHQDB]
GO

CREATE TABLE [dbo].[userPersonalHQDB] (
  [AccountIDX] int  NOT NULL,
  [ItemSerial] bigint  IDENTITY(1,1) NOT NULL,
  [ItemCode] int  NOT NULL,
  [ItemXZ] int DEFAULT ((0)) NOT NULL,
  [ItemY] int DEFAULT ((0)) NOT NULL,
  [ItemRotate] tinyint DEFAULT ((0)) NOT NULL,
  [ItemDecoScore] int DEFAULT ((0)) NOT NULL,
  [ItemStatus] tinyint DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[userPersonalHQDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userPetDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userPetDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userPetDB]
GO

CREATE TABLE [dbo].[userPetDB] (
  [accountIDX] int  NOT NULL,
  [petIDX] int  IDENTITY(1,1) NOT NULL,
  [petCode] int DEFAULT ((0)) NOT NULL,
  [petRank] tinyint DEFAULT ((0)) NOT NULL,
  [petLevel] int DEFAULT ((0)) NOT NULL,
  [petExp] int DEFAULT ((0)) NOT NULL,
  [petEquip] tinyint DEFAULT ((0)) NOT NULL,
  [petStatus] tinyint DEFAULT ((1)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userPetDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userPieceDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userPieceDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userPieceDB]
GO

CREATE TABLE [dbo].[userPieceDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [piece1_type] int DEFAULT ((0)) NOT NULL,
  [piece1_value1] int DEFAULT ((0)) NOT NULL,
  [piece1_value2] int DEFAULT ((0)) NOT NULL,
  [piece1_cnt] int DEFAULT ((0)) NOT NULL,
  [piece2_type] int DEFAULT ((0)) NOT NULL,
  [piece2_value1] int DEFAULT ((0)) NOT NULL,
  [piece2_value2] int DEFAULT ((0)) NOT NULL,
  [piece2_cnt] int DEFAULT ((0)) NOT NULL,
  [piece3_type] int DEFAULT ((0)) NOT NULL,
  [piece3_value1] int DEFAULT ((0)) NOT NULL,
  [piece3_value2] int DEFAULT ((0)) NOT NULL,
  [piece3_cnt] int DEFAULT ((0)) NOT NULL,
  [piece4_type] int DEFAULT ((0)) NOT NULL,
  [piece4_value1] int DEFAULT ((0)) NOT NULL,
  [piece4_value2] int DEFAULT ((0)) NOT NULL,
  [piece4_cnt] int DEFAULT ((0)) NOT NULL,
  [piece5_type] int DEFAULT ((0)) NOT NULL,
  [piece5_value1] int DEFAULT ((0)) NOT NULL,
  [piece5_value2] int DEFAULT ((0)) NOT NULL,
  [piece5_cnt] int DEFAULT ((0)) NOT NULL,
  [piece6_type] int DEFAULT ((0)) NOT NULL,
  [piece6_value1] int DEFAULT ((0)) NOT NULL,
  [piece6_value2] int DEFAULT ((0)) NOT NULL,
  [piece6_cnt] int DEFAULT ((0)) NOT NULL,
  [piece7_type] int DEFAULT ((0)) NOT NULL,
  [piece7_value1] int DEFAULT ((0)) NOT NULL,
  [piece7_value2] int DEFAULT ((0)) NOT NULL,
  [piece7_cnt] int DEFAULT ((0)) NOT NULL,
  [piece8_type] int DEFAULT ((0)) NOT NULL,
  [piece8_value1] int DEFAULT ((0)) NOT NULL,
  [piece8_value2] int DEFAULT ((0)) NOT NULL,
  [piece8_cnt] int DEFAULT ((0)) NOT NULL,
  [piece9_type] int DEFAULT ((0)) NOT NULL,
  [piece9_value1] int DEFAULT ((0)) NOT NULL,
  [piece9_value2] int DEFAULT ((0)) NOT NULL,
  [piece9_cnt] int DEFAULT ((0)) NOT NULL,
  [piece10_type] int DEFAULT ((0)) NOT NULL,
  [piece10_value1] int DEFAULT ((0)) NOT NULL,
  [piece10_value2] int DEFAULT ((0)) NOT NULL,
  [piece10_cnt] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userPieceDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userPopStoreDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userPopStoreDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userPopStoreDB]
GO

CREATE TABLE [dbo].[userPopStoreDB] (
  [AccountIDX] int  NOT NULL,
  [PopupSlot] int  NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userPopStoreDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userPresentDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userPresentDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userPresentDB]
GO

CREATE TABLE [dbo].[userPresentDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [sendIDX] int  NOT NULL,
  [receiveIDX] int  NOT NULL,
  [presentType] smallint DEFAULT ((0)) NOT NULL,
  [value1] int DEFAULT ((0)) NOT NULL,
  [value2] int DEFAULT ((0)) NOT NULL,
  [value3] int DEFAULT ((0)) NOT NULL,
  [value4] int DEFAULT ((0)) NOT NULL,
  [msgType] smallint DEFAULT ((0)) NOT NULL,
  [flag] smallint DEFAULT ((0)) NOT NULL,
  [limitDate] datetime  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userPresentDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userQuestCompleteDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userQuestCompleteDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userQuestCompleteDB]
GO

CREATE TABLE [dbo].[userQuestCompleteDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [quest1_type] int DEFAULT ((0)) NOT NULL,
  [quest1_time] int DEFAULT ((0)) NOT NULL,
  [quest2_type] int DEFAULT ((0)) NOT NULL,
  [quest2_time] int DEFAULT ((0)) NOT NULL,
  [quest3_type] int DEFAULT ((0)) NOT NULL,
  [quest3_time] int DEFAULT ((0)) NOT NULL,
  [quest4_type] int DEFAULT ((0)) NOT NULL,
  [quest4_time] int DEFAULT ((0)) NOT NULL,
  [quest5_type] int DEFAULT ((0)) NOT NULL,
  [quest5_time] int DEFAULT ((0)) NOT NULL,
  [quest6_type] int DEFAULT ((0)) NOT NULL,
  [quest6_time] int DEFAULT ((0)) NOT NULL,
  [quest7_type] int DEFAULT ((0)) NOT NULL,
  [quest7_time] int DEFAULT ((0)) NOT NULL,
  [quest8_type] int DEFAULT ((0)) NOT NULL,
  [quest8_time] int DEFAULT ((0)) NOT NULL,
  [quest9_type] int DEFAULT ((0)) NOT NULL,
  [quest9_time] int DEFAULT ((0)) NOT NULL,
  [quest10_type] int DEFAULT ((0)) NOT NULL,
  [quest10_time] int DEFAULT ((0)) NOT NULL,
  [quest11_type] int DEFAULT ((0)) NOT NULL,
  [quest11_time] int DEFAULT ((0)) NOT NULL,
  [quest12_type] int DEFAULT ((0)) NOT NULL,
  [quest12_time] int DEFAULT ((0)) NOT NULL,
  [quest13_type] int DEFAULT ((0)) NOT NULL,
  [quest13_time] int DEFAULT ((0)) NOT NULL,
  [quest14_type] int DEFAULT ((0)) NOT NULL,
  [quest14_time] int DEFAULT ((0)) NOT NULL,
  [quest15_type] int DEFAULT ((0)) NOT NULL,
  [quest15_time] int DEFAULT ((0)) NOT NULL,
  [quest16_type] int DEFAULT ((0)) NOT NULL,
  [quest16_time] int DEFAULT ((0)) NOT NULL,
  [quest17_type] int DEFAULT ((0)) NOT NULL,
  [quest17_time] int DEFAULT ((0)) NOT NULL,
  [quest18_type] int DEFAULT ((0)) NOT NULL,
  [quest18_time] int DEFAULT ((0)) NOT NULL,
  [quest19_type] int DEFAULT ((0)) NOT NULL,
  [quest19_time] int DEFAULT ((0)) NOT NULL,
  [quest20_type] int DEFAULT ((0)) NOT NULL,
  [quest20_time] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userQuestCompleteDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userQuestDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userQuestDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userQuestDB]
GO

CREATE TABLE [dbo].[userQuestDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [quest1_type] int DEFAULT ((0)) NOT NULL,
  [quest1_value1] int DEFAULT ((0)) NOT NULL,
  [quest1_value2] int DEFAULT ((0)) NOT NULL,
  [quest1_time] int DEFAULT ((0)) NOT NULL,
  [quest2_type] int DEFAULT ((0)) NOT NULL,
  [quest2_value1] int DEFAULT ((0)) NOT NULL,
  [quest2_value2] int DEFAULT ((0)) NOT NULL,
  [quest2_time] int DEFAULT ((0)) NOT NULL,
  [quest3_type] int DEFAULT ((0)) NOT NULL,
  [quest3_value1] int DEFAULT ((0)) NOT NULL,
  [quest3_value2] int DEFAULT ((0)) NOT NULL,
  [quest3_time] int DEFAULT ((0)) NOT NULL,
  [quest4_type] int DEFAULT ((0)) NOT NULL,
  [quest4_value1] int DEFAULT ((0)) NOT NULL,
  [quest4_value2] int DEFAULT ((0)) NOT NULL,
  [quest4_time] int DEFAULT ((0)) NOT NULL,
  [quest5_type] int DEFAULT ((0)) NOT NULL,
  [quest5_value1] int DEFAULT ((0)) NOT NULL,
  [quest5_value2] int DEFAULT ((0)) NOT NULL,
  [quest5_time] int DEFAULT ((0)) NOT NULL,
  [quest6_type] int DEFAULT ((0)) NOT NULL,
  [quest6_value1] int DEFAULT ((0)) NOT NULL,
  [quest6_value2] int DEFAULT ((0)) NOT NULL,
  [quest6_time] int DEFAULT ((0)) NOT NULL,
  [quest7_type] int DEFAULT ((0)) NOT NULL,
  [quest7_value1] int DEFAULT ((0)) NOT NULL,
  [quest7_value2] int DEFAULT ((0)) NOT NULL,
  [quest7_time] int DEFAULT ((0)) NOT NULL,
  [quest8_type] int DEFAULT ((0)) NOT NULL,
  [quest8_value1] int DEFAULT ((0)) NOT NULL,
  [quest8_value2] int DEFAULT ((0)) NOT NULL,
  [quest8_time] int DEFAULT ((0)) NOT NULL,
  [quest9_type] int DEFAULT ((0)) NOT NULL,
  [quest9_value1] int DEFAULT ((0)) NOT NULL,
  [quest9_value2] int DEFAULT ((0)) NOT NULL,
  [quest9_time] int DEFAULT ((0)) NOT NULL,
  [quest10_type] int DEFAULT ((0)) NOT NULL,
  [quest10_value1] int DEFAULT ((0)) NOT NULL,
  [quest10_value2] int DEFAULT ((0)) NOT NULL,
  [quest10_time] int DEFAULT ((0)) NOT NULL,
  [quest11_type] int DEFAULT ((0)) NOT NULL,
  [quest11_value1] int DEFAULT ((0)) NOT NULL,
  [quest11_value2] int DEFAULT ((0)) NOT NULL,
  [quest11_time] int DEFAULT ((0)) NOT NULL,
  [quest12_type] int DEFAULT ((0)) NOT NULL,
  [quest12_value1] int DEFAULT ((0)) NOT NULL,
  [quest12_value2] int DEFAULT ((0)) NOT NULL,
  [quest12_time] int DEFAULT ((0)) NOT NULL,
  [quest13_type] int DEFAULT ((0)) NOT NULL,
  [quest13_value1] int DEFAULT ((0)) NOT NULL,
  [quest13_value2] int DEFAULT ((0)) NOT NULL,
  [quest13_time] int DEFAULT ((0)) NOT NULL,
  [quest14_type] int DEFAULT ((0)) NOT NULL,
  [quest14_value1] int DEFAULT ((0)) NOT NULL,
  [quest14_value2] int DEFAULT ((0)) NOT NULL,
  [quest14_time] int DEFAULT ((0)) NOT NULL,
  [quest15_type] int DEFAULT ((0)) NOT NULL,
  [quest15_value1] int DEFAULT ((0)) NOT NULL,
  [quest15_value2] int DEFAULT ((0)) NOT NULL,
  [quest15_time] int DEFAULT ((0)) NOT NULL,
  [quest16_type] int DEFAULT ((0)) NOT NULL,
  [quest16_value1] int DEFAULT ((0)) NOT NULL,
  [quest16_value2] int DEFAULT ((0)) NOT NULL,
  [quest16_time] int DEFAULT ((0)) NOT NULL,
  [quest17_type] int DEFAULT ((0)) NOT NULL,
  [quest17_value1] int DEFAULT ((0)) NOT NULL,
  [quest17_value2] int DEFAULT ((0)) NOT NULL,
  [quest17_time] int DEFAULT ((0)) NOT NULL,
  [quest18_type] int DEFAULT ((0)) NOT NULL,
  [quest18_value1] int DEFAULT ((0)) NOT NULL,
  [quest18_value2] int DEFAULT ((0)) NOT NULL,
  [quest18_time] int DEFAULT ((0)) NOT NULL,
  [quest19_type] int DEFAULT ((0)) NOT NULL,
  [quest19_value1] int DEFAULT ((0)) NOT NULL,
  [quest19_value2] int DEFAULT ((0)) NOT NULL,
  [quest19_time] int DEFAULT ((0)) NOT NULL,
  [quest20_type] int DEFAULT ((0)) NOT NULL,
  [quest20_value1] int DEFAULT ((0)) NOT NULL,
  [quest20_value2] int DEFAULT ((0)) NOT NULL,
  [quest20_time] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userQuestDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB]
GO

CREATE TABLE [dbo].[userRankingDB] (
  [accountIDX] int  NOT NULL,
  [class] int DEFAULT ((0)) NOT NULL,
  [battle] int DEFAULT ((0)) NOT NULL,
  [training] int DEFAULT ((0)) NOT NULL,
  [award] int DEFAULT ((0)) NOT NULL,
  [medal] int DEFAULT ((0)) NOT NULL,
  [tester] int DEFAULT ((0)) NOT NULL,
  [region] int DEFAULT ((0)) NOT NULL,
  [regDate] smalldatetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRankingDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB_award
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB_award]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB_award]
GO

CREATE TABLE [dbo].[userRankingDB_award] (
  [accountIDX] int  NOT NULL,
  [awardLevel] int DEFAULT ((0)) NOT NULL,
  [expert] int DEFAULT ((0)) NOT NULL,
  [award1_prev] int DEFAULT ((0)) NOT NULL,
  [award1_now] int DEFAULT ((0)) NOT NULL,
  [award1_point] int DEFAULT ((0)) NOT NULL,
  [award2_prev] int DEFAULT ((0)) NOT NULL,
  [award2_now] int DEFAULT ((0)) NOT NULL,
  [award2_point] int DEFAULT ((0)) NOT NULL,
  [award3_prev] int DEFAULT ((0)) NOT NULL,
  [award3_now] int DEFAULT ((0)) NOT NULL,
  [award3_point] int DEFAULT ((0)) NOT NULL,
  [award4_prev] int DEFAULT ((0)) NOT NULL,
  [award4_now] int DEFAULT ((0)) NOT NULL,
  [award4_point] int DEFAULT ((0)) NOT NULL,
  [award5_prev] int DEFAULT ((0)) NOT NULL,
  [award5_now] int DEFAULT ((0)) NOT NULL,
  [award5_point] int DEFAULT ((0)) NOT NULL,
  [award6_prev] int DEFAULT ((0)) NOT NULL,
  [award6_now] int DEFAULT ((0)) NOT NULL,
  [award6_point] int DEFAULT ((0)) NOT NULL,
  [award7_prev] int DEFAULT ((0)) NOT NULL,
  [award7_now] int DEFAULT ((0)) NOT NULL,
  [award7_point] int DEFAULT ((0)) NOT NULL,
  [award8_prev] int DEFAULT ((0)) NOT NULL,
  [award8_now] int DEFAULT ((0)) NOT NULL,
  [award8_point] int DEFAULT ((0)) NOT NULL,
  [award9_prev] int DEFAULT ((0)) NOT NULL,
  [award9_now] int DEFAULT ((0)) NOT NULL,
  [award9_point] int DEFAULT ((0)) NOT NULL,
  [award10_prev] int DEFAULT ((0)) NOT NULL,
  [award10_now] int DEFAULT ((0)) NOT NULL,
  [award10_point] int DEFAULT ((0)) NOT NULL,
  [award11_prev] int DEFAULT ((0)) NOT NULL,
  [award11_now] int DEFAULT ((0)) NOT NULL,
  [award11_point] int DEFAULT ((0)) NOT NULL,
  [award12_prev] int DEFAULT ((0)) NOT NULL,
  [award12_now] int DEFAULT ((0)) NOT NULL,
  [award12_point] int DEFAULT ((0)) NOT NULL,
  [award13_prev] int DEFAULT ((0)) NOT NULL,
  [award13_now] int DEFAULT ((0)) NOT NULL,
  [award13_point] int DEFAULT ((0)) NOT NULL,
  [award14_prev] int DEFAULT ((0)) NOT NULL,
  [award14_now] int DEFAULT ((0)) NOT NULL,
  [award14_point] int DEFAULT ((0)) NOT NULL,
  [award15_prev] int DEFAULT ((0)) NOT NULL,
  [award15_now] int DEFAULT ((0)) NOT NULL,
  [award15_point] int DEFAULT ((0)) NOT NULL,
  [award16_prev] int DEFAULT ((0)) NOT NULL,
  [award16_now] int DEFAULT ((0)) NOT NULL,
  [award16_point] int DEFAULT ((0)) NOT NULL,
  [award17_prev] int DEFAULT ((0)) NOT NULL,
  [award17_now] int DEFAULT ((0)) NOT NULL,
  [award17_point] int DEFAULT ((0)) NOT NULL,
  [award18_prev] int DEFAULT ((0)) NOT NULL,
  [award18_now] int DEFAULT ((0)) NOT NULL,
  [award18_point] int DEFAULT ((0)) NOT NULL,
  [award19_prev] int DEFAULT ((0)) NOT NULL,
  [award19_now] int DEFAULT ((0)) NOT NULL,
  [award19_point] int DEFAULT ((0)) NOT NULL,
  [award20_prev] int DEFAULT ((0)) NOT NULL,
  [award20_now] int DEFAULT ((0)) NOT NULL,
  [award20_point] int DEFAULT ((0)) NOT NULL,
  [award21_prev] int DEFAULT ((0)) NOT NULL,
  [award21_now] int DEFAULT ((0)) NOT NULL,
  [award21_point] int DEFAULT ((0)) NOT NULL,
  [award22_prev] int DEFAULT ((0)) NOT NULL,
  [award22_now] int DEFAULT ((0)) NOT NULL,
  [award22_point] int DEFAULT ((0)) NOT NULL,
  [award23_prev] int DEFAULT ((0)) NOT NULL,
  [award23_now] int DEFAULT ((0)) NOT NULL,
  [award23_point] int DEFAULT ((0)) NOT NULL,
  [award24_prev] int DEFAULT ((0)) NOT NULL,
  [award24_now] int DEFAULT ((0)) NOT NULL,
  [award24_point] int DEFAULT ((0)) NOT NULL,
  [award25_prev] int DEFAULT ((0)) NOT NULL,
  [award25_now] int DEFAULT ((0)) NOT NULL,
  [award25_point] int DEFAULT ((0)) NOT NULL,
  [award26_prev] int DEFAULT ((0)) NOT NULL,
  [award26_now] int DEFAULT ((0)) NOT NULL,
  [award26_point] int DEFAULT ((0)) NOT NULL,
  [award27_prev] int DEFAULT ((0)) NOT NULL,
  [award27_now] int DEFAULT ((0)) NOT NULL,
  [award27_point] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRankingDB_award] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB_class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB_class]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB_class]
GO

CREATE TABLE [dbo].[userRankingDB_class] (
  [accountIDX] int  NULL,
  [classType] int  NULL,
  [prevRanking] int  NULL,
  [nowRanking] int  NULL,
  [userLevel] int  NULL,
  [expert] int  NULL
)
GO

ALTER TABLE [dbo].[userRankingDB_class] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB_class_backup
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB_class_backup]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB_class_backup]
GO

CREATE TABLE [dbo].[userRankingDB_class_backup] (
  [accountIDX] int  NULL,
  [classType] int  NULL,
  [nowRanking] int  NULL
)
GO

ALTER TABLE [dbo].[userRankingDB_class_backup] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB_hero
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB_hero]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB_hero]
GO

CREATE TABLE [dbo].[userRankingDB_hero] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [title] int DEFAULT ((0)) NOT NULL,
  [daily] int DEFAULT ((0)) NOT NULL,
  [dailyB] int DEFAULT ((0)) NOT NULL,
  [season1] int DEFAULT ((0)) NOT NULL,
  [season2] int DEFAULT ((0)) NOT NULL,
  [season3] int DEFAULT ((0)) NOT NULL,
  [season4] int DEFAULT ((0)) NOT NULL,
  [season5] int DEFAULT ((0)) NOT NULL,
  [season6] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRankingDB_hero] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB_medal
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB_medal]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB_medal]
GO

CREATE TABLE [dbo].[userRankingDB_medal] (
  [accountIDX] int  NOT NULL,
  [medalLevel] int DEFAULT ((0)) NOT NULL,
  [expert] int DEFAULT ((0)) NOT NULL,
  [ranking_prev] int DEFAULT ((0)) NOT NULL,
  [ranking_now] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRankingDB_medal] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB_temp
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB_temp]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB_temp]
GO

CREATE TABLE [dbo].[userRankingDB_temp] (
  [accountIDX] int  NOT NULL,
  [rank] bigint  NULL
)
GO

ALTER TABLE [dbo].[userRankingDB_temp] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRankingDB_temp_old
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRankingDB_temp_old]') AND type IN ('U'))
	DROP TABLE [dbo].[userRankingDB_temp_old]
GO

CREATE TABLE [dbo].[userRankingDB_temp_old] (
  [accountIDX] int  NOT NULL,
  [rank] bigint  NULL
)
GO

ALTER TABLE [dbo].[userRankingDB_temp_old] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRecordBattleDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRecordBattleDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userRecordBattleDB]
GO

CREATE TABLE [dbo].[userRecordBattleDB] (
  [accountIDX] int  NOT NULL,
  [type1_win] int DEFAULT ((0)) NOT NULL,
  [type1_lose] int DEFAULT ((0)) NOT NULL,
  [type1_kill] int DEFAULT ((0)) NOT NULL,
  [type1_death] int DEFAULT ((0)) NOT NULL,
  [type2_win] int DEFAULT ((0)) NOT NULL,
  [type2_lose] int DEFAULT ((0)) NOT NULL,
  [type2_kill] int DEFAULT ((0)) NOT NULL,
  [type2_death] int DEFAULT ((0)) NOT NULL,
  [type3_win] int DEFAULT ((0)) NOT NULL,
  [type3_lose] int DEFAULT ((0)) NOT NULL,
  [type3_kill] int DEFAULT ((0)) NOT NULL,
  [type3_death] int DEFAULT ((0)) NOT NULL,
  [type4_win] int DEFAULT ((0)) NOT NULL,
  [type4_lose] int DEFAULT ((0)) NOT NULL,
  [type4_kill] int DEFAULT ((0)) NOT NULL,
  [type4_death] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRecordBattleDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRecordGuildDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRecordGuildDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userRecordGuildDB]
GO

CREATE TABLE [dbo].[userRecordGuildDB] (
  [guildIDX] int  NOT NULL,
  [type1_win] int DEFAULT ((0)) NOT NULL,
  [type1_lose] int DEFAULT ((0)) NOT NULL,
  [type1_kill] int DEFAULT ((0)) NOT NULL,
  [type1_death] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRecordGuildDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRegionDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRegionDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userRegionDB]
GO

CREATE TABLE [dbo].[userRegionDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [rt1point] int DEFAULT ((0)) NOT NULL,
  [rt1point_bonus] int DEFAULT ((0)) NOT NULL,
  [rt1point_today] int DEFAULT ((0)) NOT NULL,
  [rt2point] int DEFAULT ((0)) NOT NULL,
  [rt2point_bonus] int DEFAULT ((0)) NOT NULL,
  [rt2point_today] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRegionDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRegionDB_compen
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRegionDB_compen]') AND type IN ('U'))
	DROP TABLE [dbo].[userRegionDB_compen]
GO

CREATE TABLE [dbo].[userRegionDB_compen] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [rt1point] int DEFAULT ((0)) NOT NULL,
  [rt1point_bonus] int DEFAULT ((0)) NOT NULL,
  [rt1count] int DEFAULT ((0)) NOT NULL,
  [rt2point] int DEFAULT ((0)) NOT NULL,
  [rt2point_bonus] int DEFAULT ((0)) NOT NULL,
  [rt2count] int DEFAULT ((0)) NOT NULL,
  [regionType] int DEFAULT ((0)) NOT NULL,
  [renspoint] int DEFAULT ((0)) NOT NULL,
  [regionRanking] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRegionDB_compen] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRegionDB_history
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRegionDB_history]') AND type IN ('U'))
	DROP TABLE [dbo].[userRegionDB_history]
GO

CREATE TABLE [dbo].[userRegionDB_history] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [point] int DEFAULT ((0)) NOT NULL,
  [point_bonus] int DEFAULT ((0)) NOT NULL,
  [membercount] int DEFAULT ((0)) NOT NULL,
  [regionType] tinyint DEFAULT ((0)) NOT NULL,
  [season] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRegionDB_history] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userRelativeLevelDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userRelativeLevelDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userRelativeLevelDB]
GO

CREATE TABLE [dbo].[userRelativeLevelDB] (
  [accountIDX] int  NOT NULL,
  [weekend_BackupLevel] int DEFAULT ((0)) NOT NULL,
  [weekend_BackupExp] int DEFAULT ((0)) NOT NULL,
  [init_time] int DEFAULT ((0)) NOT NULL,
  [reward_State] tinyint DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userRelativeLevelDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userSBoxDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userSBoxDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userSBoxDB]
GO

CREATE TABLE [dbo].[userSBoxDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [presentType] smallint DEFAULT ((0)) NOT NULL,
  [value1] int DEFAULT ((0)) NOT NULL,
  [value2] int DEFAULT ((0)) NOT NULL,
  [amount] int DEFAULT ((0)) NOT NULL,
  [flag] smallint DEFAULT ((0)) NOT NULL,
  [billingID] varchar(64) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [limitDate] datetime  NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userSBoxDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userSpentGoldDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userSpentGoldDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userSpentGoldDB]
GO

CREATE TABLE [dbo].[userSpentGoldDB] (
  [AccountIDX] int  NOT NULL,
  [UserSpentGold] int  NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userSpentGoldDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userSpentGoldLogDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userSpentGoldLogDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userSpentGoldLogDB]
GO

CREATE TABLE [dbo].[userSpentGoldLogDB] (
  [RegDate] datetime  NOT NULL,
  [AccountIDX] int  NOT NULL,
  [UserSpentGold] int  NOT NULL
)
GO

ALTER TABLE [dbo].[userSpentGoldLogDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userSpRankDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userSpRankDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userSpRankDB]
GO

CREATE TABLE [dbo].[userSpRankDB] (
  [AccountIDX] int  NOT NULL,
  [SpRank] int DEFAULT ((0)) NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userSpRankDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userTitleDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userTitleDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userTitleDB]
GO

CREATE TABLE [dbo].[userTitleDB] (
  [AccountIDX] int  NOT NULL,
  [TitleCode] int  NOT NULL,
  [TitleValue] bigint  NOT NULL,
  [TitleLevel] int DEFAULT ((1)) NOT NULL,
  [TitlePremium] tinyint DEFAULT ((0)) NOT NULL,
  [TitleEquip] tinyint DEFAULT ((0)) NOT NULL,
  [TitleStatus] tinyint DEFAULT ((0)) NOT NULL,
  [UpdDate] datetime DEFAULT ((0)) NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userTitleDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for userTradeDB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userTradeDB]') AND type IN ('U'))
	DROP TABLE [dbo].[userTradeDB]
GO

CREATE TABLE [dbo].[userTradeDB] (
  [idx] int  IDENTITY(1,1) NOT NULL,
  [accountIDX] int  NOT NULL,
  [itemType] int DEFAULT ((0)) NOT NULL,
  [value1] int DEFAULT ((0)) NOT NULL,
  [value2] int DEFAULT ((0)) NOT NULL,
  [price] bigint DEFAULT ((0)) NOT NULL,
  [mcustom] int DEFAULT ((0)) NOT NULL,
  [fcustom] int DEFAULT ((0)) NOT NULL,
  [userIP] varchar(16) COLLATE Korean_Wansung_CI_AS  NULL,
  [periodDate] int DEFAULT ((0)) NOT NULL,
  [regDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[userTradeDB] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebBlock
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebBlock]') AND type IN ('U'))
	DROP TABLE [dbo].[WebBlock]
GO

CREATE TABLE [dbo].[WebBlock] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Hash] varchar(32) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Reason] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [BlockDate] datetime DEFAULT (getdate()) NOT NULL,
  [EndDate] datetime DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[WebBlock] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebBlockException
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebBlockException]') AND type IN ('U'))
	DROP TABLE [dbo].[WebBlockException]
GO

CREATE TABLE [dbo].[WebBlockException] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[WebBlockException] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebConnectLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebConnectLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebConnectLog]
GO

CREATE TABLE [dbo].[WebConnectLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [IP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [Hash] varchar(32) COLLATE Korean_Wansung_CI_AS  NULL,
  [LogDate] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[WebConnectLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebCoupon
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebCoupon]') AND type IN ('U'))
	DROP TABLE [dbo].[WebCoupon]
GO

CREATE TABLE [dbo].[WebCoupon] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Code] varchar(16) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [GroupId] int  NOT NULL,
  [Used] bit DEFAULT ((0)) NOT NULL,
  [UsedUser] varchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [UsedDate] datetime  NULL,
  [ExpiryDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[WebCoupon] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebCouponItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebCouponItem]') AND type IN ('U'))
	DROP TABLE [dbo].[WebCouponItem]
GO

CREATE TABLE [dbo].[WebCouponItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [GroupId] int  NOT NULL,
  [PresentType] smallint  NOT NULL,
  [Value1] int  NOT NULL,
  [Value2] int  NOT NULL,
  [ItemType] int  NOT NULL
)
GO

ALTER TABLE [dbo].[WebCouponItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEvent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEvent]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEvent]
GO

CREATE TABLE [dbo].[WebEvent] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [PresentType] smallint  NOT NULL,
  [Value1] int  NOT NULL,
  [Value2] int  NOT NULL,
  [StartDate] datetime  NOT NULL,
  [EndDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[WebEvent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEventLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEventLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEventLog]
GO

CREATE TABLE [dbo].[WebEventLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [PresentId] int  NOT NULL,
  [CompleteDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebEventLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEventValentineDailyLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEventValentineDailyLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEventValentineDailyLog]
GO

CREATE TABLE [dbo].[WebEventValentineDailyLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [Amount] int  NOT NULL,
  [CompleteDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[WebEventValentineDailyLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEventValentineGoal
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEventValentineGoal]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEventValentineGoal]
GO

CREATE TABLE [dbo].[WebEventValentineGoal] (
  [Id] int  NOT NULL,
  [Plant] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [PresentType] smallint  NOT NULL,
  [Value1] int  NOT NULL,
  [Value2] int  NOT NULL,
  [RewardName] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[WebEventValentineGoal] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEventValentineGoalLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEventValentineGoalLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEventValentineGoalLog]
GO

CREATE TABLE [dbo].[WebEventValentineGoalLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [GoalId] int  NOT NULL,
  [CompleteDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebEventValentineGoalLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEventValentineHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEventValentineHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEventValentineHistory]
GO

CREATE TABLE [dbo].[WebEventValentineHistory] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [SendIdx] int  NOT NULL,
  [ReceiveIdx] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [Amount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[WebEventValentineHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEventValentineRanking
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEventValentineRanking]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEventValentineRanking]
GO

CREATE TABLE [dbo].[WebEventValentineRanking] (
  [AccountIdx] int  NOT NULL,
  [RankType] int  NOT NULL,
  [Point] int  NOT NULL,
  [LastUpdate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebEventValentineRanking] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebEventValentineUserItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebEventValentineUserItem]') AND type IN ('U'))
	DROP TABLE [dbo].[WebEventValentineUserItem]
GO

CREATE TABLE [dbo].[WebEventValentineUserItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [Amount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[WebEventValentineUserItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebGallery
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebGallery]') AND type IN ('U'))
	DROP TABLE [dbo].[WebGallery]
GO

CREATE TABLE [dbo].[WebGallery] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] varchar(50) COLLATE Korean_Wansung_CI_AS  NULL,
  [Description] varchar(1000) COLLATE Korean_Wansung_CI_AS  NULL,
  [Path] varchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Width] int  NOT NULL,
  [Height] int  NOT NULL
)
GO

ALTER TABLE [dbo].[WebGallery] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebHardware
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebHardware]') AND type IN ('U'))
	DROP TABLE [dbo].[WebHardware]
GO

CREATE TABLE [dbo].[WebHardware] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CpuNo] varchar(128) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [MotherBoardNo] varchar(128) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [IP] varchar(15) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Code] varchar(10) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [ActiveDate] datetime  NULL,
  [BannedDate] datetime  NULL,
  [UUID] varchar(128) COLLATE Korean_Wansung_CI_AS  NULL,
  [ActiveUser] varchar(20) COLLATE Korean_Wansung_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[WebHardware] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebHardwareLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebHardwareLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebHardwareLog]
GO

CREATE TABLE [dbo].[WebHardwareLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CpuNo] varchar(128) COLLATE Korean_Wansung_CI_AS  NULL,
  [MotherboardNo] varchar(128) COLLATE Korean_Wansung_CI_AS  NULL,
  [IP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [Time] datetime DEFAULT (getdate()) NULL,
  [ErrorCode] int  NULL,
  [UUID] varchar(128) COLLATE Korean_Wansung_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[WebHardwareLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebLogin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebLogin]') AND type IN ('U'))
	DROP TABLE [dbo].[WebLogin]
GO

CREATE TABLE [dbo].[WebLogin] (
  [Id] int  NOT NULL,
  [Username] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Password] varchar(128) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Email] varchar(50) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [RegDate] datetime DEFAULT (getdate()) NULL,
  [RegisterIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [Verify] bit DEFAULT ((0)) NULL,
  [Banned] bit DEFAULT ((0)) NULL
)
GO

ALTER TABLE [dbo].[WebLogin] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebLogin_Confirm
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebLogin_Confirm]') AND type IN ('U'))
	DROP TABLE [dbo].[WebLogin_Confirm]
GO

CREATE TABLE [dbo].[WebLogin_Confirm] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Code] varchar(128) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [SendDate] datetime DEFAULT (getdate()) NULL,
  [Email] varchar(50) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Username] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[WebLogin_Confirm] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebNotice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebNotice]') AND type IN ('U'))
	DROP TABLE [dbo].[WebNotice]
GO

CREATE TABLE [dbo].[WebNotice] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [TypeId] int  NOT NULL,
  [Subject] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Content] nvarchar(max) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [NoticeUser] nvarchar(30) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [NoticeDate] datetime DEFAULT (getdate()) NOT NULL,
  [Status] int  NOT NULL,
  [ContentPlain] nvarchar(max) COLLATE Korean_Wansung_CI_AS  NULL,
  [LastUpdate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebNotice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebNoticeType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebNoticeType]') AND type IN ('U'))
	DROP TABLE [dbo].[WebNoticeType]
GO

CREATE TABLE [dbo].[WebNoticeType] (
  [Id] int  NOT NULL,
  [Name] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [ColorId] int  NULL
)
GO

ALTER TABLE [dbo].[WebNoticeType] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebQuest
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebQuest]') AND type IN ('U'))
	DROP TABLE [dbo].[WebQuest]
GO

CREATE TABLE [dbo].[WebQuest] (
  [Id] int  NOT NULL,
  [QuestName] varchar(255) COLLATE Korean_Wansung_CI_AS  NULL,
  [PlayType] int  NOT NULL,
  [Mode] int  NOT NULL,
  [Sub1] int  NOT NULL,
  [Sub2] int  NOT NULL,
  [QuestType] int  NOT NULL,
  [QuestTarget] int  NOT NULL,
  [QuestRepeat] bit  NOT NULL,
  [QuestRepeatDay] int  NOT NULL,
  [QuestStartDate] datetime  NOT NULL,
  [QuestEndDate] datetime  NOT NULL,
  [RewardEndDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[WebQuest] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebQuestReward
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebQuestReward]') AND type IN ('U'))
	DROP TABLE [dbo].[WebQuestReward]
GO

CREATE TABLE [dbo].[WebQuestReward] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [QId] int  NOT NULL,
  [PresentType] smallint  NOT NULL,
  [Value1] int  NOT NULL,
  [Value2] int  NOT NULL,
  [ItemType] int  NOT NULL
)
GO

ALTER TABLE [dbo].[WebQuestReward] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebQuestUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebQuestUser]') AND type IN ('U'))
	DROP TABLE [dbo].[WebQuestUser]
GO

CREATE TABLE [dbo].[WebQuestUser] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [QId] int  NOT NULL,
  [UserID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [CompleteDate] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[WebQuestUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRecovery
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRecovery]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRecovery]
GO

CREATE TABLE [dbo].[WebRecovery] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Code] varchar(128) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [SendDate] datetime DEFAULT (getdate()) NULL,
  [Email] varchar(50) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Username] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[WebRecovery] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRoulette
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRoulette]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRoulette]
GO

CREATE TABLE [dbo].[WebRoulette] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Description] nvarchar(1000) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [CostItem] int  NOT NULL,
  [Cost] int  NOT NULL,
  [Status] int  NOT NULL,
  [StartDate] datetime  NOT NULL,
  [EndDate] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[WebRoulette] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteItem]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteItem]
GO

CREATE TABLE [dbo].[WebRouletteItem] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteMission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteMission]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteMission]
GO

CREATE TABLE [dbo].[WebRouletteMission] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Description] nvarchar(1000) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [RewardItem] int  NOT NULL,
  [Amount] int  NOT NULL,
  [Flag] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteMission] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRoulettePayLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRoulettePayLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRoulettePayLog]
GO

CREATE TABLE [dbo].[WebRoulettePayLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [Amount] int  NOT NULL,
  [Paid] int  NOT NULL,
  [PaidDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebRoulettePayLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteReward
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteReward]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteReward]
GO

CREATE TABLE [dbo].[WebRouletteReward] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [RId] int  NOT NULL,
  [PresentType] smallint  NOT NULL,
  [Value1] int  NOT NULL,
  [Value2] int  NOT NULL,
  [ItemType] int  NOT NULL,
  [Flag] int  NOT NULL,
  [Name] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Rate] int  NOT NULL,
  [Image] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteReward] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteRewardLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteRewardLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteRewardLog]
GO

CREATE TABLE [dbo].[WebRouletteRewardLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [Nickname] nvarchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [RouletteId] int  NOT NULL,
  [RewardName] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [RewardDate] datetime DEFAULT (getdate()) NOT NULL,
  [Flag] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteRewardLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteSetting
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteSetting]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteSetting]
GO

CREATE TABLE [dbo].[WebRouletteSetting] (
  [Id] int  NOT NULL,
  [RouletteId] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [UpdateDate] datetime  NOT NULL,
  [Lucky] int  NOT NULL,
  [NextRoulette] int  NULL
)
GO

ALTER TABLE [dbo].[WebRouletteSetting] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteSPMission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteSPMission]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteSPMission]
GO

CREATE TABLE [dbo].[WebRouletteSPMission] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Description] nvarchar(1000) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Spin] int  NOT NULL,
  [PresentType] smallint  NOT NULL,
  [Value1] int  NOT NULL,
  [Value2] int  NOT NULL,
  [RewardName] nvarchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Enabled] bit  NOT NULL,
  [DateFrom] datetime  NOT NULL,
  [DateTo] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteSPMission] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteSPMissionLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteSPMissionLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteSPMissionLog]
GO

CREATE TABLE [dbo].[WebRouletteSPMissionLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [MissionId] int  NOT NULL,
  [CompleteDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteSPMissionLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteUserItem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteUserItem]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteUserItem]
GO

CREATE TABLE [dbo].[WebRouletteUserItem] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [Amount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteUserItem] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteUserItemDeleteLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteUserItemDeleteLog]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteUserItemDeleteLog]
GO

CREATE TABLE [dbo].[WebRouletteUserItemDeleteLog] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [ItemId] int  NOT NULL,
  [Amount] int  NOT NULL,
  [DeletedDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteUserItemDeleteLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteUserLucky
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteUserLucky]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteUserLucky]
GO

CREATE TABLE [dbo].[WebRouletteUserLucky] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [RouletteId] int  NOT NULL,
  [Lucky] int DEFAULT ((0)) NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteUserLucky] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebRouletteUserMission
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebRouletteUserMission]') AND type IN ('U'))
	DROP TABLE [dbo].[WebRouletteUserMission]
GO

CREATE TABLE [dbo].[WebRouletteUserMission] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [AccountIdx] int  NOT NULL,
  [MissionId] int  NOT NULL,
  [CompleteDate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebRouletteUserMission] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebTicket
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebTicket]') AND type IN ('U'))
	DROP TABLE [dbo].[WebTicket]
GO

CREATE TABLE [dbo].[WebTicket] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Subject] varchar(255) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [TypeId] int  NOT NULL,
  [TicketDate] datetime DEFAULT (getdate()) NOT NULL,
  [Status] int DEFAULT ((0)) NOT NULL,
  [LastUpdate] datetime DEFAULT (getdate()) NOT NULL
)
GO

ALTER TABLE [dbo].[WebTicket] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebTicketDetail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebTicketDetail]') AND type IN ('U'))
	DROP TABLE [dbo].[WebTicketDetail]
GO

CREATE TABLE [dbo].[WebTicketDetail] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Tid] int  NOT NULL,
  [Content] nvarchar(max) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [UserID] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [ReplyDate] datetime DEFAULT (getdate()) NULL,
  [IP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[WebTicketDetail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebTicketType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebTicketType]') AND type IN ('U'))
	DROP TABLE [dbo].[WebTicketType]
GO

CREATE TABLE [dbo].[WebTicketType] (
  [Id] int  NOT NULL,
  [Name] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[WebTicketType] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for WebTransaction
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WebTransaction]') AND type IN ('U'))
	DROP TABLE [dbo].[WebTransaction]
GO

CREATE TABLE [dbo].[WebTransaction] (
  [Id] int  NOT NULL,
  [Uid] varchar(20) COLLATE Korean_Wansung_CI_AS  NOT NULL,
  [Oid] int  NOT NULL,
  [New] int  NOT NULL,
  [Total] int  NOT NULL,
  [Time] datetime  NOT NULL,
  [ClientIP] varchar(15) COLLATE Korean_Wansung_CI_AS  NULL,
  [AppId] varchar(50) COLLATE Korean_Wansung_CI_AS  NULL,
  [ClientCountryCode] varchar(20) COLLATE Korean_Wansung_CI_AS  NULL,
  [ClientPayout] decimal(18)  NULL,
  [OfferName] varchar(50) COLLATE Korean_Wansung_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[WebTransaction] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Procedure structure for USP_GET_FRIEND_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_GET_FRIEND_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_GET_FRIEND_LIST]
GO

CREATE PROCEDURE [dbo].[USP_GET_FRIEND_LIST]
(
	@garenaUID varchar(20)
)
AS

SET NOCOUNT ON
	
	SELECT C.userID
      FROM dbo.userMemberDB C 
     WHERE accountIDX IN (  
		 SELECT a.friendAccIDX 
	       FROM dbo.userFriendDB A
	       JOIN dbo.userMemberDB B 
		     ON A.userAccIDX = B.accountIDX
	      WHERE b.userID = @garenaUID
	        AND flag = 1
		)
GO


-- ----------------------------
-- Procedure structure for game_region_season_end_server_close
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_season_end_server_close]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_season_end_server_close]
GO

CREATE PROCEDURE [dbo].[game_region_season_end_server_close]

AS
/*
	BEGIN TRAN

	DECLARE @limitRenpoint int, @limitPrepoint int, @season int, @totalpoint int
	DECLARE @rt1point int, @rt1point_bonus int, @rt1count int, @rt2point int, @rt2point_bonus int, @rt2count int

	SET @limitRenpoint = DBO.DEFINE_REGION_LIMIT_RENSPOINT()
	SET @limitPrepoint = DBO.DEFINE_REGION_LIMIT_SE_RENSPOINT()
	SET @season = ISNULL((SELECT max(season) FROM userRegionDB_history), 0) + 1
	SET @totalpoint = (SELECT rt1point + rt2point AS 'rp' FROM userRegionDB)
	SET @rt1point = (SELECT rt1point FROM userRegionDB)
	SET @rt2point = (SELECT rt2point FROM userRegionDB)
	SET @rt1point_bonus = (SELECT rt1point_bonus FROM userRegionDB)
	SET @rt2point_bonus = (SELECT rt2point_bonus FROM userRegionDB)
	SET @rt1count = (SELECT COUNT(*) FROM userGameDB WHERE regionType=1 and renspoint > @limitRenpoint)
	SET @rt2count = (SELECT COUNT(*) FROM userGameDB WHERE regionType=2 and renspoint > @limitRenpoint)

	If (@totalpoint > 0)
	BEGIN
		INSERT INTO userRegionDB_compen (accountIDX, rt1point, rt1point_bonus, rt1count, rt2point, rt2point_bonus, rt2count, regionType, renspoint, regionRanking, regDate)
		SELECT a.accountIDX, @rt1point,  @rt1point_bonus, @rt1count, @rt2point, @rt2point_bonus, @rt2count, a.regionType, a.renspoint, ISNULL(b.region, 0), GETDATE() FROM userGameDB a LEFT JOIN userRankingDB b ON a.accountIDX=b.accountIDX WHERE a.regionType > 0 and renspoint > @limitPrepoint
	END

	DELETE FROM dbo.userRegionDB_compen WHERE regDate < Left(GETDATE(), 10)

	INSERT INTO dbo.userRegionDB_history (point, point_bonus, membercount, regionType, season, regDate) VALUES (@rt1point, @rt1point_bonus, @rt1count, 1, @season, GETDATE())
	INSERT INTO dbo.userRegionDB_history (point, point_bonus, membercount, regionType, season, regDate) VALUES (@rt2point, @rt2point_bonus, @rt2count, 2, @season, GETDATE())

	EXEC game_region_init_renspoint

	COMMIT TRAN
*/
GO


-- ----------------------------
-- Function structure for SELECT_GEAR_CODE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SELECT_GEAR_CODE]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[SELECT_GEAR_CODE]
GO

CREATE FUNCTION [dbo].[SELECT_GEAR_CODE]
(
	@accountIDX INT
,	@slotIndex INT
)
RETURNS INT
AS

BEGIN

DECLARE @returnVal INT
DECLARE @userGearDB table (itemType int, slotIndex int)

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item1_type, item1_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item2_type, item2_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item3_type, item3_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item4_type, item4_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item5_type, item5_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item6_type, item6_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item7_type, item7_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item8_type, item8_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item9_type, item9_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

INSERT INTO @userGearDB (itemType, slotIndex)
SELECT item10_type, item10_slotindex FROM dbo.userItemExtraDB WITH(NOLOCK) WHERE accountIDX = @accountIDX

SET @returnVal = (
	SELECT itemType
	  FROM @userGearDB
	 WHERE slotIndex=@slotIndex
)

RETURN @returnVal

END
GO


-- ----------------------------
-- Procedure structure for game_quest_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_quest_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_quest_save]
GO

CREATE PROCEDURE [dbo].[game_quest_save]
(
	@idx int
,	@quest1_type int
,	@quest1_value1 int
,	@quest1_value2 int
,	@quest1_time int
,	@quest2_type int
,	@quest2_value1 int
,	@quest2_value2 int
,	@quest2_time int
,	@quest3_type int
,	@quest3_value1 int
,	@quest3_value2 int
,	@quest3_time int
,	@quest4_type int
,	@quest4_value1 int
,	@quest4_value2 int
,	@quest4_time int
,	@quest5_type int
,	@quest5_value1 int
,	@quest5_value2 int
,	@quest5_time int
,	@quest6_type int
,	@quest6_value1 int
,	@quest6_value2 int
,	@quest6_time int
,	@quest7_type int
,	@quest7_value1 int
,	@quest7_value2 int
,	@quest7_time int
,	@quest8_type int
,	@quest8_value1 int
,	@quest8_value2 int
,	@quest8_time int
,	@quest9_type int
,	@quest9_value1 int
,	@quest9_value2 int
,	@quest9_time int
,	@quest10_type int
,	@quest10_value1 int
,	@quest10_value2 int
,	@quest10_time int
,	@quest11_type int
,	@quest11_value1 int
,	@quest11_value2 int
,	@quest11_time int
,	@quest12_type int
,	@quest12_value1 int
,	@quest12_value2 int
,	@quest12_time int
,	@quest13_type int
,	@quest13_value1 int
,	@quest13_value2 int
,	@quest13_time int
,	@quest14_type int
,	@quest14_value1 int
,	@quest14_value2 int
,	@quest14_time int
,	@quest15_type int
,	@quest15_value1 int
,	@quest15_value2 int
,	@quest15_time int
,	@quest16_type int
,	@quest16_value1 int
,	@quest16_value2 int
,	@quest16_time int
,	@quest17_type int
,	@quest17_value1 int
,	@quest17_value2 int
,	@quest17_time int
,	@quest18_type int
,	@quest18_value1 int
,	@quest18_value2 int
,	@quest18_time int
,	@quest19_type int
,	@quest19_value1 int
,	@quest19_value2 int
,	@quest19_time int
,	@quest20_type int
,	@quest20_value1 int
,	@quest20_value2 int
,	@quest20_time int
)
AS

SET NOCOUNT ON

UPDATE dbo.userQuestDB
   SET quest1_type = @quest1_type,
	   quest1_value1 = @quest1_value1,
	   quest1_value2 = @quest1_value2,
	   quest1_time = @quest1_time,
	   quest2_type = @quest2_type,
	   quest2_value1 = @quest2_value1,
	   quest2_value2 = @quest2_value2,
	   quest2_time = @quest2_time,
	   quest3_type = @quest3_type,
	   quest3_value1 = @quest3_value1,
	   quest3_value2 = @quest3_value2,
	   quest3_time = @quest3_time,
	   quest4_type = @quest4_type,
	   quest4_value1 = @quest4_value1,
	   quest4_value2 = @quest4_value2,
	   quest4_time = @quest4_time,
	   quest5_type = @quest5_type,
	   quest5_value1 = @quest5_value1,
	   quest5_value2 = @quest5_value2,
	   quest5_time = @quest5_time,
	   quest6_type = @quest6_type,
	   quest6_value1 = @quest6_value1,
	   quest6_value2 = @quest6_value2,
	   quest6_time = @quest6_time,
	   quest7_type = @quest7_type,
	   quest7_value1 = @quest7_value1,
	   quest7_value2 = @quest7_value2,
	   quest7_time = @quest7_time,
	   quest8_type = @quest8_type,
	   quest8_value1 = @quest8_value1,
	   quest8_value2 = @quest8_value2,
	   quest8_time = @quest8_time,
	   quest9_type = @quest9_type,
	   quest9_value1 = @quest9_value1,
	   quest9_value2 = @quest9_value2,
	   quest9_time = @quest9_time,
	   quest10_type = @quest10_type,
	   quest10_value1 = @quest10_value1,
	   quest10_value2 = @quest10_value2,
	   quest10_time = @quest10_time,
	   quest11_type = @quest11_type,
	   quest11_value1 = @quest11_value1,
	   quest11_value2 = @quest11_value2,
	   quest11_time = @quest11_time,
	   quest12_type = @quest12_type,
	   quest12_value1 = @quest12_value1,
	   quest12_value2 = @quest12_value2,
	   quest12_time = @quest12_time,
	   quest13_type = @quest13_type,
	   quest13_value1 = @quest13_value1,
	   quest13_value2 = @quest13_value2,
	   quest13_time = @quest13_time,
	   quest14_type = @quest14_type,
	   quest14_value1 = @quest14_value1,
	   quest14_value2 = @quest14_value2,
	   quest14_time = @quest14_time,
	   quest15_type = @quest15_type,
	   quest15_value1 = @quest15_value1,
	   quest15_value2 = @quest15_value2,
	   quest15_time = @quest15_time,
	   quest16_type = @quest16_type,
	   quest16_value1 = @quest16_value1,
	   quest16_value2 = @quest16_value2,
	   quest16_time = @quest16_time,
	   quest17_type = @quest17_type,
	   quest17_value1 = @quest17_value1,
	   quest17_value2 = @quest17_value2,
	   quest17_time = @quest17_time,
	   quest18_type = @quest18_type,
	   quest18_value1 = @quest18_value1,
	   quest18_value2 = @quest18_value2,
	   quest18_time = @quest18_time,
	   quest19_type = @quest19_type,
	   quest19_value1 = @quest19_value1,
	   quest19_value2 = @quest19_value2,
	   quest19_time = @quest19_time,
	   quest20_type = @quest20_type,
	   quest20_value1 = @quest20_value1,
	   quest20_value2 = @quest20_value2,
	   quest20_time = @quest20_time 
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_create_nickname
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_create_nickname]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_create_nickname]
GO

CREATE PROCEDURE [dbo].[game_create_nickname]
(
	@accountIDX int
,	@chageNickname varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @cnt1 int

SET @cnt1 = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB
	 WHERE nickName=@chageNickname
)

If (@cnt1 = 0)
BEGIN
	UPDATE dbo.userMemberDB
	   SET nickName=@chageNickname
	 WHERE accountIDX=@accountIDX
END
GO


-- ----------------------------
-- Procedure structure for AGENT_RANKING_LADDER_TITLE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_RANKING_LADDER_TITLE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_RANKING_LADDER_TITLE]
GO

CREATE PROCEDURE [dbo].[AGENT_RANKING_LADDER_TITLE]

AS

SET NOCOUNT ON

DECLARE @cnt int
DECLARE @4nd int
DECLARE @5nd int
DECLARE @6nd int
DECLARE @7nd int
DECLARE @8nd int

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userRankingDB_hero WITH(NOLOCK)
)

SET @5nd = @cnt * (10/CONVERT(float, 100))
SET @6nd = @cnt * (25/CONVERT(float, 100))
SET @7nd = @cnt * (50/CONVERT(float, 100))
SET @8nd = @cnt * (100/CONVERT(float, 100))

UPDATE dbo.userRankingDB_hero
   SET title = 8
 WHERE daily <= @8nd
   AND daily > 0

UPDATE dbo.userRankingDB_hero
   SET title = 7
 WHERE daily <= @7nd
   AND daily > 0

UPDATE dbo.userRankingDB_hero
   SET title = 6
 WHERE daily <= @6nd
   AND daily > 0

UPDATE dbo.userRankingDB_hero
   SET title = 5
 WHERE daily <= @5nd
   AND daily > 0

UPDATE dbo.userRankingDB_hero
   SET title = 4
 WHERE daily >= 21
   AND daily <= 100

UPDATE dbo.userRankingDB_hero
   SET title = 3
 WHERE daily >= 6
   AND daily <= 20

UPDATE dbo.userRankingDB_hero
   SET title = 2
 WHERE daily >= 2
   AND daily <= 5

UPDATE dbo.userRankingDB_hero
   SET title = 1
 WHERE daily = 1
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
VALUES( @userIDX, @FriendIDX, @Type, @Count, GETDATE() )
GO


-- ----------------------------
-- Procedure structure for game_league_winner_info_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_winner_info_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_winner_info_add]
GO

CREATE PROCEDURE [dbo].[game_league_winner_info_add]
(
	@startDate int
,	@teamIDX int
)
AS

SET NOCOUNT ON

DECLARE @historyIDX int
DECLARE @classType int
DECLARE @CI_gender int
DECLARE @CI_face int
DECLARE @CI_hair int
DECLARE @CI_skinColor int
DECLARE @CI_hairColor int
DECLARE @CI_underwear int
DECLARE @EI1_type int
DECLARE @EI2_type int
DECLARE @EI3_type int
DECLARE @EI4_type int
DECLARE @classGear1 int
DECLARE @classGear2 int
DECLARE @classGear3 int
DECLARE @classGear4 int
DECLARE @classCnt int
DECLARE @winnerAccountIDX table (accountIDX int)

SET @classGear1 = 0
SET @classGear2 = 0
SET @classGear3 = 0
SET @classGear4 = 0

IF (@teamIDX = 0)
BEGIN
	RETURN
END

SET @historyIDX = (
	SELECT TOP 1 idx
	  FROM dbo.userLeagueWinnerHistoryDB WITH(NOLOCK)
	 WHERE startDate=@startDate
	   AND teamIDX=@teamIDX
	 ORDER BY idx DESC
)

IF (@historyIDX IS NULL)
BEGIN
	RETURN
END

INSERT INTO dbo.userLeagueWinnerInfoDB (
	accountIDX, nickName, userLevel, historyIDX, teamIDX, 
	classType, classGender, classFace, classHair, classSkinColor, classHairColor, classUnderwear, 
	classGear1, classGear2, classGear3, classGear4, regDate
)
SELECT a.accountIDX, b.nickName, c.userLevel, @historyIDX, @teamIDX, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, GETDATE()
  FROM dbo.userLeagueTeamMemberDB a WITH(NOLOCK)
  JOIN dbo.userMemberDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
  JOIN dbo.userGameDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX
 WHERE a.teamIDX=@teamIDX

INSERT INTO @winnerAccountIDX (accountIDX)
SELECT accountIDX
  FROM dbo.userLeagueWinnerInfoDB WITH(NOLOCK)
 WHERE teamIDX=@teamIDX


DECLARE selectCharacter CURSOR
FOR
SELECT accountIDX FROM @winnerAccountIDX
FOR READ ONLY	

OPEN selectCharacter

DECLARE @winnerIDX INT
FETCH NEXT FROM selectCharacter INTO @winnerIDX

WHILE @@FETCH_STATUS = 0
BEGIN
	SET @classCnt = (
		SELECT COUNT(*) FROM dbo.userCharacterDB WITH(NOLOCK) WHERE accountIDX=@winnerIDX
	)

	IF (@classCnt > 0)
	BEGIN
		IF (EXISTS(SELECT * FROM dbo.userCharacterDB WITH(NOLOCK) WHERE accountIDX=@winnerIDX AND leaderType=1))
		BEGIN
			SELECT TOP 1
				@classType = ClassType,
				@CI_gender = CI_gender,
				@CI_face = CI_face,
				@CI_hair = CI_hair,
				@CI_skinColor = CI_skinColor,
				@CI_hairColor = CI_hairColor,
				@CI_underwear = CI_underwear,
				@EI1_type = EI1_type,
				@EI2_type = EI2_type,
				@EI3_type = EI3_type,
				@EI4_type = EI4_type
			  FROM dbo.userCharacterDB WITH(NOLOCK)
			 WHERE accountIDX = @winnerIDX
			   AND leaderType=1
		END
		ELSE
		BEGIN
			SELECT TOP 1
				@classType = ClassType,
				@CI_gender = CI_gender,
				@CI_face = CI_face,
				@CI_hair = CI_hair,
				@CI_skinColor = CI_skinColor,
				@CI_hairColor = CI_hairColor,
				@CI_underwear = CI_underwear,
				@EI1_type = EI1_type,
				@EI2_type = EI2_type,
				@EI3_type = EI3_type,
				@EI4_type = EI4_type
			  FROM dbo.userCharacterDB WITH(NOLOCK)
			 WHERE accountIDX = @winnerIDX
			 ORDER BY CI_position ASC
		END

		IF (@EI1_type > 0)
		BEGIN
			SET @classGear1 = ISNULL(dbo.SELECT_GEAR_CODE(@winnerIDX, @EI1_type), 0)
		END

		IF (@EI2_type > 0)
		BEGIN
			SET @classGear2 = ISNULL(dbo.SELECT_GEAR_CODE(@winnerIDX, @EI2_type), 0)
		END

		IF (@EI3_type > 0)
		BEGIN
			SET @classGear3 = ISNULL(dbo.SELECT_GEAR_CODE(@winnerIDX, @EI3_type), 0)
		END

		IF (@EI4_type > 0)
		BEGIN
			SET @classGear4 = ISNULL(dbo.SELECT_GEAR_CODE(@winnerIDX, @EI4_type), 0)
		END

		UPDATE dbo.userLeagueWinnerInfoDB
		   SET classType = @classType,
			   classGender = @CI_gender,
			   classFace = @CI_face,
			   classHair = @CI_hair,
			   classSkinColor = @CI_skinColor,
			   classHairColor = @CI_hairColor,
			   classUnderwear = @CI_underwear,
			   classGear1 = @classGear1,
			   classGear2 = @classGear2,
			   classGear3 = @classGear3,
			   classGear4 = @classGear4
		 WHERE accountIDX=@winnerIDX
		   AND teamIDX=@teamIDX
	END

	FETCH NEXT FROM selectCharacter INTO @winnerIDX
END

CLOSE selectCharacter
DEALLOCATE selectCharacter
GO


-- ----------------------------
-- Procedure structure for game_questcomplete_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_questcomplete_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_questcomplete_add]
GO

CREATE PROCEDURE [dbo].[game_questcomplete_add]
(
	@accountIDX int
,	@quest1_type int
,	@quest1_time int
,	@quest2_type int
,	@quest2_time int
,	@quest3_type int
,	@quest3_time int
,	@quest4_type int
,	@quest4_time int
,	@quest5_type int
,	@quest5_time int
,	@quest6_type int
,	@quest6_time int
,	@quest7_type int
,	@quest7_time int
,	@quest8_type int
,	@quest8_time int
,	@quest9_type int
,	@quest9_time int
,	@quest10_type int
,	@quest10_time int
,	@quest11_type int
,	@quest11_time int
,	@quest12_type int
,	@quest12_time int
,	@quest13_type int
,	@quest13_time int
,	@quest14_type int
,	@quest14_time int
,	@quest15_type int
,	@quest15_time int
,	@quest16_type int
,	@quest16_time int
,	@quest17_type int
,	@quest17_time int
,	@quest18_type int
,	@quest18_time int
,	@quest19_type int
,	@quest19_time int
,	@quest20_type int
,	@quest20_time int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userQuestCompleteDB (
	accountIDX,
	quest1_type, quest1_time, quest2_type, quest2_time, quest3_type, quest3_time, quest4_type, quest4_time, quest5_type, quest5_time, 
	quest6_type, quest6_time, quest7_type, quest7_time, quest8_type, quest8_time, quest9_type, quest9_time, quest10_type, quest10_time, 
	quest11_type, quest11_time, quest12_type, quest12_time, quest13_type, quest13_time, quest14_type, quest14_time, quest15_type, quest15_time, 
	quest16_type, quest16_time, quest17_type, quest17_time, quest18_type, quest18_time, quest19_type, quest19_time, quest20_type, quest20_time) 
VALUES (@accountIDX,
	@quest1_type, @quest1_time, @quest2_type, @quest2_time, @quest3_type, @quest3_time, @quest4_type, @quest4_time, @quest5_type, @quest5_time, 
	@quest6_type, @quest6_time, @quest7_type, @quest7_time, @quest8_type, @quest8_time, @quest9_type, @quest9_time, @quest10_type, @quest10_time, 
	@quest11_type, @quest11_time, @quest12_type, @quest12_time, @quest13_type, @quest13_time, @quest14_type, @quest14_time, @quest15_type, @quest15_time, 
	@quest16_type, @quest16_time, @quest17_type, @quest17_time, @quest18_type, @quest18_time, @quest19_type, @quest19_time, @quest20_type, @quest20_time
)
GO


-- ----------------------------
-- Procedure structure for game_league_round_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_round_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_round_save]
GO

CREATE PROCEDURE [dbo].[game_league_round_save]
(
	@idx int
,	@roundType1_playDate int
,	@roundType1_presentCode1 int
,	@roundType1_presentCode2 int
,	@roundType1_presentCode3 int
,	@roundType1_presentCode4 int
,	@roundType2_playDate int
,	@roundType2_presentCode1 int
,	@roundType2_presentCode2 int
,	@roundType2_presentCode3 int
,	@roundType2_presentCode4 int
,	@roundType3_playDate int
,	@roundType3_presentCode1 int
,	@roundType3_presentCode2 int
,	@roundType3_presentCode3 int
,	@roundType3_presentCode4 int
,	@roundType4_playDate int
,	@roundType4_presentCode1 int
,	@roundType4_presentCode2 int
,	@roundType4_presentCode3 int
,	@roundType4_presentCode4 int
,	@roundType5_playDate int
,	@roundType5_presentCode1 int
,	@roundType5_presentCode2 int
,	@roundType5_presentCode3 int
,	@roundType5_presentCode4 int
,	@roundType6_playDate int
,	@roundType6_presentCode1 int
,	@roundType6_presentCode2 int
,	@roundType6_presentCode3 int
,	@roundType6_presentCode4 int
,	@roundType7_playDate int
,	@roundType7_presentCode1 int
,	@roundType7_presentCode2 int
,	@roundType7_presentCode3 int
,	@roundType7_presentCode4 int
,	@roundType8_playDate int
,	@roundType8_presentCode1 int
,	@roundType8_presentCode2 int
,	@roundType8_presentCode3 int
,	@roundType8_presentCode4 int
,	@roundType9_playDate int
,	@roundType9_presentCode1 int
,	@roundType9_presentCode2 int
,	@roundType9_presentCode3 int
,	@roundType9_presentCode4 int
,	@roundType10_playDate int
,	@roundType10_presentCode1 int
,	@roundType10_presentCode2 int
,	@roundType10_presentCode3 int
,	@roundType10_presentCode4 int
,	@roundType11_playDate int
,	@roundType11_presentCode1 int
,	@roundType11_presentCode2 int
,	@roundType11_presentCode3 int
,	@roundType11_presentCode4 int
)
AS

SET NOCOUNT ON

UPDATE dbo.userLeagueRoundDB
   SET roundType1_playDate = @roundType1_playDate,
	   roundType1_presentCode1 = @roundType1_presentCode1,
	   roundType1_presentCode2 = @roundType1_presentCode2,
	   roundType1_presentCode3 = @roundType1_presentCode3,
	   roundType1_presentCode4 = @roundType1_presentCode4,
	   roundType2_playDate = @roundType2_playDate,
	   roundType2_presentCode1 = @roundType2_presentCode1,
	   roundType2_presentCode2 = @roundType2_presentCode2,
	   roundType2_presentCode3 = @roundType2_presentCode3,
	   roundType2_presentCode4 = @roundType2_presentCode4,
	   roundType3_playDate = @roundType3_playDate,
	   roundType3_presentCode1 = @roundType3_presentCode1,
	   roundType3_presentCode2 = @roundType3_presentCode2,
	   roundType3_presentCode3 = @roundType3_presentCode3,
	   roundType3_presentCode4 = @roundType3_presentCode4,
	   roundType4_playDate = @roundType4_playDate,
	   roundType4_presentCode1 = @roundType4_presentCode1,
	   roundType4_presentCode2 = @roundType4_presentCode2,
	   roundType4_presentCode3 = @roundType4_presentCode3,
	   roundType4_presentCode4 = @roundType4_presentCode4,
	   roundType5_playDate = @roundType5_playDate,
	   roundType5_presentCode1 = @roundType5_presentCode1,
	   roundType5_presentCode2 = @roundType5_presentCode2,
	   roundType5_presentCode3 = @roundType5_presentCode3,
	   roundType5_presentCode4 = @roundType5_presentCode4,
	   roundType6_playDate = @roundType6_playDate,
	   roundType6_presentCode1 = @roundType6_presentCode1,
	   roundType6_presentCode2 = @roundType6_presentCode2,
	   roundType6_presentCode3 = @roundType6_presentCode3,
	   roundType6_presentCode4 = @roundType6_presentCode4,
	   roundType7_playDate = @roundType7_playDate,
	   roundType7_presentCode1 = @roundType7_presentCode1,
	   roundType7_presentCode2 = @roundType7_presentCode2,
	   roundType7_presentCode3 = @roundType7_presentCode3,
	   roundType7_presentCode4 = @roundType7_presentCode4,
	   roundType8_playDate = @roundType8_playDate,
	   roundType8_presentCode1 = @roundType8_presentCode1,
	   roundType8_presentCode2 = @roundType8_presentCode2,
	   roundType8_presentCode3 = @roundType8_presentCode3,
	   roundType8_presentCode4 = @roundType8_presentCode4,
	   roundType9_playDate = @roundType9_playDate,
	   roundType9_presentCode1 = @roundType9_presentCode1,
	   roundType9_presentCode2 = @roundType9_presentCode2,
	   roundType9_presentCode3 = @roundType9_presentCode3,
	   roundType9_presentCode4 = @roundType9_presentCode4,
	   roundType10_playDate = @roundType10_playDate,
	   roundType10_presentCode1 = @roundType10_presentCode1,
	   roundType10_presentCode2 = @roundType10_presentCode2,
	   roundType10_presentCode3 = @roundType10_presentCode3,
	   roundType10_presentCode4 = @roundType10_presentCode4,
	   roundType11_playDate = @roundType11_playDate,
	   roundType11_presentCode1 = @roundType11_presentCode1,
	   roundType11_presentCode2 = @roundType11_presentCode2,
	   roundType11_presentCode3 = @roundType11_presentCode3,
	   roundType11_presentCode4 = @roundType11_presentCode4
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_server_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_server_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_server_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_server_get_self_index]
(
	@serverID bigint
)
AS

SET NOCOUNT ON

SELECT idx
  FROM dbo.define_game_server
 WHERE serverID=@serverID
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

INSERT INTO dbo.log_data_pcroom (accountIDX, nickName, playTime, userIP, pcnum, logType, pcrType, regDate)
VALUES (@accountIDX, @nickName, @playTime, @userIP, @pcnum, @logType, @pcrType, getdate())
GO


-- ----------------------------
-- Procedure structure for game_league_winner_history
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_winner_history]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_winner_history]
GO

CREATE PROCEDURE [dbo].[game_league_winner_history]
(
	@leagueTitle nvarchar(20)
,	@startDate int
,	@endDate int
,	@teamIDX int
,	@teamName nvarchar(20)
,	@factionName nvarchar(20)
,	@factionType int
)
AS

SET NOCOUNT ON

IF (NOT EXISTS(SELECT * FROM dbo.userLeagueWinnerHistoryDB WHERE startDate=@startDate AND teamIDX > 0))
BEGIN
	INSERT INTO dbo.userLeagueWinnerHistoryDB (
		leagueTitle, startDate, endDate, teamIDX, teamName, factionName, factionType, regDate
	)
	VALUES (
		@leagueTitle, @startDate, @endDate, @teamIDX, @teamName, @factionName, @factionType, GETDATE()
	)

	IF (@teamIDX > 0)
	BEGIN
		EXEC game_league_winner_info_add @startDate, @teamIDX
	END
END
GO


-- ----------------------------
-- Procedure structure for web_transaction_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_transaction_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_transaction_add]
GO

CREATE PROCEDURE [dbo].[web_transaction_add]
(
	@id int,
	@uid VARCHAR(20),
	@oid int,
	@new int,
	@total int,
	@client_ip varchar(20),
	@app_id varchar(50),
	@client_country_code varchar(20),
	@client_payout decimal,
	@oname varchar(50)
)
As

begin
	SET NOCOUNT ON 
	DECLARE @cnt int;
	SELECT @cnt = count(*) FROM WebTransaction WHERE Id = @id;
	If @cnt < 1
		BEGIN			
			-- TRAN START 
			BEGIN TRAN

			INSERT INTO WebTransaction(Id, Uid, Oid, New, Total, Time, ClientIP, AppId, ClientCountryCode, ClientPayout, OfferName)
			VALUES (@id,@uid,@oid,@new,@total,getdate(), @client_ip, @app_id, @client_country_code, @client_payout, @oname);
			
			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (2)
			END

			UPDATE m
			SET realcash += @new
			FROM userMoneyDB m
			INNER JOIN userMemberDB u
			on m.accountIDX = u.accountIDX
			WHERE u.userID = @uid;

			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (3)
			END		

			-- COMMIT TRAN
			COMMIT TRAN 

			RETURN (1)
		END
	ELSE
		-- TRAN START 
		BEGIN TRAN

		UPDATE WebTransaction
		SET
			Uid = @uid, 
			Oid = @oid, 
			New = @new, 
			Total = @total, 
			Time = getdate(),
			ClientIP = @client_ip,
			AppId = @app_id,
			ClientCountryCode = @client_country_code,
			ClientPayout = @client_payout,
			OfferName = @oname
		WHERE Id = @id;
		
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (4)
		END

		-- COMMIT TRAN
		COMMIT TRAN 

		RETURN (1)
end
GO


-- ----------------------------
-- Procedure structure for game_questcomplete_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_questcomplete_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_questcomplete_get_list]
GO

CREATE PROCEDURE [dbo].[game_questcomplete_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   quest1_type, quest1_time, quest2_type, quest2_time, quest3_type, quest3_time, quest4_type, quest4_time, quest5_type, quest5_time, 
	   quest6_type, quest6_time, quest7_type, quest7_time, quest8_type, quest8_time, quest9_type, quest9_time, quest10_type, quest10_time, 
	   quest11_type, quest11_time, quest12_type, quest12_time, quest13_type, quest13_time, quest14_type, quest14_time, quest15_type, quest15_time, 
	   quest16_type, quest16_time, quest17_type, quest17_time, quest18_type, quest18_time, quest19_type, quest19_time, quest20_type, quest20_time 
  FROM dbo.userQuestCompleteDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GIFT_SET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GIFT_SET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GIFT_SET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GIFT_SET_DELETE]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	DELETE FROM dbo.userPresentDB
	 WHERE idx = @TABLE_IDX
	   AND receiveIDX = @ACCOUNT_IDX

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_item_medal_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_add]
GO

CREATE PROCEDURE [dbo].[game_item_medal_add]
(
	@accountIDX int
,	@item1_type int
,	@item1_class int
,	@item1_limitType int
,	@item1_limitDate datetime
,	@item2_type int
,	@item2_class int
,	@item2_limitType int
,	@item2_limitDate datetime
,	@item3_type int
,	@item3_class int
,	@item3_limitType int
,	@item3_limitDate datetime
,	@item4_type int
,	@item4_class int
,	@item4_limitType int
,	@item4_limitDate datetime
,	@item5_type int
,	@item5_class int
,	@item5_limitType int
,	@item5_limitDate datetime
,	@item6_type int
,	@item6_class int
,	@item6_limitType int
,	@item6_limitDate datetime
,	@item7_type int
,	@item7_class int
,	@item7_limitType int
,	@item7_limitDate datetime
,	@item8_type int
,	@item8_class int
,	@item8_limitType int
,	@item8_limitDate datetime
,	@item9_type int
,	@item9_class int
,	@item9_limitType int
,	@item9_limitDate datetime
,	@item10_type int
,	@item10_class int
,	@item10_limitType int
,	@item10_limitDate datetime
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userItemMedalDB (
	accountIDX,
	item1_type, item1_class, item1_limitType, item1_limitDate, item2_type, item2_class, item2_limitType, item2_limitDate,
	item3_type, item3_class, item3_limitType, item3_limitDate, item4_type, item4_class, item4_limitType, item4_limitDate,
	item5_type, item5_class, item5_limitType, item5_limitDate, item6_type, item6_class, item6_limitType, item6_limitDate,
	item7_type, item7_class, item7_limitType, item7_limitDate, item8_type, item8_class, item8_limitType, item8_limitDate,
	item9_type, item9_class, item9_limitType, item9_limitDate, item10_type, item10_class, item10_limitType, item10_limitDate,
	regDate
)
VALUES (
	@accountIDX,
	@item1_type, @item1_class, @item1_limitType, @item1_limitDate, @item2_type, @item2_class, @item2_limitType, @item2_limitDate,
	@item3_type, @item3_class, @item3_limitType, @item3_limitDate, @item4_type, @item4_class, @item4_limitType, @item4_limitDate,
	@item5_type, @item5_class, @item5_limitType, @item5_limitDate, @item6_type, @item6_class, @item6_limitType, @item6_limitDate,
	@item7_type, @item7_class, @item7_limitType, @item7_limitDate, @item8_type, @item8_class, @item8_limitType, @item8_limitDate,
	@item9_type, @item9_class, @item9_limitType, @item9_limitDate, @item10_type, @item10_class, @item10_limitType, @item10_limitDate,
	GETDATE()
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
As

	INSERT INTO log_data_quest (accountIDX, nickName, userLevel, mainIDX, subIDX, logType, regDate)
	VALUES (@accountIDX, @nickName, @userLevel, @mainIDX, @subIDX, @logType, getdate())
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_QUESTINGINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_QUESTINGINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_QUESTINGINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_QUESTINGINFO]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, questType, questValue1, questValue2, questTime
  FROM (
	SELECT *
	  FROM dbo.userQuestDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
  ) AS Quest
UNPIVOT (questType FOR qtype IN (quest1_type, quest2_type, quest3_type, quest4_type, quest5_type, quest6_type, quest7_type, quest8_type, quest9_type, quest10_type, quest11_type, quest12_type, quest13_type, quest14_type, quest15_type, quest16_type, quest17_type, quest18_type, quest19_type, quest20_type)
) AS UNP1
UNPIVOT (questValue1 FOR qvalue1 IN (quest1_value1, quest2_value1, quest3_value1, quest4_value1, quest5_value1, quest6_value1, quest7_value1, quest8_value1, quest9_value1, quest10_value1, quest11_value1, quest12_value1, quest13_value1, quest14_value1, quest15_value1, quest16_value1, quest17_value1, quest18_value1, quest19_value1, quest20_value1)
) AS UNP2
UNPIVOT (questValue2 FOR qvalue2 IN (quest1_value2, quest2_value2, quest3_value2, quest4_value2, quest5_value2, quest6_value2, quest7_value2, quest8_value2, quest9_value2, quest10_value2, quest11_value2, quest12_value2, quest13_value2, quest14_value2, quest15_value2, quest16_value2, quest17_value2, quest18_value2, quest19_value2, quest20_value2)
) AS UNP3
UNPIVOT (questTime FOR qtime IN (quest1_time, quest2_time, quest3_time, quest4_time, quest5_time, quest6_time, quest7_time, quest8_time, quest9_time, quest10_time, quest11_time, quest12_time, quest13_time, quest14_time, quest15_time, quest16_time, quest17_time, quest18_time, quest19_time, quest20_time)
) AS UNP4
 WHERE SUBSTRING(qtype, 6, 2) = SUBSTRING(qvalue1, 6, 2)
   AND SUBSTRING(qtype, 6, 2) = SUBSTRING(qvalue2, 6, 2)
   AND SUBSTRING(qtype, 6, 2) = SUBSTRING(qtime, 6, 2)
   AND questType != 0
GO


-- ----------------------------
-- Procedure structure for game_member_get_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_get_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_get_count]
GO

CREATE PROCEDURE [dbo].[game_member_get_count]
(
	@nickname varchar(20)
)
AS

SET NOCOUNT ON

SELECT COUNT(*)
  FROM dbo.userMemberDB WITH(NOLOCK)
 WHERE nickname=@nickname
GO


-- ----------------------------
-- Procedure structure for game_encode_get_fix_key
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_encode_get_fix_key]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_encode_get_fix_key]
GO

CREATE PROCEDURE [dbo].[game_encode_get_fix_key]

AS

SET NOCOUNT ON

SELECT encodeKey
  FROM dbo.define_encode_key WITH(NOLOCK)
 WHERE idx = (
	SELECT MAX(idx)
	  FROM dbo.define_encode_key WITH(NOLOCK)
	)
GO


-- ----------------------------
-- Procedure structure for web_roulette_useritem_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_useritem_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_useritem_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_useritem_get]
(
	@itemid int,
	@userId varchar(20) = NULL
)
As
BEGIN
IF @userId IS NOT NULL
	SELECT 
		i.Name,
		u.Amount
	FROM
	(
		SELECT
			l.Username,
			ISNULL(u.ItemId, @itemid) As ItemId,
			ISNULL(u.Amount, 0) AS Amount
		FROM WebLogin l WITH (NOLOCK)
		LEFT JOIN WebRouletteUserItem u WITH (NOLOCK)
		ON u.AccountIdx = l.Id AND u.ItemId = @itemid
		WHERE Username = @userId
	) u
	INNER JOIN WebRouletteItem i WITH (NOLOCK)
	ON i.Id = u.ItemId
	WHERE i.Id = @itemid;
ELSE
	SELECT 
		i.Name,
		0 AS Amount
	FROM WebRouletteItem i WITH (NOLOCK)
	WHERE i.Id = @itemId;
END
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
As

	INSERT INTO log_data_time (accountIDX, nickName, playTime, logType, regDate)
	VALUES (@accountIDX, @nickName, @playTime, @logType, getdate())
GO


-- ----------------------------
-- Procedure structure for game_friend_best_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_best_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_best_save]
GO

CREATE PROCEDURE [dbo].[game_friend_best_save]
(
	@idx int
,	@flag int
,	@flagTime int
)
AS

SET NOCOUNT ON

UPDATE dbo.userFriendBestDB
   SET flag=@flag,
	   flagTime=@flagTime
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_ability_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_ability_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_ability_add]
GO

CREATE PROCEDURE [dbo].[game_ability_add]
(
	@accountIDX int
,	@class1_type int
,	@class1_basic01 tinyint
,	@class1_basic02 tinyint
,	@class1_basic03 tinyint
,	@class1_basic04 tinyint
,	@class1_skill1_sd tinyint
,	@class1_skill1_asd tinyint
,	@class1_skill1_ad tinyint
,	@class1_skill1_as tinyint
,	@class1_timeslot int
,	@class1_limitdate datetime
,	@class2_type int
,	@class2_basic01 tinyint
,	@class2_basic02 tinyint
,	@class2_basic03 tinyint
,	@class2_basic04 tinyint
,	@class2_skill1_sd tinyint
,	@class2_skill1_asd tinyint
,	@class2_skill1_ad tinyint
,	@class2_skill1_as tinyint
,	@class2_timeslot int
,	@class2_limitdate datetime
,	@class3_type int
,	@class3_basic01 tinyint
,	@class3_basic02 tinyint
,	@class3_basic03 tinyint
,	@class3_basic04 tinyint
,	@class3_skill1_sd tinyint
,	@class3_skill1_asd tinyint
,	@class3_skill1_ad tinyint
,	@class3_skill1_as tinyint
,	@class3_timeslot int
,	@class3_limitdate datetime
,	@class4_type int
,	@class4_basic01 tinyint
,	@class4_basic02 tinyint
,	@class4_basic03 tinyint
,	@class4_basic04 tinyint
,	@class4_skill1_sd tinyint
,	@class4_skill1_asd tinyint
,	@class4_skill1_ad tinyint
,	@class4_skill1_as tinyint
,	@class4_timeslot int
,	@class4_limitdate datetime
,	@class5_type int
,	@class5_basic01 tinyint
,	@class5_basic02 tinyint
,	@class5_basic03 tinyint
,	@class5_basic04 tinyint
,	@class5_skill1_sd tinyint
,	@class5_skill1_asd tinyint
,	@class5_skill1_ad tinyint
,	@class5_skill1_as tinyint
,	@class5_timeslot int
,	@class5_limitdate datetime
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userAbilityDB (
	accountIDX,
	class1_type, class1_basic01, class1_basic02, class1_basic03, class1_basic04, class1_skill1_sd, class1_skill1_asd, class1_skill1_ad, class1_skill1_as, class1_timeslot, class1_limitdate,
	class2_type, class2_basic01, class2_basic02, class2_basic03, class2_basic04, class2_skill1_sd, class2_skill1_asd, class2_skill1_ad, class2_skill1_as, class2_timeslot, class2_limitdate,
	class3_type, class3_basic01, class3_basic02, class3_basic03, class3_basic04, class3_skill1_sd, class3_skill1_asd, class3_skill1_ad, class3_skill1_as, class3_timeslot, class3_limitdate,
	class4_type, class4_basic01, class4_basic02, class4_basic03, class4_basic04, class4_skill1_sd, class4_skill1_asd, class4_skill1_ad, class4_skill1_as, class4_timeslot, class4_limitdate,
	class5_type, class5_basic01, class5_basic02, class5_basic03, class5_basic04, class5_skill1_sd, class5_skill1_asd, class5_skill1_ad, class5_skill1_as, class5_timeslot, class5_limitdate,
	regDate
)
VALUES (
	@accountIDX,
	@class1_type, @class1_basic01, @class1_basic02, @class1_basic03, @class1_basic04, @class1_skill1_sd, @class1_skill1_asd, @class1_skill1_ad, @class1_skill1_as, @class1_timeslot, @class1_limitdate,
	@class2_type, @class2_basic01, @class2_basic02, @class2_basic03, @class2_basic04, @class2_skill1_sd, @class2_skill1_asd, @class2_skill1_ad, @class2_skill1_as, @class2_timeslot, @class2_limitdate,
	@class3_type, @class3_basic01, @class3_basic02, @class3_basic03, @class3_basic04, @class3_skill1_sd, @class3_skill1_asd, @class3_skill1_ad, @class3_skill1_as, @class3_timeslot, @class3_limitdate,
	@class4_type, @class4_basic01, @class4_basic02, @class4_basic03, @class4_basic04, @class4_skill1_sd, @class4_skill1_asd, @class4_skill1_ad, @class4_skill1_as, @class4_timeslot, @class4_limitdate,
	@class5_type, @class5_basic01, @class5_basic02, @class5_basic03, @class5_basic04, @class5_skill1_sd, @class5_skill1_asd, @class5_skill1_ad, @class5_skill1_as, @class5_timeslot, @class5_limitdate,
	GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for log_gameLog_set_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[log_gameLog_set_log]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[log_gameLog_set_log]
GO

CREATE PROCEDURE [dbo].[log_gameLog_set_log]

	@LOG_TYPE			INT,
	@ACCOUNT_IDX		INT,
	@USER_ID			VARCHAR(20),
	@USER_NAME			VARCHAR(20),
	@USER_LEVEL			INT,
	@USER_EXP			INT,
	@CHANNEL_TYPE		INT,
	@TBL_INDEX			INT,
	@OBJECT_CODE		INT,
	@EVENT_TYPE			TINYINT,	
	@PARAM_1			INT,
	@PARAM_2			INT,
	@PARAM_3			INT,
	@PARAM_4			INT,
	@PARAM_5			VARCHAR(50),
	@USER_IP			VARCHAR(15)
	
AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	DECLARE @nReturn			INT	
	DECLARE @REG_DATE			DATETIME

	SET @nReturn=0			-- True
	SET @REG_DATE=GETDATE()	
		
	INSERT dbo.GAME_LOG WITH (XLOCK, ROWLOCK) (RegDate, LogType, AccountIDX, UserID, UserName, UserLevel, UserExp, CpType, TBLIDX, ObjCode, EventType, Param1, Param2, Param3, Param4, Param5, UserIP)
	VALUES (@REG_DATE, @LOG_TYPE, @ACCOUNT_IDX, @USER_ID, @USER_NAME, @USER_LEVEL, @USER_EXP, @CHANNEL_TYPE, @TBL_INDEX, @OBJECT_CODE, @EVENT_TYPE, @PARAM_1, @PARAM_2, @PARAM_3, @PARAM_4, @PARAM_5, @USER_IP)
				
	
	RETURN 0;
GO


-- ----------------------------
-- Procedure structure for game_sbox_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_sbox_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_sbox_add]
GO

CREATE PROCEDURE [dbo].[game_sbox_add]
  
 @accountIDX  INT,  
 @presentType SMALLINT,  
 @value1   INT,  
 @value2   INT,  
 @amount   INT,  
 @bonusAmount INT,  
 @flag   SMALLINT,  
 @billingID  VARCHAR(64),  
 @limitDate  DATETIME  
  
AS  
  
SET NOCOUNT ON;  
  
INSERT INTO dbo.userSBoxDB (  
 accountIDX, presentType, value1, value2, amount,  flag, billingID, limitDate, regDate  
)  
VALUES (  
 @accountIDX, @presentType, @value1, @value2, @amount,  @flag, @billingID, @limitDate, GETDATE()  
)
GO


-- ----------------------------
-- Procedure structure for game_money_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_money_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_money_get]
GO

CREATE PROCEDURE [dbo].[game_money_get]  
(
	@ACCOUNTIDX INT  
)

AS  

SET NOCOUNT ON;  
   
SELECT realCash, bonusCash FROM dbo.userMoneyDB WHERE accountIDX = @ACCOUNTIDX
GO


-- ----------------------------
-- Procedure structure for game_event_PirateRoulette_number_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_PirateRoulette_number_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_PirateRoulette_number_get]
GO

CREATE PROCEDURE [dbo].[game_event_PirateRoulette_number_get]  
(  
 @accountIDX int  
)  
AS  
  
SET NOCOUNT ON  
  
IF ( EXISTS(SELECT * FROM dbo.userEventPirateRoulette_Number WITH( NOLOCK ) WHERE accountIDX = @accountIDX) )  
BEGIN  
 SELECT HP, slot1, slot2, slot3, slot4, slot5  
  , slot6, slot7, slot8, slot9, slot10  
  , slot11, slot12, slot13, slot14, slot15  
  , slot16, slot17, slot18, slot19, slot20  
  , slot21, slot22, slot23, slot24, slot25  
  , slot26, slot27, slot28, slot29, slot30  
  , slot31, slot32, slot33, slot34, slot35  
  , slot36, slot37, slot38, slot39, slot40   
   FROM dbo.userEventPirateRoulette_Number WITH( NOLOCK )  
   
  WHERE accountIDX = @accountIDX  
END  
ELSE  
BEGIN  
 SELECT -1 AS HP  
  , 0 AS slot1, 0 AS slot2, 0 AS slot3, 0 AS slot4, 0 AS slot5  
  , 0 AS slot6, 0 AS slot7, 0 AS slot8, 0 AS slot9, 0 AS slot10  
  , 0 AS slot11, 0 AS slot12, 0 AS slot13, 0 AS slot14, 0 AS slot15  
  , 0 AS slot16, 0 AS slot17, 0 AS slot18, 0 AS slot19, 0 AS slot20  
  , 0 AS slot21, 0 AS slot22, 0 AS slot23, 0 AS slot24, 0 AS slot25  
  , 0 AS slot26, 0 AS slot27, 0 AS slot28, 0 AS slot29, 0 AS slot30  
  , 0 AS slot31, 0 AS slot32, 0 AS slot33, 0 AS slot34, 0 AS slot35  
  , 0 AS slot36, 0 AS slot37, 0 AS slot38, 0 AS slot39, 0 AS slot40  
END
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
	INSERT INTO log_buy_item_class (accountIDX, nickName, userLevel, classType, limitType, eventType, amount, userIP, note, regDate)
	VALUES (@accountIDX, @nickName, @userLevel, @classType, @limitType, @eventType, @amount, @userIP, @note, getdate())
GO


-- ----------------------------
-- Procedure structure for game_item_etc_get_data_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_etc_get_data_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_etc_get_data_list]
GO

CREATE PROCEDURE [dbo].[game_item_etc_get_data_list]
(
	@accountIDX int
)
As

SET NOCOUNT ON

SELECT idx,
	   item1_type, item1_value1, item1_value2, item2_type, item2_value1, item2_value2, item3_type, item3_value1, item3_value2, 
	   item4_type, item4_value1, item4_value2, item5_type, item5_value1, item5_value2, item6_type, item6_value1, item6_value2, 
	   item7_type, item7_value1, item7_value2, item8_type, item8_value1, item8_value2, item9_type, item9_value1, item9_value2, 
	   item10_type, item10_value1, item10_value2, item11_type, item11_value1, item11_value2, item12_type, item12_value1, item12_value2, 
	   item13_type, item13_value1, item13_value2, item14_type, item14_value1, item14_value2, item15_type, item15_value1, item15_value2, 
	   item16_type, item16_value1, item16_value2, item17_type, item17_value1, item17_value2, item18_type, item18_value1, item18_value2,
	   item19_type, item19_value1, item19_value2, item20_type, item20_value1, item20_value2 
  FROM dbo.userItemEtcDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_league_winner_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_winner_info]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_winner_info]
GO

CREATE PROCEDURE [dbo].[game_league_winner_info]
(
	@historyIDX int
)
AS

SET NOCOUNT ON

SELECT accountIDX, nickName, userLevel,
	   classType, classGender, classFace, classHair, classSkinColor, classHairColor, classUnderwear,
	   classGear1, classGear2, classGear3, classGear4
  FROM dbo.userLeagueWinnerInfoDB WITH(NOLOCK)
 WHERE historyIDX=@historyIDX
GO


-- ----------------------------
-- Procedure structure for web_noticetype_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_noticetype_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_noticetype_get]
GO

CREATE PROCEDURE [dbo].[web_noticetype_get]
As
	SELECT
		Id,
		Name,
		ColorId
	FROM WebNoticeType WITH (NOLOCK)
	ORDER BY Id ASC
GO


-- ----------------------------
-- Procedure structure for web_quest_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_quest_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_quest_get]
GO

CREATE PROCEDURE [dbo].[web_quest_get]
(
	@Id int,
	@User varchar(20)
)
As
BEGIN
	SET NOCOUNT ON
	DECLARE @accountIdx int;
	DECLARE @type int;
	DECLARE @start datetime;
	DECLARE @end datetime;

	SELECT @type = QuestType, @start = QuestStartDate, @end = QuestEndDate FROM WebQuest WHERE Id = @Id;
	IF @type IS NULL OR @@ERROR <> 0
		RETURN (8) --QUEST TYPE NOT FOUND
		
	SELECT @accountIdx = Id FROM WebLogin WHERE Username = @User;
	IF @accountIdx IS NULL OR @@ERROR <> 0
		RETURN (8) --USER NOT FOUND
		
	IF @type = 1
		--Login Event
		BEGIN
			SELECT
				time.*,
				QuestTarget
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(playTime), 0) / 60  AS Progress
				FROM [LosaLogData].[dbo].[log_data_playtime] l
				where accountIDX = @accountIdx
				AND regDate >= @start
				AND regDate < @end
				group by accountIDX
			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND
		END
	ELSE IF @type = 2
		--BATTLE MODE Play Time
		BEGIN
			SELECT
				time.*,
				QuestTarget
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(playTime), 0) / 60 AS Progress
				FROM (
					SELECT
						accountIDX,
						modeType,
						SUM(playTime) + SUM(deathTime) AS 'playTime'
					FROM  [LosaLogData].[dbo].[log_data_play] l
					INNER JOIN WebQuest q
					ON q.PlayType = l.playType AND q.Mode = l.modeType
					WHERE regDate >= @start
					AND regDate < @end
					AND q.Id = @Id
					GROUP BY accountIDX, modetype
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id			

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND
		END
	ELSE IF @type = 3
		--BATTLE MODE Kill
		BEGIN
			SELECT
				time.*,
				QuestTarget
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(kill_count), 0) AS Progress
				FROM (
					SELECT
						accountIDX,
						modeType,
						SUM([kill]) AS 'kill_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l
					INNER JOIN WebQuest q
					ON q.PlayType = l.playType AND q.Mode = l.modeType
					WHERE regDate >= @start
					AND regDate < @end
					AND q.Id = @Id
					GROUP BY accountIDX, modetype
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id			

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND
		END
	ELSE IF @type = 4
		BEGIN
			SELECT
				time.*,
				QuestTarget
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(play_count), 0) AS Progress
				FROM (
					SELECT
						accountIDX,
						modeType,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l
					INNER JOIN WebQuest q
					ON q.PlayType = l.playType AND q.Mode = l.modeType
					WHERE playTime > 0
					AND peso > 0
					AND q.Id = @Id	
					AND regDate >= @start
					AND regDate < @end
					GROUP BY accountIDX, modetype
				) a
				WHERE accountIDX = 2
				GROUP BY accountIDX

			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND
		END
		
		RETURN (8) --QUEST NOT FOUND
--SELECT power = ISNULL(SUM(CASE WHEN a.modeType = 1 THEN a.playTime ELSE 0 END), 0),
--	   prisoner = ISNULL(SUM(CASE WHEN a.modeType = 2 THEN a.playTime ELSE 0 END), 0),
--	   hidden = ISNULL(SUM(CASE WHEN a.modeType = 3 THEN a.playTime ELSE 0 END), 0),
--	   death = ISNULL(SUM(CASE WHEN a.modeType = 5 THEN a.playTime ELSE 0 END), 0),
--	   teamdeath = ISNULL(SUM(CASE WHEN a.modeType = 6 THEN a.playTime ELSE 0 END), 0),
--	   bossraid = ISNULL(SUM(CASE WHEN a.modeType = 7 THEN a.playTime ELSE 0 END), 0),
--	   skeletonhero = ISNULL(SUM(CASE WHEN a.modeType = 8 THEN a.playTime ELSE 0 END), 0),
--	   soccer = ISNULL(SUM(CASE WHEN a.modeType = 9 THEN a.playTime ELSE 0 END), 0),
--	   kangsi = ISNULL(SUM(CASE WHEN a.modeType = 11 THEN a.playTime ELSE 0 END), 0),
--	   runningman = ISNULL(SUM(CASE WHEN a.modeType = 14 THEN a.playTime ELSE 0 END), 0),
--	   championplay = ISNULL(SUM(CASE WHEN a.modeType = 15 THEN a.playTime ELSE 0 END), 0),
--	   pve = ISNULL(SUM(CASE WHEN a.modeType = 16 THEN a.playTime ELSE 0 END), 0),
--	   pveSnow = ISNULL(SUM(CASE WHEN a.modeType = 17 THEN a.playTime ELSE 0 END), 0),
--	   pveFire = ISNULL(SUM(CASE WHEN a.modeType = 18 THEN a.playTime ELSE 0 END), 0),
--	   pveFactory = ISNULL(SUM(CASE WHEN a.modeType = 21 THEN a.playTime ELSE 0 END), 0),
--       doubleHidden = ISNULL(SUM(CASE WHEN a.modeType = 19 THEN a.playTime ELSE 0 END), 0),
--       ai = ISNULL(SUM(CASE WHEN a.modeType = 22 THEN a.playTime ELSE 0 END), 0),
--	   GETDATE()
--  FROM (
--	SELECT modeType, SUM(playTime) + SUM(deathTime) AS 'playTime'
--	  FROM dbo.log_data_play
--	 WHERE playType = 4
--	 AND accountIDX = 2
--	   --AND regDate >= @startDate
--	   --AND regdate < @endDate
--	 GROUP BY modetype
--) a

END
GO


-- ----------------------------
-- Procedure structure for game_present_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_delete]
GO

CREATE PROCEDURE [dbo].[game_present_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userPresentDB
 WHERE idx=@idx
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
	INSERT INTO log_buy_item_decoration (accountIDX, nickName, classType, kindred, itemType, itemCode, eventType, amount, userIP, note, regDate)
	VALUES (@accountIDX, @nickName, @classType, @kindred, @itemType, @itemCode, @eventType, @amount, @userIP, @note, getdate())
GO


-- ----------------------------
-- Procedure structure for game_sbox_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_sbox_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_sbox_delete]
GO

CREATE PROCEDURE [dbo].[game_sbox_delete]
(
	@idx INT
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userSBoxDB
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_QUESTINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_QUESTINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_QUESTINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_QUESTINFO]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, questType, questTime
  FROM (
	SELECT *
	  FROM dbo.userQuestCompleteDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
  ) AS Quest
UNPIVOT (questType FOR qtype IN (quest1_type, quest2_type, quest3_type, quest4_type, quest5_type, quest6_type, quest7_type, quest8_type, quest9_type, quest10_type, quest11_type, quest12_type, quest13_type, quest14_type, quest15_type, quest16_type, quest17_type, quest18_type, quest19_type, quest20_type)
) AS UNP1
UNPIVOT (questTime FOR qtime IN (quest1_time, quest2_time, quest3_time, quest4_time, quest5_time, quest6_time, quest7_time, quest8_time, quest9_time, quest10_time, quest11_time, quest12_time, quest13_time, quest14_time, quest15_time, quest16_time, quest17_time, quest18_time, quest19_time, quest20_time)
) AS UNP2
 WHERE SUBSTRING(qtype, 6, 2) = SUBSTRING(qtime, 6, 2)
   AND questType != 0
GO


-- ----------------------------
-- Procedure structure for game_league_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_self_index]
GO

CREATE PROCEDURE [dbo].[game_league_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userLeagueListDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
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
VALUES (@accountIDX, @nickName, @itemType, @itemValue, @eventType, @amount, @userIP, @note, getdate())
GO


-- ----------------------------
-- Procedure structure for game_item_etc_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_etc_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_etc_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_item_etc_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userItemEtcDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_friend_check_member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_check_member]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_check_member]
GO

CREATE PROCEDURE [dbo].[game_friend_check_member]
(
	@friendNickName varchar (20)
)
AS

SET NOCOUNT ON

SELECT userID, nickName, accountIDX
  FROM dbo.userMemberDB WITH(NOLOCK)
 WHERE nickName = @friendNickName
GO


-- ----------------------------
-- Procedure structure for AGENT_RANKING_AWARD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_RANKING_AWARD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_RANKING_AWARD]
GO

CREATE PROCEDURE [dbo].[AGENT_RANKING_AWARD]

AS

	SET NOCOUNT ON;

	DECLARE @strSQL			VARCHAR(1000)
	DECLARE @i				TINYINT
	DECLARE @minPoint		INT
	
	SET @i = 1
	SET @minPoint = 1000;

	IF OBJECT_ID('tempdb..#TBL_RANKING_AWARD_TEMP') IS NOT NULL
	BEGIN
		DROP TABLE #TBL_RANKING_AWARD_TEMP;
	END

	CREATE TABLE #TBL_RANKING_AWARD_TEMP
	(
		accountIDX		INT,
		awardType		INT,
		point			INT
	);
	CREATE CLUSTERED INDEX CL_TBL_RANKING_AWARD_TEMP ON dbo.#TBL_RANKING_AWARD_TEMP (awardType);

	-- TBL_RANKING_AWARD 테이블 백업
	SELECT accountIDX, awardType, nowRanking
	  INTO #TBL_RANKING_AWARD_BACKUP
	  FROM dbo.TBL_RANKING_AWARD WITH (NOLOCK);

	-- TBL_RANKING_AWARD 삭제 & 생성
	IF EXISTS(SELECT * FROM information_schema.tables WHERE table_name = 'TBL_RANKING_AWARD')
	BEGIN
		DROP TABLE TBL_RANKING_AWARD;
	END

	-- 인덱스 조정 할 것.
	CREATE TABLE dbo.TBL_RANKING_AWARD
	(
		accountIDX		INT,
		awardType		INT,
		prevRanking		INT,
		nowRanking		INT,
		point			INT
	);
	CREATE CLUSTERED INDEX CL_TBL_RANKING_AWARD ON dbo.TBL_RANKING_AWARD (nowRanking);
	CREATE INDEX NC_TBL_RANKING_AWARD_accountIDX ON dbo.TBL_RANKING_AWARD (accountIDX);
	CREATE INDEX NC_TBL_RANKING_AWARD_awardType ON dbo.TBL_RANKING_AWARD (awardType);

	WHILE (@i <= 10)
	BEGIN
		SET @strSQL = ''
		SET @strSQL = @strSQL + ' INSERT INTO #TBL_RANKING_AWARD_TEMP (accountIDX, awardType, point) '
		SET @strSQL = @strSQL + ' SELECT A.accountIDX, A.award' + CAST(@i AS VARCHAR(4)) + '_type, A.award' + CAST(@i AS VARCHAR(4)) + '_point '
		SET @strSQL = @strSQL + '   FROM dbo.userAwardDB A WITH (NOLOCK) '
		SET @strSQL = @strSQL + '   left JOIN dbo.userMemberDB B WITH (NOLOCK) '
		SET @strSQL = @strSQL + '     ON A.accountIDX = B.accountIDX '
		SET @strSQL = @strSQL + '  WHERE A.award' + CAST(@i AS VARCHAR(4)) + '_type > 0 AND A.award' + CAST(@i AS VARCHAR(4)) + '_point > ' + CAST(@minPoint AS VARCHAR(4)) + ' '
		SET @strSQL = @strSQL + '    AND B.userType = 100 AND (B.limitDate < GETDATE() OR limitType <> 100) '

		EXEC (@strSQL)
		SET @i = @i + 1
	END

	SET @i = 1
	WHILE (@i <= 27)
	BEGIN
		INSERT INTO dbo.TBL_RANKING_AWARD
		SELECT TOP 50000 accountIDX, awardType, 0, RANK() OVER(ORDER BY point DESC) AS 'nowRanking', point
		  FROM #TBL_RANKING_AWARD_TEMP WITH (NOLOCK)
		 WHERE awardType = @i;

		SET @i = @i + 1
	END

	-- 이전 랭킹 업데이트
	UPDATE AR
	   SET prevRanking = BR.nowRanking
	  FROM (
		SELECT accountIDX, awardType, nowRanking
		  FROM #TBL_RANKING_AWARD_BACKUP WITH (NOLOCK)
	  ) AS BR
	  JOIN dbo.TBL_RANKING_AWARD AR
	    ON AR.accountIDX = BR.accountIDX AND AR.awardType = BR.awardType;

	DROP TABLE #TBL_RANKING_AWARD_TEMP;
	DROP TABLE #TBL_RANKING_AWARD_BACKUP;
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GEAR_SET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GEAR_SET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GEAR_SET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GEAR_SET_DELETE]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@COLUMN_NO			TINYINT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	IF (@COLUMN_NO = 1)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item1_type = 0,
		       item1_reinforce = 0,
			   item1_slotindex = 0,
			   item1_tradetype = 0,
			   item1_mcustom = 0,
			   item1_fcustom = 0,
			   item1_failexp = 0,
			   item1_limitType = 0,
			   item1_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 2)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item2_type = 0,
		       item2_reinforce = 0,
			   item2_slotindex = 0,
			   item2_tradetype = 0,
			   item2_mcustom = 0,
			   item2_fcustom = 0,
			   item2_failexp = 0,
			   item2_limitType = 0,
			   item2_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 3)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item3_type = 0,
		       item3_reinforce = 0,
			   item3_slotindex = 0,
			   item3_tradetype = 0,
			   item3_mcustom = 0,
			   item3_fcustom = 0,
			   item3_failexp = 0,
			   item3_limitType = 0,
			   item3_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 4)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item4_type = 0,
		       item4_reinforce = 0,
			   item4_slotindex = 0,
			   item4_tradetype = 0,
			   item4_mcustom = 0,
			   item4_fcustom = 0,
			   item4_failexp = 0,
			   item4_limitType = 0,
			   item4_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 5)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item5_type = 0,
		       item5_reinforce = 0,
			   item5_slotindex = 0,
			   item5_tradetype = 0,
			   item5_mcustom = 0,
			   item5_fcustom = 0,
			   item5_failexp = 0,
			   item5_limitType = 0,
			   item5_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 6)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item6_type = 0,
		       item6_reinforce = 0,
			   item6_slotindex = 0,
			   item6_tradetype = 0,
			   item6_mcustom = 0,
			   item6_fcustom = 0,
			   item6_failexp = 0,
			   item6_limitType = 0,
			   item6_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 7)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item7_type = 0,
		       item7_reinforce = 0,
			   item7_slotindex = 0,
			   item7_tradetype = 0,
			   item7_mcustom = 0,
			   item7_fcustom = 0,
			   item7_failexp = 0,
			   item7_limitType = 0,
			   item7_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 8)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item8_type = 0,
		       item8_reinforce = 0,
			   item8_slotindex = 0,
			   item8_tradetype = 0,
			   item8_mcustom = 0,
			   item8_fcustom = 0,
			   item8_failexp = 0,
			   item8_limitType = 0,
			   item8_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 9)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item9_type = 0,
		       item9_reinforce = 0,
			   item9_slotindex = 0,
			   item9_tradetype = 0,
			   item9_mcustom = 0,
			   item9_fcustom = 0,
			   item9_failexp = 0,
			   item9_limitType = 0,
			   item9_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 10)
	BEGIN
		UPDATE dbo.userItemExtraDB
		   SET item10_type = 0,
		       item10_reinforce = 0,
			   item10_slotindex = 0,
			   item10_tradetype = 0,
			   item10_mcustom = 0,
			   item10_fcustom = 0,
			   item10_failexp = 0,
			   item10_limitType = 0,
			   item10_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
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

INSERT INTO dbo.log_present (accountIDX, nickname, receiveIDX, presentType, value1, value2, eventType, userIP, note, regDate)
VALUES (@accountIDX, @nickName, @receiveIDX, @presentType, @value1, @value2, @eventType, @userIP, @note, getdate())
GO


-- ----------------------------
-- Procedure structure for game_sbox_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_sbox_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_sbox_get_list]
GO

CREATE PROCEDURE [dbo].[game_sbox_get_list]
(  
 @idx INT  
, @accountIDX INT  
, @topN INT  
)  
AS  
  
SET NOCOUNT ON  
  
SELECT TOP (@topN) idx, presentType, value1, value2, amount, 0, flag, billingID, limitDate  
  FROM dbo.userSBoxDB WITH(NOLOCK)  
 WHERE accountIDX=@accountIDX  
   AND idx > @idx
GO


-- ----------------------------
-- Procedure structure for game_money_set_bonusCash
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_money_set_bonusCash]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_money_set_bonusCash]
GO

CREATE PROCEDURE [dbo].[game_money_set_bonusCash]  
(
	@ACCOUNTIDX INT,  
	@USER_MONEY INT  
)
AS  

SET NOCOUNT ON;  

UPDATE dbo.userMoneyDB SET bonusCash = @USER_MONEY WHERE accountIDX = @ACCOUNTIDX
GO


-- ----------------------------
-- Procedure structure for game_member_get_userNickname_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_get_userNickname_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_get_userNickname_count]
GO

CREATE PROCEDURE [dbo].[game_member_get_userNickname_count]
(
	@userID varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @cnt1 int, @cnt2 int
SET @cnt1 = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB
	 WHERE userID=@userID
)
SET @cnt2 = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB
	 WHERE nickName=@userID
)

SELECT @cnt1 + @cnt2 AS 'recordCnt'
GO


-- ----------------------------
-- Procedure structure for game_event_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_add]
GO

CREATE PROCEDURE [dbo].[game_event_add]
(
	@accountIDX int
,	@value1 int
,	@value2 int
,	@eventType int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userEventDB (accountIDX, value1, value2, eventType, regDate)
VALUES (@accountIDX, @value1, @value2, @eventType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_attend_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_attend_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_attend_get_data]
GO

CREATE PROCEDURE [dbo].[game_attend_get_data]

	@ACCOUNT_IDX		INT

AS
SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000
		
	SELECT AttendCount, RewardTable, ConnectDate FROM dbo.userAttendDB WITH (READUNCOMMITTED)
	WHERE AccountIDX=@ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN	
		SELECT -1
		RETURN;
	END	

	RETURN;
GO


-- ----------------------------
-- Procedure structure for manage_present_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_present_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_present_add]
GO

CREATE PROCEDURE [dbo].[manage_present_add]
(
	@accountIDX varchar(2500)
,	@presentType varchar(4)
,	@value1 varchar(32)
,	@value2 varchar(32)
,	@msgType varchar(8)
)
AS

SET NOCOUNT ON

DECLARE @sql varchar(3000)

SET @sql = ''
SET @sql = @sql + 'INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, msgType, flag, limitDate, regDate) '
SET @sql = @sql + 'SELECT 1, accountIDX, ' + @presentType + ', ' + @value1 + ', ' + @value2 + ', ' + @msgType + ', 1, GETDATE() + 28, GETDATE() '
SET @sql = @sql + 'FROM dbo.userMemberDB WITH(NOLOCK) '
SET @sql = @sql + 'WHERE accountIDX IN (' + @accountIDX + ')'
EXECUTE (@sql)

-- Index : DeveloperK
GO


-- ----------------------------
-- Procedure structure for game_item_etc_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_etc_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_etc_save]
GO

CREATE PROCEDURE [dbo].[game_item_etc_save]
(
	@idx int
,	@item1_type int
,	@item1_value1 int
,	@item1_value2 int
,	@item2_type int
,	@item2_value1 int
,	@item2_value2 int
,	@item3_type int
,	@item3_value1 int
,	@item3_value2 int
,	@item4_type int
,	@item4_value1 int
,	@item4_value2 int
,	@item5_type int
,	@item5_value1 int
,	@item5_value2 int
,	@item6_type int
,	@item6_value1 int
,	@item6_value2 int
,	@item7_type int
,	@item7_value1 int
,	@item7_value2 int
,	@item8_type int
,	@item8_value1 int
,	@item8_value2 int
,	@item9_type int
,	@item9_value1 int
,	@item9_value2 int
,	@item10_type int
,	@item10_value1 int
,	@item10_value2 int
,	@item11_type int
,	@item11_value1 int
,	@item11_value2 int
,	@item12_type int
,	@item12_value1 int
,	@item12_value2 int
,	@item13_type int
,	@item13_value1 int
,	@item13_value2 int
,	@item14_type int
,	@item14_value1 int
,	@item14_value2 int
,	@item15_type int
,	@item15_value1 int
,	@item15_value2 int
,	@item16_type int
,	@item16_value1 int
,	@item16_value2 int
,	@item17_type int
,	@item17_value1 int
,	@item17_value2 int
,	@item18_type int
,	@item18_value1 int
,	@item18_value2 int
,	@item19_type int
,	@item19_value1 int
,	@item19_value2 int
,	@item20_type int
,	@item20_value1 int
,	@item20_value2 int
)
AS

SET NOCOUNT ON

UPDATE dbo.userItemEtcDB
   SET item1_type = @item1_type,
	   item1_value1 = @item1_value1,
	   item1_value2 = @item1_value2,
	   item2_type = @item2_type,
	   item2_value1 = @item2_value1,
	   item2_value2 = @item2_value2,
	   item3_type = @item3_type,
	   item3_value1 = @item3_value1,
	   item3_value2 = @item3_value2,
	   item4_type = @item4_type,
	   item4_value1 = @item4_value1,
	   item4_value2 = @item4_value2,
	   item5_type = @item5_type,
	   item5_value1 = @item5_value1,
	   item5_value2 = @item5_value2,
	   item6_type = @item6_type,
	   item6_value1 = @item6_value1,
	   item6_value2 = @item6_value2,
	   item7_type = @item7_type,
	   item7_value1 = @item7_value1,
	   item7_value2 = @item7_value2,
	   item8_type = @item8_type,
	   item8_value1 = @item8_value1,
	   item8_value2 = @item8_value2,
	   item9_type = @item9_type,
	   item9_value1 = @item9_value1,
	   item9_value2 = @item9_value2,
	   item10_type = @item10_type,
	   item10_value1 = @item10_value1,
	   item10_value2 = @item10_value2,
	   item11_type = @item11_type,
	   item11_value1 = @item11_value1,
	   item11_value2 = @item11_value2,
	   item12_type = @item12_type,
	   item12_value1 = @item12_value1,
	   item12_value2 = @item12_value2,
	   item13_type = @item13_type,
	   item13_value1 = @item13_value1,
	   item13_value2 = @item13_value2,
	   item14_type = @item14_type,
	   item14_value1 = @item14_value1,
	   item14_value2 = @item14_value2,
	   item15_type = @item15_type,
	   item15_value1 = @item15_value1,
	   item15_value2 = @item15_value2,
	   item16_type = @item16_type,
	   item16_value1 = @item16_value1,
	   item16_value2 = @item16_value2,
	   item17_type = @item17_type,
	   item17_value1 = @item17_value1,
	   item17_value2 = @item17_value2,
	   item18_type = @item18_type,
	   item18_value1 = @item18_value1,
	   item18_value2 = @item18_value2,
	   item19_type = @item19_type,
	   item19_value1 = @item19_value1,
	   item19_value2 = @item19_value2,
	   item20_type = @item20_type,
	   item20_value1 = @item20_value1,
	   item20_value2 = @item20_value2 
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_PIECEINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_PIECEINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_PIECEINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_PIECEINFO]

	@ACCOUNT_IDX  INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, pos, pieceType, pieceCnt
  FROM (
	SELECT idx, 1 AS pos, piece1_type AS pieceType, piece1_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece1_type > 0

	UNION ALL

	SELECT idx, 2 AS pos, piece2_type AS pieceType, piece2_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece2_type > 0

	UNION ALL
	
	SELECT idx, 3 AS pos, piece3_type AS pieceType, piece3_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece3_type > 0

	UNION ALL
	
	SELECT idx, 4 AS pos, piece4_type AS pieceType, piece4_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece4_type > 0

	UNION ALL
	
	SELECT idx, 5 AS pos, piece5_type AS pieceType, piece5_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece5_type > 0

	UNION ALL
	
	SELECT idx, 6 AS pos, piece6_type AS pieceType, piece6_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece6_type > 0

	UNION ALL
	
	SELECT idx, 7 AS pos, piece7_type AS pieceType, piece7_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece7_type > 0

	UNION ALL
	
	SELECT idx, 8 AS pos, piece8_type AS pieceType, piece8_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece8_type > 0

	UNION ALL
	
	SELECT idx, 9 AS pos, piece9_type AS pieceType, piece9_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece9_type > 0

	UNION ALL
	
	SELECT idx, 10 AS pos, piece10_type AS pieceType, piece10_cnt AS pieceCnt
	  FROM dbo.userPieceDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND piece10_type > 0
  ) AS PieceItem
GO


-- ----------------------------
-- Procedure structure for game_league_team_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_add]
GO

CREATE PROCEDURE [dbo].[game_league_team_add]
(
	@leagueIDX int
,	@teamName nvarchar(20)
,	@leaderIDX int
,	@maxcount tinyint
,	@factionPoint int
,	@factionType tinyint
)
AS

SET NOCOUNT ON

DECLARE @errcount int
DECLARE @teamIDX int
SET @errcount = 0
SET @teamIDX = 0

IF EXISTS(SELECT * FROM dbo.userLeagueTeamDB WITH(NOLOCK) WHERE leagueIDX=@leagueIDX AND teamName=@teamName)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF EXISTS(SELECT * FROM dbo.userLeagueTeamDB WITH(NOLOCK) WHERE leagueIDX=@leagueIDX AND leaderIDX=@leaderIDX)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF EXISTS(SELECT * FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK) WHERE leagueIDX=@leagueIDX AND accountIDX=@leaderIDX AND joinType=1)
BEGIN
	SET @errcount = 4
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount = 0)
BEGIN

	SET @errcount = 1
	SELECT @errcount AS 'returnVal'

	INSERT INTO dbo.userLeagueTeamDB (
		leagueIDX, teamName, leaderIDX, leaguePosition, maxcount, cheerPoint, currentRound, factionPoint, factionType, leagueStartPosition, regDate
	)
	VALUES (
		@leagueIDX, @teamName, @leaderIDX, 0, @maxcount, 0, 0, @factionPoint, @factionType, 0, GETDATE()
	)

	SET @teamIDX = SCOPE_IDENTITY()

	INSERT INTO dbo.userLeagueTeamMemberDB (accountIDX, leagueIDX, teamIDX, joinType, regDate)
	VALUES (@leaderIDX, @leagueIDX, @teamIDX, 1, GETDATE())

END
GO


-- ----------------------------
-- Procedure structure for game_guild_fail_add_peso
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_fail_add_peso]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_fail_add_peso]
GO

CREATE PROCEDURE [dbo].[game_guild_fail_add_peso]
(
	@accountIDX int
,	@peso int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGameDB
   SET gameMoney = gameMoney + @peso
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for manage_present_get_accountIDX
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_present_get_accountIDX]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_present_get_accountIDX]
GO

CREATE PROCEDURE [dbo].[manage_present_get_accountIDX]
(
	@userID varchar(2500)
)
AS

SET NOCOUNT ON

DECLARE @SQL varchar(3000)
SET @SQL = 'SELECT accountIDX FROM userMemberDB WHERE userID in (' + @userID + ')'

EXECUTE (@SQL)
GO


-- ----------------------------
-- Procedure structure for game_sbox_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_sbox_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_sbox_save]
GO

CREATE PROCEDURE [dbo].[game_sbox_save]
(  
 @idx   INT,  
 @presentType SMALLINT,  
 @value1   INT,  
 @value2   INT,  
 @amount   INT,  
 @bonusAmount INT,  
 @flag   SMALLINT,  
 @billingID  VARCHAR(64),  
 @limitDate  DATETIME  
)  
AS  
  
SET NOCOUNT ON;  
  
UPDATE dbo.userSBoxDB  
   SET presentType = @presentType,  
       value1 = @value1,  
       value2 = @value2,  
       amount = @amount,  
       flag = @flag,  
       billingID = @billingID,  
       limitDate = @limitDate  
 WHERE idx = @idx;
GO


-- ----------------------------
-- Procedure structure for game_friend_clover_info_update
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_clover_info_update]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_clover_info_update]
GO

CREATE PROCEDURE [dbo].[game_friend_clover_info_update]
(
	@index int
,	@sendCount int
,	@sendDate int
,	@receiveCount int
,	@receiveDate int
,	@BeforeReceiveCount int
)
AS

SET NOCOUNT ON

UPDATE dbo.userFriendDB
   SET sendCloverCnt = @sendCount,
	   sendCloverDate = @sendDate,
	   receiveCloverCnt = @receiveCount,
	   receiveCloverDate = @receiveDate,
	   receiveBCloverCnt = @BeforeReceiveCount
 WHERE idx = @index
GO


-- ----------------------------
-- Procedure structure for USP_ADM_FRIEND_SET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_FRIEND_SET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_FRIEND_SET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_FRIEND_SET_DELETE]

	@ACCOUNT_IDX	INT,
	@FRIEND_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	DELETE FROM dbo.userFriendDB
	 WHERE userAccIDX = @ACCOUNT_IDX
	   AND friendAccIDX = @FRIEND_IDX

	IF (@@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

	DELETE FROM dbo.userFriendDB
	 WHERE friendAccIDX = @ACCOUNT_IDX
	   AND userAccIDX = @FRIEND_IDX

	IF (@@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for manage_userinfo_get_member_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_userinfo_get_member_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_userinfo_get_member_data]
GO

CREATE PROCEDURE [dbo].[manage_userinfo_get_member_data]
(
	@searchType varchar(12)
,	@searchString varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @sql varchar(1000)

SET @sql = ''
SET @sql = @sql + 'SELECT a.accountIDX, a.userID, a.nickName, a.limitType, a.limitDate, a.regDate, b.gameMoney, b.userState, b.playTime, b.userLevel, b.userEXP, b.connDate '
SET @sql = @sql + 'FROM dbo.userMemberDB a JOIN dbo.userGameDB b ON a.accountIDX=b.accountIDX '
SET @sql = @sql + 'WHERE a.' + @searchType + '=''' + @searchString + ''''

EXECUTE (@sql)
GO


-- ----------------------------
-- Procedure structure for game_item_extra_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_extra_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_extra_add]
GO

CREATE PROCEDURE [dbo].[game_item_extra_add]
(
	@accountIDX int
,	@item1_type int
,	@item1_reinforce int
,	@item1_slotindex int
,	@item1_tradeType int
,	@item1_limitType int
,	@item1_mcustom int
,	@item1_fcustom int
,	@item1_failexp smallint
,	@item1_limitDate datetime
,	@item2_type int
,	@item2_reinforce int
,	@item2_slotindex int
,	@item2_tradeType int
,	@item2_limitType int
,	@item2_mcustom int
,	@item2_fcustom int
,	@item2_failexp smallint
,	@item2_limitDate datetime
,	@item3_type int
,	@item3_reinforce int
,	@item3_slotindex int
,	@item3_tradeType int
,	@item3_limitType int
,	@item3_mcustom int
,	@item3_fcustom int
,	@item3_failexp smallint
,	@item3_limitDate datetime
,	@item4_type int
,	@item4_reinforce int
,	@item4_slotindex int
,	@item4_tradeType int
,	@item4_limitType int
,	@item4_mcustom int
,	@item4_fcustom int
,	@item4_failexp smallint
,	@item4_limitDate datetime
,	@item5_type int
,	@item5_reinforce int
,	@item5_slotindex int
,	@item5_tradeType int
,	@item5_limitType int
,	@item5_mcustom int
,	@item5_fcustom int
,	@item5_failexp smallint
,	@item5_limitDate datetime
,	@item6_type int
,	@item6_reinforce int
,	@item6_slotindex int
,	@item6_tradeType int
,	@item6_limitType int
,	@item6_mcustom int
,	@item6_fcustom int
,	@item6_failexp smallint
,	@item6_limitDate datetime
,	@item7_type int
,	@item7_reinforce int
,	@item7_slotindex int
,	@item7_tradeType int
,	@item7_limitType int
,	@item7_mcustom int
,	@item7_fcustom int
,	@item7_failexp smallint
,	@item7_limitDate datetime
,	@item8_type int
,	@item8_reinforce int
,	@item8_slotindex int
,	@item8_tradeType int
,	@item8_limitType int
,	@item8_mcustom int
,	@item8_fcustom int
,	@item8_failexp smallint
,	@item8_limitDate datetime
,	@item9_type int
,	@item9_reinforce int
,	@item9_slotindex int
,	@item9_tradeType int
,	@item9_limitType int
,	@item9_mcustom int
,	@item9_fcustom int
,	@item9_failexp smallint
,	@item9_limitDate datetime
,	@item10_type int
,	@item10_reinforce int
,	@item10_slotindex int
,	@item10_tradeType int
,	@item10_limitType int
,	@item10_mcustom int
,	@item10_fcustom int
,	@item10_failexp smallint
,	@item10_limitDate datetime
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userItemExtraDB (
	accountIDX,
	item1_type, item1_reinforce, item1_slotindex, item1_tradetype, item1_mcustom, item1_fcustom, item1_limitType, item1_failexp, item1_limitDate, 
	item2_type, item2_reinforce, item2_slotindex, item2_tradetype, item2_mcustom, item2_fcustom, item2_limitType, item2_failexp, item2_limitDate, 
	item3_type, item3_reinforce, item3_slotindex, item3_tradetype, item3_mcustom, item3_fcustom, item3_limitType, item3_failexp, item3_limitDate, 
	item4_type, item4_reinforce, item4_slotindex, item4_tradetype, item4_mcustom, item4_fcustom, item4_limitType, item4_failexp, item4_limitDate, 
	item5_type, item5_reinforce, item5_slotindex, item5_tradetype, item5_mcustom, item5_fcustom, item5_limitType, item5_failexp, item5_limitDate, 
	item6_type, item6_reinforce, item6_slotindex, item6_tradetype, item6_mcustom, item6_fcustom, item6_limitType, item6_failexp, item6_limitDate, 
	item7_type, item7_reinforce, item7_slotindex, item7_tradetype, item7_mcustom, item7_fcustom, item7_limitType, item7_failexp, item7_limitDate, 
	item8_type, item8_reinforce, item8_slotindex, item8_tradetype, item8_mcustom, item8_fcustom, item8_limitType, item8_failexp, item8_limitDate, 
	item9_type, item9_reinforce, item9_slotindex, item9_tradetype, item9_mcustom, item9_fcustom, item9_limitType, item9_failexp, item9_limitDate, 
	item10_type, item10_reinforce, item10_slotindex, item10_tradetype, item10_mcustom, item10_fcustom, item10_limitType, item10_failexp, item10_limitDate,
	regDate
)
VALUES (
	@accountIDX,
	@item1_type, @item1_reinforce, @item1_slotindex, @item1_tradetype, @item1_mcustom, @item1_fcustom, @item1_limitType, @item1_failexp, @item1_limitDate, 
	@item2_type, @item2_reinforce, @item2_slotindex, @item2_tradetype, @item2_mcustom, @item2_fcustom, @item2_limitType, @item2_failexp, @item2_limitDate, 
	@item3_type, @item3_reinforce, @item3_slotindex, @item3_tradetype, @item3_mcustom, @item3_fcustom, @item3_limitType, @item3_failexp, @item3_limitDate, 
	@item4_type, @item4_reinforce, @item4_slotindex, @item4_tradetype, @item4_mcustom, @item4_fcustom, @item4_limitType, @item4_failexp, @item4_limitDate, 
	@item5_type, @item5_reinforce, @item5_slotindex, @item5_tradetype, @item5_mcustom, @item5_fcustom, @item5_limitType, @item5_failexp, @item5_limitDate, 
	@item6_type, @item6_reinforce, @item6_slotindex, @item6_tradetype, @item6_mcustom, @item6_fcustom, @item6_limitType, @item6_failexp, @item6_limitDate, 
	@item7_type, @item7_reinforce, @item7_slotindex, @item7_tradetype, @item7_mcustom, @item7_fcustom, @item7_limitType, @item7_failexp, @item7_limitDate, 
	@item8_type, @item8_reinforce, @item8_slotindex, @item8_tradetype, @item8_mcustom, @item8_fcustom, @item8_limitType, @item8_failexp, @item8_limitDate, 
	@item9_type, @item9_reinforce, @item9_slotindex, @item9_tradetype, @item9_mcustom, @item9_fcustom, @item9_limitType, @item9_failexp, @item9_limitDate, 
	@item10_type, @item10_reinforce, @item10_slotindex, @item10_tradetype, @item10_mcustom, @item10_fcustom, @item10_limitType, @item10_failexp, @item10_limitDate,
	GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for game_money_set_realCash
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_money_set_realCash]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_money_set_realCash]
GO

CREATE PROCEDURE [dbo].[game_money_set_realCash]  
  
 @ACCOUNTIDX INT,  
 @USER_MONEY INT  
  
AS  
 SET NOCOUNT ON;  
   
 DECLARE @MONEY INT  
 SET @MONEY = 0  
   
 UPDATE dbo.userMoneyDB SET realCash = @USER_MONEY WHERE accountIDX = @ACCOUNTIDX
GO


-- ----------------------------
-- Procedure structure for web_roulette_sp_mission_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_sp_mission_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_sp_mission_add]
GO

CREATE PROCEDURE [dbo].[web_roulette_sp_mission_add]
(
	@mid int,
	@userId varchar(20)
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @required int;
		DECLARE @rewardType int;
		DECLARE @rewardValue1 int;
		DECLARE @rewardValue2 int;
		DECLARE @start datetime;
		DECLARE @end datetime;

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WITH (NOLOCK) WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END
		
		SELECT @required = Spin, @rewardType = PresentType, @rewardValue1 = Value1, @rewardValue2 = Value2, @start = DateFrom, @end = DateTo
		FROM WebRouletteSPMission WITH (NOLOCK) WHERE Id = @mid AND Enabled = 1 AND GETDATE() BETWEEN DateFrom AND DateTo;
		--Check Mission Valid
		If @required IS NULL OR @required <= 0
		BEGIN
			RETURN (-2)
		END

		--Check Mission Complete
		SELECT @cnt = count(*) FROM WebRouletteSPMissionLog WHERE MissionId = @mid AND AccountIdx = @accountIdx;
		IF @cnt > 0
		BEGIN
			RETURN (-3)
		END

		--Check User Mission
		SELECT @cnt = count(*) FROM WebRouletteRewardLog WHERE RewardDate BETWEEN @start AND @end AND AccountIdx = @accountIdx;
		IF @cnt < @required
		BEGIN
			RETURN (-4)
		END

		-- TRAN START
		BEGIN TRAN		
		-- Reward
		INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate) VALUES
		(1, @accountIdx, @rewardType, @rewardValue1, @rewardValue2, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE());

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-5)
			END	

		-- Log
		INSERT INTO WebRouletteSPMissionLog (AccountIdx, MissionId) VALUES (@accountIdx, @mid);
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-6)
			END	

		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for game_event_bingo_number_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_bingo_number_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_bingo_number_add]
GO

CREATE PROCEDURE [dbo].[game_event_bingo_number_add]
(
	@accountIDX int
,	@num1 tinyint
,	@num2 tinyint
,	@num3 tinyint
,	@num4 tinyint
,	@num5 tinyint
,	@num6 tinyint
,	@num7 tinyint
,	@num8 tinyint
,	@num9 tinyint
,	@num10 tinyint
,	@num11 tinyint
,	@num12 tinyint
,	@num13 tinyint
,	@num14 tinyint
,	@num15 tinyint
,	@num16 tinyint
,	@num17 tinyint
,	@num18 tinyint
,	@num19 tinyint
,	@num20 tinyint
,	@num21 tinyint
,	@num22 tinyint
,	@num23 tinyint
,	@num24 tinyint
,	@num25 tinyint
)
AS

SET NOCOUNT ON

IF( EXISTS( SELECT * FROM dbo.userEventBingo_Number WITH( NOLOCK ) WHERE accountIDX = @accountIDX ) )
BEGIN
	RETURN
END
ELSE
BEGIN
	INSERT INTO dbo.userEventBingo_Number(
		accountidx,
		number1, number2, number3, number4, number5, number6, number7, number8, number9, number10,
	    number11, number12, number13, number14, number15, number16, number17, number18, number19, number20,
	    number21, number22, number23, number24, number25, regDate
	)
	VALUES (
		@accountIDX,
		@num1, @num2, @num3, @num4, @num5, @num6, @num7, @num8, @num9, @num10,
		@num11, @num12, @num13, @num14, @num15, @num16, @num17, @num18, @num19, @num20,
		@num21, @num22, @num23, @num24, @num25, GETDATE()
	)
END
GO


-- ----------------------------
-- Procedure structure for usp_money_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_money_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_money_get]
GO

CREATE PROCEDURE [dbo].[usp_money_get]
	
AS

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_PETINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_PETINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_PETINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_PETINFO]

	@ACCOUNTIDX  INT    

AS     

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT petIDX, petCode, petRank, petLevel, petExp, petEquip, petStatus, regDate
  FROM dbo.userPetDB WITH (NOLOCK)
 WHERE accountIDX = @ACCOUNTIDX
   AND petStatus = 1
GO


-- ----------------------------
-- Procedure structure for game_questcomplete_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_questcomplete_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_questcomplete_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_questcomplete_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT MAX(idx)
  FROM dbo.userQuestCompleteDB
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_league_team_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_delete]
GO

CREATE PROCEDURE [dbo].[game_league_team_delete]
(
	@teamIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userLeagueTeamMemberDB
 WHERE teamIDX=@teamIDX

DELETE FROM dbo.userLeagueTeamDB
 WHERE idx=@teamIDX
GO


-- ----------------------------
-- Procedure structure for game_friend_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_delete]
GO

CREATE PROCEDURE [dbo].[game_friend_delete]
(
	@accountIDX int
,	@friendNick varchar(20)
)
AS
SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @friendIDX int
SET @friendIDX = ISNULL((SELECT accountIDX FROM dbo.userMemberDB WHERE nickName=@friendNick), -1)

BEGIN TRAN

IF (@friendIDX > 0)
BEGIN
	DELETE FROM dbo.userFriendDB WHERE userAccIDX=@accountIDX and friendAccIDX=@friendIDX
	DELETE FROM dbo.userFriendDB WHERE friendAccIDX=@accountIDX and userAccIDX=@friendIDX
END

COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for web_roulette_sp_mission_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_sp_mission_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_sp_mission_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_sp_mission_get]
(
	@userId varchar(20) = NULL
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WITH (NOLOCK) WHERE Username = @userId;

		SELECT
			Id,
			Name,
			Description,
			CASE WHEN Spin - Spinned > 0 THEN Spin - Spinned ELSE 0 END AS SpinNeed,
			RewardName
		FROM WebRouletteSPMission m WITH (NOLOCK)
		CROSS APPLY
		(
			SELECT count(*) AS Spinned FROM WebRouletteRewardLog WITH (NOLOCK) WHERE AccountIdx = @accountIdx AND RewardDate BETWEEN m.DateFrom AND m.DateTo
		) total
		WHERE Enabled = 1 AND GETDATE() BETWEEN m.DateFrom AND m.DateTo
END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_CLASS_SET_EXP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_CLASS_SET_EXP]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_CLASS_SET_EXP]
GO

CREATE PROCEDURE [dbo].[USP_ADM_CLASS_SET_EXP]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@COLUMN_NO			TINYINT,
	@CLASS_LEVEL		INT,
	@CLASS_EXPERT		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	IF (@COLUMN_NO = 1)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class1_level = @CLASS_LEVEL,
		       class1_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 2)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class2_level = @CLASS_LEVEL,
		       class2_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 3)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class3_level = @CLASS_LEVEL,
		       class3_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 4)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class4_level = @CLASS_LEVEL,
		       class4_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 5)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class5_level = @CLASS_LEVEL,
		       class5_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 6)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class6_level = @CLASS_LEVEL,
		       class6_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 7)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class7_level = @CLASS_LEVEL,
		       class7_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 8)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class8_level = @CLASS_LEVEL,
		       class8_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 9)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class9_level = @CLASS_LEVEL,
		       class9_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 10)
	BEGIN
		UPDATE dbo.userClassDB
		   SET class10_level = @CLASS_LEVEL,
		       class10_expert = @CLASS_EXPERT
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_trade_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_trade_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_trade_delete]
GO

CREATE PROCEDURE [dbo].[game_trade_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userTradeDB
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_accountIDX_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_accountIDX_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_accountIDX_get]
GO

CREATE PROCEDURE [dbo].[game_accountIDX_get]
(
	@GARENA_UID		VARCHAR(130)		-- garena uid
)
AS

SET NOCOUNT ON;

SELECT accountIdx FROM dbo.userMemberDB WITH(NOLOCK) WHERE userID = @GARENA_UID
GO


-- ----------------------------
-- Procedure structure for game_get_age_from_id
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_get_age_from_id]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_get_age_from_id]
GO

CREATE PROCEDURE [dbo].[game_get_age_from_id]
(
	@userID varchar(12)
)
AS



-- TO DO : CpType 추가 - 다음 셧다운 인증 처리(20150424)
SELECT b.userBirthday, b.userNumber, A.cpType FROM userMemberDB a WITH(NOLOCK) JOIN userNameDB b WITH(NOLOCK)  ON a.accountIDX=b.accountIDX
WHERE a.userID=@userID
GO


-- ----------------------------
-- Procedure structure for game_questcomplete_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_questcomplete_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_questcomplete_save]
GO

CREATE PROCEDURE [dbo].[game_questcomplete_save]
(
	@idx int
,	@quest1_type int
,	@quest1_time int
,	@quest2_type int
,	@quest2_time int
,	@quest3_type int
,	@quest3_time int
,	@quest4_type int
,	@quest4_time int
,	@quest5_type int
,	@quest5_time int
,	@quest6_type int
,	@quest6_time int
,	@quest7_type int
,	@quest7_time int
,	@quest8_type int
,	@quest8_time int
,	@quest9_type int
,	@quest9_time int
,	@quest10_type int
,	@quest10_time int
,	@quest11_type int
,	@quest11_time int
,	@quest12_type int
,	@quest12_time int
,	@quest13_type int
,	@quest13_time int
,	@quest14_type int
,	@quest14_time int
,	@quest15_type int
,	@quest15_time int
,	@quest16_type int
,	@quest16_time int
,	@quest17_type int
,	@quest17_time int
,	@quest18_type int
,	@quest18_time int
,	@quest19_type int
,	@quest19_time int
,	@quest20_type int
,	@quest20_time int
)
AS

SET NOCOUNT ON

UPDATE dbo.userQuestCompleteDB
   SET quest1_type = @quest1_type,
	   quest1_time = @quest1_time,
	   quest2_type = @quest2_type,
	   quest2_time = @quest2_time,
	   quest3_type = @quest3_type,
	   quest3_time = @quest3_time,
	   quest4_type = @quest4_type,
	   quest4_time = @quest4_time,
	   quest5_type = @quest5_type,
	   quest5_time = @quest5_time,
	   quest6_type = @quest6_type,
	   quest6_time = @quest6_time,
	   quest7_type = @quest7_type,
	   quest7_time = @quest7_time,
	   quest8_type = @quest8_type,
	   quest8_time = @quest8_time,
	   quest9_type = @quest9_type,
	   quest9_time = @quest9_time,
	   quest10_type = @quest10_type,
	   quest10_time = @quest10_time,
	   quest11_type = @quest11_type,
	   quest11_time = @quest11_time,
	   quest12_type = @quest12_type,
	   quest12_time = @quest12_time,
	   quest13_type = @quest13_type,
	   quest13_time = @quest13_time,
	   quest14_type = @quest14_type,
	   quest14_time = @quest14_time,
	   quest15_type = @quest15_type,
	   quest15_time = @quest15_time,
	   quest16_type = @quest16_type,
	   quest16_time = @quest16_time,
	   quest17_type = @quest17_type,
	   quest17_time = @quest17_time,
	   quest18_type = @quest18_type,
	   quest18_time = @quest18_time,
	   quest19_type = @quest19_type,
	   quest19_time = @quest19_time,
	   quest20_type = @quest20_type,
	   quest20_time = @quest20_time 
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_event_bingo_number_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_bingo_number_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_bingo_number_get]
GO

CREATE PROCEDURE [dbo].[game_event_bingo_number_get]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

IF ( EXISTS(SELECT * FROM dbo.userEventBingo_Number WITH( NOLOCK ) WHERE accountIDX = @accountIDX) )
BEGIN
	SELECT number1, number2, number3, number4, number5, number6, number7, number8, number9, number10,
		   number11, number12, number13, number14, number15, number16, number17, number18, number19, number20,
		   number21, number22, number23, number24, number25
	  FROM dbo.userEventBingo_Number WITH( NOLOCK )
	 WHERE accountIDX = @accountIDX
END
ELSE
BEGIN
	-- return 0, 0, 0, ... 0
	SELECT 0 AS number1, 0 AS number2, 0 AS number3, 0 AS number4, 0 AS number5, 0 AS number6, 0 AS number7, 0 AS number8, 0 AS number9, 0 AS number10,
		   0 AS number11, 0 AS number12, 0 AS number13, 0 AS number14, 0 AS number15, 0 AS number16, 0 AS number17, 0 AS number18, 0 AS number19, 0 AS number20,
		   0 AS number21, 0 AS number22, 0 AS number23, 0 AS number24, 0 AS number25
END
GO


-- ----------------------------
-- Procedure structure for game_item_medal_extend_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_extend_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_extend_add]
GO

CREATE PROCEDURE [dbo].[game_item_medal_extend_add]
(
	@accountIDX int
,	@medal1_class int
,	@medal1_slot tinyint
,	@medal1_period int
,	@medal2_class int
,	@medal2_slot tinyint
,	@medal2_period int
,	@medal3_class int
,	@medal3_slot tinyint
,	@medal3_period int
,	@medal4_class int
,	@medal4_slot tinyint
,	@medal4_period int
,	@medal5_class int
,	@medal5_slot tinyint
,	@medal5_period int
,	@medal6_class int
,	@medal6_slot tinyint
,	@medal6_period int
,	@medal7_class int
,	@medal7_slot tinyint
,	@medal7_period int
,	@medal8_class int
,	@medal8_slot tinyint
,	@medal8_period int
,	@medal9_class int
,	@medal9_slot tinyint
,	@medal9_period int
,	@medal10_class int
,	@medal10_slot tinyint
,	@medal10_period int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userItemMedalExtendDB (
	accountIDX,
	medal1_class, medal1_slot, medal1_period, medal2_class, medal2_slot, medal2_period,
	medal3_class, medal3_slot, medal3_period, medal4_class, medal4_slot, medal4_period,
	medal5_class, medal5_slot, medal5_period, medal6_class, medal6_slot, medal6_period,
	medal7_class, medal7_slot, medal7_period, medal8_class, medal8_slot, medal8_period,
	medal9_class, medal9_slot, medal9_period, medal10_class, medal10_slot, medal10_period, regDate
)
VALUES (
	@accountIDX,
	@medal1_class, @medal1_slot, @medal1_period, @medal2_class, @medal2_slot, @medal2_period,
	@medal3_class, @medal3_slot, @medal3_period, @medal4_class, @medal4_slot, @medal4_period,
	@medal5_class, @medal5_slot, @medal5_period, @medal6_class, @medal6_slot, @medal6_period,
	@medal7_class, @medal7_slot, @medal7_period, @medal8_class, @medal8_slot, @medal8_period,
	@medal9_class, @medal9_slot, @medal9_period, @medal10_class, @medal10_slot, @medal10_period,
	GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_MEDALINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_MEDALINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_MEDALINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_MEDALINFO]

	@ACCOUNT_IDX  INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, pos, itemType, itemClass, itemLimitType, itemLimitDate
  FROM (
	SELECT idx, 1 AS pos, item1_type AS itemType, item1_class AS itemClass, item1_limitType AS itemLimitType, item1_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item1_type > 0

	UNION ALL

	SELECT idx, 2 AS pos, item2_type AS itemType, item2_class AS itemClass, item2_limitType AS itemLimitType, item2_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item2_type > 0

	UNION ALL
	
	SELECT idx, 3 AS pos, item3_type AS itemType, item3_class AS itemClass, item3_limitType AS itemLimitType, item3_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item3_type > 0

	UNION ALL
	
	SELECT idx, 4 AS pos, item4_type AS itemType, item4_class AS itemClass, item4_limitType AS itemLimitType, item4_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item4_type > 0

	UNION ALL
	
	SELECT idx, 5 AS pos, item5_type AS itemType, item5_class AS itemClass, item5_limitType AS itemLimitType, item5_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item5_type > 0

	UNION ALL
	
	SELECT idx, 6 AS pos, item6_type AS itemType, item6_class AS itemClass, item6_limitType AS itemLimitType, item6_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item6_type > 0

	UNION ALL
	
	SELECT idx, 7 AS pos, item7_type AS itemType, item7_class AS itemClass, item7_limitType AS itemLimitType, item7_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item7_type > 0

	UNION ALL
	
	SELECT idx, 8 AS pos, item8_type AS itemType, item8_class AS itemClass, item8_limitType AS itemLimitType, item8_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item8_type > 0

	UNION ALL
	
	SELECT idx, 9 AS pos, item9_type AS itemType, item9_class AS itemClass, item9_limitType AS itemLimitType, item9_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item9_type > 0

	UNION ALL
	
	SELECT idx, 10 AS pos, item10_type AS itemType, item10_class AS itemClass, item10_limitType AS itemLimitType, item10_limitDate AS itemLimitDate
	  FROM dbo.userItemMedalDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item10_type > 0
  ) AS MedalItem
GO


-- ----------------------------
-- Procedure structure for USP_LSW_MEMBER_AWARD_ALL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_LSW_MEMBER_AWARD_ALL]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_LSW_MEMBER_AWARD_ALL]
GO

CREATE PROCEDURE [dbo].[USP_LSW_MEMBER_AWARD_ALL]
	@ACCOUNT_IDX	INT
AS
	SET NOCOUNT ON;
	
	-- 회원 수상 순위 및 점수 전체
	SELECT awardType, prevRanking, nowRanking, point
	FROM TBL_RANKING_AWARD WITH(NOLOCK)
	WHERE accountIDX = @ACCOUNT_IDX
	ORDER BY awardType
GO


-- ----------------------------
-- Procedure structure for game_guild_mark_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_mark_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_mark_save]
GO

CREATE PROCEDURE [dbo].[game_guild_mark_save]
(
	@guildIDX int
,	@mark int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGuildDB
   SET guildmark=@mark
 WHERE idx=@guildIDX
GO


-- ----------------------------
-- Procedure structure for game_ability_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_ability_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_ability_get_list]
GO

CREATE PROCEDURE [dbo].[game_ability_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   class1_type, class1_basic01, class1_basic02, class1_basic03, class1_basic04, class1_skill1_sd, class1_skill1_asd, class1_skill1_ad, class1_skill1_as, class1_timeslot, class1_limitdate,
	   class2_type, class2_basic01, class2_basic02, class2_basic03, class2_basic04, class2_skill1_sd, class2_skill1_asd, class2_skill1_ad, class2_skill1_as, class2_timeslot, class2_limitdate,
	   class3_type, class3_basic01, class3_basic02, class3_basic03, class3_basic04, class3_skill1_sd, class3_skill1_asd, class3_skill1_ad, class3_skill1_as, class3_timeslot, class3_limitdate,
	   class4_type, class4_basic01, class4_basic02, class4_basic03, class4_basic04, class4_skill1_sd, class4_skill1_asd, class4_skill1_ad, class4_skill1_as, class4_timeslot, class4_limitdate,
	   class5_type, class5_basic01, class5_basic02, class5_basic03, class5_basic04, class5_skill1_sd, class5_skill1_asd, class5_skill1_ad, class5_skill1_as, class5_timeslot, class5_limitdate 
  FROM dbo.userAbilityDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_friend_dev_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_dev_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_dev_add]
GO

CREATE PROCEDURE [dbo].[game_friend_dev_add]
(
	@accountIDX int
,	@friendNick varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @cnt int
DECLARE @errcount int
DECLARE @friendIDX int

SET @cnt = 0
SET @errcount = 0
SET @friendIDX = ISNULL((
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@friendNick
), -1)

IF (@friendIDX < 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT count(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@accountIDX
	   AND friendAccIDX=@friendIDX
	   AND flag=1
)

IF (@cnt > 0)
BEGIN
	SET @errcount = 4
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount > 0)
BEGIN
	SELECT @errcount AS 'returnVal'
END
ELSE
BEGIN
	SELECT 1 AS 'returnVal'

	INSERT INTO userFriendDB (
		userAccIDX, friendAccIDX, sendCloverCnt, sendCloverDate, receiveCloverCnt, receiveCloverDate, receiveBCloverCnt, flag, regDate
	)
	VALUES (
		@friendIDX, @accountIDX, 0, 0, 0, 0, 0, 1, GETDATE()
	)

	INSERT INTO userFriendDB (
		userAccIDX, friendAccIDX, sendCloverCnt, sendCloverDate, receiveCloverCnt, receiveCloverDate, receiveBCloverCnt, flag, regDate
	)
	VALUES (
		@accountIDX, @friendIDX, 0, 0, 0, 0, 0, 1, GETDATE()
	)
END
GO


-- ----------------------------
-- Procedure structure for game_trade_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_trade_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_trade_get_list]
GO

CREATE PROCEDURE [dbo].[game_trade_get_list]
(
	@topn int
,	@idx int
)
AS

SET NOCOUNT ON

SELECT TOP (@topn) a.idx, a.accountIDX, b.nickName, a.itemType, a.value1, a.value2, a.price, a.mcustom, a.fcustom, a.periodDate, a.regDate
  FROM dbo.userTradeDB a WITH(NOLOCK)
  JOIN dbo.userMemberDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
 WHERE a.idx < @idx
 ORDER BY a.idx DESC
GO


-- ----------------------------
-- Procedure structure for game_present_add_0617
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_add_0617]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_add_0617]
GO

CREATE PROCEDURE [dbo].[game_present_add_0617]      
(      
     
 @receiveIDX int 
 ,@presentType int     
 ,@value1 int
 ,@value2 int
     
)      
AS      
      
SET NOCOUNT ON     
    
DECLARE @sendIDX int    
DECLARE @persentType smallint      
DECLARE @value3 int    
DECLARE @value4 int    
DECLARE @msgType smallint    
DECLARE @limitDate datetime    
DECLARE @flag smallint    
    
Set @sendIDX = (select accountIDX from dbo.userMemberDB with(nolock) where userID = 'DeveloperK')
set @value3 = 0    
set @value4 = 0    
set @msgType = 3    
set @limitDate = dateadd(D, 28, GETDATE())    
set @flag = 1    
     
INSERT INTO dbo.userPresentDB (      
 sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate      
)      
VALUES (      
 @sendIDX, @receiveIDX, @presentType, @value1, @value2, @value3, @value4, @msgType, @flag, @limitDate, GETDATE()      
)
GO


-- ----------------------------
-- Procedure structure for game_item_medal_extend_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_extend_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_extend_get_list]
GO

CREATE PROCEDURE [dbo].[game_item_medal_extend_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   medal1_class, medal1_slot, medal1_period, medal2_class, medal2_slot, medal2_period,
	   medal3_class, medal3_slot, medal3_period, medal4_class, medal4_slot, medal4_period,
	   medal5_class, medal5_slot, medal5_period, medal6_class, medal6_slot, medal6_period,
	   medal7_class, medal7_slot, medal7_period, medal8_class, medal8_slot, medal8_period,
	   medal9_class, medal9_slot, medal9_period, medal10_class, medal10_slot, medal10_period
  FROM dbo.userItemMedalExtendDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for obt_event_for_shop_bug
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[obt_event_for_shop_bug]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[obt_event_for_shop_bug]
GO

CREATE PROCEDURE [dbo].[obt_event_for_shop_bug]
(
	@GARENA_UID		VARCHAR(20)
)
AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @ACCOUNT_IDX			INT
	DECLARE @EVENT_TYPE				TINYINT
	DECLARE @i						TINYINT

	DECLARE @DEFINE_REWARD_TYPE		INT
	DECLARE @DEFINE_REWARD_VALUE1	INT
	DECLARE @DEFINE_REWARD_VALUE2	INT

	SET @DEFINE_REWARD_TYPE = 4
	SET @DEFINE_REWARD_VALUE1 = 100000
	SET @DEFINE_REWARD_VALUE2 = 0

	DECLARE @nReturn			INT
	SET @nReturn=0				-- True

	SET @EVENT_TYPE = 4


	-- LIVE Account Data Check
	SET @ACCOUNT_IDX = ISNULL((
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH (NOLOCK)
		 WHERE userID = @GARENA_UID
	), 0)

	IF (@ACCOUNT_IDX=0)
	BEGIN
		RETURN 8001;
	END

	IF (NOT EXISTS(SELECT * FROM dbo.TBL_obt_event_bug_reporting WITH (NOLOCK) WHERE accountIDX=@ACCOUNT_IDX AND brType=2))
	BEGIN
		RETURN 8002;
	END

	IF (EXISTS(SELECT * FROM dbo.TBL_obt_event_log WITH (NOLOCK) WHERE accountIDX=@ACCOUNT_IDX AND eventType=@EVENT_TYPE))
	BEGIN
		RETURN 8003;
	END



	-- insert reward
	BEGIN TRAN

		INSERT INTO dbo.userPresentDB (
			sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
		)
		VALUES (
			1, @ACCOUNT_IDX, @DEFINE_REWARD_TYPE, @DEFINE_REWARD_VALUE1, @DEFINE_REWARD_VALUE2, 0, 0, 3, 1, GETDATE()+35, GETDATE()
		)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8004;
		END

		INSERT INTO dbo.TBL_obt_event_log (accountIDX, eventType, regDate)
		VALUES (@ACCOUNT_IDX, @EVENT_TYPE, GETDATE())

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8005;
		END

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for web_roulette_item_reset
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_item_reset]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_item_reset]
GO

CREATE PROCEDURE [dbo].[web_roulette_item_reset]
As
BEGIN
	DECLARE @item INT;
	SET @item = 1;
	UPDATE WebRouletteUserItem
	SET Amount = 0
	WHERE Amount > 0
	;
END
GO


-- ----------------------------
-- Procedure structure for game_server_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_server_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_server_add]
GO

CREATE PROCEDURE [dbo].[game_server_add]
(
	@serverID bigint
,	@serverIP varchar(15)
,	@serverPort int
,	@serverName varchar(50)
,	@clientPort int
)
AS

SET NOCOUNT ON

IF (NOT EXISTS(SELECT * FROM dbo.define_game_server WITH(NOLOCK) WHERE serverIP=@serverIP AND serverPort=@serverPort))
BEGIN
	INSERT INTO dbo.define_game_server (serverID, serverIP, serverPort, serverName, clientPort, connNumber, [status], regDate)
	VALUES (@serverID, @serverIP, @serverPort, @serverName, @clientPort, 0, 0, GETDATE())
END
GO


-- ----------------------------
-- Procedure structure for web_ticket_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_ticket_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_ticket_get_data]
GO

CREATE PROCEDURE [dbo].[web_ticket_get_data]
(
	@userID varchar(20),
	@admin bit = 0,
	@id int = NULL
)
As
/*
	SELECT
		t.Id,
		ISNULL(c.Name, 'Unknown') AS Type,
		'#' + CONVERT(varchar(10), t.Id) + ' - ' + t.Subject AS Subject,
		CASE t.Status WHEN 0 THEN 'Open' ELSE 'Closed' END AS Status,		
		t.LastUpdate
	FROM WebTicket t
	INNER JOIN WebLogin l
	ON t.UserID = l.Username
	LEFT JOIN WebTicketType c
	ON c.Id = t.TypeId
	WHERE (l.Username = @userID OR @admin = 1)
	AND (@id IS NULL OR t.id = @id)
	ORDER BY t.TicketDate DESC
*/
	SELECT
		t.Id,
		ISNULL(c.Name, 'Unknown') AS Type,
		'#' + CONVERT(varchar(10), t.Id) + ' - ' + t.Subject AS Subject,
		CASE t.Status WHEN 0 THEN 'Open' ELSE 'Closed' END AS Status,		
		t.LastUpdate,
		d.UserID AS LastReply,
		maxdate.MaxDateTime AS LastReplyDate
	FROM WebTicket t
	INNER JOIN
	(
		SELECT Tid, MAX(ReplyDate) AS MaxDateTime
		FROM WebTicketDetail
		GROUP BY Tid
	) maxdate 
	ON t.ID = maxdate.Tid 
	INNER JOIN WebTicketDetail d
	ON t.Id = d.Tid 
	AND maxdate.MaxDateTime = d.ReplyDate
	INNER JOIN WebLogin l
	ON t.UserID = l.Username
	LEFT JOIN WebTicketType c
	ON c.Id = t.TypeId
	WHERE (l.Username = @userID OR @admin = 1)
	AND (@id IS NULL OR t.id = @id)
	ORDER BY t.TicketDate DESC
GO


-- ----------------------------
-- Procedure structure for game_ability_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_ability_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_ability_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_ability_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userAbilityDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_trade_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_trade_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_trade_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_trade_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT MAX(idx)
  FROM dbo.userTradeDB
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_present_add_test
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_add_test]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_add_test]
GO

CREATE PROCEDURE [dbo].[game_present_add_test]    
(      
  @userID varchar(20)    
, @presentType smallint      
, @value1 int      
, @value2 int      
    
)      
AS      
      
SET NOCOUNT ON      
      
DECLARE @receiveIDX INT  
DECLARE @sendIDX INT  
  
   SET @receiveIDX = 0
   SET @sendIDX = (      
 SELECT accountIDX      
   FROM dbo.userMemberDB WITH(NOLOCK)      
  WHERE nickName='DeveloperK'      
)      
  

 --SET @receiveIDX = ISNULL((      
 --   SELECT accountIDX      
 --     FROM dbo.userMemberDB WITH(NOLOCK)      
 --    WHERE userID=@userID  
 --    ) ,0)     
       
       
 --BEGIN
 -- IF @receiveIDX = 0 
 -- RETURN -1
 --END 
 SET @receiveIDX = (      
    SELECT accountIDX      
      FROM dbo.userMemberDB WITH(NOLOCK)      
     WHERE userID=@userID  
     ) 
 
INSERT INTO dbo.userPresentDB (      
 sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate      
)      
VALUES (      
 @sendIDX, @receiveIDX, @presentType, @value1, @value2, 0, 0, 3, 1, GetDate()+28, GetDate()     
)
GO


-- ----------------------------
-- Procedure structure for web_valentine_ranking_update
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_ranking_update]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_ranking_update]
GO

CREATE PROCEDURE [dbo].[web_valentine_ranking_update]
As
BEGIN
	-- TRAN START
	BEGIN TRAN
	--Delete
	DELETE FROM WebEventValentineRanking;

	--Add Sending
	INSERT INTO WebEventValentineRanking (AccountIdx, RankType, Point)
	SELECT TOP 10
		AccountIdx,
		1,
		SUM(Point)
	FROM 
	(
		SELECT
			AccountIdx,
			CASE ItemId WHEN 3 THEN Amt * 2 WHEN 4 THEN Amt * 5 WHEN 5 THEN Amt * 10 END AS Point
		FROM
		(
			SELECT
				SendIdx AS AccountIdx,
				ItemId,
				ISNULL(SUM(Amount), 0) AS Amt
			FROM WebEventValentineHistory
			GROUP BY SendIdx, ItemId
		) t
	) t2
	GROUP BY AccountIdx
	ORDER BY SUM(Point) DESC

	--Add Receiving
	INSERT INTO WebEventValentineRanking (AccountIdx, RankType, Point)
	SELECT TOP 10
		AccountIdx,
		2,
		SUM(Point)
	FROM 
	(
		SELECT
			AccountIdx,
			CASE ItemId WHEN 3 THEN Amt * 2 WHEN 4 THEN Amt * 5 WHEN 5 THEN Amt * 10 END AS Point
		FROM
		(
			SELECT
				ReceiveIdx AS AccountIdx,
				ItemId,
				ISNULL(SUM(Amount), 0) AS Amt
			FROM WebEventValentineHistory
			GROUP BY ReceiveIdx, ItemId
		) t
	) t2
	GROUP BY AccountIdx
	ORDER BY SUM(Point) DESC

	-- COMMIT TRAN
	COMMIT TRAN 
	RETURN (1)
END
GO


-- ----------------------------
-- Procedure structure for game_item_medal_extend_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_extend_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_extend_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_item_medal_extend_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userItemMedalExtendDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_custom_get_customidx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_custom_get_customidx]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_custom_get_customidx]
GO

CREATE PROCEDURE [dbo].[game_custom_get_customidx]  
(  
 @accountIDX int  
)  
AS  
  
SET NOCOUNT ON  
  
BEGIN TRAN  
  
SELECT MAX(idx)  
  FROM dbo.define_custom_customidx  
  
INSERT INTO dbo.define_custom_customidx (accountIDX)  
VALUES (@accountIDX)  
  
COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for game_present_delete_all
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_delete_all]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_delete_all]
GO

CREATE PROCEDURE [dbo].[game_present_delete_all]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userPresentDB
 WHERE receiveIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for usp_user_get_accountidx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_user_get_accountidx]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_user_get_accountidx]
GO

CREATE PROCEDURE [dbo].[usp_user_get_accountidx]

	@USER_ID		VARCHAR(20),
	@ID_TYPE		TINYINT,			-- 1: userID, 2: nickName
	@ACCOUNT_IDX	INT			OUTPUT

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @nReturn INT

	SET @ACCOUNT_IDX = 0
	SET @nReturn = 0

	IF (@ID_TYPE=1)
	BEGIN
		
		SELECT @ACCOUNT_IDX = AccountIDX
		  FROM dbo.userMemberDB WITH (NOLOCK)
		 WHERE userID = @USER_ID;

		IF (@ACCOUNT_IDX=0) or (@ACCOUNT_IDX IS NULL)
		BEGIN
			RETURN -1
		END 
	END
	ELSE 
	BEGIN
		
		SELECT @ACCOUNT_IDX = AccountIDX
		  FROM dbo.userMemberDB WITH (NOLOCK)
		 WHERE nickName = @USER_ID;

		IF (@ACCOUNT_IDX=0) or (@ACCOUNT_IDX IS NULL)
		BEGIN
			RETURN -1
		END 
	END 

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_piece_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_piece_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_piece_get_list]
GO

CREATE PROCEDURE [dbo].[game_piece_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   piece1_type, piece1_cnt, piece2_type, piece2_cnt, piece3_type, piece3_cnt, piece4_type, piece4_cnt, piece5_type, piece5_cnt,
	   piece6_type, piece6_cnt, piece7_type, piece7_cnt, piece8_type, piece8_cnt, piece9_type, piece9_cnt, piece10_type, piece10_cnt
  FROM dbo.userPieceDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_accessory_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_accessory_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_accessory_get_list]
GO

CREATE PROCEDURE [dbo].[game_accessory_get_list]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@TOP_NUM			INT

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;
	
	SELECT TOP (@TOP_NUM) idx, ItemCode, PeriodType, PeriodDate, StatValue, ClassType
	  FROM dbo.userAccessoryDB WITH (NOLOCK)
	 WHERE AccountIDX = @ACCOUNT_IDX
	   AND idx > @TABLE_IDX
	 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_attend_set_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_attend_set_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_attend_set_data]
GO

CREATE PROCEDURE [dbo].[game_attend_set_data]

	@ACCOUNT_IDX		INT,
	@ATTEND_COUNT		INT,
	@REWARD_TABLE		INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	DECLARE @nReturn			INT	
	DECLARE @CONNECT_DATE		DATETIME
	
	SET @CONNECT_DATE = GETDATE();	
	SET @nReturn=0			-- True


	BEGIN TRAN

		

		--	MERGE dbo.userAttendDB as TARGET
		--	USING (SELECT @ACCOUNT_IDX, @ATTEND_COUNT, @REWARD_TABLE) AS SOURCE (AccountIDX, AttendCount, RewardTable)
		--	ON (TARGET.AccountIDX=SOURCE.AccountIDX)
		--	WHEN MATCHED THEN
		--		UPDATE SET AttendCount=SOURCE.AttendCount, RewardTable=SOURCE.RewardTable, ConnectDate=@CONNECT_DATE
		--	WHEN NOT MATCHED THEN
		--		INSERT (AccountIDX, AttendCount, RewardTable, ConnectDate, RegDate) VALUES (SOURCE.AccountIDX, SOURCE.AttendCount, SOURCE.RewardTable, @CONNECT_DATE, GETDATE());

		UPDATE dbo.userAttendDB WITH (XLOCK, ROWLOCK) SET AttendCount=@ATTEND_COUNT, RewardTable=@REWARD_TABLE, ConnectDate=@CONNECT_DATE
		WHERE AccountIDX=@ACCOUNT_IDX

		IF (@@ROWCOUNT=0)
		BEGIN	

			INSERT dbo.userAttendDB WITH (XLOCK, ROWLOCK)  (AccountIDX, AttendCount, RewardTable, ConnectDate, RegDate)
			VALUES (@ACCOUNT_IDX, @ATTEND_COUNT, @REWARD_TABLE, @CONNECT_DATE, GETDATE())
			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN				
				SELECT -1
				RETURN;
			END
		END

	COMMIT TRAN

	SELECT 0, @CONNECT_DATE as ConnectDate;
	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_ability_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_ability_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_ability_save]
GO

CREATE PROCEDURE [dbo].[game_ability_save]
(
	@idx int
,	@class1_type int
,	@class1_basic01 tinyint
,	@class1_basic02 tinyint
,	@class1_basic03 tinyint
,	@class1_basic04 tinyint
,	@class1_skill1_sd tinyint
,	@class1_skill1_asd tinyint
,	@class1_skill1_ad tinyint
,	@class1_skill1_as tinyint
,	@class1_timeslot int
,	@class1_limitdate datetime
,	@class2_type int
,	@class2_basic01 tinyint
,	@class2_basic02 tinyint
,	@class2_basic03 tinyint
,	@class2_basic04 tinyint
,	@class2_skill1_sd tinyint
,	@class2_skill1_asd tinyint
,	@class2_skill1_ad tinyint
,	@class2_skill1_as tinyint
,	@class2_timeslot int
,	@class2_limitdate datetime
,	@class3_type int
,	@class3_basic01 tinyint
,	@class3_basic02 tinyint
,	@class3_basic03 tinyint
,	@class3_basic04 tinyint
,	@class3_skill1_sd tinyint
,	@class3_skill1_asd tinyint
,	@class3_skill1_ad tinyint
,	@class3_skill1_as tinyint
,	@class3_timeslot int
,	@class3_limitdate datetime
,	@class4_type int
,	@class4_basic01 tinyint
,	@class4_basic02 tinyint
,	@class4_basic03 tinyint
,	@class4_basic04 tinyint
,	@class4_skill1_sd tinyint
,	@class4_skill1_asd tinyint
,	@class4_skill1_ad tinyint
,	@class4_skill1_as tinyint
,	@class4_timeslot int
,	@class4_limitdate datetime
,	@class5_type int
,	@class5_basic01 tinyint
,	@class5_basic02 tinyint
,	@class5_basic03 tinyint
,	@class5_basic04 tinyint
,	@class5_skill1_sd tinyint
,	@class5_skill1_asd tinyint
,	@class5_skill1_ad tinyint
,	@class5_skill1_as tinyint
,	@class5_timeslot int
,	@class5_limitdate datetime
)
AS

SET NOCOUNT ON

UPDATE dbo.userAbilityDB
   SET class1_type = @class1_type
,	   class1_basic01 = @class1_basic01
,	   class1_basic02 = @class1_basic02
,	   class1_basic03 = @class1_basic03
,	   class1_basic04 = @class1_basic04
,	   class1_skill1_sd = @class1_skill1_sd
,	   class1_skill1_asd = @class1_skill1_asd
,	   class1_skill1_ad = @class1_skill1_ad
,	   class1_skill1_as = @class1_skill1_as
,	   class1_timeslot = @class1_timeslot
,	   class1_limitdate = @class1_limitdate
,	   class2_type = @class2_type
,	   class2_basic01 = @class2_basic01
,	   class2_basic02 = @class2_basic02
,	   class2_basic03 = @class2_basic03
,	   class2_basic04 = @class2_basic04
,	   class2_skill1_sd = @class2_skill1_sd
,	   class2_skill1_asd = @class2_skill1_asd
,	   class2_skill1_ad = @class2_skill1_ad
,	   class2_skill1_as = @class2_skill1_as
,	   class2_timeslot = @class2_timeslot
,	   class2_limitdate = @class2_limitdate
,	   class3_type = @class3_type
,	   class3_basic01 = @class3_basic01
,	   class3_basic02 = @class3_basic02
,	   class3_basic03 = @class3_basic03
,	   class3_basic04 = @class3_basic04
,	   class3_skill1_sd = @class3_skill1_sd
,	   class3_skill1_asd = @class3_skill1_asd
,	   class3_skill1_ad = @class3_skill1_ad
,	   class3_skill1_as = @class3_skill1_as
,	   class3_timeslot = @class3_timeslot
,	   class3_limitdate = @class3_limitdate
,	   class4_type = @class4_type
,	   class4_basic01 = @class4_basic01
,	   class4_basic02 = @class4_basic02
,	   class4_basic03 = @class4_basic03
,	   class4_basic04 = @class4_basic04
,	   class4_skill1_sd = @class4_skill1_sd
,	   class4_skill1_asd = @class4_skill1_asd
,	   class4_skill1_ad = @class4_skill1_ad
,	   class4_skill1_as = @class4_skill1_as
,	   class4_timeslot = @class4_timeslot
,	   class4_limitdate = @class4_limitdate
,	   class5_type = @class5_type
,	   class5_basic01 = @class5_basic01
,	   class5_basic02 = @class5_basic02
,	   class5_basic03 = @class5_basic03
,	   class5_basic04 = @class5_basic04
,	   class5_skill1_sd = @class5_skill1_sd
,	   class5_skill1_asd = @class5_skill1_asd
,	   class5_skill1_ad = @class5_skill1_ad
,	   class5_skill1_as = @class5_skill1_as
,	   class5_timeslot = @class5_timeslot
,	   class5_limitdate = @class5_limitdate
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for AGENT_RANKING_CLASS
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_RANKING_CLASS]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_RANKING_CLASS]
GO

CREATE PROCEDURE [dbo].[AGENT_RANKING_CLASS]

AS

	SET NOCOUNT ON;

	DECLARE @strSQL			VARCHAR(1000)
	DECLARE @i				TINYINT
	DECLARE @minLevel		INT
	
	SET @i = 1
	SET @minLevel = 10;

	IF EXISTS(SELECT * FROM information_schema.tables WHERE table_name = 'userRankingDB_class_temp')
	BEGIN
		DROP TABLE userRankingDB_class_temp;
	END

	IF EXISTS(SELECT * FROM information_schema.tables WHERE table_name = 'userRankingDB_class_backup')
	BEGIN
		DROP TABLE userRankingDB_class_backup;
	END

	CREATE TABLE userRankingDB_class_temp
	(
		accountIDX		INT,
		classType		INT,
		userLevel		INT,
		expert			INT
	);
	CREATE CLUSTERED INDEX CL_userRankingDB_class_temp ON dbo.userRankingDB_class_temp (classType);
	CREATE INDEX NC_userRankingDB_class_temp ON dbo.userRankingDB_class_temp (userLevel, expert);

	-- userRankingDB_class 테이블 백업
	SELECT accountIDX, classType, nowRanking
	  INTO dbo.userRankingDB_class_backup
	  FROM dbo.userRankingDB_class WITH (NOLOCK);

	-- userRankingDB_class 삭제 & 생성
	IF EXISTS(SELECT * FROM information_schema.tables WHERE table_name = 'userRankingDB_class')
	BEGIN
		DROP TABLE userRankingDB_class;
	END

	-- 인덱스 조정 할 것.
	CREATE TABLE userRankingDB_class
	(
		accountIDX		INT,
		classType		INT,
		prevRanking		INT,
		nowRanking		INT,
		userLevel		INT,
		expert			INT
	);
	CREATE CLUSTERED INDEX CL_userRankingDB_class ON dbo.userRankingDB_class (nowRanking);
	CREATE INDEX NC_userRankingDB_class_accountIDX ON dbo.userRankingDB_class (accountIDX);
	CREATE INDEX NC_userRankingDB_class_classType ON dbo.userRankingDB_class (classType);


	WHILE (@i <= 10)
	BEGIN
		SET @strSQL = ''
		SET @strSQL = @strSQL + ' INSERT INTO userRankingDB_class_temp (accountIDX, classType, userLevel, expert) '
		SET @strSQL = @strSQL + ' SELECT A.accountIDX, A.class' + CAST(@i AS VARCHAR(4)) + '_type, A.class' + CAST(@i AS VARCHAR(4)) + '_level, A.class' + CAST(@i AS VARCHAR(4)) + '_expert '
		SET @strSQL = @strSQL + '   FROM dbo.userClassDB A WITH(NOLOCK) '
		SET @strSQL = @strSQL + '   JOIN dbo.userMemberDB B WITH (NOLOCK) '
		SET @strSQL = @strSQL + '     ON A.accountIDX = B.accountIDX '
		SET @strSQL = @strSQL + '  WHERE (A.class' + CAST(@i AS VARCHAR(4)) + '_type > 0 AND A.class' + CAST(@i AS VARCHAR(4)) + '_type < 1000) AND A.class' + CAST(@i AS VARCHAR(4)) + '_level >= ' + CAST(@minLevel AS VARCHAR(4)) + ' '
		SET @strSQL = @strSQL + '    AND B.userType = 100 AND (B.limitDate < GETDATE() OR limitType <> 100); '

		EXEC (@strSQL)
		SET @i = @i + 1
	END



	DECLARE selecHero CURSOR
	FOR
	SELECT DISTINCT idx FROM dbo.define_class WITH (NOLOCK)
	FOR READ ONLY	

	OPEN selecHero

	DECLARE @HeroIDX INT
	FETCH NEXT FROM selecHero INTO @HeroIDX

	WHILE @@FETCH_STATUS = 0
	BEGIN
		INSERT INTO dbo.userRankingDB_class
		SELECT TOP 25000 accountIDX, classType, 0, RANK() OVER(ORDER BY userLevel DESC, expert DESC) AS 'nowRanking', userLevel, expert
		  FROM userRankingDB_class_temp WITH (NOLOCK)
		 WHERE classType = @HeroIDX;

		FETCH NEXT FROM selecHero INTO @HeroIDX
	END

	CLOSE selecHero
	DEALLOCATE selecHero


	UPDATE a SET prevRanking = b.nowRanking
	FROM (
		SELECT accountIDX, classType, nowRanking FROM userRankingDB_class_backup
	) b INNER JOIN userRankingDB_class a ON a.accountIDX = b.accountIDX and a.classType = b.classType;

	DROP TABLE userRankingDB_class_temp;
GO


-- ----------------------------
-- Procedure structure for game_guild_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_get_list]
GO

CREATE PROCEDURE [dbo].[game_guild_get_list]
(
	@topn int
,	@idx int
)
AS

SET NOCOUNT ON

SELECT TOP (@topn) a.idx, a.guildName, a.aboutguild, a.guildmark, a.point, a.maxcount, a.regDate,
       a.membercount, a.todaypoint, a.guildLevel,
	   b.type1_win, b.type1_lose, b.type1_kill, b.type1_death
  FROM dbo.userGuildDB a WITH(NOLOCK)
 INNER JOIN dbo.userRecordGuildDB b WITH(NOLOCK)
    ON a.idx = b.guildIDX
 WHERE a.idx < @idx
 ORDER BY a.idx DESC
GO


-- ----------------------------
-- Procedure structure for manage_member_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_member_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_member_count]
GO

CREATE PROCEDURE [dbo].[manage_member_count]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT COUNT(*)
  FROM dbo.userMemberDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_item_extra_get_customidx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_extra_get_customidx]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_extra_get_customidx]
GO

CREATE PROCEDURE [dbo].[game_item_extra_get_customidx]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

BEGIN TRAN

SELECT MAX(idx)
  FROM dbo.define_gear_customidx

INSERT INTO dbo.define_gear_customidx (accountIDX)
VALUES (@accountIDX)

COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for game_ranking_hero_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_ranking_hero_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_ranking_hero_get_data]
GO

CREATE PROCEDURE [dbo].[game_ranking_hero_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT title, daily, season1, season2, season3, season4, season5, season6
  FROM dbo.userRankingDB_hero WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_league_team_delete_all
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_delete_all]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_delete_all]
GO

CREATE PROCEDURE [dbo].[game_league_team_delete_all]
(
	@leagueIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userLeagueTeamMemberDB
 WHERE leagueIDX=@leagueIDX

DELETE FROM dbo.userLeagueTeamDB
 WHERE leagueIDX=@leagueIDX

DELETE FROM dbo.userLeagueCheerDB
 WHERE leagueIDX=@leagueIDX
GO


-- ----------------------------
-- Procedure structure for web_valentine_send_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_send_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_send_add]
GO

CREATE PROCEDURE [dbo].[web_valentine_send_add]
(
	@userId varchar(20),
	@vid int,
	@receiveName varchar(20),
	@amount int
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @receiveIdx int;

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END

		--Check Event Available
		IF NOT GETDATE() BETWEEN '2019-02-04 07:00' AND '2019-02-18 05:00'
		BEGIN
			RETURN (-2)
		END

		--Check user exist
		SELECT TOP 1 @receiveIdx = accountIDX FROM userMemberDB WHERE nickName = @receiveName AND userType = 100;
		IF @receiveIdx IS NULL
		BEGIN
			RETURN (-3)
		END

		--Yourself
		IF @accountIdx = @receiveIdx
		BEGIN
			RETURN (-4)
		END

		--Check Valid Item
		If @vid NOT IN (3, 4, 5)
		BEGIN
			RETURN (-5)
		END
		
		--Check Item Enough
		SELECT @cnt = sum(Amount) FROM WebEventValentineUserItem WHERE ItemId = @vid AND AccountIdx = @accountIdx GROUP BY AccountIdx;
		IF @cnt IS NULL OR @cnt < @amount
		BEGIN
			RETURN (-6)
		END

		-- TRAN START
		BEGIN TRAN		

		-- Send
		INSERT INTO WebEventValentineHistory (SendIdx, ReceiveIdx, ItemId, Amount) VALUES (@accountIdx, @receiveIdx, @vid, @amount);

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-7)
			END	

		-- Deduce
		UPDATE WebEventValentineUserItem SET Amount -= @amount WHERE AccountIdx = @accountIdx AND ItemId = @vid;
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-8)
			END	

		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for game_item_medal_extend_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_extend_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_extend_save]
GO

CREATE PROCEDURE [dbo].[game_item_medal_extend_save]
(
	@idx int
,	@medal1_class int
,	@medal1_slot tinyint
,	@medal1_period int
,	@medal2_class int
,	@medal2_slot tinyint
,	@medal2_period int
,	@medal3_class int
,	@medal3_slot tinyint
,	@medal3_period int
,	@medal4_class int
,	@medal4_slot tinyint
,	@medal4_period int
,	@medal5_class int
,	@medal5_slot tinyint
,	@medal5_period int
,	@medal6_class int
,	@medal6_slot tinyint
,	@medal6_period int
,	@medal7_class int
,	@medal7_slot tinyint
,	@medal7_period int
,	@medal8_class int
,	@medal8_slot tinyint
,	@medal8_period int
,	@medal9_class int
,	@medal9_slot tinyint
,	@medal9_period int
,	@medal10_class int
,	@medal10_slot tinyint
,	@medal10_period int
)
AS

SET NOCOUNT ON

UPDATE dbo.userItemMedalExtendDB
   SET medal1_class = @medal1_class,
	   medal1_slot = @medal1_slot,
	   medal1_period = @medal1_period,
	   medal2_class = @medal2_class,
	   medal2_slot = @medal2_slot,
	   medal2_period = @medal2_period,
	   medal3_class = @medal3_class,
	   medal3_slot = @medal3_slot,
	   medal3_period = @medal3_period,
	   medal4_class = @medal4_class,
	   medal4_slot = @medal4_slot,
	   medal4_period = @medal4_period,
	   medal5_class = @medal5_class,
	   medal5_slot = @medal5_slot,
	   medal5_period = @medal5_period,
	   medal6_class = @medal6_class,
	   medal6_slot = @medal6_slot,
	   medal6_period = @medal6_period,
	   medal7_class = @medal7_class,
	   medal7_slot = @medal7_slot,
	   medal7_period = @medal7_period,
	   medal8_class = @medal8_class,
	   medal8_slot = @medal8_slot,
	   medal8_period = @medal8_period,
	   medal9_class = @medal9_class,
	   medal9_slot = @medal9_slot,
	   medal9_period = @medal9_period,
	   medal10_class = @medal10_class,
	   medal10_slot = @medal10_slot,
	   medal10_period = @medal10_period
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for obt_event_for_level
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[obt_event_for_level]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[obt_event_for_level]
GO

CREATE PROCEDURE [dbo].[obt_event_for_level]
(
	@GARENA_UID		VARCHAR(20)
)
AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @CBT_ACCOUNT_IDX		INT
	DECLARE @LIVE_ACCOUNT_IDX		INT
	DECLARE @USER_LEVEL				INT
--	DECLARE @GAME_SERVER_ID			BIGINT
	DECLARE @EVENT_TYPE				TINYINT

	DECLARE @DEFINE_REWARD1_TYPE	INT
	DECLARE @DEFINE_REWARD1_VALUE1	INT
	DECLARE @DEFINE_REWARD1_VALUE2	INT
	DECLARE @DEFINE_REWARD2_TYPE	INT
	DECLARE @DEFINE_REWARD2_VALUE1	INT
	DECLARE @DEFINE_REWARD2_VALUE2	INT
	DECLARE @DEFINE_REWARD4_TYPE	INT
	DECLARE @DEFINE_REWARD4_VALUE1	INT
	DECLARE @DEFINE_REWARD4_VALUE2	INT

	SET @DEFINE_REWARD1_TYPE = 9			-- Lv7
	SET @DEFINE_REWARD1_VALUE1 = 2001		-- Lv7
	SET @DEFINE_REWARD1_VALUE2 = 0			-- Lv7
	SET @DEFINE_REWARD2_TYPE = 3			-- Lv12
	SET @DEFINE_REWARD2_VALUE1 = 3000019	-- Lv12
	SET @DEFINE_REWARD2_VALUE2 = 1			-- Lv12
	SET @DEFINE_REWARD4_TYPE = 3			-- Lv20
	SET @DEFINE_REWARD4_VALUE1 = 1000608	-- Lv20
	SET @DEFINE_REWARD4_VALUE2 = 1			-- Lv20

	DECLARE @nReturn			INT
	SET @nReturn=0				-- True

	SET @EVENT_TYPE = 1

	-- CBT Account Data Check
	SET @CBT_ACCOUNT_IDX = ISNULL((
		SELECT accountIDX
		  FROM LosaGame.dbo.userMemberDB WITH (NOLOCK)
		 WHERE userID = @GARENA_UID
	), 0)

	IF (@CBT_ACCOUNT_IDX=0)
	BEGIN
		RETURN 8001;
	END

	-- LIVE Account Data Check
	SET @LIVE_ACCOUNT_IDX = ISNULL((
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH (NOLOCK)
		 WHERE userID = @GARENA_UID
	), 0)

	IF (@LIVE_ACCOUNT_IDX=0)
	BEGIN
		RETURN 8002;
	END


	SELECT @USER_LEVEL = ISNULL(userLevel, 0)
	  FROM LosaGame.dbo.userGameDB WITH (NOLOCK)
	 WHERE accountIDX = @CBT_ACCOUNT_IDX

	IF (@USER_LEVEL < 7)
	BEGIN
		RETURN 8003;
	END

--	IF (@USER_LEVEL >= 16 AND @USER_LEVEL < 20)
--	BEGIN
--		SELECT @GAME_SERVER_ID = ISNULL(gameServerID, 0)
--			FROM dbo.userLoginDB WITH (NOLOCK)
--			WHERE accountIDX = @LIVE_ACCOUNT_IDX
--
--		IF (@GAME_SERVER_ID > 0)
--		BEGIN
--			RETURN 8004;
--		END
--	END

	IF (EXISTS(SELECT * FROM dbo.TBL_obt_event_log WITH (NOLOCK) WHERE accountIDX=@LIVE_ACCOUNT_IDX AND eventType=@EVENT_TYPE))
	BEGIN
		RETURN 8005;
	END



	-- insert reward
	BEGIN TRAN

		IF (@USER_LEVEL >= 7)
		BEGIN
			INSERT INTO dbo.userPresentDB (
				sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
			)
			VALUES (
				1, @LIVE_ACCOUNT_IDX, @DEFINE_REWARD1_TYPE, @DEFINE_REWARD1_VALUE1, @DEFINE_REWARD1_VALUE2, 0, 0, 3, 1, GETDATE()+35, GETDATE()
			)

			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN
				RETURN 8006;
			END
		END

		IF (@USER_LEVEL >= 12)
		BEGIN
			INSERT INTO dbo.userPresentDB (
				sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
			)
			VALUES (
				1, @LIVE_ACCOUNT_IDX, @DEFINE_REWARD2_TYPE, @DEFINE_REWARD2_VALUE1, @DEFINE_REWARD2_VALUE2, 0, 0, 3, 1, GETDATE()+35, GETDATE()
			)

			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN
				RETURN 8007;
			END
		END

--		IF (@USER_LEVEL >= 16)
--		BEGIN
--
--			UPDATE dbo.userMoneyDB
--			   SET bonusCash = bonusCash + 21000
--			 WHERE accountIDX = @LIVE_ACCOUNT_IDX
--
--			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
--			BEGIN
--				ROLLBACK TRAN
--				RETURN 8008;
--			END
--		END

		IF (@USER_LEVEL >= 20)
		BEGIN
			INSERT INTO dbo.userPresentDB (
				sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
			)
			VALUES (
				1, @LIVE_ACCOUNT_IDX, @DEFINE_REWARD4_TYPE, @DEFINE_REWARD4_VALUE1, @DEFINE_REWARD4_VALUE2, 0, 0, 3, 1, GETDATE()+35, GETDATE()
			)

			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN
				RETURN 8009;
			END
		END

		INSERT INTO dbo.TBL_obt_event_log (accountIDX, eventType, regDate)
		VALUES (@LIVE_ACCOUNT_IDX, @EVENT_TYPE, GETDATE())

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8010;
		END

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_guild_member_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_member_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_member_get_list]
GO

CREATE PROCEDURE [dbo].[game_guild_member_get_list]
(
	@guildIDX int
)
AS

SET NOCOUNT ON

SELECT a.idx, a.accountIDX, b.userLevel, c.nickName, a.guildPosition, b.renspoint 
  FROM dbo.userGuildInfoDB a WITH(NOLOCK)
 INNER JOIN dbo.userGameDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
 INNER JOIN dbo.userMemberDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX 
 WHERE guildIDX = @guildIDX
   AND guildJoinType=1
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for USP_ADM_CLASS_GET_LEVEL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_CLASS_GET_LEVEL]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_CLASS_GET_LEVEL]
GO

CREATE PROCEDURE [dbo].[USP_ADM_CLASS_GET_LEVEL]

	@ACCOUNT_IDX		INT,
	@CLASS_CODE			TINYINT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, accountIDX, classType, classLevel, classEXP, classStat
  FROM (
	SELECT idx, accountIDX, classType, classLevel, classEXP, classStat
	  FROM (
		SELECT *
		  FROM dbo.userClassDB WITH (NOLOCK)
		 WHERE accountIDX = @ACCOUNT_IDX
	  ) AS Hero
	UNPIVOT (classType FOR ctype IN (class1_type, class2_type, class3_type, class4_type, class5_type, class6_type, class7_type, class8_type, class9_type, class10_type)
	) AS UNP1
	UNPIVOT (classLevel FOR clevel IN (class1_level, class2_level, class3_level, class4_level, class5_level, class6_level, class7_level, class8_level, class9_level, class10_level)
	) AS UNP2
	UNPIVOT (classEXP FOR cexp IN (class1_expert, class2_expert, class3_expert, class4_expert, class5_expert, class6_expert, class7_expert, class8_expert, class9_expert, class10_expert)
	) AS UNP3
	UNPIVOT (classStat FOR cstat IN (class1_stat, class2_stat, class3_stat, class4_stat, class5_stat, class6_stat, class7_stat, class8_stat, class9_stat, class10_stat)
	) AS UNP4
	 WHERE SUBSTRING(ctype, 6, 2) = SUBSTRING(clevel, 6, 2)
	   AND SUBSTRING(ctype, 6, 2) = SUBSTRING(cexp, 6, 2)
	   AND SUBSTRING(ctype, 6, 2) = SUBSTRING(cstat, 6, 2)
	   AND classType != 0
  ) AS HeroLevel
 WHERE classType=@CLASS_CODE
GO


-- ----------------------------
-- Procedure structure for game_present_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_get_list]
GO

CREATE PROCEDURE [dbo].[game_present_get_list]
(
	@idx int
,	@receiveIDX int
,	@topN int
)
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 

SELECT TOP (@topN) a.idx, a.sendIDX, ISNULL(b.nickName, 'former member'), a.presentType,
	   a.value1, a.value2, a.value3, a.value4, a.msgType, a.flag, a.limitDate
  FROM dbo.userPresentDB a WITH (INDEX (idx_receiveIDX))
  LEFT JOIN dbo.userMemberDB b WITH (INDEX (idx_accountIDX))
    ON a.sendIDX = b.accountIDX
 WHERE a.receiveIDX = @receiveIDX
   AND a.idx > @idx
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for usp_Member_get_user_accountIDX
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_Member_get_user_accountIDX]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_Member_get_user_accountIDX]
GO

CREATE PROCEDURE [dbo].[usp_Member_get_user_accountIDX]
	
	@USER_ID		VARCHAR(20),
	@USER_ID_TYPE	TINYINT,
	@ACCOUNT_IDX	INT			OUTPUT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 15000

	SET @ACCOUNT_IDX=0

	IF (@USER_ID_TYPE=1)
	BEGIN
		
		 SET @ACCOUNT_IDX=(SELECT AccountIDX FROM dbo.userMemberDB WITH (READUNCOMMITTED) WHERE nickName=@USER_ID)

		IF (@ACCOUNT_IDX=0) or (@ACCOUNT_IDX IS NULL)
		BEGIN
			RETURN -1
		END 
	END
	ELSE 
	BEGIN
		
		SET @ACCOUNT_IDX=(SELECT AccountIDX FROM dbo.userMemberDB WITH (READUNCOMMITTED) WHERE UserID=@USER_ID)

		IF (@ACCOUNT_IDX=0) or (@ACCOUNT_IDX IS NULL)
		BEGIN
			RETURN -1
		END 
	END 

	RETURN ;
GO


-- ----------------------------
-- Procedure structure for game_server_connection_count_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_server_connection_count_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_server_connection_count_save]
GO

CREATE PROCEDURE [dbo].[game_server_connection_count_save]
(
	@serverID bigint
,	@count int
)
AS

SET NOCOUNT ON

UPDATE dbo.define_game_server
   SET connNumber = @count
 WHERE serverID = @serverID
GO


-- ----------------------------
-- Procedure structure for web_ticket_detail_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_ticket_detail_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_ticket_detail_add]
GO

CREATE PROCEDURE [dbo].[web_ticket_detail_add]
(
	@userID varchar(20),
	@id int,
	@content VARCHAR(MAX),
	@adminReply bit,
	@ipaddress varchar(15)
)
As
	BEGIN
		SET NOCOUNT ON 
		DECLARE @tid int;
		DECLARE @cnt int;
		SELECT @tid = Id FROM WebTicket WHERE Id = @id AND (UserID = @userID OR @adminReply = 1);
		IF @tid IS NULL OR @@ERROR <> 0
		BEGIN
			RETURN (2)
		END

		SELECT @cnt = count(*) FROM WebTicketDetail WHERE Tid = @id AND UserID = @userID AND @adminReply = 0 AND ReplyDate > DATEADD(minute, -5,  GETDATE());
		IF @cnt IS NOT NULL AND @cnt > 0
		BEGIN
			RETURN (3)
		END

		-- TRAN START 
		BEGIN TRAN

		INSERT INTO WebTicketDetail (Tid, Content, UserID, IP)
		VALUES (@tid, @content, @userID, @ipaddress);
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (4)
		END
		
		UPDATE WebTicket
		SET 
			Status = 0,
			LastUpdate = GETDATE()
		WHERE Id = @tid;
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (5)
		END
		
		-- COMMIT TRAN
		COMMIT TRAN 

		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for game_event_bingo_number_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_bingo_number_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_bingo_number_save]
GO

CREATE PROCEDURE [dbo].[game_event_bingo_number_save]
(
	@accountIDX int
,	@num1 tinyint
,	@num2 tinyint
,	@num3 tinyint
,	@num4 tinyint
,	@num5 tinyint
,	@num6 tinyint
,	@num7 tinyint
,	@num8 tinyint
,	@num9 tinyint
,	@num10 tinyint
,	@num11 tinyint
,	@num12 tinyint
,	@num13 tinyint
,	@num14 tinyint
,	@num15 tinyint
,	@num16 tinyint
,	@num17 tinyint
,	@num18 tinyint
,	@num19 tinyint
,	@num20 tinyint
,	@num21 tinyint
,	@num22 tinyint
,	@num23 tinyint
,	@num24 tinyint
,	@num25 tinyint
)
AS

SET NOCOUNT ON

UPDATE dbo.userEventBingo_Number
   SET number1 = @num1,
	   number2 = @num2,
	   number3 = @num3,
	   number4 = @num4,
	   number5 = @num5,
	   number6 = @num6,
	   number7 = @num7,
	   number8 = @num8,
	   number9 = @num9,
	   number10 = @num10,
	   number11 = @num11,
	   number12 = @num12,
	   number13 = @num13,
	   number14 = @num14,
	   number15 = @num15,
	   number16 = @num16,
	   number17 = @num17,
	   number18 = @num18,
	   number19 = @num19,
	   number20 = @num20,
	   number21 = @num21,
	   number22 = @num22,
	   number23 = @num23,
	   number24 = @num24,
	   number25 = @num25
WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_item_extra_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_extra_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_extra_get_list]
GO

CREATE PROCEDURE [dbo].[game_item_extra_get_list]    
(    
 @idx INT    
, @accountIDX INT    
, @getCount int    
)    
AS    
    
SET NOCOUNT ON    
    
SELECT TOP (@getCount) idx,    
    item1_type, item1_reinforce, item1_slotindex, item1_tradetype, item1_limitType, item1_mcustom, item1_fcustom, item1_failexp, item1_limitDate,    
    item2_type, item2_reinforce, item2_slotindex, item2_tradetype, item2_limitType, item2_mcustom, item2_fcustom, item2_failexp, item2_limitDate,    
    item3_type, item3_reinforce, item3_slotindex, item3_tradetype, item3_limitType, item3_mcustom, item3_fcustom, item3_failexp, item3_limitDate,    
    item4_type, item4_reinforce, item4_slotindex, item4_tradetype, item4_limitType, item4_mcustom, item4_fcustom, item4_failexp, item4_limitDate,    
    item5_type, item5_reinforce, item5_slotindex, item5_tradetype, item5_limitType, item5_mcustom, item5_fcustom, item5_failexp, item5_limitDate,    
    item6_type, item6_reinforce, item6_slotindex, item6_tradetype, item6_limitType, item6_mcustom, item6_fcustom, item6_failexp, item6_limitDate,    
    item7_type, item7_reinforce, item7_slotindex, item7_tradetype, item7_limitType, item7_mcustom, item7_fcustom, item7_failexp, item7_limitDate,    
    item8_type, item8_reinforce, item8_slotindex, item8_tradetype, item8_limitType, item8_mcustom, item8_fcustom, item8_failexp, item8_limitDate,    
    item9_type, item9_reinforce, item9_slotindex, item9_tradetype, item9_limitType, item9_mcustom, item9_fcustom, item9_failexp, item9_limitDate,    
    item10_type, item10_reinforce, item10_slotindex, item10_tradetype, item10_limitType, item10_mcustom, item10_fcustom, item10_failexp, item10_limitDate    
  FROM dbo.userItemExtraDB WITH (NOLOCK)    
 WHERE accountIDX = @accountIDX    
   AND idx > @idx    
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_ranking_hero_topN
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_ranking_hero_topN]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_ranking_hero_topN]
GO

CREATE PROCEDURE [dbo].[game_ranking_hero_topN]
(
	@rank1 int
,	@rank2 int
)
AS

SET NOCOUNT ON

SELECT a.accountIDX, b.userLevel, c.nickName, a.title, d.type3_win, d.type3_lose, b.regionType, b.userHerocEXP + b.userHerosEXP AS 'userHeroEXP'
  FROM dbo.userRankingDB_hero a WITH(NOLOCK)
  LEFT JOIN dbo.userGameDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
  LEFT JOIN dbo.userMemberDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX
  LEFT JOIN dbo.userRecordBattleDB d WITH(NOLOCK)
    ON a.accountIDX = d.accountIDX
 WHERE a.daily >= @rank1
   AND a.daily <= @rank2
 ORDER BY a.daily ASC
GO


-- ----------------------------
-- Procedure structure for game_league_team_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_get_data]
GO

CREATE PROCEDURE [dbo].[game_league_team_get_data]
(
	@idx int
)
AS

SET NOCOUNT ON

SELECT leagueIDX, teamName, leaderIDX, leaguePosition,
	   maxcount, cheerPoint, currentRound, factionPoint, factionType
  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_login_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_login_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_login_get_data]
GO

CREATE PROCEDURE [dbo].[game_login_get_data]
(
	@userID varchar(20),
	@cpuId varchar(128),
	@moId varchar(128),
	@ip varchar(15),
	@hash varchar(32)
)
AS
BEGIN

SET NOCOUNT ON
/*
SELECT b.userID, a.encodeKey, a.gameServerID, a.connDate, 0
  FROM dbo.userLoginDB a WITH(NOLOCK)
 INNER JOIN userMemberDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
 WHERE b.userID=@userID
*/
INSERT INTO WebConnectLog (UserID, IP, Hash, LogDate) VALUES (@userID, @ip, @hash, getdate());

SELECT b.userID, a.encodeKey, a.gameServerID, a.connDate, 
	CASE WHEN w.ban = 0 THEN 
		CASE WHEN len(@hash) <> 32 THEN 
		1 
		ELSE
			CASE WHEN @ip like '%103.78.114.%' THEN 1 ELSE 0 END
		END 
	ELSE 1 END AS BAN
  FROM dbo.userLoginDB a WITH(NOLOCK)
 INNER JOIN userMemberDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
 LEFT JOIN
 (
	SELECT COUNT(b.Id) As ban FROM WebBlock b
	WHERE Hash = @hash AND GETDATE() < EndDate
	AND (SELECT COUNT(UserId) FROM WebBlockException WHERE UserId = @userID) = 0
 ) w
 ON 1 = 1
 WHERE b.userID=@userID;

 END
GO


-- ----------------------------
-- Procedure structure for web_count_user_etcitem
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_count_user_etcitem]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_count_user_etcitem]
GO

CREATE PROCEDURE [dbo].[web_count_user_etcitem]
(
	@item int
)
As
	SELECT t.accountIdx, m.nickName, Sum(cnt) As Total
	FROM
	(
		select accountIDX, sum(item1_value1) AS cnt from userItemEtcDB where 
		item1_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item2_value1) AS cnt from userItemEtcDB where 
		item2_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item3_value1) AS cnt from userItemEtcDB where 
		item3_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item4_value1) AS cnt from userItemEtcDB where 
		item4_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item5_value1) AS cnt from userItemEtcDB where 
		item5_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item6_value1) AS cnt from userItemEtcDB where 
		item6_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item7_value1) AS cnt from userItemEtcDB where 
		item7_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item8_value1) AS cnt from userItemEtcDB where 
		item8_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item9_value1) AS cnt from userItemEtcDB where 
		item9_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item10_value1) AS cnt from userItemEtcDB where 
		item10_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item11_value1) AS cnt from userItemEtcDB where 
		item11_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item12_value1) AS cnt from userItemEtcDB where 
		item12_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item13_value1) AS cnt from userItemEtcDB where 
		item13_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item14_value1) AS cnt from userItemEtcDB where 
		item14_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item15_value1) AS cnt from userItemEtcDB where 
		item15_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item16_value1) AS cnt from userItemEtcDB where 
		item16_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item17_value1) AS cnt from userItemEtcDB where 
		item17_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item18_value1) AS cnt from userItemEtcDB where 
		item18_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item19_value1) AS cnt from userItemEtcDB where 
		item19_type = @item
		group by accountIDX
		UNION ALL
		select accountIDX, sum(item20_value1) AS cnt from userItemEtcDB where 
		item20_type = @item
		group by accountIDX
	) t
	LEFT JOIN userMemberDB m
	ON t.accountIDX = m.accountIDX
	group by t.accountIDX, m.nickName
	order by accountIDX
GO


-- ----------------------------
-- Procedure structure for game_attendance_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_attendance_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_attendance_add]
GO

CREATE PROCEDURE [dbo].[game_attendance_add]
(
	@accountIDX INT
,	@checkDate DATETIME
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userAttendanceDB (accountIDX, checkDate, regDate)
VALUES (@accountIDX, @checkDate, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_guild_change_master
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_change_master]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_change_master]
GO

CREATE PROCEDURE [dbo].[game_guild_change_master]
(
	@masterIDX int
,	@changeIDX int
,	@guildIDX int
)
AS

SET NOCOUNT ON

SET XACT_ABORT ON
BEGIN TRAN

UPDATE dbo.userGuildInfoDB
   SET guildPosition='Leader',
	   msg=4
 WHERE guildIDX=@guildIDX
   AND accountIDX=@changeIDX

UPDATE dbo.userGuildInfoDB
   SET guildPosition='Officer'
 WHERE guildIDX=@guildIDX
   AND accountIDX=@masterIDX

COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_GUILDINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_GUILDINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_GUILDINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_GUILDINFO]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT GD.idx, GD.guildName, GD.guildLevel, GD.point, GD.todaypoint, GD.aboutguild, GD.guildmark, GD.maxcount, GD.membercount, GD.regDate,
       GI.guildPosition, GI.guildJoinType
  FROM dbo.userGuildInfoDB GI WITH (NOLOCK)
  JOIN dbo.userGuildDB GD WITH (NOLOCK)
    ON GI.guildIDX = GD.idx
 WHERE GI.accountIDX = @ACCOUNT_IDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_CHARACTER_SET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_CHARACTER_SET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_CHARACTER_SET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_CHARACTER_SET_DELETE]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

DELETE FROM dbo.userCharacterDB
 WHERE accountIDX = @ACCOUNT_IDX
   AND idx = @TABLE_IDX

IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	RETURN 1001;
END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_item_medal_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_get_list]
GO

CREATE PROCEDURE [dbo].[game_item_medal_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   item1_type, item1_class, item1_limitType, item1_limitDate,
	   item2_type, item2_class, item2_limitType, item2_limitDate,
	   item3_type, item3_class, item3_limitType, item3_limitDate,
	   item4_type, item4_class, item4_limitType, item4_limitDate,
	   item5_type, item5_class, item5_limitType, item5_limitDate,
	   item6_type, item6_class, item6_limitType, item6_limitDate,
	   item7_type, item7_class, item7_limitType, item7_limitDate,
	   item8_type, item8_class, item8_limitType, item8_limitDate,
	   item9_type, item9_class, item9_limitType, item9_limitDate,
	   item10_type, item10_class, item10_limitType, item10_limitDate
  FROM dbo.userItemMedalDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_friend_join_app
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_join_app]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_join_app]
GO

CREATE PROCEDURE [dbo].[game_friend_join_app]
(
	@accountIDX int
,	@friendIDX int
)
AS

--	SET XACT_ABORT ON
SET NOCOUNT ON

DECLARE @default int
DECLARE @cnt int
DECLARE @errcount int
DECLARE @guildIDX int
DECLARE @myextend int
DECLARE @youextend int

SET @default = 100
SET @cnt = 0
SET @errcount = 0
SET @myextend = 0
SET @youextend = 0

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@friendIDX
)

IF (@cnt = 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@accountIDX
	   AND flag=1
)

IF (@cnt >= @default)
BEGIN
	SET @myextend = (
		SELECT ISNULL(SUM(CASE item1_type WHEN 4000002 THEN item1_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item2_type WHEN 4000002 THEN item2_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item3_type WHEN 4000002 THEN item3_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item4_type WHEN 4000002 THEN item4_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item5_type WHEN 4000002 THEN item5_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item6_type WHEN 4000002 THEN item6_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item7_type WHEN 4000002 THEN item7_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item8_type WHEN 4000002 THEN item8_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item9_type WHEN 4000002 THEN item9_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item10_type WHEN 4000002 THEN item10_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item11_type WHEN 4000002 THEN item11_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item12_type WHEN 4000002 THEN item12_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item13_type WHEN 4000002 THEN item13_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item14_type WHEN 4000002 THEN item14_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item15_type WHEN 4000002 THEN item15_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item16_type WHEN 4000002 THEN item16_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item17_type WHEN 4000002 THEN item17_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item18_type WHEN 4000002 THEN item18_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item19_type WHEN 4000002 THEN item19_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item20_type WHEN 4000002 THEN item20_value1 ELSE 0 END), 0)
		  FROM dbo.userItemEtcDB WITH(NOLOCK)
		 WHERE accountIDX=@accountIDX
	)
END

IF (@cnt >= (@myextend + @default))
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@friendIDX
	   AND flag=1
)

IF (@cnt >= @default)
BEGIN
	SET @youextend = (
		SELECT ISNULL(SUM(CASE item1_type WHEN 4000002 THEN item1_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item2_type WHEN 4000002 THEN item2_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item3_type WHEN 4000002 THEN item3_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item4_type WHEN 4000002 THEN item4_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item5_type WHEN 4000002 THEN item5_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item6_type WHEN 4000002 THEN item6_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item7_type WHEN 4000002 THEN item7_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item8_type WHEN 4000002 THEN item8_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item9_type WHEN 4000002 THEN item9_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item10_type WHEN 4000002 THEN item10_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item11_type WHEN 4000002 THEN item11_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item12_type WHEN 4000002 THEN item12_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item13_type WHEN 4000002 THEN item13_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item14_type WHEN 4000002 THEN item14_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item15_type WHEN 4000002 THEN item15_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item16_type WHEN 4000002 THEN item16_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item17_type WHEN 4000002 THEN item17_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item18_type WHEN 4000002 THEN item18_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item19_type WHEN 4000002 THEN item19_value1 ELSE 0 END), 0) +
			   ISNULL(SUM(CASE item20_type WHEN 4000002 THEN item20_value1 ELSE 0 END), 0)
		  FROM dbo.userItemEtcDB WITH(NOLOCK)
		 WHERE accountIDX=@friendIDX
	)
END

IF (@cnt >= (@youextend + @default))
BEGIN
	SET @errcount = 4
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@accountIDX
	   AND friendAccIDX=@friendIDX
	   AND flag=1
)

IF (@cnt > 0)
BEGIN
	SET @errcount = 5
	SELECT @errcount AS 'returnVal'
	RETURN
END

/*
SET @cnt = 0
SET @guildIDX = ISNULL((SELECT guildIDX FROM userGuildInfoDB WHERE accountIDX=@accountIDX and guildJoinType=1), -1)
if (@guildIDX > 0)
BEGIN
	SET @cnt = (SELECT count(*) FROM userGuildInfoDB WHERE guildIDX=@guildIDX and accountIDX=@friendIDX and guildJoinType=1)
END
if (@cnt > 0)
BEGIN
	SET @errcount = 6
	SELECT @errcount AS 'returnVal'
	RETURN
END
*/

BEGIN TRAN

IF (@errcount = 0)
BEGIN
	SELECT 1 AS 'returnVal'

	DELETE FROM dbo.userFriendDB
	 WHERE userAccIDX=@accountIDX
	   AND friendAccIDX=@friendIDX
	   AND flag=0

	INSERT INTO userFriendDB (
		userAccIDX, friendAccIDX, sendCloverCnt, sendCloverDate, receiveCloverCnt, receiveCloverDate, receiveBCloverCnt, flag, regDate
	)
	VALUES (
		@accountIDX, @friendIDX, 0, 0, 0, 0, 0, 1, GETDATE()
	)
	
	INSERT INTO userFriendDB (
		userAccIDX, friendAccIDX, sendCloverCnt, sendCloverDate, receiveCloverCnt, receiveCloverDate, receiveBCloverCnt, flag, regDate
	)
	VALUES (
		@friendIDX, @accountIDX, 0, 0, 0, 0, 0, 1, GETDATE()
	)
END

COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for game_guild_attend_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_attend_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_attend_get_list]
GO

CREATE PROCEDURE [dbo].[game_guild_attend_get_list]

	@INIT_DATE		DATETIME,
	@GUILD_IDX		INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT	10000

	DECLARE @nReturn			INT


	SELECT AccountIDX FROM dbo.userGuildAttendDB WITH (READCOMMITTED) 
	WHERE InitDate=@INIT_DATE and GuildIDX=@GUILD_IDX

	IF (@@ERROR<>0)
	BEGIN
		SELECT -1
		RETURN;
	END

RETURN;
GO


-- ----------------------------
-- Procedure structure for game_event_bingo_present_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_bingo_present_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_bingo_present_add]
GO

CREATE PROCEDURE [dbo].[game_event_bingo_present_add]
(
	@accountIDX int
,	@item1 tinyint
,	@item2 tinyint
,	@item3 tinyint
,	@item4 tinyint
,	@item5 tinyint
,	@item6 tinyint
,	@item7 tinyint
,	@item8 tinyint
,	@item9 tinyint
,	@item10 tinyint
,	@item11 tinyint
,	@item12 tinyint
,	@item13 tinyint
)
AS

SET NOCOUNT ON

IF( EXISTS( SELECT * FROM dbo.userEventBingo_Present WITH( NOLOCK ) WHERE accountIDX = @accountIDX ) )
BEGIN
	RETURN
END
ELSE
BEGIN
	INSERT INTO dbo.userEventBingo_Present(
		accountidx, item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13, regDate
	)
	VALUES (
		@accountIDX, @item1, @item2, @item3, @item4, @item5, @item6, @item7, @item8, @item9, @item10, @item11, @item12, @item13, GETDATE()
	)
END
GO


-- ----------------------------
-- Procedure structure for game_present_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_set_add]
GO

CREATE PROCEDURE [dbo].[game_present_set_add]

	@FROM_USER			VARCHAR(20),
	@TO_USER			VARCHAR(20),
	@USER_ID_TYPE		TINYINT,  -- 1:PublicID, 2:PrivateID
	@PRESENT_TYPE		SMALLINT,
	@VALUE_1			INT,
	@VALUE_2			INT,
	@VALUE_3			INT,
	@VALUE_4			INT,
	@MSG_TYPE			SMALLINT,
	@LIMIT_DATE			DATETIME,
	@ALAM_FLAG			SMALLINT

AS 

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 15000

	DECLARE @nReturn			INT
	DECLARE @FROM_ACCOUNT_IDX	INT
	DECLARE @TO_ACCOUNT_IDX		INT
	DECLARE @GET_DATE			DATETIME

	SET @GET_DATE = GETDATE()
	SET @FROM_ACCOUNT_IDX=0
	SET @TO_ACCOUNT_IDX=0

	-- 보내는 사람 AccountIDX
	EXEC @nReturn = dbo.usp_Member_get_user_accountIDX @FROM_USER, @USER_ID_TYPE, @FROM_ACCOUNT_IDX OUTPUT
	IF (@nReturn<>0) or (@FROM_ACCOUNT_IDX IS NULL)
	BEGIN
		SELECT -1;
		RETURN;
	END

	-- 받는 사람 AccountIDX
	EXEC @nReturn = dbo.usp_Member_get_user_accountIDX @TO_USER, @USER_ID_TYPE, @TO_ACCOUNT_IDX OUTPUT
	IF (@nReturn<>0) or (@TO_ACCOUNT_IDX IS NULL)
	BEGIN
		SELECT -2;
		RETURN;
	END

	BEGIN TRAN

		INSERT dbo.userPresentDB WITH (XLOCK, ROWLOCK) (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate)
		VALUES (@FROM_ACCOUNT_IDX, @TO_ACCOUNT_IDX, @PRESENT_TYPE, @VALUE_1, @VALUE_2, @VALUE_3, @VALUE_4, @MSG_TYPE, @ALAM_FLAG, @LIMIT_DATE, @GET_DATE)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN;
			SELECT -3;
			RETURN;
		END 

	COMMIT TRAN

	SELECT @TO_ACCOUNT_IDX AS recvIndex;
	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_accessory_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_accessory_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_accessory_set_add]
GO

CREATE PROCEDURE [dbo].[game_accessory_set_add]

	@ACCOUNT_IDX		INT,
	@ITEM_CODE			INT,
	@PERIOD_TYPE		TINYINT,
	@PERIOD_DATE		DATETIME,
	@STAT_VALUE			INT,
	@CLASS_TYPE			INT

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;
	
	DECLARE @TABLE_INDEX	INT
	SET @TABLE_INDEX = 0

	BEGIN TRAN

		INSERT INTO dbo.userAccessoryDB (AccountIDX, ItemCode, PeriodType, PeriodDate, StatValue, ClassType, RegDate)
		VALUES (@ACCOUNT_IDX, @ITEM_CODE, @PERIOD_TYPE, @PERIOD_DATE, @STAT_VALUE, @CLASS_TYPE, GETDATE())

		IF (@@ROWCOUNT = 0) OR (@@ERROR <> 0)
		BEGIN
			SELECT -1
			ROLLBACK TRAN
			RETURN;
		END

		SET @TABLE_INDEX = @@IDENTITY
	
	COMMIT TRAN
	
	SELECT @TABLE_INDEX AS idx;
GO


-- ----------------------------
-- Procedure structure for game_guild_member_get_list2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_member_get_list2]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_member_get_list2]
GO

CREATE PROCEDURE [dbo].[game_guild_member_get_list2]
(
	@guildIDX int
)
AS

SET NOCOUNT ON

SELECT a.idx, a.accountIDX, b.userLevel, c.nickName, a.guildPosition, b.renspoint 
  FROM dbo.userGuildInfoDB a WITH(NOLOCK)
 INNER JOIN dbo.userGameDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
 INNER JOIN dbo.userMemberDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX 
 WHERE guildIDX = @guildIDX
   AND guildJoinType=1
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for game_league_team_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_list]
GO

CREATE PROCEDURE [dbo].[game_league_team_list]
(
	@topN int
,	@idx int
)
AS

SET NOCOUNT ON

SELECT TOP (@topN) idx, leagueIDX, teamName, leaderIDX, leaguePosition,
	   maxcount, cheerPoint, currentRound, factionPoint, factionType, leagueStartPosition
  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
 WHERE idx < @idx
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_attendance_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_attendance_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_attendance_delete]
GO

CREATE PROCEDURE [dbo].[game_attendance_delete]
(
	@accountIDX INT
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userAttendanceDB
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_login_init_server
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_login_init_server]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_login_init_server]
GO

CREATE PROCEDURE [dbo].[game_login_init_server]
(
	@gameServerID bigint
)
AS

SET NOCOUNT ON

UPDATE dbo.userLoginDB
   SET gameServerID = 0
 WHERE gameServerID = @gameServerID
GO


-- ----------------------------
-- Procedure structure for web_ticket_update
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_ticket_update]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_ticket_update]
GO

CREATE PROCEDURE [dbo].[web_ticket_update]
(
	@userID varchar(20),
	@id int,
	@adminReply bit
)
As
	BEGIN
		SET NOCOUNT ON 
		DECLARE @tid int;
		SELECT @tid = Id FROM WebTicket WHERE Id = @id AND (UserID = @userID OR @adminReply = 1) AND Status = 0;
		IF @tid IS NULL OR @@ERROR <> 0
		BEGIN
			RETURN (2)
		END

		-- TRAN START 
		BEGIN TRAN

		UPDATE WebTicket
		SET 
			Status = 1,
			LastUpdate = GETDATE()
		WHERE Id = @tid;
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (3)
		END
		
		-- COMMIT TRAN
		COMMIT TRAN 

		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_BESTFRIEND_SET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_BESTFRIEND_SET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_BESTFRIEND_SET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_BESTFRIEND_SET_DELETE]

	@TABLE_IDX		INT,
	@ACCOUNT_IDX	INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	DELETE FROM dbo.userFriendBestDB
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND idx = @TABLE_IDX

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_item_medal_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_item_medal_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userItemMedalDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_GIFTINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_GIFTINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_GIFTINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_GIFTINFO]

	@ACCOUNT_IDX  INT    

AS     

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
  FROM dbo.userPresentDB WITH (NOLOCK)
 WHERE receiveIDX = @ACCOUNT_IDX
   AND flag < 2
GO


-- ----------------------------
-- Procedure structure for game_record_battle_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_record_battle_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_record_battle_get_data]
GO

CREATE PROCEDURE [dbo].[game_record_battle_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT type1_win, type1_lose, type1_kill, type1_death, 
	   type2_win, type2_lose, type2_kill, type2_death, 
	   type3_win, type3_lose, type3_kill, type3_death, 
	   type4_win, type4_lose, type4_kill, type4_death 
  FROM dbo.userRecordBattleDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_event_bingo_present_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_bingo_present_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_bingo_present_get]
GO

CREATE PROCEDURE [dbo].[game_event_bingo_present_get]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

IF ( EXISTS(SELECT * FROM dbo.userEventBingo_Present WITH( NOLOCK ) WHERE accountIDX = @accountIDX) )
BEGIN
	SELECT item1, item2, item3, item4, item5, item6, item7, item8, item9, item10, item11, item12, item13
	  FROM dbo.userEventBingo_Present WITH( NOLOCK )
	 WHERE accountIDX = @accountIDX
END
ELSE
BEGIN
	-- return 0, 0, 0, ... 0
	SELECT 0 AS item1, 0 AS item2, 0 AS item3, 0 AS item4, 0 AS item5, 0 AS item6, 0 AS item7, 0 AS item8, 0 AS item9, 0 AS item10, 0 AS item11, 0 AS item12, 0 AS item13
END
GO


-- ----------------------------
-- Procedure structure for usp_gar_gift_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_gar_gift_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_gar_gift_set_add]
GO

CREATE PROCEDURE [dbo].[usp_gar_gift_set_add]

	@SEND_USER			VARCHAR(20),
	@RECV_USER			VARCHAR(20),
	@ID_TYPE			TINYINT,		-- 1: GarenaUID, 2: nickName
	@PRESENT_TYPE		SMALLINT,
	@VALUE1				INT,
	@VALUE2				INT,
	@MSG_TYPE			SMALLINT,
	@LIMIT_DATE			DATETIME,
	@ALAM_FLAG			SMALLINT

AS     

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @nReturn			INT
	DECLARE @CHECK_INDEX		INT
	DECLARE @SEND_ACCOUNT_IDX	INT
	DECLARE @RECV_ACCOUNT_IDX	INT

	SET @nReturn = 0		-- true
	SET @CHECK_INDEX = -1

	EXEC @CHECK_INDEX = dbo.usp_user_get_accountidx @SEND_USER, @ID_TYPE, @SEND_ACCOUNT_IDX OUTPUT
	IF (@CHECK_INDEX <> 0) or (@SEND_ACCOUNT_IDX = 0)
	BEGIN
		RETURN -1;
	END

	EXEC @CHECK_INDEX = dbo.usp_user_get_accountidx @RECV_USER, @ID_TYPE, @RECV_ACCOUNT_IDX OUTPUT
	IF (@CHECK_INDEX <> 0) or (@RECV_ACCOUNT_IDX = 0)
	BEGIN
		RETURN -2;
	END

	BEGIN TRAN

		INSERT INTO dbo.userPresentDB WITH (XLOCK, ROWLOCK) (
			sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
		)
		VALUES (
			@SEND_ACCOUNT_IDX, @RECV_ACCOUNT_IDX, @PRESENT_TYPE, @VALUE1, @VALUE2, 0, 0, @MSG_TYPE, @ALAM_FLAG, @LIMIT_DATE, GETDATE()
		)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN;
			RETURN -3;
		END 

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for web_roulette_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_get]
(
	@rid int
)
As
	SELECT
		r.Id AS Id,
		r.Name AS RouletteName,
		r.Description AS RouletteDescription,
		i.Name AS CostName,
		r.Cost AS Cost,
		CASE WHEN r.Status = 1 THEN
			CASE WHEN GETDATE() BETWEEN r.StartDate AND r.EndDate THEN 1 ELSE 0 END
		ELSE 0 END AS Status,
		rd.Id AS ItemId,
		rd.Name AS ItemName,
		rd.Image As ItemImage,
		rd.Flag AS Flag
	FROM WebRoulette r WITH (NOLOCK)
	INNER JOIN WebRouletteReward rd WITH (NOLOCK)
	ON rd.Rid = r.Id
	INNER JOIN WebRouletteItem i WITH (NOLOCK)
	ON i.Id = r.CostItem
	WHERE r.Id = @rid
	ORDER BY rd.Id
GO


-- ----------------------------
-- Procedure structure for game_friend_join_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_join_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_join_delete]
GO

CREATE PROCEDURE [dbo].[game_friend_join_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userFriendDB
 WHERE idx=@idx
   AND flag=0
GO


-- ----------------------------
-- Procedure structure for game_league_team_member_app_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_member_app_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_member_app_add]
GO

CREATE PROCEDURE [dbo].[game_league_team_member_app_add]
(
	@accountIDX int
,	@leagueIDX int
,	@teamIDX int
)
AS

SET NOCOUNT ON

DECLARE @chkcnt int
DECLARE @errcount int
DECLARE @maxque tinyint

SET @chkcnt = 0
SET @errcount = 0
SET @maxque = 8

SET @chkcnt = (
	SELECT joinType
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
)
IF (@chkcnt <= 1)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
	 WHERE idx=@teamIDX
)
IF (@chkcnt = 0)
BEGIN
	SET @errcount = 6
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
	   AND leagueIDX=@leagueIDX
	   AND joinType=1
)
IF (@chkcnt > 0)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
	   AND teamIDX=@teamIDX
	   AND joinType=0
)
IF (@chkcnt > 0)
BEGIN
	SET @errcount = 4
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
	 WHERE teamIDX=@teamIDX
	   AND joinType=0
)
IF (@maxque <= @chkcnt)
BEGIN
	SET @errcount = 5
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount = 0)
BEGIN
	SET @errcount = 1
	SELECT @errcount AS 'returnVal'

	INSERT INTO dbo.userLeagueTeamMemberDB (accountIDX, leagueIDX, teamIDX, joinType, regDate)
	VALUES (@accountIDX, @leagueIDX, @teamIDX, 0, GETDATE())
END
GO


-- ----------------------------
-- Procedure structure for game_league_backup_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_backup_user]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_backup_user]
GO

CREATE PROCEDURE [dbo].[game_league_backup_user]
(
	@leagueIDX int
)
AS

SET NOCOUNT ON


DECLARE @startDate int
DECLARE @infoIDX int

SET @startDate = ISNULL((
	SELECT startDate 
	  FROM dbo.userLeagueListDB WITH(NOLOCK)
	 WHERE idx=@leagueIDX
	), 0)

SET @infoIDX = ISNULL((
	SELECT idx
	  FROM dbo.userLeagueInfoDB WITH(NOLOCK)
	 WHERE leagueIDX=@leagueIDX
	), 0)

INSERT INTO LosaGame_log.dbo.log_league_list_user (
	leagueIDX, accountIDX, startDate, endDate, leagueType, leagueState, regDate, insertDate
)
SELECT idx, accountIDX, startDate, endDate, leagueType, leagueState, regDate, GETDATE()
  FROM dbo.userLeagueListDB WITH(NOLOCK)
 WHERE idx=@leagueIDX


INSERT INTO LosaGame_log.dbo.log_league_team_user (
	teamIDX, leagueIDX, startDate, teamName, leaderIDX, leagueStartPosition, leaguePosition, maxcount, cheerPoint,
	currentRound, factionPoint, factionType, regDate, insertDate
)
SELECT idx, leagueIDX, @startDate, teamName, leaderIDX, leagueStartPosition, leaguePosition, maxcount, cheerPoint,
	   currentRound, factionPoint, factionType, regDate, GETDATE()
  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX


INSERT INTO LosaGame_log.dbo.log_league_team_member_user (
	teamMemberIDX, startDate, accountIDX, leagueIDX, teamIDX, joinType, regDate, insertDate
)
SELECT idx, @startDate, accountIDX, leagueIDX, teamIDX, joinType, regDate, GETDATE()
  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX


INSERT INTO LosaGame_log.dbo.log_league_info_user (
	infoIDX, leagueIDX, leagueName, maxRound, bannerA, bannerB, modeType, maxcount, autoType, announce, recruitDate, waitDate, regDate, insertDate
)
SELECT idx, leagueIDX, leagueName, maxRound, bannerA, bannerB, modeType, maxcount, autoType, announce, recruitDate, waitDate, regDate, GETDATE()
  FROM dbo.userLeagueInfoDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX


INSERT INTO LosaGame_log.dbo.log_league_round_user (
	roundIDX, infoIDX,
	roundType1_playDate, roundType1_presentCode1, roundType1_presentCode2, roundType1_presentCode3, roundType1_presentCode4,
	roundType2_playDate, roundType2_presentCode1, roundType2_presentCode2, roundType2_presentCode3, roundType2_presentCode4,
	roundType3_playDate, roundType3_presentCode1, roundType3_presentCode2, roundType3_presentCode3, roundType3_presentCode4,
	roundType4_playDate, roundType4_presentCode1, roundType4_presentCode2, roundType4_presentCode3, roundType4_presentCode4,
	roundType5_playDate, roundType5_presentCode1, roundType5_presentCode2, roundType5_presentCode3, roundType5_presentCode4,
	roundType6_playDate, roundType6_presentCode1, roundType6_presentCode2, roundType6_presentCode3, roundType6_presentCode4,
	roundType7_playDate, roundType7_presentCode1, roundType7_presentCode2, roundType7_presentCode3, roundType7_presentCode4,
	roundType8_playDate, roundType8_presentCode1, roundType8_presentCode2, roundType8_presentCode3, roundType8_presentCode4,
	roundType9_playDate, roundType9_presentCode1, roundType9_presentCode2, roundType9_presentCode3, roundType9_presentCode4,
	roundType10_playDate, roundType10_presentCode1, roundType10_presentCode2, roundType10_presentCode3, roundType10_presentCode4,
	roundType11_playDate, roundType11_presentCode1, roundType11_presentCode2, roundType11_presentCode3, roundType11_presentCode4,
	regDate, insertDate
)
SELECT idx, infoIDX,
	   roundType1_playDate, roundType1_presentCode1, roundType1_presentCode2, roundType1_presentCode3, roundType1_presentCode4,
	   roundType2_playDate, roundType2_presentCode1, roundType2_presentCode2, roundType2_presentCode3, roundType2_presentCode4,
	   roundType3_playDate, roundType3_presentCode1, roundType3_presentCode2, roundType3_presentCode3, roundType3_presentCode4,
	   roundType4_playDate, roundType4_presentCode1, roundType4_presentCode2, roundType4_presentCode3, roundType4_presentCode4,
	   roundType5_playDate, roundType5_presentCode1, roundType5_presentCode2, roundType5_presentCode3, roundType5_presentCode4,
	   roundType6_playDate, roundType6_presentCode1, roundType6_presentCode2, roundType6_presentCode3, roundType6_presentCode4,
	   roundType7_playDate, roundType7_presentCode1, roundType7_presentCode2, roundType7_presentCode3, roundType7_presentCode4,
	   roundType8_playDate, roundType8_presentCode1, roundType8_presentCode2, roundType8_presentCode3, roundType8_presentCode4,
	   roundType9_playDate, roundType9_presentCode1, roundType9_presentCode2, roundType9_presentCode3, roundType9_presentCode4,
	   roundType10_playDate, roundType10_presentCode1, roundType10_presentCode2, roundType10_presentCode3, roundType10_presentCode4,
	   roundType11_playDate, roundType11_presentCode1, roundType11_presentCode2, roundType11_presentCode3, roundType11_presentCode4,
	   regDate, GETDATE()
  FROM dbo.userLeagueRoundDB WITH(NOLOCK)
 WHERE infoIDX=@infoIDX
GO


-- ----------------------------
-- Procedure structure for game_attendance_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_attendance_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_attendance_list]
GO

CREATE PROCEDURE [dbo].[game_attendance_list]
(
	@accountIDX INT
)
AS

SET NOCOUNT ON

SELECT idx, accountIDX, checkDate
  FROM dbo.userAttendanceDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for obt_event_for_game_bug
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[obt_event_for_game_bug]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[obt_event_for_game_bug]
GO

CREATE PROCEDURE [dbo].[obt_event_for_game_bug]
(
	@GARENA_UID		VARCHAR(20)
)
AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @ACCOUNT_IDX			INT
	DECLARE @EVENT_TYPE				TINYINT
	DECLARE @i						TINYINT

	DECLARE @DEFINE_REWARD_TYPE		INT
	DECLARE @DEFINE_REWARD_VALUE1	INT
	DECLARE @DEFINE_REWARD_VALUE2	INT

	SET @DEFINE_REWARD_TYPE = 6
	SET @DEFINE_REWARD_VALUE1 = 2
	SET @DEFINE_REWARD_VALUE2 = 0

	DECLARE @nReturn			INT
	SET @nReturn=0				-- True

	SET @EVENT_TYPE = 3


	-- LIVE Account Data Check
	SET @ACCOUNT_IDX = ISNULL((
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH (NOLOCK)
		 WHERE userID = @GARENA_UID
	), 0)

	IF (@ACCOUNT_IDX=0)
	BEGIN
		RETURN 8001;
	END

	IF (NOT EXISTS(SELECT * FROM dbo.TBL_obt_event_bug_reporting WITH (NOLOCK) WHERE accountIDX=@ACCOUNT_IDX AND brType=1))
	BEGIN
		RETURN 8002;
	END

	IF (EXISTS(SELECT * FROM dbo.TBL_obt_event_log WITH (NOLOCK) WHERE accountIDX=@ACCOUNT_IDX AND eventType=@EVENT_TYPE))
	BEGIN
		RETURN 8003;
	END



	-- insert reward
	BEGIN TRAN

		SET @i = 0
		WHILE (@i < 5)
		BEGIN
			INSERT INTO dbo.userPresentDB (
				sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
			)
			VALUES (
				1, @ACCOUNT_IDX, @DEFINE_REWARD_TYPE, @DEFINE_REWARD_VALUE1, @DEFINE_REWARD_VALUE2, 0, 0, 3, 1, GETDATE()+35, GETDATE()
			)

			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN
				RETURN 8004;
			END

			SET @i = @i + 1
		END

		INSERT INTO dbo.TBL_obt_event_log (accountIDX, eventType, regDate)
		VALUES (@ACCOUNT_IDX, @EVENT_TYPE, GETDATE())

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8005;
		END

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_accessory_set_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_accessory_set_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_accessory_set_delete]
GO

CREATE PROCEDURE [dbo].[game_accessory_set_delete]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;
	
	BEGIN TRAN

		DELETE FROM dbo.userAccessoryDB
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX;

		IF (@@ROWCOUNT = 0) OR (@@ERROR <> 0)
		BEGIN
			SELECT -1
			ROLLBACK TRAN
			RETURN;
		END

	COMMIT TRAN

	RETURN;
GO


-- ----------------------------
-- Procedure structure for USP_ADM_BESTFRIEND_SET_ADD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_BESTFRIEND_SET_ADD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_BESTFRIEND_SET_ADD]
GO

CREATE PROCEDURE [dbo].[USP_ADM_BESTFRIEND_SET_ADD]

	@ACCOUNT_IDX	INT,
	@FRIEND_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn	INT
DECLARE @nCnt		INT
DECLARE @nMaxCnt	INT
SET @nReturn = 0
SET @nCnt = 0
SET @nMaxCnt = 5

IF (NOT EXISTS(SELECT * FROM dbo.userMemberDB WITH (NOLOCK) WHERE accountIDX = @FRIEND_IDX))
BEGIN
	RETURN 1001;
END

IF (EXISTS(SELECT * FROM dbo.userFriendBestDB WITH (NOLOCK) WHERE friendIDX = @FRIEND_IDX))
BEGIN
	RETURN 1002;
END

SET @nCnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendBestDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
)

IF (@nCnt >= @nMaxCnt)
BEGIN
	RETURN 1003;
END

BEGIN TRAN

	INSERT INTO dbo.userFriendBestDB (accountIDX, friendIDX, flag, flagTime, regDate)
	VALUES (@ACCOUNT_IDX, @FRIEND_IDX, 1, 0, GETDATE())

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1004;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for web_roulette_history_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_history_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_history_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_history_get]
(
	@rid int
)
As
	SELECT TOP 10
		Flag,
		Nickname,
		RewardName,
		RewardDate
	FROM WebRouletteRewardLog r WITH (NOLOCK)
	WHERE/* r.RouletteId = @rid AND*/ Flag > 0
	ORDER BY r.RewardDate DESC
GO


-- ----------------------------
-- Procedure structure for game_costume_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_costume_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_costume_add]
GO

CREATE PROCEDURE [dbo].[game_costume_add]  
(  
 @accountIDX INT,  
 @itemCode INT,  
 @periodType TINYINT,  
 @periodDate DATETIME,  
 @classType INT  
)  
AS  
  
SET NOCOUNT ON  
SET LOCK_TIMEOUT 10000  
  
DECLARE @itemCodeIDX INT  
SET @itemCodeIDX = 0  
  
BEGIN TRAN  
  
 INSERT INTO dbo.userCostumeDB (  
  accountIDX, itemCode, mcustom, fcustom, periodType, periodDate, classType, regDate  
 )  
 VALUES (  
  @accountIDX, @itemCode, 0, 0, @periodType, @periodDate, @classType, GETDATE()  
 )  
  
 IF (@@ROWCOUNT = 0) OR (@@ERROR <> 0)  
 BEGIN  
  ROLLBACK TRAN  
 END  
  
 SET @itemCodeIDX = @@IDENTITY  
   
COMMIT TRAN  
   
SELECT @itemCodeIDX AS idx;
GO


-- ----------------------------
-- Procedure structure for game_login_init_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_login_init_user]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_login_init_user]
GO

CREATE PROCEDURE [dbo].[game_login_init_user]      
(      
 @userID varchar(20)
, @encodeKey varchar(15)   = null    
)      
AS      
      
SET NOCOUNT ON      
      
UPDATE dbo.userLoginDB      
   SET gameServerID=0      
 WHERE accountIDX = (      
 SELECT accountIDX      
   FROM dbo.userMemberDB      
  WHERE userID=@userID     
 )
GO


-- ----------------------------
-- Procedure structure for game_award_level_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_award_level_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_award_level_save]
GO

CREATE PROCEDURE [dbo].[game_award_level_save]
(
	@accountIDX int
,	@awardLevel int
,	@expert int
)
AS

SET NOCOUNT ON

If (EXISTS(SELECT * FROM dbo.userRankingDB_award WHERE accountIDX=@accountIDX))
BEGIN
	UPDATE dbo.userRankingDB_award
	   SET awardLevel=@awardLevel,
		   expert=@expert
	 WHERE accountIDX=@accountIDX
END
ELSE
BEGIN
	INSERT INTO dbo.userRankingDB_award (accountIDX, awardLevel, expert, regDate)
	VALUES (@accountIDX, @awardLevel, @expert, GETDATE())
END
GO


-- ----------------------------
-- Procedure structure for game_guild_intro_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_intro_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_intro_save]
GO

CREATE PROCEDURE [dbo].[game_guild_intro_save]
(
	@guildIDX int
,	@content varchar(110)
)
AS

SET NOCOUNT ON

UPDATE dbo.userGuildDB
   SET aboutguild=@content
 WHERE idx=@guildIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_GEARINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_GEARINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_GEARINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_GEARINFO]

	@ACCOUNT_IDX  INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, pos, itemType, itemReinForce, itemSlotindex, itemTradeType, itemMCustom, itemFCustom, itemFailEXP, itemLimitType, itemLimitDate
  FROM (
	SELECT idx, 1 AS pos, item1_type AS itemType, item1_reinforce AS itemReinForce, item1_slotindex AS itemSlotindex, item1_tradetype AS itemTradeType, item1_mcustom AS itemMCustom, item1_fcustom AS itemFCustom, item1_failexp AS itemFailEXP, item1_limitType AS itemLimitType, item1_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item1_type > 0

	UNION ALL

	SELECT idx, 2 AS pos, item2_type AS itemType, item2_reinforce AS itemReinForce, item2_slotindex AS itemSlotindex, item2_tradetype AS itemTradeType, item2_mcustom AS itemMCustom, item2_fcustom AS itemFCustom, item2_failexp AS itemFailEXP, item2_limitType AS itemLimitType, item2_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item2_type > 0

	UNION ALL
	
	SELECT idx, 3 AS pos, item3_type AS itemType, item3_reinforce AS itemReinForce, item3_slotindex AS itemSlotindex, item3_tradetype AS itemTradeType, item3_mcustom AS itemMCustom, item3_fcustom AS itemFCustom, item3_failexp AS itemFailEXP, item3_limitType AS itemLimitType, item3_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item3_type > 0

	UNION ALL
	
	SELECT idx, 4 AS pos, item4_type AS itemType, item4_reinforce AS itemReinForce, item4_slotindex AS itemSlotindex, item4_tradetype AS itemTradeType, item4_mcustom AS itemMCustom, item4_fcustom AS itemFCustom, item4_failexp AS itemFailEXP, item4_limitType AS itemLimitType, item4_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item4_type > 0

	UNION ALL
	
	SELECT idx, 5 AS pos, item5_type AS itemType, item5_reinforce AS itemReinForce, item5_slotindex AS itemSlotindex, item5_tradetype AS itemTradeType, item5_mcustom AS itemMCustom, item5_fcustom AS itemFCustom, item5_failexp AS itemFailEXP, item5_limitType AS itemLimitType, item5_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item5_type > 0

	UNION ALL
	
	SELECT idx, 6 AS pos, item6_type AS itemType, item6_reinforce AS itemReinForce, item6_slotindex AS itemSlotindex, item6_tradetype AS itemTradeType, item6_mcustom AS itemMCustom, item6_fcustom AS itemFCustom, item6_failexp AS itemFailEXP, item6_limitType AS itemLimitType, item6_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item6_type > 0

	UNION ALL
	
	SELECT idx, 7 AS pos, item7_type AS itemType, item7_reinforce AS itemReinForce, item7_slotindex AS itemSlotindex, item7_tradetype AS itemTradeType, item7_mcustom AS itemMCustom, item7_fcustom AS itemFCustom, item7_failexp AS itemFailEXP, item7_limitType AS itemLimitType, item7_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item7_type > 0

	UNION ALL
	
	SELECT idx, 8 AS pos, item8_type AS itemType, item8_reinforce AS itemReinForce, item8_slotindex AS itemSlotindex, item8_tradetype AS itemTradeType, item8_mcustom AS itemMCustom, item8_fcustom AS itemFCustom, item8_failexp AS itemFailEXP, item8_limitType AS itemLimitType, item8_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item8_type > 0

	UNION ALL
	
	SELECT idx, 9 AS pos, item9_type AS itemType, item9_reinforce AS itemReinForce, item9_slotindex AS itemSlotindex, item9_tradetype AS itemTradeType, item9_mcustom AS itemMCustom, item9_fcustom AS itemFCustom, item9_failexp AS itemFailEXP, item9_limitType AS itemLimitType, item9_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item9_type > 0

	UNION ALL
	
	SELECT idx, 10 AS pos, item10_type AS itemType, item10_reinforce AS itemReinForce, item10_slotindex AS itemSlotindex, item10_tradetype AS itemTradeType, item10_mcustom AS itemMCustom, item10_fcustom AS itemFCustom, item10_failexp AS itemFailEXP, item10_limitType AS itemLimitType, item10_limitDate AS itemLimitDate
	  FROM dbo.userItemExtraDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item10_type > 0
  ) AS GearItem
GO


-- ----------------------------
-- Procedure structure for game_present_add_tool
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_add_tool]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_add_tool]
GO

CREATE PROCEDURE [dbo].[game_present_add_tool]
(
	@sendNick varchar(20)
,	@receiveNick varchar(20)
,	@persentType smallint
,	@value1 int
,	@value2 int
,	@value3 int
,	@value4 int
,	@msgType smallint
,	@limitDate datetime
,	@flag smallint
)
AS

SET NOCOUNT ON

DECLARE @sendIDX int, @receiveIDX int

SET @sendIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@sendNick
)

SET @receiveIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@receiveNick
)

SELECT @sendIDX = ISNULL(@sendIDX, 1105) 

INSERT INTO userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate)
VALUES (@sendIDX, @receiveIDX, @persentType, @value1, @value2, @value3, @value4, @msgType, @flag, @limitDate, GETDATE())
	
SELECT @receiveIDX AS recvIndex
GO


-- ----------------------------
-- Procedure structure for web_userinfo_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_userinfo_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_userinfo_get_data]
GO

CREATE PROCEDURE [dbo].[web_userinfo_get_data]
(
	@userID varchar(20)
)
As
	select top 1 
		u.accountIDX AS idx, 
		nickName AS Nickname ,
		w.RegDate, 
		w.Verify, 
		m.realCash AS Cash,
		m.bonusCash AS BonusCash,
		 g.userLevel AS Level,
		 g.userEXP AS Exp,
		 w.Email
	from WebLogin w  WITH (NOLOCK)
	inner join userMemberDB u WITH (NOLOCK)
	on w.Username = u.userID
	inner join userMoneyDB m WITH (NOLOCK)
	on u.accountIDX = m.accountIDX
	inner join userGameDB g WITH (NOLOCK)
	on g.accountIDX = m.accountIDX
	where u.userID = @userID;
GO


-- ----------------------------
-- Procedure structure for game_friend_join_in
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_join_in]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_join_in]
GO

CREATE PROCEDURE [dbo].[game_friend_join_in]
(
	@accountIDX int
,	@friendNick varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @cnt int
DECLARE @errcount int
DECLARE @friendIDX int
DECLARE @eventType int
DECLARE @maxJoinCnt int

SET @cnt = 0
SET @errcount = 0
SET @maxJoinCnt = 20
SET @friendIDX = ISNULL((
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@friendNick
), -1)

IF (@friendIDX < 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

/*
SET @eventType = isNull((SELECT eventType FROM userMemberDB WITH(NOLOCK) WHERE nickName=@friendNick), 0)
if (@eventType = 1)
BEGIN
	SET @errcount = 7
	SELECT @errcount AS 'returnVal'
	RETURN
END
*/

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@accountIDX
	   AND friendAccIDX=@friendIDX
	   AND flag=0
)

IF (@cnt > 0)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@accountIDX
	   AND friendAccIDX=@friendIDX
	   AND flag=1
)

IF (@cnt > 0)
BEGIN
	SET @errcount = 4
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@friendIDX
	   AND friendAccIDX=@accountIDX
	   AND flag=0
)

IF (@cnt > 0)
BEGIN
	SET @errcount = 5
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@friendIDX
	   AND flag=0
)

IF (@cnt >= @maxJoinCnt)
BEGIN
	SET @errcount = 8
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount > 0)
BEGIN
	SELECT @errcount AS 'returnVal'
END
ELSE
BEGIN
	SELECT 1 AS 'returnVal'
	INSERT INTO userFriendDB (
		userAccIDX, friendAccIDX, sendCloverCnt, sendCloverDate, receiveCloverCnt, receiveCloverDate, receiveBCloverCnt, flag, regDate
	)
	VALUES (
		@friendIDX, @accountIDX, 0, 0, 0, 0, 0, 0, GETDATE()
	)
END
GO


-- ----------------------------
-- Procedure structure for game_guildHQ_set_fit
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guildHQ_set_fit]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guildHQ_set_fit]
GO

CREATE PROCEDURE [dbo].[game_guildHQ_set_fit]  
   
 @GUILD_IDX  INT,  
 @ACCOUNT_IDX INT,  
 @ITEM_SERIAL BIGINT,   
 @ITEM_CODE  INT,  
 @ITEM_XZ  INT,  
 @ITEM_Y   INT,  
 @ITEM_ROTATE TINYINT,  
 @ITEM_STATUS TINYINT  -- 1:설치, 2: 변경  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
   
   
 -- 최초 설치시 즉, 인벤(ItemStus=0)에서 userGuildHQDB로 넘어와서 설치 될때 서버가 ItemSerial 정보를 모르기 때문에 제일 먼저 인벤에  
 -- 들어온 아이템 부터 설치 하도록 ItemSerial을 서버에 전달  
 IF (@ITEM_SERIAL=0 and @ITEM_STATUS=1)  
 BEGIN   
  SET @ITEM_SERIAL= (SELECT MIN(ItemSerial) FROM dbo.userGuildHQDB WHERE GuildIDX=@GUILD_IDX and ItemCode=@ITEM_CODE and ItemStatus=0)  
  SELECT @ITEM_SERIAL  
 END  
   
 BEGIN TRAN  
    
  -- @ITEM_STATUS 는 0: 미설치, 1:설치됨, 2:삭제 만 사용되지만, 현재 설치된 아이템의 위치 변경을 위해   
  -- 현재 프로시저에서 2번 코드를 받지만 실제는 1로 강제 초기화 하여 설치로 상태 정보를 유지한다.  
  SET @ITEM_STATUS=1  
  
  UPDATE dbo.userGuildHQDB WITH (XLOCK, ROWLOCK) SET ItemXZ=@ITEM_XZ, ItemY=@ITEM_Y, ItemRotate=@ITEM_ROTATE, ItemStatus=@ITEM_STATUS   
  WHERE ItemSerial=@ITEM_SERIAL  
  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   SELECT -1;  
   ROLLBACK TRAN  
   RETURN;  
  END  
    
  --  변경된 데이터에 대한 Version관리  
  EXEC @nReturn = dbo.game_guildHQ_ver_set_status @GUILD_IDX  
  IF @nReturn<>0  
  BEGIN  
   SELECT @nReturn  
   ROLLBACK TRAN  
   RETURN;  
  END     
  
 COMMIT TRAN  
  
 -- 설치로그  
 -- EXEC LINKED_CONNECTION_BAK.LosaLogDataC.dbo.log_guildHQ_fit_set_insert @GUILD_IDX, @ACCOUNT_IDX, @ITEM_SERIAL, @ITEM_CODE, 1  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for web_valentine_server_goal_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_server_goal_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_server_goal_get]
GO

CREATE PROCEDURE [dbo].[web_valentine_server_goal_get]
As
	SELECT
		CASE WHEN ISNULL(SUM(Amount), 0) * 100 / 99999  > 100 
		THEN 100
		 ELSE ISNULL(SUM(Amount), 0) * 100 / 99999 END As ServerGoal
	FROM WebEventValentineDailyLog
	WHERE ItemId IN (3,4,5);
GO


-- ----------------------------
-- Procedure structure for game_accessory_set_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_accessory_set_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_accessory_set_save]
GO

CREATE PROCEDURE [dbo].[game_accessory_set_save]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@ITEM_CODE			INT,
	@PERIOD_TYPE		TINYINT,
	@PERIOD_DATE		DATETIME,
	@STAT_VALUE			INT,
	@CLASS_TYPE			INT

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;
	
	BEGIN TRAN
		
		UPDATE dbo.userAccessoryDB
		   SET ItemCode = @ITEM_CODE,
			   PeriodType = @PERIOD_TYPE,
			   PeriodDate = @PERIOD_DATE,
			   StatValue = @STAT_VALUE,
			   ClassType = @CLASS_TYPE
		 WHERE AccountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX

		IF (@@ROWCOUNT = 0) OR (@@ERROR <> 0)
		BEGIN
			SELECT -1
			ROLLBACK TRAN
			RETURN;
		END

	COMMIT TRAN

	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_cheer_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_cheer_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_cheer_add]
GO

CREATE PROCEDURE [dbo].[game_league_cheer_add]
(
	@accountIDX int
,	@leagueIDX int
,	@teamIDX int
)
AS

SET NOCOUNT ON

DECLARE @cnt INT
DECLARE @errcount INT

SET @cnt = 0
SET @errcount = 0

SET @cnt = (
	SELECT COUNT(*)
	FROM dbo.userLeagueCheerDB WITH(NOLOCK)
	WHERE accountIDX=@accountIDX
	  AND leagueIDX=@leagueIDX
)

IF (@cnt > 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
	 WHERE idx=@teamIDX
	   AND leagueIDX=@leagueIDX
)

IF (@cnt = 0)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount = 0)
BEGIN
	INSERT INTO dbo.userLeagueCheerDB (accountIDX, leagueIDX, teamIDX, regDate)
	VALUES (@accountIDX, @leagueIDX, @teamIDX, GETDATE())

	UPDATE dbo.userLeagueTeamDB
	   SET cheerPoint = cheerPoint + 1
	 WHERE idx=@teamIDX

	SET @errcount = 1
	SELECT @errcount AS 'returnVal'
END
GO


-- ----------------------------
-- Procedure structure for game_present_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_save]
GO

CREATE PROCEDURE [dbo].[game_present_save]
(
	@tblIDX int
,	@flag smallint
)
AS

SET NOCOUNT ON

UPDATE dbo.userPresentDB
   SET flag=@flag
 WHERE idx=@tblIDX
GO


-- ----------------------------
-- Procedure structure for game_login_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_login_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_login_save]
GO

CREATE PROCEDURE [dbo].[game_login_save]  
(  
 @userID varchar(20)  
, @gameServerID bigint  
)  
AS  
  
SET NOCOUNT ON  
  
BEGIN TRAN  
  
SELECT b.userID, a.gameServerID  
  FROM userLoginDB a  
 INNER JOIN userMemberDB b  
    ON a.accountIDX = b.accountIDX  
 WHERE b.userID = @userID  

--알파에선 gameserverID 무조건 0으로 세팅함, 테스트용
  
UPDATE dbo.userLoginDB  
   SET gameServerID = 0,  
    connDate = GETDATE()  
 WHERE accountIDX = (  
 SELECT accountIDX  
   FROM dbo.userMemberDB  
  WHERE userID=@userID  
 )  
  
COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for web_coupon_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_coupon_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_coupon_add]
GO

CREATE PROCEDURE [dbo].[web_coupon_add]
(
	@userID VARCHAR(20),
	@code VARCHAR(16)
)
As

begin
	SET NOCOUNT ON 
	DECLARE @groupId int;
	DECLARE @couponId int;
	DECLARE @cash int;
	
	-- TRAN START 
	BEGIN TRAN

	SELECT @groupId = groupId FROM WebCoupon WHERE Code = @code AND Used = 0;
	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (2)
		END

	SELECT @couponId = Id FROM WebCoupon WHERE groupId = @groupId AND Used = 1 AND UsedUser = @userID;
	IF @couponId IS NOT NULL
	BEGIN
		ROLLBACK TRAN
		RETURN (3)
	END

	UPDATE WebCoupon
		SET Used = 1,
		UsedDate = getdate(),
		UsedUser = @userId
	WHERE Used = 0 AND Code = @code;

	IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (4)
		END
	
	INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate)
	SELECT 1, accountIdx, presentType, value1, value2, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE()
	FROM userMemberDB u
	CROSS APPLY WebCouponItem i
	WHERE i.GroupId = @groupId AND i.ItemType = 0
	AND userID = @userID;

	IF @@ROWCOUNT = 0 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (5)
		END

	SELECT @cash = ISNULL(SUM(Value1), 0) FROM WebCouponItem WHERE GroupId = @groupId AND ItemType = 1;
	IF @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (6)
		END

	UPDATE c 
		SET realCash+= @cash 
	FROM userMoneyDB c
	INNER JOIN userMemberDB m
	ON c.accountIDX = m.accountIDX
	WHERE userID = @userID;

	IF @@ROWCOUNT = 0 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (7)
		END
	-- COMMIT TRAN
	COMMIT TRAN 

	RETURN (1)
end
GO


-- ----------------------------
-- Procedure structure for game_award_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_award_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_award_save]
GO

CREATE PROCEDURE [dbo].[game_award_save]
(
	@idx int
,	@award1_type int
,	@award1_number int
,	@award1_point int
,	@award2_type int
,	@award2_number int
,	@award2_point int
,	@award3_type int
,	@award3_number int
,	@award3_point int
,	@award4_type int
,	@award4_number int
,	@award4_point int
,	@award5_type int
,	@award5_number int
,	@award5_point int
,	@award6_type int
,	@award6_number int
,	@award6_point int
,	@award7_type int
,	@award7_number int
,	@award7_point int
,	@award8_type int
,	@award8_number int
,	@award8_point int
,	@award9_type int
,	@award9_number int
,	@award9_point int
,	@award10_type int
,	@award10_number int
,	@award10_point int
)
AS

SET NOCOUNT ON

UPDATE dbo.userAwardDB
   SET award1_type = @award1_type
,	   award1_number = @award1_number
,	   award1_point = @award1_point
,	   award2_type = @award2_type
,	   award2_number = @award2_number
,	   award2_point = @award2_point
,	   award3_type = @award3_type
,	   award3_number = @award3_number
,	   award3_point = @award3_point
,	   award4_type = @award4_type
,	   award4_number = @award4_number
,	   award4_point = @award4_point
,	   award5_type = @award5_type
,	   award5_number = @award5_number
,	   award5_point = @award5_point
,	   award6_type = @award6_type
,	   award6_number = @award6_number
,	   award6_point = @award6_point
,	   award7_type = @award7_type
,	   award7_number = @award7_number
,	   award7_point = @award7_point
,	   award8_type = @award8_type
,	   award8_number = @award8_number
,	   award8_point = @award8_point
,	   award9_type = @award9_type
,	   award9_number = @award9_number
,	   award9_point = @award9_point
,	   award10_type = @award10_type
,	   award10_number = @award10_number
,	   award10_point = @award10_point
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_costume_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_costume_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_costume_delete]
GO

CREATE PROCEDURE [dbo].[game_costume_delete]  
(  
 @idx INT,  
 @accountIDX INT  
)  
AS  
  
SET NOCOUNT ON  
SET LOCK_TIMEOUT 10000  
  
DELETE FROM dbo.userCostumeDB  
 WHERE accountIDX = @accountIDX  
   AND idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_friend_join_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_join_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_join_list]
GO

CREATE PROCEDURE [dbo].[game_friend_join_list]
(
	@idx int
,	@accountIDX int
,	@topNo int
)
AS

SET NOCOUNT ON

SELECT TOP (@topNo) a.idx, a.friendAccIDX, b.nickName
  FROM dbo.userFriendDB a WITH(NOLOCK)
  JOIN userMemberDB b WITH(NOLOCK)
	ON a.friendAccIDX = b.accountIDX
 WHERE a.userAccIDX = @accountIDX
	   AND a.idx < @idx
	   AND flag=0
 ORDER BY a.idx DESC
GO


-- ----------------------------
-- Procedure structure for game_league_team_member_app_del
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_member_app_del]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_member_app_del]
GO

CREATE PROCEDURE [dbo].[game_league_team_member_app_del]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userLeagueTeamMemberDB
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_present_add_idx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_add_idx]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_add_idx]
GO

CREATE PROCEDURE [dbo].[game_present_add_idx]  
(  
 @sendIDX int  
, @receiveIDX int  
, @persentType smallint  
, @value1 int  
, @value2 int  
, @value3 int  
, @value4 int  
, @msgType smallint  
, @limitDate datetime  
, @flag smallint  
, @TranIDX BIGINT   
)  
AS  
 -- 웹상점에서 넘어온 선물은 TranIDX가 존재하고 게임 상점은 0  
 INSERT INTO userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate)  
 VALUES (@sendIDX, @receiveIDX, @persentType, @value1, @value2, @value3, @value4, @msgType, @flag, @limitDate, getdate())
GO


-- ----------------------------
-- Procedure structure for game_guild_join_app
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_app]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_app]
GO

CREATE PROCEDURE [dbo].[game_guild_join_app]
(
	@accountIDX int
,	@guildIDX int
)
AS

SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @cnt int, @errcount int, @maxcount int

SET @cnt = 0
SET @errcount = 0

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE guildIDX=@guildIDX
	   AND accountIDX=@accountIDX
	   AND guildJoinType=0
)
IF (@cnt = 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @maxcount = ISNULL((SELECT maxcount FROM dbo.userGuildDB WITH(NOLOCK) WHERE idx=@guildIDX), 0)
SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE guildIDX=@guildIDX
	   AND guildJoinType = 1
)

IF (@maxcount <= @cnt)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount = 0)
BEGIN
	SELECT 1 AS 'returnVal'

	UPDATE dbo.userGuildInfoDB
	   SET guildJoinType=1,
		   msg=1
	 WHERE guildIDX=@guildIDX
	   AND accountIDX=@accountIDX

	UPDATE dbo.userGuildDB
	   SET membercount = membercount + 1
	 WHERE idx=@guildIDX

	DELETE FROM dbo.userGuildInfoDB
	 WHERE guildIDX <> @guildIDX
	   AND accountIDX=@accountIDX
	   AND guildJoinType = 0
END
GO


-- ----------------------------
-- Procedure structure for game_login_serverid_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_login_serverid_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_login_serverid_save]
GO

CREATE PROCEDURE [dbo].[game_login_serverid_save]
(
	@accountIDX int
,	@gameServerID bigint
)
AS

SET NOCOUNT ON

UPDATE dbo.userLoginDB
   SET gameServerID = @gameServerID
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for web_event_present_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_event_present_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_event_present_add]
GO

CREATE PROCEDURE [dbo].[web_event_present_add]
(
	@pid int,
	@userId varchar(20)
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @rewardType int;
		DECLARE @rewardValue1 int;
		DECLARE @rewardValue2 int;
		DECLARE @start datetime;
		DECLARE @end datetime;
		--SET @start = '2018-12-25';
		--SET @end = '2019-01-07 05:00';

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END
		
		--SELECT Event
		SELECT @start = StartDate, @end= EndDate, @rewardType = PresentType, @rewardValue1 = Value1, @rewardValue2 = Value2 FROM WebEvent WHERE Id = @pid;
		IF @start IS NULL OR @end IS NULL OR @rewardType IS NULL OR @rewardValue1 IS NULL OR @rewardValue2 IS NULL
		BEGIN
			RETURN (-6) --ERROR
		END

		--Check Event Peroid
		IF NOT GETDATE() BETWEEN @start AND @end
		BEGIN
			RETURN (-2)
		END

		--Check Event Valid
		If @pid NOT IN (1, 2, 3, 4)
		BEGIN
			RETURN (-3)
		END

		--Check Event reward got or not
		SELECT @cnt = count(*) FROM WebEventLog WHERE PresentId = @pid AND AccountIdx = @accountIdx;
		IF @cnt > 0
		BEGIN
			RETURN (-4)
		END

		--Check User Can Get or not
		IF @pid = 1 --Old Player
			BEGIN
				SELECT @cnt = count(Id) FROM WebLogin WHERE Verify = 1 AND Banned = 0 AND Id = @accountIdx AND RegDate < '2018-12-24';

				IF @cnt IS NULL OR @cnt < 1
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @pid = 2 --New Player
			BEGIN
				SELECT @cnt = count(Id) FROM WebLogin WHERE Verify = 1 AND Banned = 0 AND Id = @accountIdx AND RegDate >= '2018-12-24';

				IF @cnt IS NULL OR @cnt < 1
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @pid = 3 --Donated Player >= 20000BP
			BEGIN
				SELECT @cnt = sum(new) from WebTransaction WHERE Uid = @userId AND Time < '2018-12-24';
				IF @cnt IS NULL OR @cnt < 20000
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @pid = 4 --Login during 1 Jan ~ 3 Jan
			BEGIN
				
				SELECT @cnt = count(UserID) FROM WebConnectLog WHERE LogDate BETWEEN '2019-01-01' AND '2019-01-04' AND UserID = @userId;
				IF @cnt IS NULL OR @cnt < 1
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE		
			RETURN (-6)

		-- TRAN START
		BEGIN TRAN		
		-- Reward
		INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate) VALUES
		(1, @accountIdx, @rewardType, @rewardValue1, @rewardValue2, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE());

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-6)
			END	

		-- Log
		INSERT INTO WebEventLog (AccountIdx, PresentId, CompleteDate) VALUES (@accountIdx, @pid, GETDATE());
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-7)
			END	

		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_UPDRADE_SET_STAT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_UPDRADE_SET_STAT]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_UPDRADE_SET_STAT]
GO

CREATE PROCEDURE [dbo].[USP_ADM_UPDRADE_SET_STAT]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@COLUMN_NO			TINYINT,
	@CLASS_BASIC1		TINYINT,		-- 공격력
	@CLASS_BASIC2		TINYINT,		-- 방어력
	@CLASS_BASIC3		TINYINT,		-- 이동속도
	@CLASS_BASIC4		TINYINT,		-- 드랍피해감소
	@CLASS_SKILL1		TINYINT,		-- 무기스킬
	@CLASS_SKILL2		TINYINT,		-- 갑옷스킬
	@CLASS_SKILL3		TINYINT,		-- 투구스킬
	@CLASS_SKILL4		TINYINT			-- 망토스킬

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	IF (@COLUMN_NO = 1)
	BEGIN
		UPDATE dbo.userAbilityDB
		   SET class1_basic01 = @CLASS_BASIC1,
			   class1_basic02 = @CLASS_BASIC2,
			   class1_basic03 = @CLASS_BASIC3,
			   class1_basic04 = @CLASS_BASIC4,
			   class1_skill1_sd = @CLASS_SKILL1,
			   class1_skill1_asd = @CLASS_SKILL2,
			   class1_skill1_ad = @CLASS_SKILL3,
			   class1_skill1_as = @CLASS_SKILL4
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 2)
	BEGIN
		UPDATE dbo.userAbilityDB
		   SET class2_basic01 = @CLASS_BASIC1,
			   class2_basic02 = @CLASS_BASIC2,
			   class2_basic03 = @CLASS_BASIC3,
			   class2_basic04 = @CLASS_BASIC4,
			   class2_skill1_sd = @CLASS_SKILL1,
			   class2_skill1_asd = @CLASS_SKILL2,
			   class2_skill1_ad = @CLASS_SKILL3,
			   class2_skill1_as = @CLASS_SKILL4
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 3)
	BEGIN
		UPDATE dbo.userAbilityDB
		   SET class3_basic01 = @CLASS_BASIC1,
			   class3_basic02 = @CLASS_BASIC2,
			   class3_basic03 = @CLASS_BASIC3,
			   class3_basic04 = @CLASS_BASIC4,
			   class3_skill1_sd = @CLASS_SKILL1,
			   class3_skill1_asd = @CLASS_SKILL2,
			   class3_skill1_ad = @CLASS_SKILL3,
			   class3_skill1_as = @CLASS_SKILL4
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 4)
	BEGIN
		UPDATE dbo.userAbilityDB
		   SET class4_basic01 = @CLASS_BASIC1,
			   class4_basic02 = @CLASS_BASIC2,
			   class4_basic03 = @CLASS_BASIC3,
			   class4_basic04 = @CLASS_BASIC4,
			   class4_skill1_sd = @CLASS_SKILL1,
			   class4_skill1_asd = @CLASS_SKILL2,
			   class4_skill1_ad = @CLASS_SKILL3,
			   class4_skill1_as = @CLASS_SKILL4
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 5)
		UPDATE dbo.userAbilityDB
		   SET class5_basic01 = @CLASS_BASIC1,
			   class5_basic02 = @CLASS_BASIC2,
			   class5_basic03 = @CLASS_BASIC3,
			   class5_basic04 = @CLASS_BASIC4,
			   class5_skill1_sd = @CLASS_SKILL1,
			   class5_skill1_asd = @CLASS_SKILL2,
			   class5_skill1_ad = @CLASS_SKILL3,
			   class5_skill1_as = @CLASS_SKILL4
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_guildHQ_set_status
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guildHQ_set_status]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guildHQ_set_status]
GO

CREATE PROCEDURE [dbo].[game_guildHQ_set_status]  
   
 @GUILD_IDX  INT,  
 @ACCOUNT_IDX INT,  
 @ITEM_SERIAL BIGINT,  
 @ITEM_CODE  INT,   
 @ITEM_STATUS TINYINT  -- 0:인벤(해제), 2: 삭제  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
   
 BEGIN TRAN    
    
  UPDATE dbo.userGuildHQDB WITH (XLOCK, ROWLOCK) SET ItemXZ=0, ItemY=0, ItemRotate=0, ItemStatus=@ITEM_STATUS   
  WHERE ItemSerial=@ITEM_SERIAL  
  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END  
    
  --  변경된 데이터에 대한 Version관리  
  EXEC @nReturn = dbo.game_guildHQ_ver_set_status @GUILD_IDX  
  IF @nReturn<>0  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END     
  
 COMMIT TRAN  
  
  
 -- 설치로그  
 -- EXEC LINKED_CONNECTION_BAK.LosaLogDataC.dbo.log_guildHQ_fit_set_insert @GUILD_IDX, @ACCOUNT_IDX, @ITEM_SERIAL, @ITEM_CODE, 0  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for web_ticket_detail_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_ticket_detail_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_ticket_detail_get_data]
GO

CREATE PROCEDURE [dbo].[web_ticket_detail_get_data]
(
	@userID varchar(20),
	@admin bit = 0,	
	@id int
)
As
	SELECT
		d.Id As DetailID,
		d.Content,
		d.UserId As ReplyUser,
		d.ReplyDate,
		d.IP AS ReplyIP
	FROM WebTicket t
	LEFT JOIN WebTicketDetail d
	ON d.Tid = t.Id
	INNER JOIN WebLogin l
	ON t.UserID = l.Username
	LEFT JOIN WebTicketType c
	ON c.Id = t.TypeId
	WHERE (l.Username = @userID OR @admin = 1)
	AND t.Id = @id
	ORDER BY d.ReplyDate DESC
GO


-- ----------------------------
-- Procedure structure for game_event_chuchun_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_chuchun_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_chuchun_get_data]
GO

CREATE PROCEDURE [dbo].[game_event_chuchun_get_data]
(
	@accountIDX int
)
AS
	SELECT idx, friendIDX FROM event_chuchun WITH(NOLOCK) WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_friend_list_asc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_list_asc]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_list_asc]
GO

CREATE PROCEDURE [dbo].[game_friend_list_asc]
(
	@idx int
,	@accountIDX int
,	@topNo int
)
AS

SET NOCOUNT ON
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED 

SELECT TOP (@topNo) a.idx, a.friendAccIDX, b.nickName, a.regDate,
	   a.sendCloverCnt, a.sendCloverDate, a.receiveCloverCnt, a.receiveCloverDate, a.receiveBCloverCnt
  FROM userFriendDB a WITH (INDEX (idx_userAccIDX))
 INNER LOOP JOIN userMemberDB b WITH (INDEX (idx_accountIDX))
	ON a.friendAccIDX = b.accountIDX
 WHERE a.userAccIDX = @accountIDX
   AND a.flag=1
   AND a.idx > @idx
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for game_guild_member_get_list3
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_member_get_list3]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_member_get_list3]
GO

CREATE PROCEDURE [dbo].[game_guild_member_get_list3]
(
	@guildIDX int
)
AS

SET NOCOUNT ON

SELECT accountIDX
  FROM dbo.userGuildInfoDB WITH(NOLOCK)
 WHERE guildIDX = @guildIDX
   AND guildJoinType=1
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_event_bingo_present_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_bingo_present_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_bingo_present_save]
GO

CREATE PROCEDURE [dbo].[game_event_bingo_present_save]
(
	@accountIDX int
,	@item1 tinyint
,	@item2 tinyint
,	@item3 tinyint
,	@item4 tinyint
,	@item5 tinyint
,	@item6 tinyint
,	@item7 tinyint
,	@item8 tinyint
,	@item9 tinyint
,	@item10 tinyint
,	@item11 tinyint
,	@item12 tinyint
,	@item13 tinyint
)
AS

SET NOCOUNT ON

UPDATE dbo.userEventBingo_Present
   SET item1 = @item1,
	   item2 = @item2,
	   item3 = @item3,
	   item4 = @item4,
	   item5 = @item5,
	   item6 = @item6,
	   item7 = @item7,
	   item8 = @item8,
	   item9 = @item9,
	   item10 = @item10,
	   item11 = @item11,
	   item12 = @item12,
	   item13 = @item13
WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_league_cheer_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_cheer_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_cheer_list]
GO

CREATE PROCEDURE [dbo].[game_league_cheer_list]
(
	@accountIDX int
,	@topN int
,	@idx int
)
AS

SET NOCOUNT ON

SELECT TOP (@topN) leagueIDX, teamIDX, idx
  FROM dbo.userLeagueCheerDB WITH(NOLOCK)
 WHERE idx < @idx
   AND accountIDX=@accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for manage_user_state_upt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_user_state_upt]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_user_state_upt]
GO

CREATE PROCEDURE [dbo].[manage_user_state_upt]
(
	@accountIDX INT
,	@limitType TINYINT
,	@limitDate DATETIME
,	@reason VARCHAR(1000)
,	@userIP VARCHAR(15)
)
AS
 
BEGIN
 
SET NOCOUNT ON

UPDATE dbo.userMemberDB
   SET limitType=@limitType,
       limitDate=@limitDate
 WHERE accountIDX=@accountIDX

INSERT INTO LosaGame_log.dbo.log_user_block (
	accountIDX, limitType, limitDate, reason, userIP, regDate
)
VALUES (
	@accountIDX, @limitType, @limitDate, @reason, @userIP, GETDATE()
)
 
END
GO


-- ----------------------------
-- Procedure structure for web_valentine_goal_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_goal_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_goal_add]
GO

CREATE PROCEDURE [dbo].[web_valentine_goal_add]
(
	@userId varchar(20),
	@gid int
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @required int;
		DECLARE @item int;
		DECLARE @rewardType int;
		DECLARE @rewardValue1 int;
		DECLARE @rewardValue2 int;
		DECLARE @rewardName varchar(255);

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END

		--Check Event Available
		IF NOT GETDATE() BETWEEN '2019-02-04 07:00' AND '2019-02-18 05:00'
		BEGIN
			RETURN (-2)
		END

		--Check Mission Complete
		SELECT @cnt = count(*) FROM WebEventValentineGoalLog WHERE GoalId = @gid AND AccountIdx = @accountIdx;
		IF @cnt > 0
		BEGIN
			RETURN (-3)
		END

		--Get Mission Goal
		SELECT @item = ItemId, @required = Plant, @rewardType = PresentType, @rewardValue1 = Value1, @rewardValue2 = Value2, @rewardName = RewardName FROM WebEventValentineGoal WHERE Id = @gid;
		IF @item IS NULL OR @required IS NULL
		BEGIN
			RETURN (-6)
		END

		--Check User Complete
		IF @item = 0
			BEGIN
				SELECT 
					@cnt = ISNULL(SUM(Amount),0)
				FROM WebEventValentineDailyLog
				WHERE AccountIdx = @accountIdx
				AND ItemId IN (3, 4, 5)
				GROUP BY AccountIdx
			END
		ELSE IF @item > 0
			BEGIN
				SELECT 
					@cnt = ISNULL(SUM(Amount),0)
				FROM WebEventValentineDailyLog
				WHERE AccountIdx = @accountIdx
				AND ItemId = @item
				GROUP BY AccountIdx
			END

		IF @cnt < @required
		BEGIN
			RETURN (-4)
		END

		-- TRAN START
		BEGIN TRAN		

		-- Reward
		INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate) VALUES
		(1, @accountIdx, @rewardType, @rewardValue1, @rewardValue2, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE());

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-5)
			END	

		-- Log
		INSERT INTO WebEventValentineGoalLog (AccountIdx, GoalId) VALUES (@accountIdx,@gid);
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-6)
			END	

		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for game_managetool_user_block
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_managetool_user_block]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_managetool_user_block]
GO

CREATE PROCEDURE [dbo].[game_managetool_user_block]
(
	@nickName NVARCHAR(20)
,	@limitType TINYINT
,	@limitDate DATETIME
,	@reportNick NVARCHAR(20)
,	@reportIP NVARCHAR(15)
,	@reason NVARCHAR(1000)
,	@note NVARCHAR(1000)
)
AS

SET NOCOUNT ON;

DECLARE @accountIDX INT
DECLARE @ddiff INT

SET @ddiff = DATEDIFF(hh, GETDATE(), @limitDate)

SET @accountIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@nickName
)

IF (@accountIDX IS NULL)
BEGIN
	SELECT 0
	RETURN;
END


IF (@ddiff > 0)
BEGIN
	UPDATE dbo.userMemberDB
	   SET limitType=@limitType,
		   limitDate=@limitDate
	 WHERE accountIDX=@accountIDX
END
ELSE
BEGIN
	UPDATE dbo.userMemberDB
	   SET limitDate=GETDATE()-1
	 WHERE accountIDX=@accountIDX  
END


IF (@@ROWCOUNT = 0)
BEGIN
	SELECT 0
	RETURN;
END
ELSE
BEGIN
	SELECT 1
END


-- ???????
INSERT INTO LosaGame_log.dbo.log_user_block (
	accountIDX, limitType, limitDate, reason, userIP, regDate
)
VALUES (
	@accountIDX, @limitType, @limitDate, @reason, @reportIP, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for game_record_battle_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_record_battle_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_record_battle_save]
GO

CREATE PROCEDURE [dbo].[game_record_battle_save]
(
	@accountIDX int
,	@type1_win int
,	@type1_lose int
,	@type1_kill int
,	@type1_death int
,	@type2_win int
,	@type2_lose int
,	@type2_kill int
,	@type2_death int
,	@type3_win int
,	@type3_lose int
,	@type3_kill int
,	@type3_death int
,	@type4_win int
,	@type4_lose int
,	@type4_kill int
,	@type4_death int
)
AS

SET NOCOUNT ON

IF (NOT EXISTS(SELECT * FROM dbo.userRecordBattleDB WITH(NOLOCK) WHERE accountIDX=@accountIDX))
BEGIN
	INSERT INTO dbo.userRecordBattleDB (
		accountIDX,
		type1_win, type1_lose, type1_kill, type1_death, type2_win, type2_lose, type2_kill, type2_death,
		type3_win, type3_lose, type3_kill, type3_death, type4_win, type4_lose, type4_kill, type4_death,
		regDate
	)
	VALUES (
		@accountIDX,
		@type1_win, @type1_lose, @type1_kill, @type1_death, @type2_win, @type2_lose, @type2_kill, @type2_death,
		@type3_win, @type3_lose, @type3_kill, @type3_death, @type4_win, @type4_lose, @type4_kill, @type4_death,
		GETDATE()
	)
END
ELSE
BEGIN
	UPDATE dbo.userRecordBattleDB
	   SET type1_win = @type1_win,
		   type1_lose = @type1_lose,
		   type1_kill = @type1_kill,
		   type1_death = @type1_death,
		   type2_win = @type2_win,
		   type2_lose = @type2_lose,
		   type2_kill = @type2_kill,
		   type2_death = @type2_death,
		   type3_win = @type3_win,
		   type3_lose = @type3_lose,
		   type3_kill = @type3_kill,
		   type3_death = @type3_death,
		   type4_win = @type4_win,
		   type4_lose = @type4_lose,
		   type4_kill = @type4_kill,
		   type4_death = @type4_death
	 WHERE accountIDX = @accountIDX

END
GO


-- ----------------------------
-- Procedure structure for game_character_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_add]
GO

CREATE PROCEDURE [dbo].[game_character_add]
(
	@accountIDX int
,	@ClassType int
,	@CI_type int
,	@CI_gender int
,	@CI_beard int
,	@CI_face int
,	@CI_hair int
,	@CI_skinColor int
,	@CI_hairColor int
,	@CI_trinket int
,	@CI_underwear int
,	@EI1_type int
,	@EI2_type int
,	@EI3_type int
,	@EI4_type int
,	@limitTime int
,	@limitType int
,	@leaderType smallint
,	@rentalType smallint
,	@rentalTime int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userCharacterDB (
	accountIDX, ClassType,
	CI_type, CI_gender, CI_beard, CI_face, CI_hair, CI_skinColor, CI_hairColor, CI_trinket, CI_underwear,
	EI1_type, EI2_type, EI3_type, EI4_type,
	limitTime, limitType, leaderType, rentalType, rentalTime
)
VALUES (
	@accountIDX, @ClassType,
	@CI_type, @CI_gender, @CI_beard, @CI_face, @CI_hair, @CI_skinColor, @CI_hairColor, @CI_trinket, @CI_underwear,
	@EI1_type, @EI2_type, @EI3_type, @EI4_type,
	@limitTime, @limitType, @leaderType, @rentalType, @rentalTime
)
GO


-- ----------------------------
-- Procedure structure for game_item_medal_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_medal_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_medal_save]
GO

CREATE PROCEDURE [dbo].[game_item_medal_save]
(
	@idx int
,	@item1_type int
,	@item1_class int
,	@item1_limitType int
,	@item1_limitDate datetime
,	@item2_type int
,	@item2_class int
,	@item2_limitType int
,	@item2_limitDate datetime
,	@item3_type int
,	@item3_class int
,	@item3_limitType int
,	@item3_limitDate datetime
,	@item4_type int
,	@item4_class int
,	@item4_limitType int
,	@item4_limitDate datetime
,	@item5_type int
,	@item5_class int
,	@item5_limitType int
,	@item5_limitDate datetime
,	@item6_type int
,	@item6_class int
,	@item6_limitType int
,	@item6_limitDate datetime
,	@item7_type int
,	@item7_class int
,	@item7_limitType int
,	@item7_limitDate datetime
,	@item8_type int
,	@item8_class int
,	@item8_limitType int
,	@item8_limitDate datetime
,	@item9_type int
,	@item9_class int
,	@item9_limitType int
,	@item9_limitDate datetime
,	@item10_type int
,	@item10_class int
,	@item10_limitType int
,	@item10_limitDate datetime
)
AS

SET NOCOUNT ON

UPDATE dbo.userItemMedalDB
   SET item1_type = @item1_type,
	   item1_class = @item1_class,
	   item1_limitType = @item1_limitType,
	   item1_limitDate = @item1_limitDate,
	   item2_type = @item2_type,
	   item2_class = @item2_class,
	   item2_limitType = @item2_limitType,
	   item2_limitDate = @item2_limitDate,
	   item3_type = @item3_type,
	   item3_class = @item3_class,
	   item3_limitType = @item3_limitType,
	   item3_limitDate = @item3_limitDate,
	   item4_type = @item4_type,
	   item4_class = @item4_class,
	   item4_limitType = @item4_limitType,
	   item4_limitDate = @item4_limitDate,
	   item5_type = @item5_type,
	   item5_class = @item5_class,
	   item5_limitType = @item5_limitType,
	   item5_limitDate = @item5_limitDate,
	   item6_type = @item6_type,
	   item6_class = @item6_class,
	   item6_limitType = @item6_limitType,
	   item6_limitDate = @item6_limitDate,
	   item7_type = @item7_type,
	   item7_class = @item7_class,
	   item7_limitType = @item7_limitType,
	   item7_limitDate = @item7_limitDate,
	   item8_type = @item8_type,
	   item8_class = @item8_class,
	   item8_limitType = @item8_limitType,
	   item8_limitDate = @item8_limitDate,
	   item9_type = @item9_type,
	   item9_class = @item9_class,
	   item9_limitType = @item9_limitType,
	   item9_limitDate = @item9_limitDate,
	   item10_type = @item10_type,
	   item10_class = @item10_class,
	   item10_limitType = @item10_limitType,
	   item10_limitDate = @item10_limitDate
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_piece_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_piece_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_piece_self_index]
GO

CREATE PROCEDURE [dbo].[game_piece_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userPieceDB
 WHERE accountIDX=@accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_friend_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_save]
GO

CREATE PROCEDURE [dbo].[game_friend_save]
(
	@userAccIDX int
,	@friendNickName varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @cnt int
DECLARE @friendAccIDX int

SET @friendAccIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickname=@friendNickName
)

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userFriendDB WITH(NOLOCK)
	 WHERE userAccIDX=@userAccIDX
	   AND friendAccIDX=@friendAccIDX
)

IF (@cnt = 0 AND @friendAccIDX IS NOT NULL)
BEGIN
	INSERT INTO dbo.userFriendDB (userAccIDX,friendAccIDX,regDate)
	VALUES (@userAccIDX, @friendAccIDX, GETDATE())
END
GO


-- ----------------------------
-- Procedure structure for usp_RegDate_get_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_RegDate_get_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_RegDate_get_init]
GO

CREATE PROCEDURE [dbo].[usp_RegDate_get_init]

	@REG_DATE		DATETIME,		-- GETDATE()
	@SET_HOUR		TINYINT,		-- 초기화할 시간 i.e.) 2015-01-20 05:00:00
	@INIT_DATE		DATETIME		OUTPUT
	
AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT	10000

	DECLARE @nReturn			INT	

	DECLARE @CURRENT_DATE		DATETIME
	DECLARE @PRE_DATETIME		DATETIME
	DECLARE @POST_DATETIME		DATETIME


	SET @CURRENT_DATE = CAST(CONVERT(CHAR(10),@REG_DATE, 121) as DATETIME);
	SET @PRE_DATETIME = DATEADD(hh, @SET_HOUR, @CURRENT_DATE);
	SET @POST_DATETIME = DATEADD(hh, @SET_HOUR+24, @PRE_DATETIME);

	
	IF @REG_DATE>=@PRE_DATETIME and @REG_DATE<@POST_DATETIME
	BEGIN 
		SET @INIT_DATE = @CURRENT_DATE;
	END 
	ELSE
	BEGIN
		SET @INIT_DATE = DATEADD(dd, 1, @CURRENT_DATE);
	END

	RETURN 0;
GO


-- ----------------------------
-- Procedure structure for game_piece_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_piece_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_piece_save]
GO

CREATE PROCEDURE [dbo].[game_piece_save]
(
	@idx int
,	@piece1_type int
,	@piece1_cnt int
,	@piece2_type int
,	@piece2_cnt int
,	@piece3_type int
,	@piece3_cnt int
,	@piece4_type int
,	@piece4_cnt int
,	@piece5_type int
,	@piece5_cnt int
,	@piece6_type int
,	@piece6_cnt int
,	@piece7_type int
,	@piece7_cnt int
,	@piece8_type int
,	@piece8_cnt int
,	@piece9_type int
,	@piece9_cnt int
,	@piece10_type int
,	@piece10_cnt int
)
AS

SET NOCOUNT ON

UPDATE dbo.userPieceDB
   SET piece1_type = @piece1_type,
	   piece1_cnt = @piece1_cnt,
	   piece2_type = @piece2_type,
	   piece2_cnt = @piece2_cnt,
	   piece3_type = @piece3_type,
	   piece3_cnt = @piece3_cnt,
	   piece4_type = @piece4_type,
	   piece4_cnt = @piece4_cnt,
	   piece5_type = @piece5_type,
	   piece5_cnt = @piece5_cnt,
	   piece6_type = @piece6_type,
	   piece6_cnt = @piece6_cnt,
	   piece7_type = @piece7_type,
	   piece7_cnt = @piece7_cnt,
	   piece8_type = @piece8_type,
	   piece8_cnt = @piece8_cnt,
	   piece9_type = @piece9_type,
	   piece9_cnt = @piece9_cnt,
	   piece10_type = @piece10_type,
	   piece10_cnt = @piece10_cnt
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for web_get_email_verify
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_get_email_verify]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_get_email_verify]
GO

CREATE PROCEDURE [dbo].[web_get_email_verify]
(
	@userID varchar(20),
	@email varchar(50)
)
As
	SELECT TOP 1
		Verify,
		Banned, 
		w.Email,
		c.SendDate
	FROM WebLogin w
	LEFT JOIN WebLogin_Confirm c
	on w.Username = c.Username and w.Email = c.Email
	WHERE w.Username = @userID COLLATE Latin1_General_BIN AND w.Email = @email;
GO


-- ----------------------------
-- Procedure structure for game_money_set_bonusCash_Garena
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_money_set_bonusCash_Garena]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_money_set_bonusCash_Garena]
GO

CREATE PROCEDURE [dbo].[game_money_set_bonusCash_Garena]
	@ACCOUNTIDX INT,  
	@USER_MONEY INT  
AS

	SET NOCOUNT ON;
	
	DECLARE @MONEY INT  
	SET @MONEY = 0  
   
	UPDATE dbo.userMoneyDB SET bonusCash = bonusCash + @USER_MONEY WHERE accountIDX = @ACCOUNTIDX
GO


-- ----------------------------
-- Procedure structure for game_guild_change_max_capacity
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_change_max_capacity]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_change_max_capacity]
GO

CREATE PROCEDURE [dbo].[game_guild_change_max_capacity]
(
	@guildIDX int
,	@n int
)
AS

SET NOCOUNT ON

DECLARE @membercount int, @maxcount int, @guildLevel int
SET @membercount = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE guildIDX=@guildIDX
	   AND guildJoinType=1
)
SET @guildLevel = (
	SELECT guildLevel
	  FROM dbo.userGuildDB WITH(NOLOCK)
	 WHERE idx=@guildIDX
)

IF (@membercount > @n)
BEGIN
	SET @n = @membercount
END

SET @maxcount = @guildLevel * 8

IF (@maxcount = 0)
	SET @maxcount = 8
ELSE IF (@maxcount > 32)
	SET @maxcount = 32

IF (@maxcount < @n)
BEGIN
	SET @n = @maxcount
END

SELECT @n AS 'returnVal'
UPDATE dbo.userGuildDB
   SET membercount=@membercount,
	   maxcount=@n
 WHERE idx=@guildIDX
GO


-- ----------------------------
-- Procedure structure for game_guild_attend_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_attend_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_attend_set_add]
GO

CREATE PROCEDURE [dbo].[game_guild_attend_set_add]

	@GUILD_IDX		INT,
	@ACCOUNT_IDX	INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT	10000

	DECLARE @nReturn			INT
	DECLARE @REG_DATE			DATETIME
	DECLARE @INIT_DATE			DATETIME
		
	SET @REG_DATE=GETDATE()
	SET @INIT_DATE = 0
	
	-- 날짜 초기화
	EXEC @nReturn=dbo.usp_RegDate_get_init @REG_DATE, 5, @INIT_DATE OUTPUT
	IF (@nReturn<>0)
	BEGIN
		RETURN;
	END

	-- 이미 출석체크한 사용자는 같은날 다시 체크 할 수 없다.
	IF EXISTS (SELECT *  FROM dbo.userGuildAttendDB WITH (READCOMMITTED) WHERE InitDate=@INIT_DATE and AccountIDX=@ACCOUNT_IDX)
	BEGIN
		SELECT -1
		RETURN;
	END
	
	BEGIN TRAN
		-- 출석 체크
		INSERT dbo.userGuildAttendDB WITH (XLOCK, ROWLOCK) VALUES (@INIT_DATE, @ACCOUNT_IDX, @GUILD_IDX, @REG_DATE);
		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			SELECT -2
			RETURN;
		END

	COMMIT TRAN

	SELECT 0
	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_guildHQ_ver_get_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guildHQ_ver_get_info]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guildHQ_ver_get_info]
GO

CREATE PROCEDURE [dbo].[game_guildHQ_ver_get_info]  
  
 @GUILD_IDX  INT  
  
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
   
 SELECT VerStatus FROM dbo.userGuildHQVerDB WITH (READCOMMITTED) WHERE GuildIDX=@GUILD_IDX  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_award_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_award_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_award_add]
GO

CREATE PROCEDURE [dbo].[game_award_add]
(
	@accountIDX int
,	@award1_type int
,	@award1_number int
,	@award1_point int
,	@award2_type int
,	@award2_number int
,	@award2_point int
,	@award3_type int
,	@award3_number int
,	@award3_point int
,	@award4_type int
,	@award4_number int
,	@award4_point int
,	@award5_type int
,	@award5_number int
,	@award5_point int
,	@award6_type int
,	@award6_number int
,	@award6_point int
,	@award7_type int
,	@award7_number int
,	@award7_point int
,	@award8_type int
,	@award8_number int
,	@award8_point int
,	@award9_type int
,	@award9_number int
,	@award9_point int
,	@award10_type int
,	@award10_number int
,	@award10_point int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userAwardDB (
	accountIDX,
	award1_type, award1_number, award1_point, award2_type, award2_number, award2_point, award3_type, award3_number, award3_point,
	award4_type, award4_number, award4_point, award5_type, award5_number, award5_point, award6_type, award6_number, award6_point,
	award7_type, award7_number, award7_point, award8_type, award8_number, award8_point, award9_type, award9_number, award9_point,
	award10_type, award10_number, award10_point, regDate
)
VALUES (
	@accountIDX,
	@award1_type, @award1_number, @award1_point, @award2_type, @award2_number, @award2_point, @award3_type, @award3_number, @award3_point,
	@award4_type, @award4_number, @award4_point, @award5_type, @award5_number, @award5_point, @award6_type, @award6_number, @award6_point,
	@award7_type, @award7_number, @award7_point, @award8_type, @award8_number, @award8_point, @award9_type, @award9_number, @award9_point,
	@award10_type, @award10_number, @award10_point, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for AGENT_RANKING_FACTION
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_RANKING_FACTION]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_RANKING_FACTION]
GO

CREATE PROCEDURE [dbo].[AGENT_RANKING_FACTION]

AS

SET NOCOUNT ON

	INSERT INTO userRankingDB (accountIDX)
	SELECT accountIDX
	  FROM dbo.userGameDB WITH(NOLOCK)
	 WHERE accountIDX NOT IN (
		SELECT accountIDX
		  FROM dbo.userRankingDB WITH(NOLOCK)
		)
	   AND renspoint > 0

	IF EXISTS(SELECT table_name FROM information_schema.tables WHERE table_name = 'userRankingDB_temp')
	DROP TABLE userRankingDB_temp

	SELECT a.accountIDX, RANK() OVER(ORDER BY a.renspoint DESC) AS 'rank'
	  INTO userRankingDB_temp 
	  FROM (
		SELECT accountIDX, renspoint
		  FROM dbo.userGameDB WITH(NOLOCK)
		 WHERE renspoint > 0
	) a, (
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH(NOLOCK) 
		 WHERE userType > 20
	) b 
	 WHERE a.accountIDX = b.accountIDX

	UPDATE a
	   SET region = b.rank 
	  FROM (
		SELECT accountIDX, rank
		  FROM userRankingDB_temp WITH(NOLOCK)
	) b
	 INNER JOIN userRankingDB a
	    ON a.accountIDX = b.accountIDX

	DROP TABLE userRankingDB_temp
GO


-- ----------------------------
-- Procedure structure for game_guild_member_get_masters
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_member_get_masters]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_member_get_masters]
GO

CREATE PROCEDURE [dbo].[game_guild_member_get_masters]
(
	@guildIDX int
)
AS

SET NOCOUNT ON

SELECT accountIDX
  FROM dbo.userGuildInfoDB WITH(NOLOCK)
 WHERE guildIDX=@guildIDX
   AND guildPosition in ('Leader', 'Officer')
GO


-- ----------------------------
-- Procedure structure for web_quest_status_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_quest_status_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_quest_status_get]
GO

CREATE PROCEDURE [dbo].[web_quest_status_get]
(
	@Id int,
	@User varchar(20)
)
As
BEGIN
	SET NOCOUNT ON
	DECLARE @accountIdx int;
	DECLARE @type int;
	DECLARE @start datetime;
	DECLARE @end datetime;
	DECLARE @rewardEnd datetime;
	DECLARE @status int;

	--Status:
	--3 = Rewarded
	--2 = Completed
	--1 = Not Completed

	SELECT @type = QuestType, @start = QuestStartDate, @end = QuestEndDate, @rewardEnd = RewardEndDate FROM WebQuest WHERE Id = @Id;
	IF @type IS NULL OR @start IS NULL OR @end IS NULL OR @rewardEnd IS NULL OR @@ERROR <> 0
		RETURN (8) --QUEST TYPE NOT FOUND
		
	IF @rewardEnd < getdate()
		RETURN (7) --REWARD END

	SELECT @accountIdx = Id FROM WebLogin WHERE Username = @User;
	IF @accountIdx IS NULL OR @@ERROR <> 0
		RETURN (8) --USER NOT FOUND
		
	SELECT @status = CASE WHEN count(*) > 0 THEN 3 ELSE 2 END FROM WebQuestUser WHERE QId = @Id;
	IF @status IS NULL OR @@ERROR <> 0
		RETURN (8) --Status NOT FOUND

	IF @status = 3
		RETURN (3)

	IF @type = 1
		--Login Event
		BEGIN
			SELECT
				@status = CASE WHEN time.Progress >= QuestTarget THEN 2 ELSE 1 END
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(playTime), 0) / 60  AS Progress
				FROM [LosaLogData].[dbo].[log_data_playtime] l
				where accountIDX = @accountIdx
				AND regDate >= @start
				AND regDate < @end
				group by accountIDX
			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND

			RETURN (@status)
		END
	ELSE IF @type = 2
		--BATTLE MODE Play Time
		BEGIN
			SELECT
				@status = CASE WHEN time.Progress >= QuestTarget THEN 2 ELSE 1 END
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(playTime), 0) / 60 AS Progress
				FROM (
					SELECT
						accountIDX,
						modeType,
						SUM(playTime) + SUM(deathTime) AS 'playTime'
					FROM  [LosaLogData].[dbo].[log_data_play] l
					INNER JOIN WebQuest q
					ON q.PlayType = l.playType AND q.Mode = l.modeType
					WHERE regDate >= @start
					AND regDate < @end
					AND q.Id = @Id
					GROUP BY accountIDX, modetype
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id			

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND

			RETURN (@status)
		END
	ELSE IF @type = 3
		--BATTLE MODE Kill
		BEGIN
			SELECT
				@status = CASE WHEN time.Progress >= QuestTarget THEN 2 ELSE 1 END
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(kill_count), 0) AS Progress
				FROM (
					SELECT
						accountIDX,
						modeType,
						SUM([kill]) AS 'kill_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l
					INNER JOIN WebQuest q
					ON q.PlayType = l.playType AND q.Mode = l.modeType
					WHERE regDate >= @start
					AND regDate < @end
					AND q.Id = @Id
					GROUP BY accountIDX, modetype
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id			

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND

			RETURN (@status)
		END
	ELSE IF @type = 4
		BEGIN
			SELECT
				@status = CASE WHEN time.Progress >= QuestTarget THEN 2 ELSE 1 END
			FROM
			(
				SELECT
					accountIDX,
					ISNULL(SUM(play_count), 0) AS Progress
				FROM (
					SELECT
						accountIDX,
						modeType,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l
					INNER JOIN WebQuest q
					ON q.PlayType = l.playType AND q.Mode = l.modeType
					WHERE playTime > 0
					AND peso > 0
					AND q.Id = @Id	
					AND regDate >= @start
					AND regDate < @end
					GROUP BY accountIDX, modetype
				) a
				WHERE accountIDX = 2
				GROUP BY accountIDX

			) time
			CROSS APPLY WebQuest q
			WHERE q.Id = @Id

			IF @@ROWCOUNT = 0
				RETURN (8) --QUEST NOT FOUND

			RETURN (@status)
		END

	RETURN (8) --QUEST NOT FOUND
		
--SELECT power = ISNULL(SUM(CASE WHEN a.modeType = 1 THEN a.playTime ELSE 0 END), 0),
--	   prisoner = ISNULL(SUM(CASE WHEN a.modeType = 2 THEN a.playTime ELSE 0 END), 0),
--	   hidden = ISNULL(SUM(CASE WHEN a.modeType = 3 THEN a.playTime ELSE 0 END), 0),
--	   death = ISNULL(SUM(CASE WHEN a.modeType = 5 THEN a.playTime ELSE 0 END), 0),
--	   teamdeath = ISNULL(SUM(CASE WHEN a.modeType = 6 THEN a.playTime ELSE 0 END), 0),
--	   bossraid = ISNULL(SUM(CASE WHEN a.modeType = 7 THEN a.playTime ELSE 0 END), 0),
--	   skeletonhero = ISNULL(SUM(CASE WHEN a.modeType = 8 THEN a.playTime ELSE 0 END), 0),
--	   soccer = ISNULL(SUM(CASE WHEN a.modeType = 9 THEN a.playTime ELSE 0 END), 0),
--	   kangsi = ISNULL(SUM(CASE WHEN a.modeType = 11 THEN a.playTime ELSE 0 END), 0),
--	   runningman = ISNULL(SUM(CASE WHEN a.modeType = 14 THEN a.playTime ELSE 0 END), 0),
--	   championplay = ISNULL(SUM(CASE WHEN a.modeType = 15 THEN a.playTime ELSE 0 END), 0),
--	   pve = ISNULL(SUM(CASE WHEN a.modeType = 16 THEN a.playTime ELSE 0 END), 0),
--	   pveSnow = ISNULL(SUM(CASE WHEN a.modeType = 17 THEN a.playTime ELSE 0 END), 0),
--	   pveFire = ISNULL(SUM(CASE WHEN a.modeType = 18 THEN a.playTime ELSE 0 END), 0),
--	   pveFactory = ISNULL(SUM(CASE WHEN a.modeType = 21 THEN a.playTime ELSE 0 END), 0),
--       doubleHidden = ISNULL(SUM(CASE WHEN a.modeType = 19 THEN a.playTime ELSE 0 END), 0),
--       ai = ISNULL(SUM(CASE WHEN a.modeType = 22 THEN a.playTime ELSE 0 END), 0),
--	   GETDATE()
--  FROM (
--	SELECT modeType, SUM(playTime) + SUM(deathTime) AS 'playTime'
--	  FROM dbo.log_data_play
--	 WHERE playType = 4
--	 AND accountIDX = 2
--	   --AND regDate >= @startDate
--	   --AND regdate < @endDate
--	 GROUP BY modetype
--) a

END
GO


-- ----------------------------
-- Procedure structure for game_league_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_delete]
GO

CREATE PROCEDURE [dbo].[game_league_delete]
(
	@leagueIDX int
)
AS

SET NOCOUNT ON

DECLARE @infoIDX int
SET @infoIDX = ISNULL((SELECT idx FROM dbo.userLeagueInfoDB WITH(NOLOCK) WHERE leagueIDX=@leagueIDX), 0)

DELETE FROM dbo.userLeagueTeamMemberDB WHERE leagueIDX=@leagueIDX
DELETE FROM dbo.userLeagueTeamDB WHERE leagueIDX=@leagueIDX
DELETE FROM dbo.userLeagueInfoDB WHERE leagueIDX=@leagueIDX
DELETE FROM dbo.userLeagueAuthDB WHERE leagueIDX=@leagueIDX
DELETE FROM dbo.userLeagueRoundDB WHERE infoIDX=@infoIDX
DELETE FROM dbo.userLeagueListDB WHERE idx=@leagueIDX
GO


-- ----------------------------
-- Procedure structure for manage_userinfo_get_character_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_userinfo_get_character_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_userinfo_get_character_data]
GO

CREATE PROCEDURE [dbo].[manage_userinfo_get_character_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, classType, limitTime, limitType, regDate
  FROM dbo.userCharacterDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_server_connection_on
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_server_connection_on]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_server_connection_on]
GO

CREATE PROCEDURE [dbo].[game_server_connection_on]
(
	@serverID bigint
)
AS

SET NOCOUNT ON

UPDATE dbo.define_game_server
   SET [status] = 1
 WHERE serverID = @serverID
GO


-- ----------------------------
-- Procedure structure for web_ticket_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_ticket_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_ticket_add]
GO

CREATE PROCEDURE [dbo].[web_ticket_add]
(
	@userID varchar(20),
	@subject varchar(200),
	@type int,
	@content VARCHAR(MAX),
	@ipaddress varchar(15)
)
As
	BEGIN
		SET NOCOUNT ON 		
		DECLARE @cnt int;
		SELECT @cnt = count(*) FROM WebTicketType WHERE Id = @type;
		IF @cnt = 0
		BEGIN
			RETURN (2)
		END

		-- TRAN START 
		BEGIN TRAN

		INSERT INTO WebTicket (UserID, Subject, TypeId)
		VALUES (@userID, @subject, @type);
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (3)
		END		

		INSERT INTO WebTicketDetail (Tid, Content, UserID, IP)
		VALUES (SCOPE_IDENTITY(), @content, @userID, @ipaddress);
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (4)
		END
		
		-- COMMIT TRAN
		COMMIT TRAN 

		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for web_ranking_class_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_ranking_class_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_ranking_class_get]
GO

CREATE PROCEDURE [dbo].[web_ranking_class_get]
(
	@id INT
)
As
	SELECT TOP 100
		c.accountIdx AS AccountIdx,
		c.nowRanking AS Rank,
	    m.nickname AS Name,
        CASE WHEN c.prevRanking = 0 THEN 0 ELSE c.prevRanking - c.nowRanking END AS Change,
        c.userLevel AS Level,
		g.userLevel AS UserLevel,
        c.expert AS Expert,
		guild.guildName AS Guild
	FROM userRankingDB_class c WITH (NOLOCK)
	INNER JOIN userMemberDB m WITH (NOLOCK)
	ON c.accountIdx = m.accountIdx
	INNER JOIN userGameDB g WITH (NOLOCK)
	ON g.accountIdx = m.accountIdx
	LEFT JOIN 
	(
		SELECT gd.guildName, gu.accountIDX
		FROM
		[userGuildInfoDB] gu WITH (NOLOCK) 
		INNER JOIN userGuildDB gd WITH (NOLOCK) 
		ON gd.idx = gu.guildIDX
	) guild
	ON guild.accountIDX = m.accountIDX
	WHERE classType = @id	
	ORDER BY nowRanking ASC
GO


-- ----------------------------
-- Procedure structure for game_character_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_delete]
GO

CREATE PROCEDURE [dbo].[game_character_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userCharacterDB
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for web_play_fixkey_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_play_fixkey_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_play_fixkey_get_data]
GO

CREATE PROCEDURE [dbo].[web_play_fixkey_get_data]

As
	SELECT encodeKey FROM define_encode_key WHERE idx = (SELECT MAX(idx) FROM define_encode_key)
GO


-- ----------------------------
-- Procedure structure for game_item_extra_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_extra_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_extra_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_item_extra_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userItemExtraDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Function structure for DEFINE_REGION_LIMIT_RENSPOINT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DEFINE_REGION_LIMIT_RENSPOINT]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[DEFINE_REGION_LIMIT_RENSPOINT]
GO

CREATE FUNCTION [dbo].[DEFINE_REGION_LIMIT_RENSPOINT]
(
)
RETURNS int
AS

BEGIN

DECLARE @returnVal int
SET @returnVal = 10

RETURN @returnVal

END
GO


-- ----------------------------
-- Procedure structure for game_league_team_member_app_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_member_app_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_member_app_list]
GO

CREATE PROCEDURE [dbo].[game_league_team_member_app_list]
(
	@teamIDX int
)
AS

SET NOCOUNT ON

SELECT a.idx, a.accountIDX, b.nickName, c.userLevel, c.regionType, 
	   CASE WHEN d.guildJoinType=1 THEN d.guildIDX
	   ELSE 0
	   END AS guildIDX
  FROM dbo.userLeagueTeamMemberDB a WITH(NOLOCK)
  JOIN dbo.userMemberDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
  JOIN dbo.userGameDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX
  LEFT JOIN dbo.userGuildInfoDB d WITH(NOLOCK)
    ON a.accountIDX = d.accountIDX
 WHERE a.teamIDX=@teamIDX
   AND a.joinType=0
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for game_piece_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_piece_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_piece_add]
GO

CREATE PROCEDURE [dbo].[game_piece_add]
(
	@accountIDX int
,	@piece1_type int
,	@piece1_cnt int
,	@piece2_type int
,	@piece2_cnt int
,	@piece3_type int
,	@piece3_cnt int
,	@piece4_type int
,	@piece4_cnt int
,	@piece5_type int
,	@piece5_cnt int
,	@piece6_type int
,	@piece6_cnt int
,	@piece7_type int
,	@piece7_cnt int
,	@piece8_type int
,	@piece8_cnt int
,	@piece9_type int
,	@piece9_cnt int
,	@piece10_type int
,	@piece10_cnt int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userPieceDB (
	accountIDX,
	piece1_type, piece1_value1, piece1_value2, piece1_cnt, piece2_type, piece2_value1, piece2_value2, piece2_cnt,
	piece3_type, piece3_value1, piece3_value2, piece3_cnt, piece4_type, piece4_value1, piece4_value2, piece4_cnt,
	piece5_type, piece5_value1, piece5_value2, piece5_cnt, piece6_type, piece6_value1, piece6_value2, piece6_cnt,
	piece7_type, piece7_value1, piece7_value2, piece7_cnt, piece8_type, piece8_value1, piece8_value2, piece8_cnt,
	piece9_type, piece9_value1, piece9_value2, piece9_cnt, piece10_type, piece10_value1, piece10_value2, piece10_cnt,
	regDate
)
VALUES (
	@accountIDX,
	@piece1_type, 0, 0, @piece1_cnt, @piece2_type, 0, 0, @piece2_cnt,
	@piece3_type, 0, 0, @piece3_cnt, @piece4_type, 0, 0, @piece4_cnt,
	@piece5_type, 0, 0, @piece5_cnt, @piece6_type, 0, 0, @piece6_cnt,
	@piece7_type, 0, 0, @piece7_cnt, @piece8_type, 0, 0, @piece8_cnt,
	@piece9_type, 0, 0, @piece9_cnt, @piece10_type, 0, 0, @piece10_cnt,
	GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for web_valentine_item_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_item_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_item_add]
GO

CREATE PROCEDURE [dbo].[web_valentine_item_add]
(
	@userId varchar(20),
	@vid int,
	@aid int,
	@rose1 int,
	@rose2 int,
	@rose3 int
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @rewardId_1 int;
		DECLARE @rewardId_2 int;
		DECLARE @rewardId_3 int;
		SET @rewardId_1 = 3;
		SET @rewardId_2 = 4;
		SET @rewardId_3 = 5;

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END

		--Check Event Available
		IF NOT GETDATE() BETWEEN '2019-02-04 07:00' AND '2019-02-18 05:00'
		BEGIN
			RETURN (-2)
		END

		--Check Valid Item
		If @vid NOT IN (1, 2)
		BEGIN
			RETURN (-3)
		END

		--Check Item Enough
		SELECT @cnt = sum(Amount) FROM WebEventValentineUserItem WHERE ItemId = @vid AND AccountIdx = @accountIdx GROUP BY AccountIdx;
		IF @cnt IS NULL OR @cnt < @aid
		BEGIN
			RETURN (-4)
		END

		-- TRAN START
		BEGIN TRAN		
		--Deduce
		UPDATE WebEventValentineUserItem SET Amount -= @aid WHERE AccountIdx = @accountIdx AND ItemId = @vid;
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-5)
			END	

		-- Rose 1
		IF @rose1 > 0
		BEGIN
			SELECT @cnt = count(*) FROM WebEventValentineUserItem WHERE ItemId = @rewardId_1 AND AccountIdx = @accountIdx;
			IF @cnt = 0
				BEGIN
					INSERT INTO WebEventValentineUserItem (AccountIdx, ItemId, Amount) VALUES (@accountIdx, @rewardId_1, @rose1);
				END
			ELSE
				BEGIN
					UPDATE WebEventValentineUserItem SET Amount += @rose1 WHERE AccountIdx = @accountIdx AND ItemId = @rewardId_1;
				END

			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-5)
				END

			-- Log
			INSERT INTO WebEventValentineDailyLog (AccountIdx, ItemId, Amount, CompleteDate ) VALUES (@accountIdx, @rewardId_1, @rose1, GETDATE());
			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-6)
				END	
		END

		-- Rose 2
		IF @rose2 > 0
		BEGIN
			SELECT @cnt = count(*) FROM WebEventValentineUserItem WHERE ItemId = @rewardId_2 AND AccountIdx = @accountIdx;
			IF @cnt = 0
				BEGIN
					INSERT INTO WebEventValentineUserItem (AccountIdx, ItemId, Amount) VALUES (@accountIdx, @rewardId_2, @rose2);
				END
			ELSE
				BEGIN
					UPDATE WebEventValentineUserItem SET Amount += @rose2 WHERE AccountIdx = @accountIdx AND ItemId = @rewardId_2;
				END

			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-5)
				END

			-- Log
			INSERT INTO WebEventValentineDailyLog (AccountIdx, ItemId, Amount, CompleteDate ) VALUES (@accountIdx, @rewardId_2, @rose2, GETDATE());
			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-6)
				END	
		END

		-- Rose 3
		IF @rose3 > 0
		BEGIN
			SELECT @cnt = count(*) FROM WebEventValentineUserItem WHERE ItemId = @rewardId_3 AND AccountIdx = @accountIdx;
			IF @cnt = 0
				BEGIN
					INSERT INTO WebEventValentineUserItem (AccountIdx, ItemId, Amount) VALUES (@accountIdx, @rewardId_3, @rose3);
				END
			ELSE
				BEGIN
					UPDATE WebEventValentineUserItem SET Amount += @rose3 WHERE AccountIdx = @accountIdx AND ItemId = @rewardId_3;
				END

			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-5)
				END

			-- Log
			INSERT INTO WebEventValentineDailyLog (AccountIdx, ItemId, Amount, CompleteDate ) VALUES (@accountIdx, @rewardId_3, @rose3, GETDATE());
			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-6)
				END	
		END

		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for game_region_backup_compen
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_backup_compen]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_backup_compen]
GO

CREATE PROCEDURE [dbo].[game_region_backup_compen]

AS

SET NOCOUNT ON

DECLARE @tblName varchar(100), @sql varchar(300), @limitRenpoint int
DECLARE @i tinyint, @rtn bit, @tcount tinyint

SET @i = 65
SET @rtn = 0
SET @limitRenpoint = DBO.DEFINE_REGION_LIMIT_RENSPOINT()

WHILE (@rtn = 0)
BEGIN
	SET @tblName = 'LosaGame_' + RTrim(substring(convert(varchar(10), GETDATE(), 112),3,10)) + '_userRegionDB_compen_se_' + char(@i)
	SET @tcount = (
		SELECT COUNT(*)
		  FROM [Backup].DBO.sysobjects
		 WHERE [uid]=1
		   AND xtype='U'
		   AND [name]=@tblName
	)

	If (@tcount = 0)
		SET @rtn = 1
	ELSE
		SET @i = @i + 1
END

SET @sql = 'SELECT accountIDX, rt1point, rt1point_bonus, rt1count, rt2point, rt2point_bonus, rt2count, regionType, renspoint, regDate INTO [Backup].DBO.' + @tblName + ' FROM userRegionDB_compen WHERE regDate > ''' + Left(convert(varchar(20), GETDATE(), 112), 10) + ''''
EXECUTE (@sql)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_SPECIAL_ITEM_SET_DATA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_SPECIAL_ITEM_SET_DATA]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_SPECIAL_ITEM_SET_DATA]
GO

CREATE PROCEDURE [dbo].[USP_ADM_SPECIAL_ITEM_SET_DATA]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@COLUMN_NO			TINYINT,
	@ITEM_CODE			INT,
	@ITEM_VALUE1		INT,
	@ITEM_VALUE2		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	IF (@COLUMN_NO = 1)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item1_type = @ITEM_CODE,
		       item1_value1 = @ITEM_VALUE1,
		       item1_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 2)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item2_type = @ITEM_CODE,
		       item2_value1 = @ITEM_VALUE1,
		       item2_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 3)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item3_type = @ITEM_CODE,
		       item3_value1 = @ITEM_VALUE1,
		       item3_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 4)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item4_type = @ITEM_CODE,
		       item4_value1 = @ITEM_VALUE1,
		       item4_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 5)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item5_type = @ITEM_CODE,
		       item5_value1 = @ITEM_VALUE1,
		       item5_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 6)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item6_type = @ITEM_CODE,
		       item6_value1 = @ITEM_VALUE1,
		       item6_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 7)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item7_type = @ITEM_CODE,
		       item7_value1 = @ITEM_VALUE1,
		       item7_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 8)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item8_type = @ITEM_CODE,
		       item8_value1 = @ITEM_VALUE1,
		       item8_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 9)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item9_type = @ITEM_CODE,
		       item9_value1 = @ITEM_VALUE1,
		       item9_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 10)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item10_type = @ITEM_CODE,
		       item10_value1 = @ITEM_VALUE1,
		       item10_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 11)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item11_type = @ITEM_CODE,
		       item11_value1 = @ITEM_VALUE1,
		       item11_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 12)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item12_type = @ITEM_CODE,
		       item12_value1 = @ITEM_VALUE1,
		       item12_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 13)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item13_type = @ITEM_CODE,
		       item13_value1 = @ITEM_VALUE1,
		       item13_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 14)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item14_type = @ITEM_CODE,
		       item14_value1 = @ITEM_VALUE1,
		       item14_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 15)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item15_type = @ITEM_CODE,
		       item15_value1 = @ITEM_VALUE1,
		       item15_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 16)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item16_type = @ITEM_CODE,
		       item16_value1 = @ITEM_VALUE1,
		       item16_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 17)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item17_type = @ITEM_CODE,
		       item17_value1 = @ITEM_VALUE1,
		       item17_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 18)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item18_type = @ITEM_CODE,
		       item18_value1 = @ITEM_VALUE1,
		       item18_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 19)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item19_type = @ITEM_CODE,
		       item19_value1 = @ITEM_VALUE1,
		       item19_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 20)
	BEGIN
		UPDATE dbo.userItemEtcDB
		   SET item20_type = @ITEM_CODE,
		       item20_value1 = @ITEM_VALUE1,
		       item20_value2 = @ITEM_VALUE2
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_league_get_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_get_info]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_get_info]
GO

CREATE PROCEDURE [dbo].[game_league_get_info]
(
	@leagueIDX int
)
AS

SET NOCOUNT ON

SELECT idx, leagueName, maxRound, bannerA, bannerB, modeType, maxcount, autoType, announce, recruitDate, waitDate
  FROM dbo.userLeagueInfoDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX
GO


-- ----------------------------
-- Procedure structure for game_present_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_add]
GO

CREATE PROCEDURE [dbo].[game_present_add]
(
	@sendNick varchar(20)
,	@receiveNick varchar(20)
,	@persentType smallint
,	@value1 int
,	@value2 int
,	@value3 int
,	@value4 int
,	@msgType smallint
,	@limitDate datetime
,	@flag smallint
)
AS

SET NOCOUNT ON

DECLARE @sendIDX int, @receiveIDX int
SET @sendIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@sendNick
)

IF (@sendIDX IS NULL)
BEGIN
	SET @sendIDX = (
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH(NOLOCK)
		 WHERE nickName='DeveloperK'
	)
END

SET @receiveIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@receiveNick
)

INSERT INTO dbo.userPresentDB (
	sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
)
VALUES (
	@sendIDX, @receiveIDX, @persentType, @value1, @value2, @value3, @value4, @msgType, @flag, @limitDate, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for game_event_get_createIDX
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_get_createIDX]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_get_createIDX]
GO

CREATE PROCEDURE [dbo].[game_event_get_createIDX]
(
	@accountIDX int
,	@eventType int
)
AS

SET NOCOUNT ON

SELECT MAX(idx)
  FROM dbo.userEventDB
 WHERE accountIDX=@accountIDX
   AND eventType=@eventType
GO


-- ----------------------------
-- Procedure structure for game_character_delete_limitdate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_delete_limitdate]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_delete_limitdate]
GO

CREATE PROCEDURE [dbo].[game_character_delete_limitdate]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userCharacterDB
 WHERE accountIDX = @accountIDX
   AND limitTime=0
   AND limitType=0
   AND GETDATE() > DATEADD(d,1,regDate)
GO


-- ----------------------------
-- Procedure structure for game_pet_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_pet_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_pet_save]
GO

CREATE PROCEDURE [dbo].[game_pet_save]

	@ACCOUNT_IDX	INT,
	@PET_IDX		INT,
	@PET_RANK		TINYINT,
	@PET_LEVEL		INT,
	@PET_EXP		INT,
	@PET_EQUIP		TINYINT
	
AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	BEGIN TRAN

		UPDATE dbo.userPetDB WITH(ROWLOCK, XLOCK) 
		SET petRank=@PET_RANK, petLevel=@PET_LEVEL, petExp=@PET_EXP, petEquip=@PET_EQUIP
		WHERE accountIDX=@ACCOUNT_IDX and petIDX=@PET_IDX

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
		END

	COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for game_hero_price_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_hero_price_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_hero_price_get_data]
GO

CREATE PROCEDURE [dbo].[game_hero_price_get_data]

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT HeroCode, HeroPrice
  FROM dbo.define_hero_price WITH (NOLOCK)
 ORDER BY HeroCode
GO


-- ----------------------------
-- Procedure structure for game_item_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_save]
GO

CREATE PROCEDURE [dbo].[game_item_save]
(
	@idx int
,	@item1_type int
,	@item1_code int
,	@item2_type int
,	@item2_code int
,	@item3_type int
,	@item3_code int
,	@item4_type int
,	@item4_code int
,	@item5_type int
,	@item5_code int
,	@item6_type int
,	@item6_code int
,	@item7_type int
,	@item7_code int
,	@item8_type int
,	@item8_code int
,	@item9_type int
,	@item9_code int
,	@item10_type int
,	@item10_code int
,	@item11_type int
,	@item11_code int
,	@item12_type int
,	@item12_code int
,	@item13_type int
,	@item13_code int
,	@item14_type int
,	@item14_code int
,	@item15_type int
,	@item15_code int
,	@item16_type int
,	@item16_code int
,	@item17_type int
,	@item17_code int
,	@item18_type int
,	@item18_code int
,	@item19_type int
,	@item19_code int
,	@item20_type int
,	@item20_code int
)
AS

SET NOCOUNT ON

UPDATE dbo.userItemDB
   SET item1_type = @item1_type,
	   item1_code = @item1_code,
	   item2_type = @item2_type,
	   item2_code = @item2_code,
	   item3_type = @item3_type,
	   item3_code = @item3_code,
	   item4_type = @item4_type,
	   item4_code = @item4_code,
	   item5_type = @item5_type,
	   item5_code = @item5_code,
	   item6_type = @item6_type,
	   item6_code = @item6_code,
	   item7_type = @item7_type,
	   item7_code = @item7_code,
	   item8_type = @item8_type,
	   item8_code = @item8_code,
	   item9_type = @item9_type,
	   item9_code = @item9_code,
	   item10_type = @item10_type,
	   item10_code = @item10_code,
	   item11_type = @item11_type,
	   item11_code = @item11_code,
	   item12_type = @item12_type,
	   item12_code = @item12_code,
	   item13_type = @item13_type,
	   item13_code = @item13_code,
	   item14_type = @item14_type,
	   item14_code = @item14_code,
	   item15_type = @item15_type,
	   item15_code = @item15_code,
	   item16_type = @item16_type,
	   item16_code = @item16_code,
	   item17_type = @item17_type,
	   item17_code = @item17_code,
	   item18_type = @item18_type,
	   item18_code = @item18_code,
	   item19_type = @item19_type,
	   item19_code = @item19_code,
	   item20_type = @item20_type,
	   item20_code = @item20_code
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for event_item_limited_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[event_item_limited_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[event_item_limited_get_data]
GO

CREATE PROCEDURE [dbo].[event_item_limited_get_data]

	@PAGE_SIZE	INT,  
	@PAGE		INT	  

AS
SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000
	
	SELECT AccountIDX, EventType, GoodsIndex, GoodsCount FROM (
		SELECT ROW_NUMBER() OVER (ORDER BY AccountIDX) as RowNumber, AccountIDX, EventType, GoodsIndex, GoodsCount 
		FROM dbo.event_item_limited WITH (READUNCOMMITTED)
		WHERE AccountIDX>0 and EventType=0
	) as A WHERE RowNumber BETWEEN ((@PAGE - 1) * @PAGE_SIZE + 1) And (@PAGE * @PAGE_SIZE) 
	
	IF (@@ERROR<>0)
	BEGIN		
		RETURN;
	END	

	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_game_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_game_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_game_get_data]
GO

CREATE PROCEDURE [dbo].[game_game_get_data]
(
	@userID varchar(12)
)
As

SET NOCOUNT ON

SELECT a.accountIDX, b.userID, b.nickName, a.userState, a.gameMoney
	 , a.conn_count, a.connDate, a.userLevel, a.userEXP--, a.relateLevel
	 , b.eventType, isNull(c.class,0) as 'class', b.joinType, b.regDate, a.regionType
	 , a.rencpoint, a.renspoint, isNull(c.region,0) as 'region', b.cpType, ISNULL(d.cpID, '') AS 'cpID'
	 , ISNULL(d.note, '') AS 'cpUNIQ', b.limitType, b.limitDate, a.userFishingLevel, a.userFishingEXP
	 , a.refillData, a.userExcavationLevel, a.userExcavationEXP, a.userHerocEXP, a.userHerosEXP, ISNULL(sp.SpRank, 0) AS 'spRank'
  FROM userGameDB a WITH( NOLOCK )
  JOIN userMemberDB b WITH( NOLOCK )
	ON a.accountIDX = b.accountIDX
  LEFT JOIN userRankingDB c WITH( NOLOCK )
	ON a.accountIDX = c.accountIDX
  LEFT JOIN userCooperationDB d WITH( NOLOCK )
	ON a.accountIDX=d.accountIDX
  LEFT JOIN userSPRankDB sp WITH( NOLOCK )
	ON a.accountIDX=sp.AccountIDX WHERE b.userID = @userID
GO


-- ----------------------------
-- Procedure structure for game_award_get_level
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_award_get_level]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_award_get_level]
GO

CREATE PROCEDURE [dbo].[game_award_get_level]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT awardLevel, expert
  FROM dbo.userRankingDB_award WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_guild_create_guild
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_create_guild]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_create_guild]
GO

CREATE PROCEDURE [dbo].[game_guild_create_guild]
(
	@accountIDX int
,	@guildName varchar(20)
,	@aboutguild varchar(110)
,	@guildmark int
,	@maxcount int
)
AS

SET NOCOUNT ON
SET XACT_ABORT ON

DECLARE @cnt int, @errcount int, @guildIDX int, @masterIDX int

SET @cnt = 0
SET @errcount = 0

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildDB
	 WHERE guildName=@guildName
)
IF (@cnt > 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB
	 WHERE accountIDX=@accountIDX
	   AND guildJoinType > 0
)
IF (@cnt > 0)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

BEGIN TRAN

IF (@errcount = 0)
BEGIN
	SELECT 1 AS 'returnVal'

	DELETE FROM dbo.userGuildInfoDB
	 WHERE accountIDX = @accountIDX

	INSERT INTO dbo.userGuildDB (
		guildName, aboutguild, guildmark, ranking, point, todaypoint, guildLevel, maxcount, membercount, regDate
	)
	VALUES (
		@guildName, @aboutguild, @guildmark, 0, 0, 0, 0, @maxcount, 1, GETDATE()
	)

	SET @guildIDX = (
		SELECT idx
		  FROM dbo.userGuildDB
		 WHERE guildName=@guildName
	)

	INSERT INTO dbo.userGuildInfoDB (accountIDX, guildIDX, guildPosition, guildJoinType, regDate)
	VALUES (@accountIDX, @guildIDX, 'Leader', 1, GETDATE())

	INSERT INTO dbo.userRecordGuildDB (guildIDX, type1_win, type1_lose, type1_kill, type1_death, regDate)
	VALUES (@guildIDX, 0, 0, 0, 0, GETDATE())

END

COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for manage_userinfo_get_guild_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_userinfo_get_guild_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_userinfo_get_guild_data]
GO

CREATE PROCEDURE [dbo].[manage_userinfo_get_guild_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT b.guildName, a.guildPosition, a.guildJoinType
  FROM dbo.userGuildInfoDB a WITH(NOLOCK)
  JOIN dbo.userGuildDB b WITH(NOLOCK)
    ON a.guildIDX = b.idx 
 WHERE a.accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for web_play_enkey_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_play_enkey_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_play_enkey_save]
GO

CREATE PROCEDURE [dbo].[web_play_enkey_save]
(
	@accountIDX int
,	@encodeKey char(15)
,	@userIP varchar(15)
)
As
	UPDATE userLoginDB SET
		encodeKey = @encodeKey
,		userIP = @userIP
,		connDate = getdate()
	WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for web_valentine_mygoal_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_mygoal_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_mygoal_get]
GO

CREATE PROCEDURE [dbo].[web_valentine_mygoal_get]
(
	@userID varchar(20)
)
As
BEGIN
DECLARE @accountIdx INT;
--Check user exist
SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
IF @userId IS NULL OR  @accountIdx IS NULL
BEGIN
	SELECT 
		0 AS Goal,
		0 AS Goal1,
		0 AS Goal2,
		0 As Goal3
END
ELSE
	SELECT
		ISNULL(SUM(CASE WHEN ItemId IN (3, 4, 5) THEN ISNULL(Amount, 0) END ),0) AS Goal,
		ISNULL(SUM(CASE WHEN ItemId = 3 THEN ISNULL(Amount, 0) END ),0) AS Goal1,
		ISNULL(SUM(CASE WHEN ItemId = 4 THEN ISNULL(Amount, 0) END ),0) AS Goal2,
		ISNULL(SUM(CASE WHEN ItemId = 5 THEN ISNULL(Amount, 0) END ),0) AS Goal3
	FROM WebEventValentineDailyLog
	WHERE AccountIdx = @accountIdx
	GROUP BY AccountIdx
END
GO


-- ----------------------------
-- Procedure structure for event_item_limited_set_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[event_item_limited_set_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[event_item_limited_set_data]
GO

CREATE PROCEDURE [dbo].[event_item_limited_set_data]

	@ACCOUNT_IDX		INT,
	@EVENT_TYPE			TINYINT,
	@GOODS_INDEX		INT,
	@GOODS_COUNT		TINYINT

AS
SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	DECLARE @nReturn			INT	
	SET @nReturn=0			-- True

	BEGIN TRAN

		UPDATE dbo.event_item_limited WITH (XLOCK, ROWLOCK) SET GoodsCount=@GOODS_COUNT
		WHERE AccountIDX=@ACCOUNT_IDX and EventType=@EVENT_TYPE and GoodsIndex=@GOODS_INDEX

		IF (@@ROWCOUNT=0)
		BEGIN	

			INSERT dbo.event_item_limited WITH (XLOCK, ROWLOCK) (AccountIDX, EventType, GoodsIndex, GoodsCount)	VALUES (@ACCOUNT_IDX, @EVENT_TYPE, @GOODS_INDEX, @GOODS_COUNT)
			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN				
				SELECT -1
				RETURN;
			END
		END

	COMMIT TRAN

	SELECT @nReturn
	RETURN;
GO


-- ----------------------------
-- Procedure structure for web_roulette_mission_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_mission_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_mission_add]
GO

CREATE PROCEDURE [dbo].[web_roulette_mission_add]
(
	@rid int,
	@mid int,
	@userId varchar(20)
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @rewardId int;
		DECLARE @amount int;
		DECLARE @missionCnt int;
		SET @missionCnt = 0;

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WITH (NOLOCK) WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END

		--Check Roulette Available
		SELECT @cnt = count(*) FROM WebRoulette WHERE GETDATE() BETWEEN StartDate AND EndDate AND Id = @rid AND Status = 1;
		IF @cnt = 0
		BEGIN
			RETURN (-2)
		END

		--Check Mission Valid
		If @mid NOT IN (5, 6, 7, 12, 8, 15)
		BEGIN
			RETURN (-3)
		END

		--Check Mission Complete
		SELECT @cnt = count(*) FROM WebRouletteUserMission WHERE CONVERT(DATE, CompleteDate) = CONVERT(DATE, GETDATE()) AND MissionId = @mid AND AccountIdx = @accountIdx;
		IF @cnt > 0
		BEGIN
			RETURN (-4)
		END

		--Check User Mission
		IF @mid = 1 --LOGIN THE GAME
			BEGIN
				SELECT
					@missionCnt = COUNT(connDate)
				FROM userLoginDB WITH (NOLOCK)
				WHERE accountIdx = @accountIdx 
				AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, connDate), 0) 

				IF @missionCnt IS NULL OR @missionCnt < 1
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 2 --Play Time (60 Minutes)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(playTime), 0) / 60
				FROM (
					SELECT
						accountIDX,
						SUM(playTime) + SUM(deathTime) AS 'playTime'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX;

				IF @missionCnt IS NULL OR @missionCnt < 60
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 3 --Play Prisoner Mode (6 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 2
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 6
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 4 --Finish Any Monster Dungeon (Master) (5 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType IN (16, 17, 18, 21)
					AND l.subType1 = 4 --MASTER
					AND l.win = 1
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 5
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 5 --Finish Crusade Mode Floor 41 ~ 60 (1 Time)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 8
					AND l.subType1 = 3
					AND l.win = 1
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 1
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 6 --Donate 500BP
			BEGIN
				SELECT
					 @missionCnt = ISNULL(SUM(New), 0)
				FROM WebTransaction WITH (NOLOCK)
				WHERE DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, Time), 0)
				AND Uid = @userId

				IF @missionCnt IS NULL OR @missionCnt < 500
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 7 --Stay Online (60 Minutes)
			BEGIN
				SELECT
					@missionCnt = a.play_count
				FROM
				(
					SELECT
						accountIDX,
						ISNULL(SUM(playTime), 0) / 60  AS 'play_count'
					FROM [LosaLogData].[dbo].[log_data_playtime] l WITH (NOLOCK)
					where accountIDX = @accountIdx
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					group by accountIDX
				) a

				IF @missionCnt IS NULL OR @missionCnt < 60
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 8 --Play Time (30 Minutes)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(playTime), 0) / 60
				FROM (
					SELECT
						accountIDX,
						SUM(playTime) + SUM(deathTime) AS 'playTime'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX;

				IF @missionCnt IS NULL OR @missionCnt < 30
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 9 --Play Prisoner Mode (8 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 2
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 8
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 10 --Finish Fire Temple (Master) (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 18 --Fire Temple
					AND l.subType1 = 4 --MASTER
					AND l.win = 1
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 11 --Finish Secret Factory (Master) (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 21 --Secret Factory
					AND l.subType1 = 4 --MASTER
					AND l.win = 1
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 12 --Finish Deep Forest (Master) (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 16 --Deep Forest
					AND l.subType1 = 4 --MASTER
					AND l.win = 1
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 13 --Finish Snow Town (Master) (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 17 --Snow Town
					AND l.subType1 = 4 --MASTER
					AND l.win = 1
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 14 --Play Time (60 Minutes)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(playTime), 0) / 60
				FROM (
					SELECT
						accountIDX,
						SUM(playTime) + SUM(deathTime) AS 'playTime'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX;

				IF @missionCnt IS NULL OR @missionCnt < 60
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 15 --Play Prisoner Mode (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 2
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 16 --Play Faction War (3 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 5
					AND peso > 0
					AND l.modeType = 10
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 3
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 17 --Play Ghost Tag Mode (5 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 11
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 5
				BEGIN
					RETURN (-5)
				END	
			END		
		ELSE IF @mid = 18 --Play Football Mode (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 9
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 19 --Finish Snow Town (Master) in 3:30 (1 time)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 1000
					AND l.modeType = 17 --Snow Town
					AND l.subType1 = 4 --MASTER
					AND l.win = 1
					AND l.playTime > 60
					AND l.playTime<= 210
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 1
				BEGIN
					RETURN (-5)
				END	
			END	
		ELSE IF @mid = 20 --Play Beast Raid Mode (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 7
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 21 --Play Bare Bones Mode (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 25
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 22 --Play Classic Mode Mode (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 26
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		ELSE IF @mid = 23 --Play Raid Mode (4 times)
			BEGIN
				SELECT
					@missionCnt = ISNULL(SUM(play_count), 0)
				FROM (
					SELECT
						accountIDX,
						count(playTime) AS 'play_count'
					FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
					WHERE playTime > 0
					AND peso > 0
					AND l.modeType = 27
					AND DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
					GROUP BY accountIDX
				) a
				WHERE accountIDX = @accountIdx
				GROUP BY accountIDX

				IF @missionCnt IS NULL OR @missionCnt < 4
				BEGIN
					RETURN (-5)
				END	
			END
		-- Get Reward
		SELECT @rewardId = RewardItem, @amount = Amount FROM WebRouletteMission WHERE Id = @mid;
		IF @rewardId IS NULL OR  @amount IS NULL
		BEGIN
			RETURN (-6)
		END		

		-- TRAN START
		BEGIN TRAN		
		-- Reward
		SELECT @cnt = count(*) FROM WebRouletteUserItem WHERE ItemId = @rewardId AND AccountIdx = @accountIdx;
		IF @cnt = 0
			BEGIN
				INSERT INTO WebRouletteUserItem (AccountIdx, ItemId, Amount) VALUES (@accountIdx, @rewardId, @amount);
			END
		ELSE
			BEGIN
				UPDATE WebRouletteUserItem SET Amount += @amount WHERE AccountIdx = @accountIdx AND ItemId = @rewardId;
			END

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-7)
			END	

		-- Log
		INSERT INTO WebRouletteUserMission (AccountIdx, MissionId) VALUES (@accountIdx, @mid);
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-8)
			END	

		-- event only
		/*
		INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate) VALUES
		(1, @accountIdx, 3, 1000049, 1, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE());
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-8)
			END	
		*/
		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (@amount)
	END
GO


-- ----------------------------
-- Procedure structure for game_guild_login_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_login_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_login_get_data]
GO

CREATE PROCEDURE [dbo].[game_guild_login_get_data]  
(  
 @ACCOUNT_IDX int  
)  
AS  
  
 SET NOCOUNT ON  
  
 DECLARE @GUILD_IDX INT = 0;  
 DECLARE @GUILD_HQ TINYINT = 0;  
  
 -- 길드 본부 활성화 여부 확인  
 SET @GUILD_IDX = (SELECT guildIDX FROM dbo.userGuildInfoDB WHERE AccountIDX=@ACCOUNT_IDX and guildJoinType=1)  
 IF (@GUILD_IDX<>0) or (@GUILD_IDX IS NOT NULL)  
 BEGIN  
  IF EXISTS (SELECT * FROM dbo.userGuildHQDB WHERE GuildIDX=@GUILD_IDX)  
  BEGIN  
   SET @GUILD_HQ=1  
  END  
 END  
  
 -- 사용자 길드 관련 데이터 세팅  
 SELECT B.idx, B.guildName, B.guildmark, A.guildPosition, A.msg, A.AttendDate, A.GuildRankDate, A.regDate, @GUILD_HQ  
 FROM dbo.userGuildInfoDB as A WITH(READUNCOMMITTED) INNER JOIN dbo.userGuildDB AS B WITH(READUNCOMMITTED)  
 ON A.guildIDX = B.idx   
 WHERE A.accountIDX = @ACCOUNT_IDX  
 AND A.guildJoinType in (-1, 1)
GO


-- ----------------------------
-- Procedure structure for game_league_auth_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_auth_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_auth_add]
GO

CREATE PROCEDURE [dbo].[game_league_auth_add]
(
	@leagueIDX int
,	@accountIDX int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userLeagueAuthDB (leagueIDX, accountIDX, regDate)
VALUES (@leagueIDX, @accountIDX, GETDATE())
GO


-- ----------------------------
-- Procedure structure for web_notice_update
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_notice_update]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_notice_update]
GO

CREATE PROCEDURE [dbo].[web_notice_update]
(
	@userID varchar(20),
	@nid int,
	@subject varchar(200),
	@type int,
	@content VARCHAR(MAX),
	@plain VARCHAR(MAX),
	@status int
)
As
	BEGIN
		SET NOCOUNT ON 		
		DECLARE @cnt int;
		SELECT @cnt = count(*) FROM WebNoticeType WHERE Id = @type;
		IF @cnt = 0
		BEGIN
			RETURN (2)
		END

		SELECT @cnt = count(*) FROM WebNotice WHERE Id = @nid;
		IF @cnt = 0
		BEGIN
			RETURN (3)
		END

		-- TRAN START 
		BEGIN TRAN

		UPDATE WebNotice
		SET
			NoticeUser = @userID,
			Subject = @subject,
			TypeId = @type,
			Content = @content, 
			ContentPlain = @plain,
			Status = @status
		WHERE Id = @nid;
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (4)
		END
		
		-- COMMIT TRAN
		COMMIT TRAN 

		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for obt_event_for_cbt
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[obt_event_for_cbt]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[obt_event_for_cbt]
GO

CREATE PROCEDURE [dbo].[obt_event_for_cbt]
(
	@GARENA_UID		VARCHAR(20)
)
AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @ACCOUNT_IDX			INT
	DECLARE @EVENT_TYPE				TINYINT

	DECLARE @DEFINE_REWARD_TYPE		INT
	DECLARE @DEFINE_REWARD_VALUE1	INT
	DECLARE @DEFINE_REWARD_VALUE2	INT

	SET @DEFINE_REWARD_TYPE = 3
	SET @DEFINE_REWARD_VALUE1 = 1002475
	SET @DEFINE_REWARD_VALUE2 = 1

	DECLARE @nReturn			INT
	SET @nReturn=0				-- True

	SET @EVENT_TYPE = 2

	IF (NOT EXISTS(SELECT * FROM LosaGame.dbo.userMemberDB WITH (NOLOCK) WHERE userID = @GARENA_UID))
	BEGIN
		RETURN 8001;
	END

	-- LIVE Account Data Check
	SET @ACCOUNT_IDX = ISNULL((
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH (NOLOCK)
		 WHERE userID = @GARENA_UID
	), 0)

	IF (@ACCOUNT_IDX=0)
	BEGIN
		RETURN 8002;
	END

	IF (EXISTS(SELECT * FROM dbo.TBL_obt_event_log WITH (NOLOCK) WHERE accountIDX=@ACCOUNT_IDX AND eventType=@EVENT_TYPE))
	BEGIN
		RETURN 8003;
	END



	-- insert reward
	BEGIN TRAN

		INSERT INTO dbo.userPresentDB (
			sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
		)
		VALUES (
			1, @ACCOUNT_IDX, @DEFINE_REWARD_TYPE, @DEFINE_REWARD_VALUE1, @DEFINE_REWARD_VALUE2, 0, 0, 3, 1, GETDATE()+35, GETDATE()
		)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8004;
		END

		INSERT INTO dbo.TBL_obt_event_log (accountIDX, eventType, regDate)
		VALUES (@ACCOUNT_IDX, @EVENT_TYPE, GETDATE())

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8005;
		END

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_coin_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_coin_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_coin_get_data]
GO

CREATE PROCEDURE [dbo].[game_coin_get_data]

	@ACCOUNT_IDX	INT

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	SELECT UpdateDate, CoinType
	  FROM dbo.userCoinDB WITH (NOLOCK)
	 WHERE AccountIDX = @ACCOUNT_IDX;
GO


-- ----------------------------
-- Procedure structure for game_guild_member_out
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_member_out]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_member_out]
GO

CREATE PROCEDURE [dbo].[game_guild_member_out]
(
	@idx int
,	@guildIDX int
)
AS

SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

UPDATE dbo.userGuildInfoDB
   SET guildJoinType=-1,
	   msg=2
 WHERE idx=@idx

UPDATE dbo.userGuildDB
   SET membercount = membercount-1
 WHERE idx=@guildIDX

COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for game_personalHQ_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_personalHQ_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_personalHQ_get_data]
GO

CREATE PROCEDURE [dbo].[game_personalHQ_get_data]  
  
 @ACCOUNT_IDX  INT,  
 @ITEM_STATUS  TINYINT,   -- 0: 미설치, 1:설치됨, 2:삭제  
 @PAGE    INT,  
 @PAGE_SIZE   INT  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 IF (@ITEM_STATUS=0)  
 BEGIN  
    
  -- 길드 공용 인벤 아이템 SELECT  
  SELECT ItemCode, COUNT(*) FROM dbo.userPersonalHQDB WITH (READCOMMITTED)  
  WHERE AccountIDX=@ACCOUNT_IDX and ItemStatus=@ITEM_STATUS  
  GROUP BY ItemCode  
  
 END  
 ELSE IF (@ITEM_STATUS=1)  
 BEGIN  
    
  -- 설치된 아이템 SELECT  
  SELECT ItemSerial, ItemCode, ItemXZ, ItemY, ItemRotate, ItemDecoScore FROM (  
   SELECT ROW_NUMBER() OVER (ORDER BY ItemSerial DESC) as ItemList, ItemSerial, ItemCode, ItemXZ, ItemY, ItemRotate, ItemDecoScore  
   FROM dbo.userPersonalHQDB WITH (READCOMMITTED) WHERE AccountIDX=@ACCOUNT_IDX and ItemStatus=@ITEM_STATUS  
  ) as USER_PERSONAL_HQ_LIST  
  WHERE ItemList BETWEEN (((@PAGE - 1) * @PAGE_SIZE) + 1) AND @PAGE * @PAGE_SIZE  
  
 END   
  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for web_roulette_setting_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_setting_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_setting_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_setting_get]
(
	@id int
)
As
	SELECT
		RouletteId,
		ItemId
	FROM WebRouletteSetting WITH (NOLOCK)
	WHERE Id = @id
GO


-- ----------------------------
-- Procedure structure for web_play_enkey_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_play_enkey_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_play_enkey_get_data]
GO

CREATE PROCEDURE [dbo].[web_play_enkey_get_data]
(
	@accountIDX int
)
As
	SELECT encodeKey, gameServerID, userIP, connDate FROM userLoginDB WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for AGENT_RANKING_LADDER_DAILY
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_RANKING_LADDER_DAILY]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_RANKING_LADDER_DAILY]
GO

CREATE PROCEDURE [dbo].[AGENT_RANKING_LADDER_DAILY]

AS

SET NOCOUNT ON

UPDATE dbo.userRankingDB_hero
   SET title=0,
	   daily=0
 WHERE daily > 0

IF EXISTS(SELECT table_name FROM information_schema.tables WHERE table_name = 'userRankingDB_temp')
DROP TABLE userRankingDB_temp

SELECT a.accountIDX, ROW_NUMBER() OVER(ORDER BY a.ladderEXP DESC, a.accountIDX ASC) AS 'rank' 
  INTO userRankingDB_temp 
  FROM (
	SELECT c.accountIDX, (c.userHerocEXP + c.userHerosEXP) * ((d.type3_win/30) + 1) / ((d.type3_lose/10) + 1) AS 'ladderEXP' 
	  FROM dbo.userGameDB c WITH(NOLOCK)
	 INNER JOIN dbo.userRecordBattleDB d WITH(NOLOCK)
	    ON c.accountIDX=d.accountIDX
	 WHERE c.userHerocEXP + c.userHerosEXP > 30
) a, (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK) 
	 WHERE userType > 20 
) b
 WHERE a.accountIDX = b.accountIDX

INSERT INTO dbo.userRankingDB_hero (
	accountIDX, title, daily, dailyB, season1, season2, season3, season4, season5, season6, regDate
)
SELECT accountIDX, 0, 0, 0, 0, 0, 0, 0, 0, 0, GETDATE()
  FROM userRankingDB_temp WITH(NOLOCK)
 WHERE accountIDX NOT IN (
	SELECT accountIDX
	  FROM dbo.userRankingDB_hero WITH(NOLOCK)
 )

UPDATE a
   SET daily = b.rank
  FROM (
	SELECT accountIDX, rank
	  FROM userRankingDB_temp WITH(NOLOCK)
) b
 INNER JOIN userRankingDB_hero a
    ON a.accountIDX = b.accountIDX


DELETE FROM dbo.userRankingDB_hero
 WHERE daily=0
   AND dailyB=0
   AND season1=0
   AND season2=0
   AND season3=0
   AND season4=0
   AND season5=0
   AND season6=0
GO


-- ----------------------------
-- Procedure structure for game_league_team_member_app_list_del
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_member_app_list_del]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_member_app_list_del]
GO

CREATE PROCEDURE [dbo].[game_league_team_member_app_list_del]
(
	@accountIDX int
,	@leagueIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userLeagueTeamMemberDB
 WHERE accountIDX=@accountIDX
   AND leagueIDX=@leagueIDX
   AND joinType=0
GO


-- ----------------------------
-- Procedure structure for game_award_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_award_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_award_get_list]
GO

CREATE PROCEDURE [dbo].[game_award_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, award1_type, award1_number, award1_point, award2_type, award2_number, award2_point, award3_type, award3_number, award3_point,
	   award4_type, award4_number, award4_point, award5_type, award5_number, award5_point, award6_type, award6_number, award6_point,
	   award7_type, award7_number, award7_point, award8_type, award8_number, award8_point, award9_type, award9_number, award9_point,
	   award10_type, award10_number, award10_point 
  FROM dbo.userAwardDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for web_valentine_myitem_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_myitem_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_myitem_get]
GO

CREATE PROCEDURE [dbo].[web_valentine_myitem_get]
(
	@userID varchar(20)
)
As
BEGIN
DECLARE @accountIdx INT;
--Check user exist
SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
IF @userId IS NULL OR  @accountIdx IS NULL
BEGIN
	SELECT 
		0 AS Seed1,
		0 AS Seed2,
		0 AS Rose1,
		0 AS Rose2,
		0 As Rose3
END
ELSE
	SELECT
		ISNULL(SUM(CASE WHEN ItemId = 1 THEN ISNULL(Amount, 0) END ),0) AS Seed1,
		ISNULL(SUM(CASE WHEN ItemId = 2 THEN ISNULL(Amount, 0) END ),0) AS Seed2,
		ISNULL(SUM(CASE WHEN ItemId = 3 THEN ISNULL(Amount, 0) END ),0) AS Rose1,
		ISNULL(SUM(CASE WHEN ItemId = 4 THEN ISNULL(Amount, 0) END ),0) AS Rose2,
		ISNULL(SUM(CASE WHEN ItemId = 5 THEN ISNULL(Amount, 0) END ),0) AS Rose3
	FROM WebEventValentineUserItem 
	WHERE AccountIdx = @accountIdx
	GROUP BY AccountIdx
END
GO


-- ----------------------------
-- Procedure structure for game_server_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_server_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_server_delete]
GO

CREATE PROCEDURE [dbo].[game_server_delete]
(
	@serverID bigint
)
AS

SET NOCOUNT ON

DELETE FROM dbo.define_game_server
 WHERE serverID = @serverID
GO


-- ----------------------------
-- Procedure structure for game_event_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_get_data]
GO

CREATE PROCEDURE [dbo].[game_event_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, eventType, value1, value2
  FROM dbo.userEventDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_league_get_reward
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_get_reward]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_get_reward]
GO

CREATE PROCEDURE [dbo].[game_league_get_reward]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, startDate, currentRound, userFactionType, winnerFactionType, rewardPeso, factionRank, factionPoint
  FROM dbo.userLeagueRewardDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for manage_userinfo_get_item_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manage_userinfo_get_item_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[manage_userinfo_get_item_data]
GO

CREATE PROCEDURE [dbo].[manage_userinfo_get_item_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, item1_type, item1_code, item2_type, item2_code, item3_type, item3_code, item4_type, item4_code, item5_type, item5_code, 
	   item6_type, item6_code, item7_type, item7_code, item8_type, item8_code, item9_type, item9_code, item10_type, item10_code, 
	   item11_type, item11_code, item12_type, item12_code, item13_type, item13_code, item14_type, item14_code, item15_type, item15_code, 
	   item16_type, item16_code, item17_type, item17_code, item18_type, item18_code, item19_type, item19_code, item20_type, item20_code 
  FROM dbo.userItemDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_item_extra_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_extra_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_extra_save]
GO

CREATE PROCEDURE [dbo].[game_item_extra_save]
(
	@idx int
,	@item1_type int
,	@item1_reinforce int
,	@item1_slotindex int
,	@item1_tradeType int
,	@item1_limitType int
,	@item1_mcustom int
,	@item1_fcustom int
,	@item1_failexp smallint
,	@item1_limitDate datetime
,	@item2_type int
,	@item2_reinforce int
,	@item2_slotindex int
,	@item2_tradeType int
,	@item2_limitType int
,	@item2_mcustom int
,	@item2_fcustom int
,	@item2_failexp smallint
,	@item2_limitDate datetime
,	@item3_type int
,	@item3_reinforce int
,	@item3_slotindex int
,	@item3_tradeType int
,	@item3_limitType int
,	@item3_mcustom int
,	@item3_fcustom int
,	@item3_failexp smallint
,	@item3_limitDate datetime
,	@item4_type int
,	@item4_reinforce int
,	@item4_slotindex int
,	@item4_tradeType int
,	@item4_limitType int
,	@item4_mcustom int
,	@item4_fcustom int
,	@item4_failexp smallint
,	@item4_limitDate datetime
,	@item5_type int
,	@item5_reinforce int
,	@item5_slotindex int
,	@item5_tradeType int
,	@item5_limitType int
,	@item5_mcustom int
,	@item5_fcustom int
,	@item5_failexp smallint
,	@item5_limitDate datetime
,	@item6_type int
,	@item6_reinforce int
,	@item6_slotindex int
,	@item6_tradeType int
,	@item6_limitType int
,	@item6_mcustom int
,	@item6_fcustom int
,	@item6_failexp smallint
,	@item6_limitDate datetime
,	@item7_type int
,	@item7_reinforce int
,	@item7_slotindex int
,	@item7_tradeType int
,	@item7_limitType int
,	@item7_mcustom int
,	@item7_fcustom int
,	@item7_failexp smallint
,	@item7_limitDate datetime
,	@item8_type int
,	@item8_reinforce int
,	@item8_slotindex int
,	@item8_tradeType int
,	@item8_limitType int
,	@item8_mcustom int
,	@item8_fcustom int
,	@item8_failexp smallint
,	@item8_limitDate datetime
,	@item9_type int
,	@item9_reinforce int
,	@item9_slotindex int
,	@item9_tradeType int
,	@item9_limitType int
,	@item9_mcustom int
,	@item9_fcustom int
,	@item9_failexp smallint
,	@item9_limitDate datetime
,	@item10_type int
,	@item10_reinforce int
,	@item10_slotindex int
,	@item10_tradeType int
,	@item10_limitType int
,	@item10_mcustom int
,	@item10_fcustom int
,	@item10_failexp smallint
,	@item10_limitDate datetime
)
AS

SET NOCOUNT ON

UPDATE dbo.userItemExtraDB
   SET item1_type = @item1_type,
	   item1_reinforce = @item1_reinforce,
	   item1_slotindex = @item1_slotindex,
	   item1_tradetype = @item1_tradeType,
	   item1_mcustom = @item1_mcustom,
	   item1_fcustom = @item1_fcustom,
	   item1_failexp = @item1_failexp,
	   item1_limitType = @item1_limitType,
	   item1_limitDate = @item1_limitDate,
	   item2_type = @item2_type,
	   item2_reinforce = @item2_reinforce,
	   item2_slotindex = @item2_slotindex,
	   item2_tradetype = @item2_tradeType,
	   item2_mcustom = @item2_mcustom,
	   item2_fcustom = @item2_fcustom,
	   item2_failexp = @item2_failexp,
	   item2_limitType = @item2_limitType,
	   item2_limitDate = @item2_limitDate,
	   item3_type = @item3_type,
	   item3_reinforce = @item3_reinforce,
	   item3_slotindex = @item3_slotindex,
	   item3_tradetype = @item3_tradeType,
	   item3_mcustom = @item3_mcustom,
	   item3_fcustom = @item3_fcustom,
	   item3_failexp = @item3_failexp,
	   item3_limitType = @item3_limitType,
	   item3_limitDate = @item3_limitDate,
	   item4_type = @item4_type,
	   item4_reinforce = @item4_reinforce,
	   item4_slotindex = @item4_slotindex,
	   item4_tradetype = @item4_tradeType,
	   item4_mcustom = @item4_mcustom,
	   item4_fcustom = @item4_fcustom,
	   item4_failexp = @item4_failexp,
	   item4_limitType = @item4_limitType,
	   item4_limitDate = @item4_limitDate,
	   item5_type = @item5_type,
	   item5_reinforce = @item5_reinforce,
	   item5_slotindex = @item5_slotindex,
	   item5_tradetype = @item5_tradeType,
	   item5_mcustom = @item5_mcustom,
	   item5_fcustom = @item5_fcustom,
	   item5_failexp = @item5_failexp,
	   item5_limitType = @item5_limitType,
	   item5_limitDate = @item5_limitDate,
	   item6_type = @item6_type,
	   item6_reinforce = @item6_reinforce,
	   item6_slotindex = @item6_slotindex,
	   item6_tradetype = @item6_tradeType,
	   item6_mcustom = @item6_mcustom,
	   item6_fcustom = @item6_fcustom,
	   item6_failexp = @item6_failexp,
	   item6_limitType = @item6_limitType,
	   item6_limitDate = @item6_limitDate,
	   item7_type = @item7_type,
	   item7_reinforce = @item7_reinforce,
	   item7_slotindex = @item7_slotindex,
	   item7_tradetype = @item7_tradeType,
	   item7_mcustom = @item7_mcustom,
	   item7_fcustom = @item7_fcustom,
	   item7_failexp = @item7_failexp,
	   item7_limitType = @item7_limitType,
	   item7_limitDate = @item7_limitDate,
	   item8_type = @item8_type,
	   item8_reinforce = @item8_reinforce,
	   item8_slotindex = @item8_slotindex,
	   item8_tradetype = @item8_tradeType,
	   item8_mcustom = @item8_mcustom,
	   item8_fcustom = @item8_fcustom,
	   item8_failexp = @item8_failexp,
	   item8_limitType = @item8_limitType,
	   item8_limitDate = @item8_limitDate,
	   item9_type = @item9_type,
	   item9_reinforce = @item9_reinforce,
	   item9_slotindex = @item9_slotindex,
	   item9_tradetype = @item9_tradeType,
	   item9_mcustom = @item9_mcustom,
	   item9_fcustom = @item9_fcustom,
	   item9_failexp = @item9_failexp,
	   item9_limitType = @item9_limitType,
	   item9_limitDate = @item9_limitDate,
	   item10_type = @item10_type,
	   item10_reinforce = @item10_reinforce,
	   item10_slotindex = @item10_slotindex,
	   item10_tradetype = @item10_tradeType,
	   item10_mcustom = @item10_mcustom,
	   item10_fcustom = @item10_fcustom,
	   item10_failexp = @item10_failexp,
	   item10_limitType = @item10_limitType,
	   item10_limitDate = @item10_limitDate
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_character_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_get_data]
GO

CREATE PROCEDURE [dbo].[game_character_get_data]
(
	@idx INT
)
AS

SET NOCOUNT ON

SELECT accountIDX,
	   ClassType, CI_type, CI_gender, CI_beard, CI_face, CI_hair, CI_skinColor, CI_hairColor, CI_trinket, CI_underwear,
	   EI1_type, EI2_type, EI3_type, EI4_type, CI_position,
	   limitTime, limitType, leaderType, rentalType, rentalTime, awakeType, awakeTime 
  FROM dbo.userCharacterDB WITH(NOLOCK)
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_guildHQ_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guildHQ_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guildHQ_get_data]
GO

CREATE PROCEDURE [dbo].[game_guildHQ_get_data]  
  
 @GUILD_IDX  INT,  
 @ITEM_STATUS TINYINT,   -- 0: 미설치, 1:설치됨, 2:삭제  
 @PAGE   INT,  
 @PAGE_SIZE  INT  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 IF (@ITEM_STATUS=0)  
 BEGIN  
    
  -- 길드 공용 인벤 아이템 SELECT  
  SELECT ItemCode, COUNT(*) FROM dbo.userGuildHQDB WITH (READCOMMITTED)  
  WHERE GuildIDX=@GUILD_IDX and ItemStatus=@ITEM_STATUS  
  GROUP BY ItemCode  
  
 END  
 ELSE IF (@ITEM_STATUS=1)  
 BEGIN  
    
  -- 설치된 아이템 SELECT  
  SELECT ItemSerial, ItemCode, ItemXZ, ItemY, ItemRotate, ItemDecoScore FROM (  
   SELECT ROW_NUMBER() OVER (ORDER BY ItemSerial DESC) as ItemList, ItemSerial, ItemCode, ItemXZ, ItemY, ItemRotate, ItemDecoScore  
   FROM dbo.userGuildHQDB WITH (READCOMMITTED) WHERE GuildIDX=@GUILD_IDX and ItemStatus=@ITEM_STATUS  
  ) as GUILDHQ_LIST  
  WHERE ItemList BETWEEN (((@PAGE - 1) * @PAGE_SIZE) + 1) AND @PAGE * @PAGE_SIZE  
  
 END   
  
  
 RETURN;
GO


-- ----------------------------
-- Function structure for udf_Split
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[udf_Split]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[udf_Split]
GO

CREATE FUNCTION [dbo].[udf_Split] 
(
 @Words nvarchar(MAX)
, @splitStr varchar(50)
)
RETURNS @Result_Table TABLE
	   (
		 [word] nvarchar(max) NULL
	   )
BEGIN 
    Declare @TempStr nvarchar(MAX)
    
    WHILE (CHARINDEX(@splitStr,@Words)>0)
	BEGIN
		Set @TempStr=SUBSTRING(@Words,1,CHARINDEX(@splitStr,@Words)-1)
		Insert into @Result_Table (word) Values (@TempStr)
		
		Set @Words = REPLACE(@Words,@TempStr+@splitStr,'')
	END
	
	IF(LEN(RTRIM(LTRIM(@Words)))>0 And CHARINDEX(@splitStr,RTRIM(LTRIM(@Words)))=0)
	Begin
	    Set @TempStr=@Words
	    
		Insert into @Result_Table (word) Values (@TempStr)
	    
	End

   RETURN
END
GO


-- ----------------------------
-- Procedure structure for web_roulette_userluck_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_userluck_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_userluck_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_userluck_get]
(
	@rid int,
	@userId varchar(20) = NULL
)
As
BEGIN
	SET NOCOUNT ON
	DECLARE @accountIdx int;
	DECLARE @luck int;
	SET @luck = 0;

	--Check user exist
	SELECT @accountIdx = Id FROM WebLogin WITH (NOLOCK) WHERE Username = @userId;
	IF @accountIdx IS NOT NULL
		BEGIN
			SELECT
				@luck = Lucky
			From WebRouletteUserLucky
			WHERE RouletteId = @rid AND AccountIdx = @accountIdx;
		END
		
	SELECT @luck AS Lucky;
END
GO


-- ----------------------------
-- Procedure structure for game_pet_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_pet_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_pet_get_list]
GO

CREATE PROCEDURE [dbo].[game_pet_get_list]

	@ACCOUNT_IDX	INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	BEGIN
		SELECT petIDX, petCode, petRank, petLevel, petExp, petEquip FROM dbo.userPetDB WITH (READUNCOMMITTED)
		WHERE accountIDX=@ACCOUNT_IDX and petStatus=1
	END
GO


-- ----------------------------
-- Procedure structure for game_league_auth_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_auth_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_auth_list]
GO

CREATE PROCEDURE [dbo].[game_league_auth_list]
(
	@topN int
,	@idx int
,	@leagueIDX int
)
AS

SET NOCOUNT ON

SELECT TOP (@topN) a.accountIDX, b.nickName, c.userLevel
  FROM dbo.userLeagueAuthDB a WITH(NOLOCK)
  JOIN userMemberDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
  JOIN userGameDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX
 WHERE idx > @idx
   AND leagueIDX=@leagueIDX
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for web_roulette_mission_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_mission_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_mission_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_mission_get]
(
	@missionList varchar(max)
)
As
	SELECT
		m.Id,
		m.Name,
		m.Description,
		i.Name As RewardName,
		m.Amount As RewardAmount,
		m.Flag As Flag
	FROM WebRouletteMission m WITH (NOLOCK)
	INNER JOIN WebRouletteItem i WITH (NOLOCK)
	ON m.RewardItem = i.Id
	WHERE m.Id IN (SELECT word FROM dbo.udf_Split(@missionList, ','))
	ORDER BY Flag, Id;
GO


-- ----------------------------
-- Procedure structure for game_region_backup_point
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_backup_point]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_backup_point]
GO

CREATE PROCEDURE [dbo].[game_region_backup_point]

AS

SET NOCOUNT ON

DECLARE @tblNameA varchar(100), @tblNameB varchar(100), @sql varchar(300), @limitRenpoint int
DECLARE @i tinyint, @rtn bit, @tcount tinyint

SET @i = 65
SET @rtn = 0
SET @limitRenpoint = DBO.DEFINE_REGION_LIMIT_RENSPOINT()

WHILE (@rtn = 0)
BEGIN
	SET @tblNameA = 'LosaGame_' + RTrim(substring(convert(varchar(10), GETDATE(), 112),3,10)) + '_userGameDB_se_' + char(@i)
	SET @tblNameB = 'LosaGame_' + RTrim(substring(convert(varchar(10), GETDATE(), 112),3,10)) + '_userGuildDB_se_' + char(@i)
	SET @tcount = (SELECT COUNT(*) FROM [Backup].DBO.sysobjects WHERE [uid]=1 and xtype='U' and [name]=@tblNameA)
	SET @tcount = @tcount + (SELECT COUNT(*) FROM [Backup].DBO.sysobjects WHERE [uid]=1 and xtype='U' and [name]=@tblNameB)

	If (@tcount = 0)
		SET @rtn = 1
	ELSE
		SET @i = @i + 1
END

SET @sql = 'SELECT accountIDX, gameMoney, userLevel, userEXP, userHerocEXP, userHerosEXP, rencpoint, renspoint, regionType INTO [Backup].DBO.' + @tblNameA + ' FROM userGameDB WHERE renspoint > ' + Convert(varchar(6), @limitRenpoint) + ' or userHerocEXP > 0 or userHerosEXP > 0'
EXECUTE (@sql)

SET @sql = 'SELECT idx, guildName, guildmark, ranking, point, todaypoint, guildLevel INTO [Backup].DBO.' + @tblNameB + ' FROM dbo.userGuildDB'
EXECUTE (@sql)
GO


-- ----------------------------
-- Procedure structure for web_quest_reward_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_quest_reward_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_quest_reward_get]
GO

CREATE PROCEDURE [dbo].[web_quest_reward_get]
(
	@Id int,
	@User varchar(20)
)
As
BEGIN
	SET NOCOUNT ON
	DECLARE @status int;
	DECLARE @cash int;

	Exec @status = web_quest_status_get @Id=@Id, @User=@User;

	IF @status = 2
		BEGIN
			-- TRAN START 
			BEGIN TRAN

			INSERT INTO WebQuestUser (QId, UserID) VALUES (@Id, @User);

			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (4)
				END
/*
			INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate)
			SELECT 1, accountIdx, presentType, value1, value2, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE()
			FROM userMemberDB u
			CROSS APPLY WebQuestReward i
			WHERE i.QId = @Id AND i.ItemType = 0
			AND userID = @User;

			IF @@ROWCOUNT = 0 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (5)
				END
*/
			SELECT @cash = ISNULL(SUM(Value1), 0) FROM WebQuestReward WHERE QId = @Id AND ItemType = 1;
			IF @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (6)
				END

			UPDATE c 
				SET realCash+= @cash 
			FROM userMoneyDB c
			INNER JOIN userMemberDB m
			ON c.accountIDX = m.accountIDX
			WHERE userID = @User;

			IF @@ROWCOUNT = 0 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (7)
				END

			-- COMMIT TRAN
			COMMIT TRAN 

			RETURN (9)
		END

	RETURN(@status)
END
GO


-- ----------------------------
-- Procedure structure for game_price_class_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_price_class_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_price_class_get_data]
GO

CREATE PROCEDURE [dbo].[game_price_class_get_data]

AS

SET NOCOUNT ON

SELECT TOP 1 class1_price, class2_price, class3_price, class4_price, class5_price, class6_price, class7_price, class8_price, class9_price, class10_price, 
	   class11_price, class12_price, class13_price, class14_price, class15_price, class16_price, class17_price, class18_price, class19_price, class20_price, 
	   class21_price, class22_price, class23_price, class24_price, class25_price, class26_price, class27_price, class28_price, class29_price, class30_price, 
	   class31_price, class32_price, class33_price, class34_price, class35_price, class36_price, class37_price, class38_price, class39_price, class40_price, 
	   class41_price, class42_price, class43_price, class44_price, class45_price, class46_price, class47_price, class48_price, class49_price, class50_price,
	   class51_price, class52_price, class53_price, class54_price, class55_price, class56_price, class57_price, class58_price, class59_price, class60_price,
	   class61_price, class62_price, class63_price, class64_price, class65_price, class66_price, class67_price, class68_price, class69_price, class70_price,
	   class71_price, class72_price, class73_price, class74_price, class75_price, class76_price, class77_price, class78_price, class79_price, class80_price,
	   class81_price, class82_price, class83_price, class84_price, class85_price, class86_price, class87_price, class88_price, class89_price, class90_price,
	   class91_price, class92_price, class93_price, class94_price, class95_price, class96_price, class97_price, class98_price, class99_price, class100_price,
	   class101_price, class102_price, class103_price, class104_price, class105_price, class106_price, class107_price, class108_price, class109_price, class110_price,
	   class111_price, class112_price, class113_price, class114_price, class115_price, class116_price, class117_price, class118_price, class119_price, class120_price,
	   class121_price, class122_price, class123_price, class124_price, class125_price, class126_price, class127_price, class128_price, class129_price, class130_price,
	   class131_price, class132_price, class133_price, class134_price, class135_price, class136_price, class137_price, class138_price, class139_price, class140_price,
	   class141_price, class142_price, class143_price, class144_price, class145_price, class146_price, class147_price, class148_price, class149_price, class150_price
  FROM dbo.define_class_price
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_get_userID
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_get_userID]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_get_userID]
GO

CREATE PROCEDURE [dbo].[game_get_userID]
(  
 @accountIDX int  
)  
AS  
  
SET NOCOUNT ON  
  
SELECT accountIDX, userid  
  FROM dbo.userMemberDB WITH(NOLOCK)  
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for obt_event_for_ghost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[obt_event_for_ghost]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[obt_event_for_ghost]
GO

CREATE PROCEDURE [dbo].[obt_event_for_ghost]
(
	@GARENA_UID		VARCHAR(20)
)
AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @ACCOUNT_IDX			INT
	DECLARE @EVENT_TYPE				TINYINT
	DECLARE @i						TINYINT

	DECLARE @DEFINE_REWARD_TYPE		INT
	DECLARE @DEFINE_REWARD_VALUE1	INT
	DECLARE @DEFINE_REWARD_VALUE2	INT

	SET @DEFINE_REWARD_TYPE = 9
	SET @DEFINE_REWARD_VALUE1 = 2003
	SET @DEFINE_REWARD_VALUE2 = 0

	DECLARE @nReturn			INT
	SET @nReturn=0				-- True

	SET @EVENT_TYPE = 5


	-- LIVE Account Data Check
	SET @ACCOUNT_IDX = ISNULL((
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH (NOLOCK)
		 WHERE userID = @GARENA_UID
	), 0)

	IF (@ACCOUNT_IDX=0)
	BEGIN
		RETURN 8001;
	END

	IF (NOT EXISTS(SELECT * FROM dbo.TBL_obt_event_bug_reporting WITH (NOLOCK) WHERE accountIDX=@ACCOUNT_IDX AND brType=3))
	BEGIN
		RETURN 8002;
	END

	IF (EXISTS(SELECT * FROM dbo.TBL_obt_event_log WITH (NOLOCK) WHERE accountIDX=@ACCOUNT_IDX AND eventType=@EVENT_TYPE))
	BEGIN
		RETURN 8003;
	END



	-- insert reward
	BEGIN TRAN

		INSERT INTO dbo.userPresentDB (
			sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
		)
		VALUES (
			1, @ACCOUNT_IDX, @DEFINE_REWARD_TYPE, @DEFINE_REWARD_VALUE1, @DEFINE_REWARD_VALUE2, 0, 0, 3, 1, GETDATE()+35, GETDATE()
		)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8004;
		END

		INSERT INTO dbo.TBL_obt_event_log (accountIDX, eventType, regDate)
		VALUES (@ACCOUNT_IDX, @EVENT_TYPE, GETDATE())

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN 8005;
		END

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for USP_Web_Member_Add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_Web_Member_Add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_Web_Member_Add]
GO

CREATE PROCEDURE [dbo].[USP_Web_Member_Add]
                                                    
	@sUserId	varchar(20),		-- 사용자아이디
	@sPassword  varchar(128),
	@sNickName	varchar(20) = '',		-- 사용자닉네임
	@sEMail		varchar(50) = '',		-- 이메일주소
	@nMailling	int = '',		-- 메일수신동의여부
	@nUserType	int = 100,			-- 가입자등급(100:정회원)
	@nJoinType	int = 10,			-- 회원확인
	@nGender	int = 0,			-- 성별(M:남자, F:여자 )
	@sUserIP	varchar(15) = '0.0.0.0',		-- 사용자IP
	@sUserBirthday	varchar(6) = '010101',	-- 생년월일
	@sEncodeJumin1	varchar(12) = '',	-- 주민번호앞자리(암호화)
	@sEncodeJumin2	varchar(14) = '',	-- 주민번호뒷자리(암호화)
	@sUserEnCode	varchar(15) = '111111111111111',	-- 전체주민번호(암호화)
	@nUserNumber	tinyint	= 1,	-- 주민번호뒷자리처음(남자:1, 여자:2, 2000년생은 3,4)
	@sActiveCode varchar(10)
AS
BEGIN
	SET NOCOUNT ON;
                                           
	-- 변수 선언
	DECLARE @nAccountIDX	int
	DECLARE @freeCash int
	DECLARE @activeCode varchar(10)
	SET @freeCash = 500
	-- 변수 세팅
	SET @nAccountIDX = 0
	
	-- TRAN START 
	BEGIN TRAN

		IF @activeCode <> '*'
		BEGIN
			SELECT @activeCode = Code FROM WebHardware WHERE Code = @sActiveCode AND ActiveDate IS NULL;
			IF @activeCode IS NULL OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (2)
			END

			UPDATE WebHardware SET ActiveDate = GETDATE(), ActiveUser = @sUserId WHERE Code = @activeCode AND ActiveDate IS NULL;
			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-8)
			END
		END

		-- 게임 관련 기본 데이터 저장
		INSERT INTO userMemberDB (userID, nickName, userPWD, EMail, mailling, userType, joinType, eventType, cpType, limitType, limitDate, regDate)
		     VALUES (@sUserId, '_' + @sUserId + '#', '', @sEMail, @nMailling, @nUserType, @nJoinType, 0, 0, 0, '1999-01-01', GETDATE())
			 --'temp'+ Format(getdate(), N'yyMMddHHmmssfff')
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-1)
		END

		-- 사용자idx
		SET @nAccountIDX = @@IDENTITY

		INSERT INTO WebLogin (Id, Username, Password, Email, RegisterIP)
			VALUES (@nAccountIDX, @sUserId, @sPassword, @sEMail, @sUserIP);

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-2)
		END

		INSERT INTO userMoneyDB (accountIDX, realCash, bonusCash, regDate)
		     VALUES (@nAccountIDX, 0, @freeCash, GETDATE())

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-3)
		END

		INSERT INTO userGameDB (accountIDX, userState, gameMoney, playTime, conn_count, userLevel, userEXP, rencpoint, renspoint, relateLevel, regionType, refillData, connDate, regDate)
		     VALUES (@nAccountIDX, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2000-01-01', GETDATE())

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-4)
		END

		INSERT INTO userRecordBattleDB (accountIDX, type1_win, type1_lose, type1_kill, type1_death, type2_win, type2_lose, type2_kill, type2_death, type3_win, type3_lose, type3_kill, type3_death, type4_win, type4_lose, type4_kill, type4_death, regDate)
	 	     VALUES (@nAccountIDX, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, GETDATE())

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-5)
		END

		INSERT INTO userLoginDB (accountIDX, encodeKey, gameServerID, connDate) 
		     VALUES (@nAccountIDX, @sUserEnCode, 0, GETDATE())

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-6)
		END

		INSERT INTO userNameDB (accountIDX, userName, userBirthday, userJumin1, userJumin2, userEnCode, userNumber, userGender, returnValue, userIP, regDate)
		     VALUES (@nAccountIDX, '', @sUserBirthday, @sEncodeJumin1, @sEncodeJumin2, @sUserEnCode, @nUserNumber, @nGender, 1, @sUserIP, GETDATE())

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-7)
		END		

	-- COMMIT TRAN
	COMMIT TRAN 

 
                                       
                                                                                                                                                                                                 



	RETURN (1)
 
END
GO


-- ----------------------------
-- Procedure structure for game_guild_reward_set_guildRank
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_reward_set_guildRank]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_reward_set_guildRank]
GO

CREATE PROCEDURE [dbo].[game_guild_reward_set_guildRank]

	@ACCOUNT_IDX		INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT	10000

	DECLARE @nReturn			INT

	BEGIN TRAN
			
		UPDATE dbo.userGuildInfoDB WITH (XLOCK, ROWLOCK) SET GuildRankDate=GETDATE()
		WHERE AccountIDX=@ACCOUNT_IDX

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN
		END

	COMMIT TRAN

	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_team_member_app_reg
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_member_app_reg]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_member_app_reg]
GO

CREATE PROCEDURE [dbo].[game_league_team_member_app_reg]
(
	@accountIDX int
,	@leagueIDX int
,	@teamIDX int
,	@factionType tinyint
)
AS

SET NOCOUNT ON

DECLARE @chkcnt int
DECLARE @errcount int
DECLARE @maxmember tinyint
DECLARE @dbFactionType tinyint

SET @chkcnt = 0
SET @errcount = 0
SET @maxmember = 0
SET @dbFactionType = 0

SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
)
IF (@chkcnt = 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @chkcnt = (
	SELECT joinType
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
)
IF (@chkcnt <= 1)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
	   AND leagueIDX=@leagueIDX
	   AND joinType=1
)
IF (@chkcnt > 0)
BEGIN
	SET @errcount = 4
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @maxmember = (
	SELECT maxcount
	  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
	 WHERE idx=@teamIDX
)
SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
	 WHERE teamIDX=@teamIDX
	   AND joinType=1
)

IF (@maxmember <= @chkcnt)
BEGIN
	SET @errcount = 5
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@factionType > 0)
BEGIN
	SET @dbFactionType = (
		SELECT regionType
		  FROM dbo.userGameDB WITH(NOLOCK)
		 WHERE accountIDX=@accountIDX
	)
	IF (@factionType <> @dbFactionType)
	BEGIN
		SET @errcount = 6
		SELECT @errcount AS 'returnVal'
		RETURN
	END
END

IF (@errcount = 0)
BEGIN
	SET @errcount = 1
	SELECT @errcount AS 'returnVal'

	UPDATE dbo.userLeagueTeamMemberDB
	   SET joinType=1
	 WHERE teamIDX=@teamIDX
	   AND accountIDX=@accountIDX
END
GO


-- ----------------------------
-- Procedure structure for game_costume_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_costume_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_costume_get_list]
GO

CREATE PROCEDURE [dbo].[game_costume_get_list]    
(    
 @idx INT,    
 @accountIDX INT,    
 @topNum INT    
)    
AS    
SET NOCOUNT ON    
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED     
    
SELECT TOP (@topNum) idx, itemCode, mcustom, fcustom,  periodType, periodDate, classType    
  FROM dbo.userCostumeDB WITH (INDEX (PK_userCostumeDB))    
 WHERE accountIDX = @accountIDX    
   AND idx > @idx    
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_award_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_award_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_award_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_award_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT MAX(idx)
  FROM dbo.userAwardDB
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for AGENT_RANKING_LADDER_DAILYB
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_RANKING_LADDER_DAILYB]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_RANKING_LADDER_DAILYB]
GO

CREATE PROCEDURE [dbo].[AGENT_RANKING_LADDER_DAILYB]

AS

SET NOCOUNT ON

UPDATE dbo.userRankingDB_hero
   SET dailyB = 0
 WHERE dailyB > 0

IF EXISTS(SELECT table_name FROM information_schema.tables WHERE table_name = 'userRankingDB_temp')
DROP TABLE userRankingDB_temp

SELECT a.accountIDX, ROW_NUMBER() OVER(ORDER BY a.ladderEXP DESC, a.accountIDX ASC) AS 'rank' 
  INTO userRankingDB_temp 
  FROM (
	SELECT c.accountIDX, (c.userHerosEXP) * ((d.type4_win/30) + 1) / ((d.type4_lose/10) + 1) AS 'ladderEXP' 
	  FROM dbo.userGameDB c WITH(NOLOCK)
	 INNER JOIN dbo.userRecordBattleDB d WITH(NOLOCK)
	    ON c.accountIDX=d.accountIDX
	 WHERE c.userHerosEXP > 0
) a, (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK) 
	 WHERE userType > 20 
) b
 WHERE a.accountIDX = b.accountIDX

INSERT INTO dbo.userRankingDB_hero (
	accountIDX, title, daily, dailyB, season1, season2, season3, season4, season5, season6, regDate
)
SELECT accountIDX, 0, 0, 0, 0, 0, 0, 0, 0, 0, GETDATE()
  FROM userRankingDB_temp WITH(NOLOCK)
 WHERE accountIDX NOT IN (
	SELECT accountIDX
	  FROM dbo.userRankingDB_hero WITH(NOLOCK)
 )

UPDATE a
   SET dailyB = b.rank
  FROM (
	SELECT accountIDX, rank
	  FROM userRankingDB_temp WITH(NOLOCK)
) b
 INNER JOIN dbo.userRankingDB_hero a
    ON a.accountIDX = b.accountIDX
GO


-- ----------------------------
-- Procedure structure for game_medal_get_level
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_medal_get_level]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_medal_get_level]
GO

CREATE PROCEDURE [dbo].[game_medal_get_level]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT medalLevel, expert
  FROM dbo.userRankingDB_medal WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_member_namecheck_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_namecheck_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_namecheck_get_data]
GO

CREATE PROCEDURE [dbo].[game_member_namecheck_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT joinType
  FROM dbo.userMemberDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_guild_member_out_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_member_out_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_member_out_delete]
GO

CREATE PROCEDURE [dbo].[game_guild_member_out_delete]
(
	@accountIDX int
,	@guildIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userGuildInfoDB
 WHERE guildIDX=@guildIDX
   AND accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PIECE_SET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PIECE_SET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PIECE_SET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PIECE_SET_DELETE]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@COLUMN_NO			TINYINT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	IF (@COLUMN_NO = 1)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece1_type = 0,
		       piece1_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 2)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece2_type = 0,
		       piece2_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 3)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece3_type = 0,
		       piece3_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 4)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece4_type = 0,
		       piece4_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 5)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece5_type = 0,
		       piece5_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 6)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece6_type = 0,
		       piece6_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 7)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece7_type = 0,
		       piece7_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 8)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece8_type = 0,
		       piece8_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 9)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece9_type = 0,
		       piece9_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 10)
	BEGIN
		UPDATE dbo.userPieceDB
		   SET piece10_type = 0,
		       piece10_cnt = 0
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_guild_join_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_delete]
GO

CREATE PROCEDURE [dbo].[game_guild_join_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userGuildInfoDB
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_league_get_reward_cheer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_get_reward_cheer]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_get_reward_cheer]
GO

CREATE PROCEDURE [dbo].[game_league_get_reward_cheer]
(
	@accountIDX INT
,	@flag TINYINT
)
AS

SET NOCOUNT ON


SELECT idx, rewardPeso
  FROM dbo.userLeagueRewardCheerDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for web_reset_all_event_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_reset_all_event_item]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_reset_all_event_item]
GO

CREATE PROCEDURE [dbo].[web_reset_all_event_item]
(
	@itemCode int = NULL
)
As

begin
	--1001913 - CLOVER
	--1005165 - Winter Coin [Gold]
	--1005166 - Winter Coin [Silver]
	--1005167 - Winter Coin [Bronze]
	--1000049 - Event Item
	--1002134 - Roulette Coupon
	--1002135 - Bingo Board
	--1002136 - Draw Number
	--1002137 - Suffle Number (Not Use)
	--1002138 - Prize Change
	--1002139 - Guaranteed Number

	IF @itemCode IS NULL
		RETURN (-1)
		
	-- TRAN START 
	BEGIN TRAN

	UPDATE dbo.userItemEtcDB
		SET item1_type		= 0,
			item1_value1	= 0, 
			item1_value2	= 0 
		WHERE item1_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (1)
	END

	UPDATE dbo.userItemEtcDB
		SET item2_type		= 0,
			item2_value1	= 0, 
			item2_value2	= 0 
		WHERE item2_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (2)
	END

	UPDATE dbo.userItemEtcDB
		SET item3_type		= 0,
			item3_value1	= 0, 
			item3_value2	= 0 
		WHERE item3_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (3)
	END

	UPDATE dbo.userItemEtcDB
		SET item4_type		= 0,
			item4_value1	= 0, 
			item4_value2	= 0 
		WHERE item4_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (4)
	END

	UPDATE dbo.userItemEtcDB
		SET item5_type		= 0,
			item5_value1	= 0, 
			item5_value2	= 0 
		WHERE item5_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (5)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item6_type		= 0,
			item6_value1	= 0, 
			item6_value2	= 0 
		WHERE item6_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (6)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item7_type		= 0,
			item7_value1	= 0, 
			item7_value2	= 0 
		WHERE item7_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (7)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item8_type		= 0,
			item8_value1	= 0, 
			item8_value2	= 0 
		WHERE item8_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (8)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item9_type		= 0,
			item9_value1	= 0, 
			item9_value2	= 0 
		WHERE item9_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (9)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item10_type		= 0,
			item10_value1	= 0, 
			item10_value2	= 0 
		WHERE item10_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (10)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item11_type		= 0,
			item11_value1	= 0, 
			item11_value2	= 0 
		WHERE item11_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (11)
	END

	UPDATE dbo.userItemEtcDB
		SET item12_type		= 0,
			item12_value1	= 0, 
			item12_value2	= 0 
		WHERE item12_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (12)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item13_type		= 0,
			item13_value1	= 0, 
			item13_value2	= 0 
		WHERE item13_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (13)
	END
		
	UPDATE dbo.userItemEtcDB
		SET item14_type		= 0,
			item14_value1	= 0, 
			item14_value2	= 0 
		WHERE item14_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (14)
	END
		
	UPDATE dbo.userItemEtcDB
		SET item15_type		= 0,
			item15_value1	= 0, 
			item15_value2	= 0 
		WHERE item15_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (15)
	END
	
	UPDATE dbo.userItemEtcDB
		SET item16_type		= 0,
			item16_value1	= 0, 
			item16_value2	= 0 
		WHERE item16_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (16)
	END
		
	UPDATE dbo.userItemEtcDB
		SET item17_type		= 0,
			item17_value1	= 0, 
			item17_value2	= 0 
		WHERE item17_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (17)
	END
		
	UPDATE dbo.userItemEtcDB
		SET item18_type		= 0,
			item18_value1	= 0, 
			item18_value2	= 0 
		WHERE item18_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (18)
	END
		
	UPDATE dbo.userItemEtcDB
		SET item19_type		= 0,
			item19_value1	= 0, 
			item19_value2	= 0 
		WHERE item19_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (19)
	END

	UPDATE dbo.userItemEtcDB
		SET item20_type		= 0,
			item20_value1	= 0, 
			item20_value2	= 0 
		WHERE item20_type = @itemCode
			
	IF @@ERROR <> 0 
	BEGIN
		ROLLBACK TRAN
		RETURN (20)
	END

	-- COMMIT TRAN
	COMMIT TRAN 

	RETURN (0)
end
GO


-- ----------------------------
-- Procedure structure for game_costume_skin_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_costume_skin_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_costume_skin_delete]
GO

CREATE PROCEDURE [dbo].[game_costume_skin_delete]        
(        
 @idx INT,        
 @accountIDX INT,        
  @gender INT      
)        
AS        
        
SET NOCOUNT ON        
SET LOCK_TIMEOUT 10000        
        
      
IF ( @gender = 1 )      
 BEGIN       
   UPDATE dbo.userCostumeDB SET mcustom = 0 WHERE idx = @idx and accountIDX = @accountIDX  
 END       
ELSE      
 BEGIN       
   UPDATE dbo.userCostumeDB SET fcustom = 0 WHERE idx = @idx and accountIDX = @accountIDX       
 END
GO


-- ----------------------------
-- Procedure structure for game_game_heroexp_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_game_heroexp_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_game_heroexp_init]
GO

CREATE PROCEDURE [dbo].[game_game_heroexp_init]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGameDB
   SET userHerocEXP = 0,
	   userHerosEXP = 0
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_get_limitType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_get_limitType]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_get_limitType]
GO

CREATE PROCEDURE [dbo].[game_get_limitType]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT limitType, limitDate
  FROM dbo.userMemberDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for usp_user_get_migration_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_user_get_migration_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_user_get_migration_count]
GO

CREATE PROCEDURE [dbo].[usp_user_get_migration_count]

AS

SET NOCOUNT ON
SET LOCK_TIMEOUT 10000

SELECT COUNT(*) AS CNT
  FROM dbo.TBL_migration_mapping_log WITH (NOLOCK)
GO


-- ----------------------------
-- Procedure structure for game_personalHQ_get_user_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_personalHQ_get_user_info]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_personalHQ_get_user_info]
GO

CREATE PROCEDURE [dbo].[game_personalHQ_get_user_info]  
  
 @ACCOUNT_IDX  INT  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 IF EXISTS (SELECT * FROM dbo.userPersonalHQDB WITH (READUNCOMMITTED) WHERE AccountIDX=@ACCOUNT_IDX)  
 BEGIN  
  SELECT 1;  
  RETURN  
 END  
   
 SELECT 0;  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_costume_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_costume_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_costume_save]
GO

CREATE PROCEDURE [dbo].[game_costume_save]      
(      
 @idx INT,      
 @itemCode INT,      
 @mcostume INT,    
 @fcostume INT,    
 @periodType TINYINT,      
 @periodDate DATETIME,      
 @classType INT      
)      
AS      
      
SET NOCOUNT ON      
SET LOCK_TIMEOUT 10000      
      
UPDATE dbo.userCostumeDB      
   SET itemCode = @itemCode,      
    mcustom = @mcostume,    
    fcustom = @fcostume,    
    periodType = @periodType,      
    periodDate = @periodDate,      
    classType = @classType      
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_character_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_get_list]
GO

CREATE PROCEDURE [dbo].[game_character_get_list]
(
	@accountIDX INT
)
AS

SET NOCOUNT ON

SELECT idx, ClassType,
       CI_type, CI_gender, CI_beard, CI_face, CI_hair, CI_skinColor, CI_hairColor, CI_trinket, CI_underwear,
       EI1_type, EI2_type, EI3_type, EI4_type, CI_position,
       limitTime, limitType, leaderType, rentalType, rentalTime, awakeType, awakeTime 
  FROM dbo.userCharacterDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_item_get_data_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_get_data_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_get_data_list]
GO

CREATE PROCEDURE [dbo].[game_item_get_data_list]
(
	@idx			INT,
	@accountIDX		INT,
	@getCount		INT
)
AS

SET NOCOUNT ON;

SELECT TOP (@getCount) idx,
       item1_type, item1_code, item2_type, item2_code, item3_type, item3_code, item4_type, item4_code, item5_type, item5_code,
       item6_type, item6_code, item7_type, item7_code, item8_type, item8_code, item9_type, item9_code, item10_type, item10_code,
       item11_type, item11_code, item12_type, item12_code, item13_type, item13_code, item14_type, item14_code, item15_type, item15_code, 
       item16_type, item16_code, item17_type, item17_code, item18_type, item18_code, item19_type, item19_code, item20_type, item20_code 
  FROM dbo.userItemDB WITH (NOLOCK)
 WHERE accountIDX = @accountIDX
   AND idx > @idx
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_coin_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_coin_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_coin_set_add]
GO

CREATE PROCEDURE [dbo].[game_coin_set_add]

	@ACCOUNT_IDX	INT,		-- 유저인덱스
	@COIN_TYPE		TINYINT		-- 1: 래이드 코인

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @NOW_DATE DATETIME
	SET @NOW_DATE = GETDATE()

	BEGIN TRAN

		INSERT INTO dbo.userCoinDB WITH (XLOCK, ROWLOCK) (AccountIDX, UpdateDate, CoinType, RegDate)
		VALUES (@ACCOUNT_IDX, @NOW_DATE, @COIN_TYPE, @NOW_DATE);

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN;
		END

	COMMIT TRAN
	
	SELECT @NOW_DATE;

	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_team_member_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_member_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_member_delete]
GO

CREATE PROCEDURE [dbo].[game_league_team_member_delete]
(
	@idx int
,	@accountIDX int
)
AS

SET NOCOUNT ON

DECLARE @renspoint int
DECLARE @chkcnt int
DECLARE @errcount int

SET @chkcnt = 0
SET @errcount = 0

SET @chkcnt = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
)
IF (@chkcnt = 0)
BEGIN
	SET @errcount = -2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @renspoint = (
	SELECT renspoint
	  FROM dbo.userGameDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
)

SELECT @renspoint AS factionPoint

DELETE FROM dbo.userLeagueTeamMemberDB
 WHERE idx=@idx
   AND accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_guild_join_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_get_list]
GO

CREATE PROCEDURE [dbo].[game_guild_join_get_list]
(
	@guildIDX int
)
AS

SET NOCOUNT ON

SELECT a.idx, a.accountIDX, b.userLevel, c.nickName 
  FROM dbo.userGuildInfoDB a WITH(NOLOCK)
 INNER JOIN dbo.userGameDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
 INNER JOIN dbo.userMemberDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX 
 WHERE guildIDX = @guildIDX
   AND guildJoinType=0
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for game_game_heroexp_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_game_heroexp_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_game_heroexp_save]
GO

CREATE PROCEDURE [dbo].[game_game_heroexp_save]
(
	@accountIDX int
,	@heroEXP int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGameDB
   SET userHerosEXP = @heroEXP 
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_PET_GET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_PET_GET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_PET_GET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_PET_GET_DELETE]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	UPDATE dbo.userPetDB
	   SET petStatus = 0
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND petIDX = @TABLE_IDX

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_money_set_realCash_Garena
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_money_set_realCash_Garena]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_money_set_realCash_Garena]
GO

CREATE PROCEDURE [dbo].[game_money_set_realCash_Garena]
	@ACCOUNTIDX INT,  
	@USER_MONEY INT  
AS

	SET NOCOUNT ON;
	
	DECLARE @MONEY INT  
	SET @MONEY = 0  
   
	UPDATE dbo.userMoneyDB SET realCash = realCash + @USER_MONEY WHERE accountIDX = @ACCOUNTIDX
GO


-- ----------------------------
-- Procedure structure for game_event_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_save]
GO

CREATE PROCEDURE [dbo].[game_event_save]
(
	@idx int
,	@value1 int
,	@value2 int
)
AS

SET NOCOUNT ON

UPDATE dbo.userEventDB
   SET value1 = @value1,
	   value2 = @value2
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_league_history_get_winner_team_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_history_get_winner_team_info]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_history_get_winner_team_info]
GO

CREATE PROCEDURE [dbo].[game_league_history_get_winner_team_info]

AS

SET NOCOUNT ON

SELECT TOP 1 teamName, factionType
  FROM dbo.userLeagueWinnerHistoryDB WITH(NOLOCK)
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for web_roulette_rewardlist_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_rewardlist_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_rewardlist_get]
GO

CREATE PROCEDURE [dbo].[web_roulette_rewardlist_get]
(
	@rid int,
	@userId varchar(20) = NULL
)
As
BEGIN
	SET NOCOUNT ON
	DECLARE @lucky int;
	DECLARE @extra int;	
	DECLARE @accountIdx int;
	DECLARE @myluck int;
	SET @extra = 0;
	SET @myluck = 0;

	SELECT @lucky = Lucky FROM WebRouletteSetting WITH (NOLOCK) WHERE Id = 1;
	IF @lucky IS NOT NULL
		BEGIN			
			IF @lucky > 1800
				BEGIN
					SET @extra = 12;
				END
			ELSE IF @lucky > 1100
				BEGIN
					SET @extra = 8;
				END
			ELSE IF @lucky > 500
				BEGIN
					SET @extra = 5;
				END
		END
	
	--Check user exist
	SELECT @accountIdx = Id FROM WebLogin WITH (NOLOCK) WHERE Username = @userId;

	--MyLuck
	SELECT @myluck = Lucky From WebRouletteUserLucky WITH (NOLOCK) WHERE RouletteId = @rid AND AccountIdx = @accountIdx;

	IF @accountIdx IS NOT NULL AND @myluck >= 50
		BEGIN
			SELECT
				Id AS ItemId,
				Rate + CASE WHEN Flag = 2 THEN @extra ELSE 0 END As Rate
			FROM WebRouletteReward WITH (NOLOCK)
			WHERE rId = @rid
			AND Flag > 0;
		END
	ELSE
		BEGIN
			SELECT
				Id AS ItemId,
				Rate + CASE WHEN Flag = 2 THEN @extra ELSE 0 END As Rate
			FROM WebRouletteReward WITH (NOLOCK)
			WHERE rId = @rid;
		END
END
GO


-- ----------------------------
-- Procedure structure for game_coin_set_updatedate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_coin_set_updatedate]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_coin_set_updatedate]
GO

CREATE PROCEDURE [dbo].[game_coin_set_updatedate]

	@ACCOUNT_IDX		INT,		-- 유저인덱스
	@COIN_TYPE			TINYINT		-- 1: 래이드 코인

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;
	
	DECLARE @NOW_DATE DATETIME
	SET @NOW_DATE = GETDATE()

	BEGIN TRAN		
		
		UPDATE dbo.userCoinDB WITH (XLOCK, ROWLOCK)
		   SET UpdateDate = @NOW_DATE
		 WHERE AccountIDX = @ACCOUNT_IDX
		   AND CoinType = @COIN_TYPE;

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN;
		END

	COMMIT TRAN
	
	SELECT @NOW_DATE;

	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_personalHQ_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_personalHQ_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_personalHQ_set_add]
GO

CREATE PROCEDURE [dbo].[game_personalHQ_set_add]  
  
 @ACCOUNT_IDX INT,  
 @ITEM_CODE  INT  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
  
 BEGIN TRAN  
  -- 길드 본부 꾸미기 아이템 추가  
  INSERT dbo.userPersonalHQDB WITH (XLOCK, ROWLOCK) (AccountIDX, ItemCode) VALUES (@ACCOUNT_IDX, @ITEM_CODE)  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END  
  
 COMMIT TRAN  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for web_roulette_name_update
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_name_update]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_name_update]
GO

CREATE PROCEDURE [dbo].[web_roulette_name_update]
As
BEGIN
	UPDATE l
	SET l.Nickname = m.nickname
	From WebRouletteRewardLog l
	INNER JOIN userMemberDB m
	ON l.AccountIdx = m.accountIDX
	WHERE l.Nickname != m.nickname;
END
GO


-- ----------------------------
-- Procedure structure for game_member_add_dev
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_add_dev]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_add_dev]
GO

CREATE PROCEDURE [dbo].[game_member_add_dev]
(
	@userID varchar(20)
,	@nickName varchar(20)
)
AS

SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

	DECLARE @accountIDX int

	INSERT INTO dbo.userMemberDB (userID, nickName, userPWD, EMail, mailling, userType, joinType, limitType, limitDate, regDate)
	VALUES (@userID, @nickName, '', '', 0, 100, 10, 0, '1999-01-01', GETDATE())

	--SCOPE_IDENTITY()
	SET @accountIDX = (
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH(NOLOCK)
		 WHERE userID=@userID
	)

	INSERT INTO dbo.userMoneyDB (accountIDX, realCash, bonusCash )
	VALUES (@accountIDX, 0, 0)

	IF (@@ERROR = 0)
		COMMIT TRAN
	ELSE
		ROLLBACK TRAN


	-- OBT EVENT -------------------------------------------------------------------------
	DECLARE @USER_LEVEL INT
	DECLARE @EVENT_TYPE TINYINT

	SET @USER_LEVEL = 0
	SET @EVENT_TYPE = 0

	SET @USER_LEVEL = ISNULL((
		SELECT UG.userLevel
		  FROM LosaGame.dbo.userMemberDB UM WITH (NOLOCK)
		  JOIN LosaGame.dbo.userGameDB UG WITH (NOLOCK)
		    ON UM.accountIDX=UG.accountIDX
		 WHERE UM.userID = @userID
	), 0)

	IF (@USER_LEVEL >= 16)
	BEGIN
		IF (NOT EXISTS(SELECT * FROM dbo.TBL_obt_event_log WITH (NOLOCK) WHERE accountIDX=@accountIDX AND eventType=@EVENT_TYPE))
		BEGIN

			BEGIN TRAN

			UPDATE dbo.userMoneyDB
			   SET bonusCash = bonusCash + 21000
			 WHERE accountIDX = @accountIDX

			INSERT INTO dbo.TBL_obt_event_log (accountIDX, eventType, regDate)
			VALUES (@accountIDX, @EVENT_TYPE, GETDATE())

			IF (@@ROWCOUNT=0) or (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN
				RETURN;
			END

			COMMIT TRAN;

		END
	END
	-- OBT EVENT -------------------------------------------------------------------------
GO


-- ----------------------------
-- Procedure structure for game_game_renpoint_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_game_renpoint_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_game_renpoint_save]
GO

CREATE PROCEDURE [dbo].[game_game_renpoint_save]
(
	@accountIDX int
,	@rencpoint int
,	@renspoint int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGameDB
   SET rencpoint = @rencpoint,
	   renspoint = @renspoint
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for web_notice_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_notice_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_notice_get]
GO

CREATE PROCEDURE [dbo].[web_notice_get]
(
	@id INT = NULL,
	@all bit = 0
)
As
	SELECT
		n.Id,
		TypeId,
		Subject,
		Content,
		ContentPlain,
		NoticeUser,
		NoticeDate,
		Status,
		t.ColorId,
		t.Name,
		LastUpdate
	FROM WebNotice n WITH (NOLOCK)
	INNER JOIN WebNoticeType t WITH (NOLOCK)
	ON n.TypeId = t.Id
	WHERE 
	(@all = 1 OR Status = 0)
	AND (@id IS NULL OR @id = n.Id)
	ORDER BY NoticeDate DESC
GO


-- ----------------------------
-- Procedure structure for USP_LTS_MEMBER_SHUTDOWNTIME
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_LTS_MEMBER_SHUTDOWNTIME]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_LTS_MEMBER_SHUTDOWNTIME]
GO

CREATE PROCEDURE [dbo].[USP_LTS_MEMBER_SHUTDOWNTIME]      
	@userID				varchar(20)				-- userMemberDB.userID  
	, @GmtCodeNo		int = 201125			-- Game Service Code (201125 : 로스트사가)
	, @dtLoginTime		datetime				-- CONNECT TIME  
as       
begin       
    SET NOCOUNT ON       
    --SET DATEFIRST 1  

    DECLARE @WDAY INT       
    DECLARE @WTIME INT       
    DECLARE @COMP_WDAY INT       
    DECLARE @COMP_WTIME INT       
    DECLARE @CONN_ALLOW TINYINT  -- 0:DON'T ALLOW 1: ALLOW      

	-- ASP와 DB와의 WEEKDAY 계산이 틀려 입력 파라미터 값에 -1Day를 해 준다.(리턴시에는 +1Day을 해 준다.)
	Set @dtLoginTime = DATEADD(Day, -1, @dtLoginTime)


    SET @WDAY = DATEPART(WEEKDAY, @dtLoginTime)      
    SET @WTIME = DATEPART(HOUR, @dtLoginTime)      
    SET @CONN_ALLOW = 0      
  
    if (@WTIME = 0)  
		begin  
			-- 0시인 경우 전일 24시로 처리
			set @COMP_WDAY = datepart(dw, dateadd(day, -1, @dtLoginTime))
			set @COMP_WTIME = 24  
			set @dtLoginTime = dateadd(day, -1, @dtLoginTime)          
		end  
    else 
		begin
			set @COMP_WDAY = @WDAY
			set @COMP_WTIME = @WTIME  
		end  
  
	-- check about all service  
	-- 선택적 셧다운 대상자 확인
	IF Exists (Select Top 1 CHILD_ID From TB_LTS_WEEKTIME_PARENT_CHILD_INFO with (noLock)
				Where CHILD_ID = @userID And (Agree_Type = 'Y' OR Agree_Type = 'S')
	)
		Begin
			SET @CONN_ALLOW = 1  

			if (exists (      
				SELECT       
				wday      
				, wtime       
				FROM TB_LTS_WEEKTIME       
				WHERE UserId = @Userid      
				and gmtcodeno =  201100  
				and wday = @COMP_WDAY  
				and wtime = @COMP_WTIME )      
			)      
			set @GmtCodeNo = 201100  
		  
			if (exists (      
				SELECT       
				wday      
				, wtime       
				FROM TB_LTS_WEEKTIME       
				WHERE UserId = @Userid      
				and GmtCodeNo = @GmtCodeNo   
				and wday = @COMP_WDAY  
				and wtime = @COMP_WTIME )      
			)      
				begin      

					DECLARE @ROWCNT TINYINT     
			  
					select @ROWCNT = count(*)      
					FROM TB_LTS_WEEKTIME       
					WHERE UserId = @Userid      
					and GmtCodeNo = @GmtCodeNo     
			  
					IF (@ROWCNT < 168)   -- allow a certain time 
						BEGIN 
							select top 1 CONN_ALLOW = @CONN_ALLOW
							, shutdowntime = dateadd(day, 1, dateadd(
												 hour
												,t1.wtime 
												,dateadd(day, t1.kick_day-@COMP_WDAY, convert(char(10), @dtlogintime,120))
											 ))            
							from (      
								select *      
								, sflag=case when wday = @COMP_WDAY and wtime = @COMP_WTIME  then 1 else 0 end      
								, kick_day = case       
											  when wday = @COMP_WDAY and wtime >= @COMP_WTIME then wday		-- 로그인 보다 같은 날짜이나 뒤시간이면 해당일
											  when wday > @COMP_WDAY then wday							-- 로그인 보다 날짜가 크면 해당일
											  else cast(wday as int)+7								-- 로그인 보다 요일이 앞서거나 같은 요일이나 시간이 적으면 뒤로 보냄
											  end 
								, com_nwday = case       
								when wday = @COMP_WDAY and wtime >= @COMP_WTIME then wday       
								when wday > @COMP_WDAY then wday       
								else wday+7 
								end 
								* 100+wtime      
								from TB_WEEKTIME      
							) t1       
							where com_nwday > (@WDAY*100+@WTIME)       
							and  not exists (      
								select *       
								from TB_LTS_WEEKTIME t2      
								WHERE t2.UserId = @UserId      
								and t2.GmtCodeNo = @GmtCodeNo      
								and t1.wday = t2.wday      
								and t1.wtime = t2.wtime      
							)      
							order by com_nwday      
						END    
					ELSE
						Begin
							-- 셧다운 대상자이고 모든 시간이 체크된 경우
							Select CONN_ALLOW = @CONN_ALLOW, shutdowntime = cast('2030-01-01' as datetime)
						End
				End      
			Else        
				Begin
					-- 셧다운 대상자 이나 접속 가능 시간이 아닌 경우
					Select CONN_ALLOW = @CONN_ALLOW, shutdowntime = cast('1979-01-01' as datetime)
				End
		End
	Else
		Begin
			-- 선택적 셧다운 대장자가 아닌 경우
			Select CONN_ALLOW = 0, shutdowntime = NULL
		End
End
GO


-- ----------------------------
-- Procedure structure for game_league_team_member_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_member_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_member_list]
GO

CREATE PROCEDURE [dbo].[game_league_team_member_list]
(
	@teamIDX int
)
AS

SET NOCOUNT ON

SELECT a.idx, a.accountIDX, b.nickName, c.userLevel, c.renspoint,
	   CASE WHEN d.guildJoinType=1 THEN d.guildIDX
	   ELSE 0
	   END AS guildIDX
  FROM dbo.userLeagueTeamMemberDB a WITH(NOLOCK)
  JOIN dbo.userMemberDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
  JOIN dbo.userGameDB c WITH(NOLOCK)
    ON a.accountIDX = c.accountIDX
  LEFT JOIN dbo.userGuildInfoDB d WITH(NOLOCK)
    ON a.accountIDX = d.accountIDX
 WHERE a.teamIDX=@teamIDX
   AND a.joinType=1
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for game_character_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_character_get_self_index]
(
	@accountIDX int
,	@getCount int
)
As

SET NOCOUNT ON

SELECT TOP (@getCount) idx
  FROM dbo.userCharacterDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_guildHQ_ver_set_status
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guildHQ_ver_set_status]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guildHQ_ver_set_status]
GO

CREATE PROCEDURE [dbo].[game_guildHQ_ver_set_status]  
  
 @GUILD_IDX  INT  
  
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
  
 DECLARE @UPDATE_DATE DATETIME = GETDATE()  
  
 BEGIN TRAN  
  
  -- 누적 테이블에 Insert or Update    
  ;MERGE dbo.userGuildHQVerDB as TARGET  
  USING (SELECT @GUILD_IDX) AS SOURCE (GuildIDX)  
  ON (TARGET.GuildIDX=SOURCE.GuildIDX)  
  WHEN MATCHED THEN  
   UPDATE SET TARGET.VerStatus+=1, TARGET.UptDate=@UPDATE_DATE  
  WHEN NOT MATCHED THEN  
   INSERT (GuildIDX, VerStatus) VALUES (SOURCE.GuildIDX, 1);  
  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END   
  
 COMMIT TRAN    
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for AGENT_RANKING_LADDER_SEASON
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AGENT_RANKING_LADDER_SEASON]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[AGENT_RANKING_LADDER_SEASON]
GO

CREATE PROCEDURE [dbo].[AGENT_RANKING_LADDER_SEASON]

AS

SET NOCOUNT ON

UPDATE dbo.userRankingDB_hero
   SET season6 = season5
,	   season5 = season4
,	   season4 = season3
,	   season3 = season2
,	   season2 = season1
,	   season1 = daily
GO


-- ----------------------------
-- Procedure structure for game_member_total_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_total_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_total_count]
GO

CREATE PROCEDURE [dbo].[game_member_total_count]

AS

SET NOCOUNT ON

SELECT COUNT(*)
  FROM dbo.userMemberDB WITH(NOLOCK)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_SET_RESTRICTION
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_SET_RESTRICTION]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_SET_RESTRICTION]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_SET_RESTRICTION]

	@ACCOUNT_IDX	INT,
	@LIMIT_TYPE		TINYINT,
	@LIMIT_DATE		DATETIME,
	@NOTE			NVARCHAR(500),
	@USER_IP		VARCHAR(15),
	@TABLE_IDX		INT				OUTPUT

AS

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @nReturn			INT
	DECLARE @nDiff				INT

	SET @nReturn = 0		-- true
	SET @nDiff = DATEDIFF(hh, GETDATE(), @LIMIT_DATE)

	IF (NOT EXISTS(SELECT * FROM dbo.userMemberDB WITH (NOLOCK) WHERE accountIDX = @ACCOUNT_IDX))
	BEGIN
		RETURN 1001;
	END

	BEGIN TRAN

		IF (@nDiff > 0)
		BEGIN
			UPDATE dbo.userMemberDB
			   SET limitType = @LIMIT_TYPE,
				   limitDate = @LIMIT_DATE
			 WHERE accountIDX = @ACCOUNT_IDX
		END
		ELSE
		BEGIN
			UPDATE dbo.userMemberDB
			   SET limitDate = GETDATE() - 1
			 WHERE accountIDX = @ACCOUNT_IDX
		END

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN;
			RETURN 1002;
		END 

		INSERT INTO LosaGame_log.dbo.log_user_block (
			accountIDX, limitType, limitDate, reason, userIP, regDate
		)
		VALUES (
			@ACCOUNT_IDX, @LIMIT_TYPE, @LIMIT_DATE, @NOTE, @USER_IP, GETDATE()
		)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN;
			RETURN 1002;
		END 

		SET @TABLE_IDX = SCOPE_IDENTITY()

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_league_history_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_history_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_history_list]
GO

CREATE PROCEDURE [dbo].[game_league_history_list]
(
	@topN int
,	@idx int
)
AS

SET NOCOUNT ON

SELECT TOP (@topN) idx, leagueTitle, startDate, teamName, factionType, factionName
  FROM dbo.userLeagueWinnerHistoryDB WITH(NOLOCK)
 WHERE idx > @idx
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_guildHQ_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guildHQ_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guildHQ_set_add]
GO

CREATE PROCEDURE [dbo].[game_guildHQ_set_add]  
  
 @GUILD_IDX  INT,  
 @ITEM_CODE  INT  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
  
 BEGIN TRAN  
  -- 길드 본부 꾸미기 아이템 추가  
  INSERT dbo.userGuildHQDB WITH (XLOCK, ROWLOCK) (GuildIDX, ItemCode) VALUES (@GUILD_IDX, @ITEM_CODE)  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END  
    
  --  변경된 데이터에 대한 Version관리  
  EXEC @nReturn = dbo.game_guildHQ_ver_set_status @GUILD_IDX  
  IF @nReturn<>0  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END    
  
 COMMIT TRAN  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_server_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_server_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_server_get_list]
GO

CREATE PROCEDURE [dbo].[game_server_get_list]

AS

SET NOCOUNT ON

SELECT idx, serverIP, serverPort
  FROM dbo.define_game_server WITH(NOLOCK)
 ORDER BY regDate ASC
GO


-- ----------------------------
-- Procedure structure for game_get_nickname
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_get_nickname]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_get_nickname]
GO

CREATE PROCEDURE [dbo].[game_get_nickname]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT nickName
  FROM dbo.userMemberDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_factiontype_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_factiontype_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_factiontype_save]
GO

CREATE PROCEDURE [dbo].[game_factiontype_save]
(
	@accountIDX int
,	@factionType int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGameDB
   SET regionType=@factionType
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_character_regdate_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_regdate_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_regdate_save]
GO

CREATE PROCEDURE [dbo].[game_character_regdate_save]
(
	@idx int
)
AS

SET NOCOUNT ON

UPDATE dbo.userCharacterDB
   SET regDate=GETDATE()
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for web_class_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_class_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_class_get]
GO

CREATE PROCEDURE [dbo].[web_class_get]
(
	@id INT = NULL
)
As
	SELECT
		idx AS HeroId,
		classEngName AS HeroName,
		premiumType AS Premium,
		rareType AS Rare,
		attackType AS Attack,
		powerupType As PowerUp,
		CASE WHEN @id IS NULL THEN '' ELSE description END AS Description
	FROM define_class c WITH (NOLOCK)
	WHERE idx = @id OR @id IS NULL
	AND display = 1;
GO


-- ----------------------------
-- Procedure structure for USP_SEND_Migration_Fail_User
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_SEND_Migration_Fail_User]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_SEND_Migration_Fail_User]
GO

CREATE PROCEDURE [dbo].[USP_SEND_Migration_Fail_User]  
(  
 @accountIDX int  
,  @presentType int  
, @value1 int  
, @value2 int  
  
)  
AS  
  
SET NOCOUNT ON  
  
IF (@presentType = 5)  
SET @value2 = @value2 * 10000  
  
IF (@presentType = 1)  
SET @value2 = 0

IF (@presentType = 5)  
SET @value2 = 0

  
INSERT INTO dbo.userPresentDB ( sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate )  
 SELECT 1, @accountIDX, @presentType, @value1 ,@value2, 0, 0, 3, 1,getdate()+28, getdate()
GO


-- ----------------------------
-- Procedure structure for game_personalHQ_set_default_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_personalHQ_set_default_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_personalHQ_set_default_add]
GO

CREATE PROCEDURE [dbo].[game_personalHQ_set_default_add]  
   
 @ACCCOUNT_IDX INT,   
 @ITEM_CODE  INT,  
 @ITEM_XZ  INT,  
 @ITEM_Y   INT,  
 @ITEM_ROTATE TINYINT   
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
   
 BEGIN TRAN  
  -- 길드 본부 꾸미기 아이템 추가  
  INSERT dbo.userPersonalHQDB WITH (XLOCK, ROWLOCK) (AccountIDX, ItemCode, ItemXZ, ItemY, ItemRotate, ItemStatus) VALUES (@ACCCOUNT_IDX, @ITEM_CODE, @ITEM_XZ, @ITEM_Y, @ITEM_ROTATE, 1)  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END  
 COMMIT TRAN  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_info_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_info_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_info_save]
GO

CREATE PROCEDURE [dbo].[game_league_info_save]
(
	@idx int
,	@announce nvarchar(512)
,	@recruitDate int
,	@waitDate int
)
AS

SET NOCOUNT ON

UPDATE dbo.userLeagueInfoDB
   SET announce = @announce
,	   recruitDate = @recruitDate
,	   waitDate = @waitDate
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_league_team_point_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_point_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_point_save]
GO

CREATE PROCEDURE [dbo].[game_league_team_point_save]
(
	@idx int
,	@factionPoint int
,	@currentRound tinyint
,	@leaguePosition smallint
,	@leagueStartPosition smallint
)
AS

SET NOCOUNT ON

UPDATE dbo.userLeagueTeamDB
   SET leaguePosition = @leaguePosition,
	   currentRound = @currentRound,
	   factionPoint = @factionPoint,
	   leagueStartPosition = @leagueStartPosition
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_GAMEINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_GAMEINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_GAMEINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_GAMEINFO]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT userState, userLevel, userEXP, gameMoney,
	   userFishingLevel, userFishingEXP, userExcavationLevel, userExcavationEXP, userHerocEXP, userHerosEXP,
	   rencpoint, renspoint, regionType, connDate
  FROM dbo.userGameDB WITH (NOLOCK)
 WHERE accountIDX = @ACCOUNT_IDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_SET_RELIC_LEVEL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_SET_RELIC_LEVEL]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_SET_RELIC_LEVEL]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_SET_RELIC_LEVEL]

	@ACCOUNT_IDX		INT,
	@USER_LEVEL			INT,
	@USER_EXP			INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (NOT EXISTS(SELECT * FROM dbo.userGameDB WITH (NOLOCK) WHERE accountIDX = @ACCOUNT_IDX))
BEGIN
	RETURN 1001;
END

BEGIN TRAN

	UPDATE dbo.userGameDB WITH (ROWLOCK, XLOCK)
	   SET userExcavationLevel = @USER_LEVEL,
	       userExcavationEXP = @USER_EXP
	 WHERE accountIDX = @ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_league_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_list]
GO

CREATE PROCEDURE [dbo].[game_league_list]
(
	@topN int
,	@idx int
)
AS

SET NOCOUNT ON

SELECT TOP (@topN) idx, accountIDX, startDate, endDate, leagueType, leagueState
  FROM dbo.userLeagueListDB WITH(NOLOCK)
 WHERE idx < @idx
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_event_PirateRoulette_present_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_PirateRoulette_present_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_PirateRoulette_present_get]
GO

CREATE PROCEDURE [dbo].[game_event_PirateRoulette_present_get]  
(  
 @accountIDX int  
)  
AS  
  
SET NOCOUNT ON  
  
IF ( EXISTS(SELECT * FROM dbo.userEventPirateRoulette_Present WITH( NOLOCK ) WHERE accountIDX = @accountIDX) )  
BEGIN  
 SELECT reward1, reward2, reward3, reward4, reward5,  
     reward6, reward7, reward8, reward9, reward10  
--     reward11, reward12, reward13, reward14, reward15  
   FROM dbo.userEventPirateRoulette_Present WITH( NOLOCK )  
  WHERE accountIDX = @accountIDX  
END  
ELSE  
BEGIN  
 SELECT 0 AS reward1, 0 AS reward2, 0 AS reward3, 0 AS reward4, 0 AS reward5,  
     0 AS reward6, 0 AS reward7, 0 AS reward8, 0 AS reward9, 0 AS reward10  
--     0 AS reward11, 0 AS reward12, 0 AS reward13, 0 AS reward14, 0 AS reward15    
END
GO


-- ----------------------------
-- Procedure structure for game_fame_give_point
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_fame_give_point]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_fame_give_point]
GO

CREATE PROCEDURE [dbo].[game_fame_give_point]
(
	@playType int
,	@modeType int
,	@sub1Type int
,	@sub2Type int
,	@reportIDX int
,	@reportNick varchar(20)
,	@reportpubIP varchar(15)
,	@reportpriIP varchar(15)
,	@receiveNick varchar(20)
,	@receivepubIP varchar(15)
,	@roomInfo varchar(3000)
,	@chatInfo varchar(2000)
,	@note varchar(200)
)
AS

SET NOCOUNT ON

DECLARE @receiveIDX int
SET @receiveIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@receiveNick
)

INSERT INTO LosaGame_log.DBO.log_mannerpoint (
	playType, modeType, sub1Type, sub2Type, reportIDX, reportNick, reportpubIP, reportpriIP, receiveIDX, receiveNick, receivepubIP, roomInfo, chatInfo, note, regDate
)
VALUES (
	@playType, @modeType, @sub1Type, @sub2Type, @reportIDX, @reportNick, @reportpubIP, @reportpriIP, @receiveIDX, @receiveNick, @receivepubIP, @roomInfo, @chatInfo, @note, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_FRIEND_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_FRIEND_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_FRIEND_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_FRIEND_LIST]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT ME.userID, ME.nickName, GA.userLevel, GU.guildName, GI.guildPosition, GI.guildJoinType, FR.regDate, FR.friendAccIDX
  FROM dbo.userFriendDB FR WITH (NOLOCK)
  JOIN dbo.userMemberDB ME WITH (NOLOCK)
	ON FR.friendAccIDX = ME.accountIDX
  JOIN dbo.userGameDB GA WITH (NOLOCK)
	ON FR.friendAccIDX = GA.accountIDX
  LEFT JOIN dbo.userGuildInfoDB GI WITH (NOLOCK)
    ON FR.friendAccIDX = GI.accountIDX
  LEFT JOIN dbo.userGuildDB GU WITH (NOLOCK)
    ON GI.guildIDX = GU.idx
 WHERE FR.userAccIDX = @ACCOUNT_IDX
   AND FR.flag=1
GO


-- ----------------------------
-- Procedure structure for game_present_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_present_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_present_count]
GO

CREATE PROCEDURE [dbo].[game_present_count]
(
	@nickName varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @accountIDX int
DECLARE @userID varchar(20)
DECLARE @cnt int

SET @accountIDX = (
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@nickName
)
SET @userID = (
	SELECT userID
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@nickName
)
SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userPresentDB WITH(NOLOCK)
	 WHERE receiveIDX=@accountIDX
	   AND flag NOT IN (2)
)

IF (@accountIDX IS NULL)
BEGIN
	SELECT accountIDX, accountIDX AS 'cnt', userID
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@nickName
END
ELSE
BEGIN
	SELECT @accountIDX AS 'accountIDX', @cnt AS 'cnt', @userID AS 'userID'
END
GO


-- ----------------------------
-- Procedure structure for game_personalHQ_set_fit
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_personalHQ_set_fit]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_personalHQ_set_fit]
GO

CREATE PROCEDURE [dbo].[game_personalHQ_set_fit]   
   
 @ACCOUNT_IDX INT,  
 @ITEM_SERIAL BIGINT,   
 @ITEM_CODE  INT,  
 @ITEM_XZ  INT,  
 @ITEM_Y   INT,  
 @ITEM_ROTATE TINYINT,  
 @ITEM_STATUS TINYINT  -- 1:설치, 2: 변경  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
   
   
 -- 최초 설치시 즉, 인벤(ItemStus=0)에서 userGuildHQDB로 넘어와서 설치 될때 서버가 ItemSerial 정보를 모르기 때문에 제일 먼저 인벤에  
 -- 들어온 아이템 부터 설치 하도록 ItemSerial을 서버에 전달  
 IF (@ITEM_SERIAL=0 and @ITEM_STATUS=1)  
 BEGIN   
  SET @ITEM_SERIAL= (SELECT MIN(ItemSerial) FROM dbo.userPersonalHQDB WHERE AccountIDX=@ACCOUNT_IDX and ItemCode=@ITEM_CODE and ItemStatus=0)  
  SELECT @ITEM_SERIAL  
 END  
   
 BEGIN TRAN  
    
  -- @ITEM_STATUS 는 0: 미설치, 1:설치됨, 2:삭제 만 사용되지만, 현재 설치된 아이템의 위치 변경을 위해   
  -- 현재 프로시저에서 2번 코드를 받지만 실제는 1로 강제 초기화 하여 설치로 상태 정보를 유지한다.  
  SET @ITEM_STATUS=1  
  
  UPDATE dbo.userPersonalHQDB WITH (XLOCK, ROWLOCK) SET ItemXZ=@ITEM_XZ, ItemY=@ITEM_Y, ItemRotate=@ITEM_ROTATE, ItemStatus=@ITEM_STATUS   
  WHERE ItemSerial=@ITEM_SERIAL  
  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   SELECT -1;  
   ROLLBACK TRAN  
   RETURN;  
  END  
  
 COMMIT TRAN  
  
 -- 설치로그  
 -- EXEC LINKED_CONNECTION_BAK.LosaLogDataC.dbo.log_guildHQ_fit_set_insert @GUILD_IDX, @ACCOUNT_IDX, @ITEM_SERIAL, @ITEM_CODE, 1  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_character_rentaltime_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_rentaltime_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_rentaltime_save]
GO

CREATE PROCEDURE [dbo].[game_character_rentaltime_save]
(
	@idx int
,	@rentalTime int
)
AS

SET NOCOUNT ON

UPDATE dbo.userCharacterDB
   SET rentalTime=@rentalTime
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for event_item_limited_set_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[event_item_limited_set_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[event_item_limited_set_init]
GO

CREATE PROCEDURE [dbo].[event_item_limited_set_init]

	@EVENT_TYPE			TINYINT

AS
SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000
	
	IF EXISTS (SELECT * FROM dbo.event_item_limited WHERE AccountIDX>0 and EventType=@EVENT_TYPE)
	BEGIN
		BEGIN TRAN

			DELETE dbo.event_item_limited WHERE AccountIDX>0 and EventType=@EVENT_TYPE
			IF (@@ERROR<>0)
			BEGIN
				ROLLBACK TRAN
				SELECT -1
				RETURN;
			END

		COMMIT TRAN
	END

	SELECT 0
	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_title_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_title_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_title_get_data]
GO

CREATE PROCEDURE [dbo].[game_title_get_data]  
  
 @ACCOUNT_IDX  INT   
  
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
  
 BEGIN  
  
  SELECT TitleCode, TitleValue, TitleLevel, TitlePremium, TitleEquip, TitleStatus FROM dbo.userTitleDB WITH (READUNCOMMITTED)  
  WHERE AccountIDX=@ACCOUNT_IDX  
    
  IF (@@ERROR<>0)  
  BEGIN     
   RETURN;  
  END   
  
 END  
   
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_team_position_update
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_position_update]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_position_update]
GO

CREATE PROCEDURE [dbo].[game_league_team_position_update]
(
	@teamIndex int
,	@position int
)
AS

SET NOCOUNT ON

UPDATE dbo.userLeagueTeamDB 
   SET leaguePosition = @position
 WHERE idx = @teamIndex
GO


-- ----------------------------
-- Procedure structure for game_league_list_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_list_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_list_add]
GO

CREATE PROCEDURE [dbo].[game_league_list_add]
(
	@accountIDX int
,	@startDate int
,	@endDate int
,	@leagueType tinyint
,	@leagueState tinyint
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userLeagueListDB (
	accountIDX, startDate, endDate, leagueType, leagueState, regDate
)
VALUES (
	@accountIDX, @startDate, @endDate, @leagueType, @leagueState, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for game_guild_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_delete]
GO

CREATE PROCEDURE [dbo].[game_guild_delete]
(
	@guildIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userGuildDB
 WHERE idx=@guildIDX

DELETE FROM dbo.userGuildInfoDB
 WHERE guildIDX=@guildIDX
GO


-- ----------------------------
-- Procedure structure for game_member_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_add]
GO

CREATE PROCEDURE [dbo].[game_member_add]  
(  
 @userID varchar(20)  
, @nickName varchar(20)  
)  
AS  
  
SET NOCOUNT ON  
SET XACT_ABORT ON  
  
BEGIN TRAN  
  
 DECLARE @accountIDX int  
  
 INSERT INTO dbo.userMemberDB (userID, nickName, userPWD, EMail, mailling, userType, joinType, limitType, limitDate, regDate)  
 VALUES (@userID, @nickName, '', '', 0, 100, 10, 0, '1999-01-01', GETDATE())  
  
 --SCOPE_IDENTITY()  
 SET @accountIDX = (  
  SELECT accountIDX  
    FROM dbo.userMemberDB WITH(NOLOCK)  
   WHERE userID=@userID  
 )  
  
 INSERT INTO dbo.userGameDB (  
  accountIDX, userState, gameMoney, playTime, conn_count, userLevel, userEXP, rencpoint, renspoint, relateLevel, regionType, refillData, connDate, regDate  
 )  
 VALUES (  
  @accountIDX, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2000-01-01', GETDATE()  
 )  
  
 INSERT INTO userRecordBattleDB (  
  accountIDX, type1_win, type1_lose, type1_kill, type1_death, type2_win, type2_lose, type2_kill, type2_death, regDate  
 )  
 VALUES (  
  @accountIDX, 0, 0, 0, 0, 0, 0, 0, 0, GETDATE()  
 )  
  
 INSERT INTO dbo.userLoginDB (accountIDX, encodeKey, gameServerID, connDate)  
 VALUES (@accountIDX, '111111111111111', 0, GETDATE())  
  
 INSERT INTO dbo.userMoneyDB (accountIDX, realCash, bonusCash, regDate )    
 VALUES (@accountIDX, 0, 0, GETDATE())   
  
 IF (@@ERROR = 0)  
  COMMIT TRAN  
 ELSE  
  ROLLBACK TRAN
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_SET_PESO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_SET_PESO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_SET_PESO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_SET_PESO]

	@ACCOUNT_IDX		INT,
	@USER_PESO			INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (NOT EXISTS(SELECT * FROM dbo.userGameDB WITH (NOLOCK) WHERE accountIDX = @ACCOUNT_IDX))
BEGIN
	RETURN 1001;
END

BEGIN TRAN

	UPDATE dbo.userGameDB WITH (ROWLOCK, XLOCK)
	   SET gameMoney = @USER_PESO
	 WHERE accountIDX = @ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_DECOINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_DECOINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_DECOINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_DECOINFO]

	@ACCOUNTIDX  INT    

AS     

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, accountIDX,
       item1_type, item1_code, item2_type, item2_code, item3_type, item3_code, item4_type, item4_code, item5_type, item5_code,
	   item6_type, item6_code, item7_type, item7_code, item8_type, item8_code, item9_type, item9_code, item10_type, item10_code,
	   item11_type, item11_code, item12_type, item12_code, item13_type, item13_code, item14_type, item14_code, item15_type, item15_code,
	   item16_type, item16_code, item17_type, item17_code, item18_type, item18_code, item19_type, item19_code, item20_type, item20_code
  FROM dbo.userItemDB WITH (NOLOCK)
 WHERE accountIDX = @ACCOUNTIDX
GO


-- ----------------------------
-- Procedure structure for game_game_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_game_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_game_save]
GO

CREATE PROCEDURE [dbo].[game_game_save]
(
	@accountIDX int
,	@userState int
,	@gameMoney bigint
,	@conn_count int
,	@connDate datetime
,	@userLevel int
,	@userEXP int
,	@playTime int
,	@regionType int
,	@userFishingLevel int
,	@userFishingEXP int
,	@refillData int
,	@userExcavationLevel int
,	@userExcavationEXP int
,	@init_time int
)
As

SET NOCOUNT ON

IF @userLevel < 50
BEGIN
	UPDATE dbo.userGameDB
	   SET gameMoney = @gameMoney
	,	userState = @userState
	,	playTime = playTime + Round((@playTime/1000)/60,0)
	,	conn_count = @conn_count
	,	userLevel = @userLevel
	,	userEXP = @userEXP
	,	userFishingLevel = @userFishingLevel
	,	userFishingEXP = @userFishingEXP
	,	regionType = @regionType
	,	connDate = @connDate
	,	refillData = @refillData
	,	userExcavationLevel = @userExcavationLevel
	,	userExcavationEXP = @userExcavationEXP 
	 WHERE accountIDX = @accountIDX

END
ELSE
BEGIN
	--
	IF( EXISTS( SELECT * FROM dbo.userRelativeLevelDB WITH( NOLOCK )
				 WHERE accountIDX = @accountIDX ) )
	BEGIN
		
		UPDATE dbo.userGameDB
		   SET gameMoney = @gameMoney
		,	userState = @userState
		,	playTime = playTime + Round((@playTime/1000)/60,0)
		,	conn_count = @conn_count
		--,	userLevel = @userLevel
		,	userEXP = @userEXP
		,	userFishingLevel = @userFishingLevel
		,	userFishingEXP = @userFishingEXP
		,	regionType = @regionType
		,	connDate = @connDate
		,	refillData = @refillData
		,	userExcavationLevel = @userExcavationLevel
		,	userExcavationEXP = @userExcavationEXP 
		 WHERE accountIDX = @accountIDX

		UPDATE dbo.userRelativeLevelDB
		   SET init_time = @init_time
		 WHERE accountIDX = @accountIDX

	END
	ELSE
	BEGIN
		UPDATE dbo.userGameDB
		   SET gameMoney = @gameMoney
		,	userState = @userState
		,	playTime = playTime + Round((@playTime/1000)/60,0)
		,	conn_count = @conn_count
		,	userLevel = @userLevel
		,	userEXP = @userEXP
		,	userFishingLevel = @userFishingLevel
		,	userFishingEXP = @userFishingEXP
		,	regionType = @regionType
		,	connDate = @connDate
		,	refillData = @refillData
		,	userExcavationLevel = @userExcavationLevel
		,	userExcavationEXP = @userExcavationEXP 
		 WHERE accountIDX = @accountIDX
	END
END
GO


-- ----------------------------
-- Procedure structure for game_fish_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_fish_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_fish_add]
GO

CREATE PROCEDURE [dbo].[game_fish_add]
(
	@accountIDX int
,	@fish1_type tinyint
,	@fish1_an int
,	@fish2_type tinyint
,	@fish2_an int
,	@fish3_type tinyint
,	@fish3_an int
,	@fish4_type tinyint
,	@fish4_an int
,	@fish5_type tinyint
,	@fish5_an int
,	@fish6_type tinyint
,	@fish6_an int
,	@fish7_type tinyint
,	@fish7_an int
,	@fish8_type tinyint
,	@fish8_an int
,	@fish9_type tinyint
,	@fish9_an int
,	@fish10_type tinyint
,	@fish10_an int
,	@fish11_type tinyint
,	@fish11_an int
,	@fish12_type tinyint
,	@fish12_an int
,	@fish13_type tinyint
,	@fish13_an int
,	@fish14_type tinyint
,	@fish14_an int
,	@fish15_type tinyint
,	@fish15_an int
,	@fish16_type tinyint
,	@fish16_an int
,	@fish17_type tinyint
,	@fish17_an int
,	@fish18_type tinyint
,	@fish18_an int
,	@fish19_type tinyint
,	@fish19_an int
,	@fish20_type tinyint
,	@fish20_an int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userFishDB (
	accountIDX, 
	fish1_type, fish1_an, fish2_type, fish2_an, fish3_type, fish3_an, fish4_type, fish4_an, fish5_type, fish5_an,
	fish6_type, fish6_an, fish7_type, fish7_an, fish8_type, fish8_an, fish9_type, fish9_an, fish10_type, fish10_an,
	fish11_type, fish11_an, fish12_type, fish12_an, fish13_type, fish13_an, fish14_type, fish14_an, fish15_type, fish15_an,
	fish16_type, fish16_an, fish17_type, fish17_an, fish18_type, fish18_an, fish19_type, fish19_an, fish20_type, fish20_an,
	regDate
)
VALUES (
	@accountIDX, 
	@fish1_type, @fish1_an, @fish2_type, @fish2_an, @fish3_type, @fish3_an, @fish4_type, @fish4_an, @fish5_type, @fish5_an,
	@fish6_type, @fish6_an, @fish7_type, @fish7_an, @fish8_type, @fish8_an, @fish9_type, @fish9_an, @fish10_type, @fish10_an,
	@fish11_type, @fish11_an, @fish12_type, @fish12_an, @fish13_type, @fish13_an, @fish14_type, @fish14_an, @fish15_type, @fish15_an,
	@fish16_type, @fish16_an, @fish17_type, @fish17_an, @fish18_type, @fish18_an, @fish19_type, @fish19_an, @fish20_type, @fish20_an,
	GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for game_character_sava
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_sava]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_sava]
GO

CREATE PROCEDURE [dbo].[game_character_sava]
(
	@idx				INT
,	@ClassType			INT
,	@CI_type			INT
,	@CI_gender			INT
,	@CI_beard			INT
,	@CI_face			INT
,	@CI_hair			INT
,	@CI_skinColor		INT
,	@CI_hairColor		INT
,	@CI_trinket			INT
,	@CI_underwear		INT
,	@EI1_type			INT
,	@EI2_type			INT
,	@EI3_type			INT
,	@EI4_type			INT
,	@CI_position		INT
,	@limitTime			INT
,	@limitType			INT
,	@leaderType			SMALLINT
,	@rentalType			SMALLINT
,	@rentalTime			INT
,	@awakeType			TINYINT
,	@awakeTime			INT
)
AS

SET NOCOUNT ON

UPDATE dbo.userCharacterDB
   SET ClassType = @ClassType,
       CI_type = @CI_type,
       CI_gender = @CI_gender,
       CI_beard = @CI_beard,
       CI_face = @CI_face,
       CI_hair = @CI_hair,
       CI_skinColor = @CI_skinColor,
       CI_hairColor = @CI_hairColor,
       CI_trinket = @CI_trinket,
       CI_position = @CI_position,
       CI_underwear = @CI_underwear,
       EI1_type = @EI1_type,
       EI2_type = @EI2_type,
       EI3_type = @EI3_type,
       EI4_type = @EI4_type,
       limitTime = @limitTime,
       limitType = @limitType,
       leaderType = @leaderType,
       rentalType = @rentalType,
       rentalTime = @rentalTime,
       awakeType = @awakeType,
       awakeTime =	@awakeTime
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_title_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_title_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_title_set_add]
GO

CREATE PROCEDURE [dbo].[game_title_set_add]  
  
 @ACCOUNT_IDX  INT,  
 @TITLE_CODE   INT,  
 @TITLE_VALUE  BIGINT,  
 @TITLE_LEVEL  INT,  
 @TITLE_PREMIUM  TINYINT,  
 @TITLE_EQUIP  TINYINT,  
 @TITLE_STATUS  TINYINT  
  
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
  
 DECLARE @GET_DATE  DATETIME  
 SET @GET_DATE=GETDATE();  
  
 BEGIN TRAN  
  
  -- Insert or Update    
  ;MERGE dbo.userTitleDB as TARGET  
  USING (SELECT @ACCOUNT_IDX, @TITLE_CODE) AS SOURCE (AccountIDX, TitleCode)  
  ON (TARGET.AccountIDX=SOURCE.AccountIDX and TARGET.TitleCode=SOURCE.TitleCode)  
  WHEN MATCHED THEN  
   UPDATE SET TARGET.TitleValue=@TITLE_VALUE, TARGET.TitleLevel=@TITLE_LEVEL, TARGET.TitlePremium=@TITLE_PREMIUM, TARGET.TitleEquip=@TITLE_EQUIP, TARGET.TitleStatus=@TITLE_STATUS, TARGET.UpdDate=@GET_DATE  
  WHEN NOT MATCHED THEN  
   INSERT (AccountIDX, TitleCode, TitleValue, TitleLevel, TitlePremium, TitleEquip, TitleStatus) VALUES (SOURCE.AccountIDX, SOURCE.TitleCode, @TITLE_VALUE, @TITLE_LEVEL, @TITLE_PREMIUM, @TITLE_EQUIP, @TITLE_STATUS);  
  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END   
  
 COMMIT TRAN    
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_pet_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_pet_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_pet_add]
GO

CREATE PROCEDURE [dbo].[game_pet_add]

	@ACCOUNT_IDX	INT,
	@PET_CODE		INT,
	@PET_RANK		TINYINT,
	@PET_LEVEL		INT

AS	

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	DECLARE @PET_IDX	INT	

	BEGIN TRAN
		
		INSERT dbo.userPetDB WITH (ROWLOCK, XLOCK) (accountIDX, petCode, petRank, petLevel) VALUES (@ACCOUNT_IDX, @PET_CODE, @PET_RANK, @PET_LEVEL)
		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN			
			ROLLBACK TRAN			
		END

		SET @PET_IDX = @@IDENTITY
	
	COMMIT TRAN
	
	SELECT @PET_IDX as PET_IDX, @PET_CODE as PET_CODE, @PET_RANK as PET_RANK, @PET_LEVEL as PET_LEVEL;
GO


-- ----------------------------
-- Procedure structure for game_region_compen_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_compen_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_compen_delete]
GO

CREATE PROCEDURE [dbo].[game_region_compen_delete]
(
	@idx int
,	@accountIDX int
,	@nickName varchar(20)
,	@peso int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userRegionDB_compen
 WHERE idx=@idx

INSERT INTO LosaLogData_v140826.DBO.log_data_peso (accountIDX, nickName, peso, logType, regDate)
VALUES (@accountIDX, @nickName, @peso, 9, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_personalHQ_set_status
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_personalHQ_set_status]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_personalHQ_set_status]
GO

CREATE PROCEDURE [dbo].[game_personalHQ_set_status]  
    
 @ACCOUNT_IDX INT,  
 @ITEM_SERIAL BIGINT,  
 @ITEM_CODE  INT,   
 @ITEM_STATUS TINYINT  -- 0:인벤(해제), 2: 삭제  
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
   
 BEGIN TRAN    
    
  UPDATE dbo.userPersonalHQDB WITH (XLOCK, ROWLOCK) SET ItemXZ=0, ItemY=0, ItemRotate=0, ItemStatus=@ITEM_STATUS   
  WHERE ItemSerial=@ITEM_SERIAL  
  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END  
  
 COMMIT TRAN  
  
  
 -- 설치로그  
 -- EXEC LINKED_CONNECTION_BAK.LosaLogDataC.dbo.log_guildHQ_fit_set_insert @GUILD_IDX, @ACCOUNT_IDX, @ITEM_SERIAL, @ITEM_CODE, 0  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_member_change_userNickname
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_change_userNickname]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_change_userNickname]
GO

CREATE PROCEDURE [dbo].[game_member_change_userNickname]
(
	@accountIDX int
,	@nickname varchar(20)
,	@chageNickname varchar(20)
,	@itemType int
,	@itemCode int
,	@itemRowIDX varchar(12)
,	@itemColIDX varchar(12)
,	@userIP varchar(15)
)
AS

SET NOCOUNT ON

DECLARE @cnt1 int, @cnt2 int, @cnt3 int
DECLARE @sql varchar(500), @note varchar(100)

SET @cnt1 = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE userID=@chageNickname
)
SET @cnt2 = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@chageNickname
)
SET @cnt3 = @cnt1 + @cnt2

If (@cnt3 = 0)
BEGIN
	SET @note = @nickname + ' -> ' + @chageNickname

	BEGIN TRAN

	UPDATE dbo.userMemberDB
	   SET nickName=@chageNickname
	 WHERE accountIDX=@accountIDX

	SET @sql = 'UPDATE dbo.userItemEtcDB SET item' + @itemColIDX + '_type=0, item' + @itemColIDX + '_value1=0, item' + @itemColIDX + '_value2=0 WHERE idx=' + @itemRowIDX
	EXECUTE (@sql)

	COMMIT TRAN

	INSERT INTO LosaLogData.DBO.Log_use_item (
		accountIDX, nickname, itemType, itemCode, rowIDX, colIDX, userIP, note, regDate
	)
	VALUES (
		@accountIDX, @nickname, @itemType, @itemCode, @itemRowIDX, @itemColIDX, @userIP, @note, GETDATE()
	)
END
GO


-- ----------------------------
-- Procedure structure for game_guild_reward_set_attend
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_reward_set_attend]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_reward_set_attend]
GO

CREATE PROCEDURE [dbo].[game_guild_reward_set_attend]  
  
 @ACCOUNT_IDX  INT  
  
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
  
 DECLARE @nReturn   INT  
  
 BEGIN TRAN  
     
  UPDATE dbo.userGuildInfoDB WITH (XLOCK, ROWLOCK) SET AttendDate=GETDATE()  
  WHERE AccountIDX=@ACCOUNT_IDX  
  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN  
  END  
  
 COMMIT TRAN  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_team_round_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_round_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_round_save]
GO

CREATE PROCEDURE [dbo].[game_league_team_round_save]
(
	@teamIDX int
,	@currentRound tinyint
)
AS

SET NOCOUNT ON

UPDATE dbo.userLeagueTeamDB
   SET currentRound = @currentRound
 WHERE idx=@teamIDX
GO


-- ----------------------------
-- Procedure structure for game_game_sexp_deduct_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_game_sexp_deduct_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_game_sexp_deduct_init]
GO

CREATE PROCEDURE [dbo].[game_game_sexp_deduct_init]

AS

SET NOCOUNT ON

UPDATE dbo.userGameDB
   SET userHerosEXP = 0
 WHERE userHerosEXP = -1
GO


-- ----------------------------
-- Procedure structure for game_guild_member_self_out
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_member_self_out]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_member_self_out]
GO

CREATE PROCEDURE [dbo].[game_guild_member_self_out]
(
	@accountIDX int
,	@guildIDX int
)
AS

SET NOCOUNT ON
SET XACT_ABORT ON

BEGIN TRAN

DELETE FROM dbo.userGuildInfoDB
 WHERE guildIDX=@guildIDX
   AND accountIDX=@accountIDX

UPDATE dbo.userGuildDB
   SET membercount = membercount-1
 WHERE idx=@guildIDX

COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_SET_NICKNAME
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_SET_NICKNAME]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_SET_NICKNAME]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_SET_NICKNAME]

	@ACCOUNT_IDX		INT,
	@NICK_NAME			NVARCHAR(20)

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (EXISTS(SELECT * FROM dbo.userMemberDB WITH (NOLOCK) WHERE userID = @NICK_NAME))
BEGIN
	RETURN 1001;
END

IF (EXISTS(SELECT * FROM dbo.userMemberDB WITH (NOLOCK) WHERE nickName = @NICK_NAME))
BEGIN
	RETURN 1002;
END

BEGIN TRAN

	UPDATE dbo.userMemberDB WITH (ROWLOCK, XLOCK)
	   SET nickName = @NICK_NAME
	 WHERE accountIDX = @ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1003;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for web_get_password_recovery
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_get_password_recovery]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_get_password_recovery]
GO

CREATE PROCEDURE [dbo].[web_get_password_recovery]
(
	@userID varchar(20),
	@email varchar(50)
)
As
	SELECT TOP 1
		w.Email,
		r.SendDate
	FROM WebLogin w
	LEFT JOIN WebRecovery r
	ON w.Username = r.Username AND w.Email = r.Email
	WHERE w.Username = @userID COLLATE Latin1_General_BIN AND w.Email = @email;
GO


-- ----------------------------
-- Procedure structure for web_myhome_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_myhome_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_myhome_get]
GO

CREATE PROCEDURE [dbo].[web_myhome_get]
(
	@homeIDX int
)
As
	WITH ranking (accountIDX, Guild, Name, Level, Exp, Rank, PlayTime, LastLogin, RegDate) as 
		(
			SELECT
				g.accountIDX,
				guild.guildName AS Guild,
				m.nickname AS Name ,
				g.userLevel AS Level,
				g.userEXP AS Exp,	
				RANK() OVER (ORDER BY g.userLevel DESC, g.userEXP DESC) AS Rank,
				g.playTime AS PlayTime,
				g.connDate AS LastLogin,
				m.regDate AS RegDate
			FROM usergamedb g WITH (NOLOCK) 
			INNER JOIN usermemberdb m WITH (NOLOCK) 
			ON g.accountIDX = m.accountIDX
			LEFT JOIN 
			(
				SELECT gd.guildName, gu.accountIDX
				FROM
				[userGuildInfoDB] gu WITH (NOLOCK) 
				INNER JOIN userGuildDB gd WITH (NOLOCK) 
				ON gd.idx = gu.guildIDX
			) guild
			ON guild.accountIDX = m.accountIDX
			WHERE userType = 100 
			and m.nickName not like '%#%'
			and m.nickName not like 'developer%'
		)
		SELECT TOP 1 * FROM ranking
		WHERE accountIDX = @homeIDX
	;
GO


-- ----------------------------
-- Procedure structure for game_region_get_compen
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_get_compen]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_get_compen]
GO

CREATE PROCEDURE [dbo].[game_region_get_compen]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx, rt1point, rt1point_bonus, rt1count, rt2point, rt2point_bonus, rt2count, regionType, renspoint, regionRanking
  FROM dbo.userRegionDB_compen WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_fish_get_data_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_fish_get_data_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_fish_get_data_list]
GO

CREATE PROCEDURE [dbo].[game_fish_get_data_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   fish1_type, fish1_an, fish2_type, fish2_an, fish3_type, fish3_an, fish4_type, fish4_an, fish5_type, fish5_an,
	   fish6_type, fish6_an, fish7_type, fish7_an, fish8_type, fish8_an, fish9_type, fish9_an, fish10_type, fish10_an,
	   fish11_type, fish11_an, fish12_type, fish12_an, fish13_type, fish13_an, fish14_type, fish14_an, fish15_type, fish15_an,
	   fish16_type, fish16_an, fish17_type, fish17_an, fish18_type, fish18_an, fish19_type, fish19_an, fish20_type, fish20_an 
  FROM dbo.userFishDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_league_list_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_list_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_list_save]
GO

CREATE PROCEDURE [dbo].[game_league_list_save]
(
	@idx int
,	@startDate int
,	@endDate int
,	@leagueType tinyint
,	@leagueState tinyint
)
AS

SET NOCOUNT ON

UPDATE dbo.userLeagueListDB
   SET startDate = @startDate,
	   endDate = @endDate,
	   leagueType = @leagueType,
	   leagueState = @leagueState
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_title_set_status
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_title_set_status]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_title_set_status]
GO

CREATE PROCEDURE [dbo].[game_title_set_status]  
  
 @ACCOUNT_IDX  INT  
  
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
  
 BEGIN TRAN  
  
  UPDATE dbo.userTitleDB WITH (XLOCK, ROWLOCK) SET TitleStatus=1  
  WHERE AccountIDX=@ACCOUNT_IDX and TitleStatus=2  
    
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END   
  
 COMMIT TRAN  
   
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_team_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_save]
GO

CREATE PROCEDURE [dbo].[game_league_team_save]
(
	@idx int
,	@leaderIDX int
,	@leaguePosition smallint
,	@currentRound tinyint
,	@factionPoint int
)
AS

SET NOCOUNT ON

UPDATE dbo.userLeagueTeamDB
   SET leaderIDX = @leaderIDX,
	   leaguePosition = @leaguePosition,
	   currentRound = @currentRound,
	   factionPoint = @factionPoint
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_CLASSINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_CLASSINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_CLASSINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_CLASSINFO]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, pos, classType, classLevel, classExpert, classStat
  FROM (
	SELECT idx, 1 AS pos, class1_type AS classType, class1_level AS classLevel, class1_expert AS classExpert, class1_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class1_type > 0

	UNION ALL

	SELECT idx, 2 AS pos, class2_type AS classType, class2_level AS classLevel, class2_expert AS classExpert, class2_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class2_type > 0

	UNION ALL

	SELECT idx, 3 AS pos, class3_type AS classType, class3_level AS classLevel, class3_expert AS classExpert, class3_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class3_type > 0

	UNION ALL

	SELECT idx, 4 AS pos, class4_type AS classType, class4_level AS classLevel, class4_expert AS classExpert, class4_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class4_type > 0

	UNION ALL

	SELECT idx, 5 AS pos, class5_type AS classType, class5_level AS classLevel, class5_expert AS classExpert, class5_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class5_type > 0

	UNION ALL

	SELECT idx, 6 AS pos, class6_type AS classType, class6_level AS classLevel, class6_expert AS classExpert, class6_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class6_type > 0

	UNION ALL

	SELECT idx, 7 AS pos, class7_type AS classType, class7_level AS classLevel, class7_expert AS classExpert, class7_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class7_type > 0

	UNION ALL

	SELECT idx, 8 AS pos, class8_type AS classType, class8_level AS classLevel, class8_expert AS classExpert, class8_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class8_type > 0

	UNION ALL

	SELECT idx, 9 AS pos, class9_type AS classType, class9_level AS classLevel, class9_expert AS classExpert, class9_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class9_type > 0

	UNION ALL

	SELECT idx, 10 AS pos, class10_type AS classType, class10_level AS classLevel, class10_expert AS classExpert, class10_stat AS classStat
	  FROM dbo.userClassDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class10_type > 0
  ) AS classEXP
GO


-- ----------------------------
-- Function structure for DEFINE_SERVER_CONNECTION_MAX_COUNT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DEFINE_SERVER_CONNECTION_MAX_COUNT]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[DEFINE_SERVER_CONNECTION_MAX_COUNT]
GO

CREATE FUNCTION [dbo].[DEFINE_SERVER_CONNECTION_MAX_COUNT]
(
)
RETURNS int
AS
	BEGIN

	DECLARE @maxcount int
	SET @maxcount = 2000

	RETURN @maxcount

	END
GO


-- ----------------------------
-- Procedure structure for game_member_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_member_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_member_count]
GO

CREATE PROCEDURE [dbo].[game_member_count]
(
	@userID varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @cnt int
SET @cnt = 0
SET @cnt = @cnt + (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE userID=@userID
)
SET @cnt = @cnt + (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@userID
)

SELECT @cnt 'count'
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_SET_LEVEL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_SET_LEVEL]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_SET_LEVEL]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_SET_LEVEL]

	@ACCOUNT_IDX		INT,
	@USER_LEVEL			INT,
	@USER_EXP			INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (NOT EXISTS(SELECT * FROM dbo.userGameDB WITH (NOLOCK) WHERE accountIDX = @ACCOUNT_IDX))
BEGIN
	RETURN 1001;
END

BEGIN TRAN

	UPDATE dbo.userGameDB WITH (ROWLOCK, XLOCK)
	   SET userLevel = @USER_LEVEL,
	       userEXP = @USER_EXP
	 WHERE accountIDX = @ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_class_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_class_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_class_add]
GO

CREATE PROCEDURE [dbo].[game_class_add]
(
	@accountIDX INT
,	@class1_type INT
,	@class1_level INT
,	@class1_expert INT
,	@class1_stat TINYINT
,	@class2_type INT
,	@class2_level INT
,	@class2_expert INT
,	@class2_stat TINYINT
,	@class3_type INT
,	@class3_level INT
,	@class3_expert INT
,	@class3_stat TINYINT
,	@class4_type INT
,	@class4_level INT
,	@class4_expert INT
,	@class4_stat TINYINT
,	@class5_type INT
,	@class5_level INT
,	@class5_expert INT
,	@class5_stat TINYINT
,	@class6_type INT
,	@class6_level INT
,	@class6_expert INT
,	@class6_stat TINYINT
,	@class7_type INT
,	@class7_level INT
,	@class7_expert INT
,	@class7_stat TINYINT
,	@class8_type INT
,	@class8_level INT
,	@class8_expert INT
,	@class8_stat TINYINT
,	@class9_type INT
,	@class9_level INT
,	@class9_expert INT
,	@class9_stat TINYINT
,	@class10_type INT
,	@class10_level INT
,	@class10_expert INT
,	@class10_stat TINYINT
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userClassDB (
	accountIDX,
	class1_type, class1_level, class1_expert, class1_stat, class2_type, class2_level, class2_expert, class2_stat,
 	class3_type, class3_level, class3_expert, class3_stat, class4_type, class4_level, class4_expert, class4_stat,
	class5_type, class5_level, class5_expert, class5_stat, class6_type, class6_level, class6_expert, class6_stat,
	class7_type, class7_level, class7_expert, class7_stat, class8_type, class8_level, class8_expert, class8_stat,
	class9_type, class9_level, class9_expert, class9_stat, class10_type, class10_level, class10_expert, class10_stat
)
VALUES (
	@accountIDX,
	@class1_type, @class1_level, @class1_expert, @class1_stat, @class2_type, @class2_level, @class2_expert, @class2_stat,
	@class3_type, @class3_level, @class3_expert, @class3_stat, @class4_type, @class4_level, @class4_expert, @class4_stat,
	@class5_type, @class5_level, @class5_expert, @class5_stat, @class6_type, @class6_level, @class6_expert, @class6_stat,
	@class7_type, @class7_level, @class7_expert, @class7_stat, @class8_type, @class8_level, @class8_expert, @class8_stat,
	@class9_type, @class9_level, @class9_expert, @class9_stat, @class10_type, @class10_level, @class10_expert, @class10_stat
)
GO


-- ----------------------------
-- Procedure structure for web_play_game_server_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_play_game_server_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_play_game_server_get_data]
GO

CREATE PROCEDURE [dbo].[web_play_game_server_get_data]

As
	DECLARE @maxcount int
	SET @maxcount = DBO.DEFINE_SERVER_CONNECTION_MAX_COUNT()

	SELECT TOP 1 serverID FROM define_game_server
	WHERE connNumber < @maxcount and [status]=1 ORDER BY NEWID()
GO


-- ----------------------------
-- Function structure for DEFINE_REGION_LIMIT_SE_RENSPOINT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DEFINE_REGION_LIMIT_SE_RENSPOINT]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[DEFINE_REGION_LIMIT_SE_RENSPOINT]
GO

CREATE FUNCTION [dbo].[DEFINE_REGION_LIMIT_SE_RENSPOINT]
(
)
RETURNS int
As
BEGIN

	DECLARE @returnVal int
	SET @returnVal = 10

	RETURN @returnVal

	END
GO


-- ----------------------------
-- Procedure structure for game_fish_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_fish_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_fish_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_fish_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userFishDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for web_ranking_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_ranking_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_ranking_get_data]
GO

CREATE PROCEDURE [dbo].[web_ranking_get_data]
(
	@type varchar(1),
	@userId varchar(20) = NULL
)
As
BEGIN
	SET NOCOUNT ON
	DECLARE @accountIdx int;

	--Check user exist
	SELECT @accountIdx = Id FROM WebLogin WITH (NOLOCK) WHERE Username = @userId;

	IF @type = 1
		/*
		SELECT TOP 10
			guild.guildName AS Guild,
			m.nickname AS Name ,
			g.userExcavationLevel AS Level,
			g.userExcavationEXP AS Exp
		FROM usergamedb g WITH (NOLOCK) 
		INNER JOIN usermemberdb m WITH (NOLOCK) 
		ON g.accountIDX = m.accountIDX
		LEFT JOIN 
		(
			SELECT gd.guildName, gu.accountIDX
			FROM
			[userGuildInfoDB] gu WITH (NOLOCK) 
			INNER JOIN userGuildDB gd WITH (NOLOCK) 
			ON gd.idx = gu.guildIDX
		) guild
		ON guild.accountIDX = m.accountIDX
		WHERE userType = 100 
		and m.nickName not like '%#%'
		and m.nickName not like 'developer%'
		ORDER BY userExcavationLevel DESC, userExcavationEXP DESC
		*/
		WITH ranking (accountIDX, Guild, Name, Level, Exp, Rank) as 
		(
			SELECT
				g.accountIDX,
				guild.guildName AS Guild,
				m.nickname AS Name ,
				g.userExcavationLevel AS Level,
				g.userExcavationEXP AS Exp,	
				RANK() OVER (ORDER BY g.userExcavationLevel DESC, g.userExcavationEXP DESC) AS Rank
			FROM usergamedb g WITH (NOLOCK) 
			INNER JOIN usermemberdb m WITH (NOLOCK) 
			ON g.accountIDX = m.accountIDX
			LEFT JOIN 
			(
				SELECT gd.guildName, gu.accountIDX
				FROM
				[userGuildInfoDB] gu WITH (NOLOCK) 
				INNER JOIN userGuildDB gd WITH (NOLOCK) 
				ON gd.idx = gu.guildIDX
			) guild
			ON guild.accountIDX = m.accountIDX
			WHERE userType = 100 
			and m.nickName not like '%#%'
			and m.nickName not like 'developer%'
		)
		SELECT TOP 10 * FROM ranking
		UNION ALL
		SELECT * FROM ranking
		WHERE accountIdx IS NULL OR accountIDX = @accountIdx
	else if @type  = 2
		/*
		SELECT TOP 10 
			guild.guildName AS Guild,
			m.nickname AS Name ,
			g.userFishingLevel AS Level,
			g.userFishingEXP AS Exp
		FROM usergamedb g WITH (NOLOCK) 
		INNER JOIN usermemberdb m WITH (NOLOCK) 
		ON g.accountIDX = m.accountIDX
		LEFT JOIN 
		(
			SELECT gd.guildName, gu.accountIDX
			FROM
			[userGuildInfoDB] gu WITH (NOLOCK) 
			INNER JOIN userGuildDB gd WITH (NOLOCK) 
			ON gd.idx = gu.guildIDX
		) guild
		ON guild.accountIDX = m.accountIDX
		WHERE userType = 100 
		and m.nickName not like '%#%'
		and m.nickName not like 'developer%'
		ORDER BY userFishingLevel DESC, userFishingEXP DESC
		*/
		WITH ranking (accountIDX, Guild, Name, Level, Exp, Rank) as 
		(
			SELECT
				g.accountIDX,
				guild.guildName AS Guild,
				m.nickname AS Name ,
				g.userFishingLevel AS Level,
				g.userFishingEXP AS Exp,	
				RANK() OVER (ORDER BY g.userFishingLevel DESC, g.userFishingEXP DESC) AS Rank
			FROM usergamedb g WITH (NOLOCK) 
			INNER JOIN usermemberdb m WITH (NOLOCK) 
			ON g.accountIDX = m.accountIDX
			LEFT JOIN 
			(
				SELECT gd.guildName, gu.accountIDX
				FROM
				[userGuildInfoDB] gu WITH (NOLOCK) 
				INNER JOIN userGuildDB gd WITH (NOLOCK) 
				ON gd.idx = gu.guildIDX
			) guild
			ON guild.accountIDX = m.accountIDX
			WHERE userType = 100 
			and m.nickName not like '%#%'
			and m.nickName not like 'developer%'
		)
		SELECT TOP 10 * FROM ranking
		UNION ALL
		SELECT * FROM ranking
		WHERE accountIdx IS NULL OR accountIDX = @accountIdx
	else if @type  = 3
		/*
		SELECT TOP 10
			guild.guildName AS Guild,
			m.nickname AS Name ,
			g.userLevel AS Level,
			g.userEXP AS Exp
		FROM usergamedb g WITH (NOLOCK) 
		INNER JOIN usermemberdb m WITH (NOLOCK) 
		ON g.accountIDX = m.accountIDX
		LEFT JOIN 
		(
			SELECT gd.guildName, gu.accountIDX
			FROM
			[userGuildInfoDB] gu WITH (NOLOCK) 
			INNER JOIN userGuildDB gd WITH (NOLOCK) 
			ON gd.idx = gu.guildIDX
		) guild
		ON guild.accountIDX = m.accountIDX
		WHERE userType = 100  
		and m.nickName not like '%#%'
		and m.nickName not like 'developer%'
		ORDER BY userlevel DESC, userEXP DESC
		*/
		WITH ranking (accountIDX, Guild, Name, Level, Exp, Rank) as 
		(
			SELECT
				g.accountIDX,
				guild.guildName AS Guild,
				m.nickname AS Name ,
				g.userLevel AS Level,
				g.userEXP AS Exp,	
				RANK() OVER (ORDER BY g.userlevel DESC, g.userEXP DESC) AS Rank
			FROM usergamedb g WITH (NOLOCK) 
			INNER JOIN usermemberdb m WITH (NOLOCK) 
			ON g.accountIDX = m.accountIDX
			LEFT JOIN 
			(
				SELECT gd.guildName, gu.accountIDX
				FROM
				[userGuildInfoDB] gu WITH (NOLOCK) 
				INNER JOIN userGuildDB gd WITH (NOLOCK) 
				ON gd.idx = gu.guildIDX
			) guild
			ON guild.accountIDX = m.accountIDX
			WHERE userType = 100 
			and m.nickName not like '%#%'
			and m.nickName not like 'developer%'
		)
		SELECT TOP 10 * FROM ranking
		UNION ALL
		SELECT * FROM ranking
		WHERE accountIdx IS NULL OR accountIDX = @accountIdx
	else if @type = 4
		/*
		SELECT TOP 10
			guild.guildName AS Guild,
			m.nickname AS Name,
			g.gameMoney AS GP
		FROM usergamedb g WITH (NOLOCK) 
		INNER JOIN usermemberdb m WITH (NOLOCK) 
		ON g.accountIDX = m.accountIDX
		LEFT JOIN 
		(
			SELECT gd.guildName, gu.accountIDX
			FROM
			[userGuildInfoDB] gu WITH (NOLOCK) 
			INNER JOIN userGuildDB gd WITH (NOLOCK) 
			ON gd.idx = gu.guildIDX
		) guild
		ON guild.accountIDX = m.accountIDX
		WHERE userType = 100 
		and m.nickName not like '%#%'
		and m.nickName not like 'developer%'
		ORDER BY gameMoney DESC
		*/
		WITH ranking (accountIDX, Guild, Name, GP, Rank) as 
		(
			SELECT
				g.accountIDX,
				guild.guildName AS Guild,
				m.nickname AS Name,
				g.gameMoney AS GP,	
				RANK() OVER (ORDER BY g.gameMoney DESC) AS Rank
			FROM usergamedb g WITH (NOLOCK) 
			INNER JOIN usermemberdb m WITH (NOLOCK) 
			ON g.accountIDX = m.accountIDX
			LEFT JOIN 
			(
				SELECT gd.guildName, gu.accountIDX
				FROM
				[userGuildInfoDB] gu WITH (NOLOCK) 
				INNER JOIN userGuildDB gd WITH (NOLOCK) 
				ON gd.idx = gu.guildIDX
			) guild
			ON guild.accountIDX = m.accountIDX
			WHERE userType = 100 
			and m.nickName not like '%#%'
			and m.nickName not like 'developer%'
		)
		SELECT TOP 10 * FROM ranking
		UNION ALL
		SELECT * FROM ranking
		WHERE accountIdx IS NULL OR accountIDX = @accountIdx
	else if @type = 5
		/*
		SELECT TOP 10
			m.nickname AS Name,
			db.cnt AS Qty
		FROM
		(
			SELECT accountIDX, count(itemCode) as cnt
			FROM
			(
				SELECT DISTINCT accountIDX, itemCode
				FROM userCostumeDB WITH (NOLOCK) 
			) uc
			GROUP BY accountIDX
		) db		
		INNER JOIN usermemberdb m WITH (NOLOCK) 
		ON db.accountIDX = m.accountIDX		
		WHERE userType = 100  
		and m.nickName not like '%#%'
		and m.nickName not like 'developer%'
		ORDER BY cnt DESC
		*/
		WITH ranking (accountIDX, Guild, Name, Qty, Rank) as 
		(
			SELECT
				db.accountIDX,
				guild.guildName AS Guild,
				m.nickname AS Name,
				db.cnt AS Qty,
				RANK() OVER (ORDER BY db.cnt DESC) AS Rank
			FROM
			(
				SELECT accountIDX, count(itemCode) as cnt
				FROM
				(
					SELECT DISTINCT accountIDX, itemCode
					FROM userCostumeDB WITH (NOLOCK) 
				) uc
				GROUP BY accountIDX
			) db		
			INNER JOIN usermemberdb m WITH (NOLOCK) 
			ON db.accountIDX = m.accountIDX
			LEFT JOIN 
			(
				SELECT gd.guildName, gu.accountIDX
				FROM
				[userGuildInfoDB] gu WITH (NOLOCK) 
				INNER JOIN userGuildDB gd WITH (NOLOCK) 
				ON gd.idx = gu.guildIDX
			) guild
			ON guild.accountIDX = m.accountIDX
			WHERE userType = 100  
			and m.nickName not like '%#%'
			and m.nickName not like 'developer%'
		)
		SELECT TOP 10 * FROM ranking
		UNION ALL
		SELECT * FROM ranking
		WHERE accountIdx IS NULL OR accountIDX = @accountIdx
END
GO


-- ----------------------------
-- Procedure structure for game_popStore_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_popStore_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_popStore_get_data]
GO

CREATE PROCEDURE [dbo].[game_popStore_get_data]

	@ACCOUNT_IDX		INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	
	SELECT PopupSlot FROM dbo.userPopStoreDB WITH (READUNCOMMITTED) 
	WHERE AccountIDX=@ACCOUNT_IDX


	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_team_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_team_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_team_self_index]
GO

CREATE PROCEDURE [dbo].[game_league_team_self_index]
(
	@leagueIDX int
,	@leaderIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
 WHERE leagueIDX = @leagueIDX
   AND leaderIDX = @leaderIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_league_my_team_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_my_team_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_my_team_list]
GO

CREATE PROCEDURE [dbo].[game_league_my_team_list]
(
	@topN int
,	@idx int
,	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP (@topN) idx, leagueIDX, teamName, leaderIDX, leaguePosition,
	   cheerPoint, currentRound, factionPoint, factionType
  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
 WHERE idx < @idx
   AND idx IN (
	SELECT teamIDX
	  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
	   AND joinType=1
  )
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_guild_battle_record_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_battle_record_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_battle_record_save]
GO

CREATE PROCEDURE [dbo].[game_guild_battle_record_save]
(
	@guildIDX int
,	@battleType int
,	@win int
,	@lose int
,	@killed int
,	@death int
)
AS

SET NOCOUNT ON

UPDATE dbo.userRecordGuildDB
   SET type1_win = @win, 
	   type1_lose = @lose, 
	   type1_kill = @killed, 
	   type1_death = @death 
 WHERE guildIDX = @guildIDX
GO


-- ----------------------------
-- Procedure structure for game_guild_msg_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_msg_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_msg_init]
GO

CREATE PROCEDURE [dbo].[game_guild_msg_init]
(
	@accountIDX int
,	@guildIDX int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGuildInfoDB
   SET msg=0
 WHERE guildIDX=@guildIDX
   AND accountIDX=@accountIDX
   AND guildJoinType=1
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_SET_FISHING_LEVEL
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_SET_FISHING_LEVEL]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_SET_FISHING_LEVEL]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_SET_FISHING_LEVEL]

	@ACCOUNT_IDX		INT,
	@USER_LEVEL			INT,
	@USER_EXP			INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (NOT EXISTS(SELECT * FROM dbo.userGameDB WITH (NOLOCK) WHERE accountIDX = @ACCOUNT_IDX))
BEGIN
	RETURN 1001;
END

BEGIN TRAN

	UPDATE dbo.userGameDB WITH (ROWLOCK, XLOCK)
	   SET userFishingLevel = @USER_LEVEL,
	       userFishingEXP = @USER_EXP
	 WHERE accountIDX = @ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_CHARACTERINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_CHARACTERINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_CHARACTERINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_CHARACTERINFO]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, ClassType, limitTime, limitType, leaderType, awakeType, awakeTime, regDate
  FROM dbo.userCharacterDB WITH (NOLOCK)
 WHERE accountIDX = @ACCOUNT_IDX
GO


-- ----------------------------
-- Procedure structure for web_valentine_ranking_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_ranking_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_ranking_get]
GO

CREATE PROCEDURE [dbo].[web_valentine_ranking_get]
(
	@rankType int
)
As
SELECT
	m.nickName AS Name,
	Point
FROM WebEventValentineRanking r
INNER JOIN userMemberDB m
ON r.AccountIdx = m.accountIDX
WHERE RankType = @rankType
ORDER BY Point desc
GO


-- ----------------------------
-- Procedure structure for web_top_notice_get
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_top_notice_get]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_top_notice_get]
GO

CREATE PROCEDURE [dbo].[web_top_notice_get]
As
	SELECT TOP 10
		n.Id,
		TypeId,
		Subject,
		Content,
		ContentPlain,
		NoticeUser,
		NoticeDate,
		Status,
		t.ColorId,
		t.Name
	FROM WebNotice n WITH (NOLOCK)
	INNER JOIN WebNoticeType t WITH (NOLOCK)
	ON n.TypeId = t.Id
	WHERE Status = 0
	ORDER BY NoticeDate DESC
GO


-- ----------------------------
-- Procedure structure for game_fish_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_fish_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_fish_save]
GO

CREATE PROCEDURE [dbo].[game_fish_save]
(
	@idx int
,	@fish1_type tinyint
,	@fish1_an int
,	@fish2_type tinyint
,	@fish2_an int
,	@fish3_type tinyint
,	@fish3_an int
,	@fish4_type tinyint
,	@fish4_an int
,	@fish5_type tinyint
,	@fish5_an int
,	@fish6_type tinyint
,	@fish6_an int
,	@fish7_type tinyint
,	@fish7_an int
,	@fish8_type tinyint
,	@fish8_an int
,	@fish9_type tinyint
,	@fish9_an int
,	@fish10_type tinyint
,	@fish10_an int
,	@fish11_type tinyint
,	@fish11_an int
,	@fish12_type tinyint
,	@fish12_an int
,	@fish13_type tinyint
,	@fish13_an int
,	@fish14_type tinyint
,	@fish14_an int
,	@fish15_type tinyint
,	@fish15_an int
,	@fish16_type tinyint
,	@fish16_an int
,	@fish17_type tinyint
,	@fish17_an int
,	@fish18_type tinyint
,	@fish18_an int
,	@fish19_type tinyint
,	@fish19_an int
,	@fish20_type tinyint
,	@fish20_an int
)
AS

SET NOCOUNT ON

UPDATE dbo.userFishDB
   SET fish1_type = @fish1_type,
	   fish1_an = @fish1_an,
	   fish2_type = @fish2_type,
	   fish2_an = @fish2_an,
	   fish3_type = @fish3_type,
	   fish3_an = @fish3_an,
	   fish4_type = @fish4_type,
	   fish4_an = @fish4_an,
	   fish5_type = @fish5_type,
	   fish5_an = @fish5_an,
	   fish6_type = @fish6_type,
	   fish6_an = @fish6_an,
	   fish7_type = @fish7_type,
	   fish7_an = @fish7_an,
	   fish8_type = @fish8_type,
	   fish8_an = @fish8_an,
	   fish9_type = @fish9_type,
	   fish9_an = @fish9_an,
	   fish10_type = @fish10_type,
	   fish10_an = @fish10_an,
	   fish11_type = @fish11_type,
	   fish11_an = @fish11_an,
	   fish12_type = @fish12_type,
	   fish12_an = @fish12_an,
	   fish13_type = @fish13_type,
	   fish13_an = @fish13_an,
	   fish14_type = @fish14_type,
	   fish14_an = @fish14_an,
	   fish15_type = @fish15_type,
	   fish15_an = @fish15_an,
	   fish16_type = @fish16_type,
	   fish16_an = @fish16_an,
	   fish17_type = @fish17_type,
	   fish17_an = @fish17_an,
	   fish18_type = @fish18_type,
	   fish18_an = @fish18_an,
	   fish19_type = @fish19_type,
	   fish19_an = @fish19_an,
	   fish20_type = @fish20_type,
	   fish20_an = @fish20_an
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_class_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_class_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_class_get_list]
GO

CREATE PROCEDURE [dbo].[game_class_get_list]
(
	@accountIDX INT
)
AS

SET NOCOUNT ON

SELECT idx,
       class1_type, class1_level, class1_expert, class1_stat, class2_type, class2_level, class2_expert, class2_stat,
       class3_type, class3_level, class3_expert, class3_stat, class4_type, class4_level, class4_expert, class4_stat,
       class5_type, class5_level, class5_expert, class5_stat, class6_type, class6_level, class6_expert, class6_stat,
       class7_type, class7_level, class7_expert, class7_stat, class8_type, class8_level, class8_expert, class8_stat,
       class9_type, class9_level, class9_expert, class9_stat, class10_type, class10_level, class10_expert, class10_stat
  FROM dbo.userClassDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for game_pet_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_pet_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_pet_delete]
GO

CREATE PROCEDURE [dbo].[game_pet_delete]

	@ACCOUNT_IDX	INT,
	@PET_IDX		INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	BEGIN TRAN

		-- 펫 데이터 삭제 처리
		UPDATE dbo.userPetDB WITH (ROWLOCK, XLOCK) SET petStatus=0 WHERE accountIDX=@ACCOUNT_IDX and petIDX=@PET_IDX
		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
		END

	COMMIT TRAN
GO


-- ----------------------------
-- Procedure structure for game_league_user_list_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_user_list_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_user_list_add]
GO

CREATE PROCEDURE [dbo].[game_league_user_list_add]
(
	@accountIDX int
,	@startDate int
,	@endDate int
,	@leagueType tinyint
,	@leagueState tinyint
,	@leagueName nvarchar(20)
,	@maxRound smallint
,	@bannerA int
,	@bannerB int
,	@modeType int
,	@maxcount tinyint
,	@autoType tinyint
,	@recruitDate int
,	@waitDate int
,	@roundType1_playDate int
,	@roundType2_playDate int
,	@roundType3_playDate int
,	@roundType4_playDate int
,	@roundType5_playDate int
,	@roundType6_playDate int
,	@roundType7_playDate int
,	@roundType8_playDate int
,	@roundType9_playDate int
,	@roundType10_playDate int
,	@roundType11_playDate int
)
AS

SET NOCOUNT ON

BEGIN TRAN

DECLARE @leagueIDX int
DECLARE @infoIDX int
DECLARE @roundIDX int

INSERT INTO dbo.userLeagueListDB (
	accountIDX, startDate, endDate, leagueType, leagueState, regDate
)
VALUES (
	@accountIDX, @startDate, @endDate, @leagueType, @leagueState, GETDATE()
)

IF (@@ROWCOUNT = 0 or @@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	SET @leagueIDX = 0
	SELECT @leagueIDX AS 'idx'
END
ELSE
BEGIN
	SET @leagueIDX = SCOPE_IDENTITY()
END


INSERT INTO dbo.userLeagueInfoDB (
	leagueIDX, leagueName, maxRound, bannerA, bannerB, modeType, maxcount, autoType, announce, recruitDate, waitDate, regDate
)
VALUES (
	@leagueIDX, @leagueName, @maxRound, @bannerA, @bannerB, @modeType, @maxcount, @autoType, '', @recruitDate, @waitDate, GETDATE()
)


IF (@@ROWCOUNT = 0 or @@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	SET @infoIDX = 0
	SELECT @infoIDX AS 'idx'
END
ELSE
BEGIN
	SET @infoIDX = SCOPE_IDENTITY()
END


INSERT INTO dbo.userLeagueRoundDB (
	infoIDX,
	roundType1_playDate, roundType1_presentCode1, roundType1_presentCode2, roundType1_presentCode3, roundType1_presentCode4,
	roundType2_playDate, roundType2_presentCode1, roundType2_presentCode2, roundType2_presentCode3, roundType2_presentCode4,
	roundType3_playDate, roundType3_presentCode1, roundType3_presentCode2, roundType3_presentCode3, roundType3_presentCode4,
	roundType4_playDate, roundType4_presentCode1, roundType4_presentCode2, roundType4_presentCode3, roundType4_presentCode4,
	roundType5_playDate, roundType5_presentCode1, roundType5_presentCode2, roundType5_presentCode3, roundType5_presentCode4,
	roundType6_playDate, roundType6_presentCode1, roundType6_presentCode2, roundType6_presentCode3, roundType6_presentCode4,
	roundType7_playDate, roundType7_presentCode1, roundType7_presentCode2, roundType7_presentCode3, roundType7_presentCode4,
	roundType8_playDate, roundType8_presentCode1, roundType8_presentCode2, roundType8_presentCode3, roundType8_presentCode4,
	roundType9_playDate, roundType9_presentCode1, roundType9_presentCode2, roundType9_presentCode3, roundType9_presentCode4,
	roundType10_playDate, roundType10_presentCode1, roundType10_presentCode2, roundType10_presentCode3, roundType10_presentCode4,
	roundType11_playDate, roundType11_presentCode1, roundType11_presentCode2, roundType11_presentCode3, roundType11_presentCode4,
	regDate
)
VALUES (
	@infoIDX,
	@roundType1_playDate, 0, 0, 0, 0,
	@roundType2_playDate, 0, 0, 0, 0,
	@roundType3_playDate, 0, 0, 0, 0,
	@roundType4_playDate, 0, 0, 0, 0,
	@roundType5_playDate, 0, 0, 0, 0,
	@roundType6_playDate, 0, 0, 0, 0,
	@roundType7_playDate, 0, 0, 0, 0,
	@roundType8_playDate, 0, 0, 0, 0,
	@roundType9_playDate, 0, 0, 0, 0,
	@roundType10_playDate, 0, 0, 0, 0,
	@roundType11_playDate, 0, 0, 0, 0,
	GETDATE()
)


IF (@@ROWCOUNT = 0 or @@ERROR <> 0)
BEGIN
	ROLLBACK TRAN
	SET @roundIDX = 0
	SELECT @roundIDX AS 'idx'
END
ELSE
BEGIN
	COMMIT TRAN
	SELECT @leagueIDX AS 'idx'
END
GO


-- ----------------------------
-- Procedure structure for game_league_my_team_member_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_my_team_member_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_my_team_member_list]
GO

CREATE PROCEDURE [dbo].[game_league_my_team_member_list]
(
	@accountIDX int
,	@topN int
,	@idx int
)
AS

SET NOCOUNT ON

SELECT TOP (@topN) [idx], accountIDX, teamIDX
  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
 WHERE idx < @idx
   AND teamIDX in (
	SELECT teamIDX
	  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
       AND joinType=1
  )
   AND joinType=1
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_SET_CASH
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_SET_CASH]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_SET_CASH]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_SET_CASH]

	@ACCOUNT_IDX		INT,
	@REAL_CASH			INT,
	@BONUS_CASH			INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (NOT EXISTS(SELECT * FROM dbo.userMoneyDB WITH (NOLOCK) WHERE accountIDX = @ACCOUNT_IDX))
BEGIN
	RETURN 1001;
END

BEGIN TRAN

	UPDATE dbo.userMoneyDB WITH (ROWLOCK, XLOCK)
	   SET realCash = realCash + @REAL_CASH,
	       bonusCash = bonusCash + @BONUS_CASH
	 WHERE accountIDX = @ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_friend_best_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_best_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_best_add]
GO

CREATE PROCEDURE [dbo].[game_friend_best_add]
(
	@accountIDX int
,	@friendIDX int
)
AS

SET NOCOUNT ON

DECLARE @cnt int

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE accountIDX=@friendIDX
)

IF (@cnt > 0)
BEGIN
	INSERT INTO dbo.userFriendBestDB (accountIDX, friendIDX, flag, flagTime, regDate)
	VALUES (@accountIDX, @friendIDX, 1, 0, GETDATE())
END
GO


-- ----------------------------
-- Procedure structure for game_league_backup
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_backup]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_backup]
GO

CREATE PROCEDURE [dbo].[game_league_backup]
(
	@leagueIDX int
)
AS

SET NOCOUNT ON

DECLARE @startDate int
SET @startDate = ISNULL((
	SELECT startDate 
	  FROM dbo.userLeagueListDB WITH(NOLOCK)
	 WHERE idx=@leagueIDX
	), 0)


-- league backup
INSERT INTO LosaGame_log.dbo.log_league_list (
	leagueIDX, accountIDX, startDate, endDate, leagueType, leagueState, regDate, insertDate
)
SELECT idx, accountIDX, startDate, endDate, leagueType, leagueState, regDate, GETDATE()
  FROM dbo.userLeagueListDB WITH(NOLOCK)
 WHERE idx=@leagueIDX


-- team backup
INSERT INTO LosaGame_log.dbo.log_league_team (
	teamIDX, leagueIDX, startDate, teamName, leaderIDX, leagueStartPosition, leaguePosition, maxcount, cheerPoint,
	currentRound, factionPoint, factionType, regDate, insertDate
)
SELECT idx, leagueIDX, @startDate, teamName, leaderIDX, leagueStartPosition, leaguePosition, maxcount, cheerPoint,
	   currentRound, factionPoint, factionType, regDate, GETDATE()
  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX


-- team member backup
INSERT INTO LosaGame_log.dbo.log_league_team_member (
	teamMemberIDX, startDate, accountIDX, leagueIDX, teamIDX, joinType, regDate, insertDate
)
SELECT idx, @startDate, accountIDX, leagueIDX, teamIDX, joinType, regDate, GETDATE()
  FROM dbo.userLeagueTeamMemberDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX


-- cheer backup
INSERT INTO LosaGame_log.dbo.log_league_cheer (
	cheerIDX, startDate, accountIDX, leagueIDX, teamIDX, regDate, insertDate
)
SELECT idx, @startDate, accountIDX, leagueIDX, teamIDX, regDate, GETDATE()
  FROM dbo.userLeagueCheerDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX
GO


-- ----------------------------
-- Procedure structure for web_roulette_item_buy
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_item_buy]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_item_buy]
GO

CREATE PROCEDURE [dbo].[web_roulette_item_buy]
(
	@itemid int,
	@userId varchar(20)
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @amount int;
		DECLARE @price int;
		DECLARE @accountIdx int;
		SET @amount = 10;
		SET @price = 299;--599

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END

		--Check Item Valid
		If @itemid NOT IN (1)
		BEGIN
			RETURN (-2)
		END

		--Check Enough Money (500 BP)
		SELECT @cnt = realCash FROM userMoneyDB WHERE accountIDX = @accountIdx;
		IF @cnt < @price
		BEGIN
			RETURN (-3)
		END	

		-- TRAN START
		BEGIN TRAN		
		-- Reward
		SELECT @cnt = count(*) FROM WebRouletteUserItem WHERE ItemId = @itemid AND AccountIdx = @accountIdx;
		IF @cnt = 0
			BEGIN
				INSERT INTO WebRouletteUserItem (AccountIdx, ItemId, Amount) VALUES (@accountIdx, @itemid, @amount);
			END
		ELSE
			BEGIN
				UPDATE WebRouletteUserItem SET Amount += @amount WHERE AccountIdx = @accountIdx AND ItemId = @itemid;
			END

		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-4)
			END	

		-- Pay Cash
		UPDATE userMoneyDB SET realCash -= @price WHERE accountIDX = @accountIdx AND realCash >= @price;
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-5)
			END	

		-- Log
		INSERT INTO WebRoulettePayLog (AccountIdx, ItemId, Amount, Paid) VALUES (@accountIdx, @itemId, @amount, @price);
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-6)
			END	
			
		-- event only
		/*
		INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate) VALUES
		(1, @accountIdx, 3, 1000049, 2, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE());
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-6)
			END	
		*/
		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (@amount)
	END
GO


-- ----------------------------
-- Procedure structure for game_trade_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_trade_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_trade_add]
GO

CREATE PROCEDURE [dbo].[game_trade_add]
(
	@accountIDX int
,	@itemType int
,	@value1 int
,	@value2 int
,	@price bigint
,	@mcustom int
,	@fcustom int
,	@userIP varchar(16)
,	@periodDate int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userTradeDB (accountIDX, itemType, value1, value2, price, mcustom, fcustom, userIP, periodDate, regDate)
VALUES (@accountIDX, @itemType, @value1, @value2, @price, @mcustom, @fcustom, @userIP, @periodDate, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_guildHQ_set_default_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guildHQ_set_default_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guildHQ_set_default_add]
GO

CREATE PROCEDURE [dbo].[game_guildHQ_set_default_add]  
   
 @GUILD_IDX  INT,   
 @ITEM_CODE  INT,  
 @ITEM_XZ  INT,  
 @ITEM_Y   INT,  
 @ITEM_ROTATE TINYINT   
  
AS   
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 15000  
  
 DECLARE @nReturn INT = 0;  
   
 BEGIN TRAN  
  -- 길드 본부 꾸미기 아이템 추가  
  INSERT dbo.userGuildHQDB WITH (XLOCK, ROWLOCK) (GuildIDX, ItemCode, ItemXZ, ItemY, ItemRotate, ItemStatus) VALUES (@GUILD_IDX, @ITEM_CODE, @ITEM_XZ, @ITEM_Y, @ITEM_ROTATE, 1)  
  IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END  
    
  --  변경된 데이터에 대한 Version관리  
  EXEC @nReturn = dbo.game_guildHQ_ver_set_status @GUILD_IDX  
  IF @nReturn<>0  
  BEGIN  
   ROLLBACK TRAN  
   RETURN;  
  END    
  
 COMMIT TRAN  
  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_region_get_point
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_get_point]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_get_point]
GO

CREATE PROCEDURE [dbo].[game_region_get_point]

AS

SET NOCOUNT ON

SELECT rt1point, rt1point_today, rt1point_bonus, rt2point, rt2point_today, rt2point_bonus
  FROM dbo.userRegionDB WITH(NOLOCK)
GO


-- ----------------------------
-- Procedure structure for game_popStore_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_popStore_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_popStore_set_add]
GO

CREATE PROCEDURE [dbo].[game_popStore_set_add]

	@ACCOUNT_IDX		INT,
	@POPUP_SLOT			INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	BEGIN TRAN

		-- 팝업 스토어 구매 내역 Insert
		INSERT dbo.userPopStoreDB WITH (XLOCK, ROWLOCK) (AccountIDX, PopupSlot) 
		VALUES (@ACCOUNT_IDX, @POPUP_SLOT)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			SELECT -1;
			RETURN;
		END 

	COMMIT TRAN		

	SELECT 0;
	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_guild_position_msg_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_position_msg_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_position_msg_save]
GO

CREATE PROCEDURE [dbo].[game_guild_position_msg_save]
(
	@accountIDX int
,	@guildIDX int
,	@msg int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGuildInfoDB
   SET msg=@msg
 WHERE guildIDX=@guildIDX
   AND accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_BEST_FRIEND_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_BEST_FRIEND_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_BEST_FRIEND_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_BEST_FRIEND_LIST]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT FR.idx, ME.userID, ME.nickName, GA.userLevel, FR.flagTime, GU.guildName, GI.guildPosition, GI.guildJoinType, FR.friendIDX
  FROM dbo.userFriendBestDB FR WITH (NOLOCK)
  JOIN dbo.userMemberDB ME WITH (NOLOCK)
	ON FR.friendIDX = ME.accountIDX
  JOIN dbo.userGameDB GA WITH (NOLOCK)
	ON FR.friendIDX = GA.accountIDX
  LEFT JOIN dbo.userGuildInfoDB GI WITH (NOLOCK)
    ON FR.friendIDX = GI.accountIDX
  LEFT JOIN dbo.userGuildDB GU WITH (NOLOCK)
    ON GI.guildIDX = GU.idx
 WHERE FR.accountIDX = @ACCOUNT_IDX
   AND FR.flag=1
GO


-- ----------------------------
-- Procedure structure for game_region_init_renspoint
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_init_renspoint]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_init_renspoint]
GO

CREATE PROCEDURE [dbo].[game_region_init_renspoint]

AS

SET NOCOUNT ON

UPDATE dbo.userGameDB
   SET renspoint=0
 WHERE renspoint > 0
GO


-- ----------------------------
-- Procedure structure for game_class_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_class_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_class_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_class_get_self_index]
(
	@accountIDX INT
)
AS

SET NOCOUNT ON

SELECT MAX(idx)
  FROM dbo.userClassDB
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_league_reward_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_reward_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_reward_add]
GO

CREATE PROCEDURE [dbo].[game_league_reward_add]
(
	@startDate int
,	@leagueIDX int
,	@leagueSize smallint
,	@teamConst smallint
,	@userConst smallint
)
AS

SET NOCOUNT ON

DECLARE @winnerFactionType INT
DECLARE @factionType TINYINT
DECLARE @winnerTeamIDX INT
DECLARE @winnerTeamCheerCount INT
DECLARE @cheerTotalCount decimal( 10, 2 )
DECLARE @rewardTeamCheer INT
DECLARE @rewardUserCheer float
DECLARE @DeveloperKIDX INT

SET @winnerFactionType = 0
SET @factionType = 0
SET @winnerTeamIDX = 0


IF (EXISTS(SELECT * FROM dbo.userLeagueWinnerHistoryDB WITH(NOLOCK) WHERE startDate=@startDate))
BEGIN
	SELECT TOP 1 @winnerFactionType = factionType,
				 @winnerTeamIDX = teamIDX
	  FROM dbo.userLeagueWinnerHistoryDB WITH(NOLOCK)
	 WHERE startDate=@startDate
	 ORDER BY idx DESC
END



DELETE FROM dbo.userLeagueRewardDB
WHERE regDate < LEFT(CONVERT(varchar(20), GETDATE(), 120), 10)

DELETE FROM dbo.userLeagueRewardCheerDB
WHERE regDate < LEFT(CONVERT(varchar(20), GETDATE(), 120), 10)




INSERT INTO dbo.userLeagueRewardDB (
	accountIDX, startDate, currentRound, userFactionType, winnerFactionType, rewardPeso, factionRank, factionPoint, regDate
)
SELECT a.accountIDX, @startDate, c.currentRound, b.regionType, @winnerFactionType, 
	CASE WHEN @winnerFactionType = b.regionType THEN CAST(b.renspoint * 5 AS INT)
		 WHEN @winnerFactionType <> b.regionType THEN CAST(b.renspoint AS INT)
	ELSE CAST(b.renspoint AS INT) END AS rewardPeso,
	   0, b.renspoint, GETDATE()
  FROM dbo.userLeagueTeamMemberDB a WITH(NOLOCK)
  JOIN dbo.userGameDB b WITH(NOLOCK)
    ON a.accountIDX = b.accountIDX
  JOIN dbo.userLeagueTeamDB c WITH(NOLOCK)
	ON a.teamIDX=c.idx
 WHERE a.leagueIDX=@leagueIDX
   AND a.joinType=1



INSERT INTO dbo.userLeagueRewardDB (
	accountIDX, startDate, currentRound, userFactionType, winnerFactionType, rewardPeso, factionRank, factionPoint, regDate
)
SELECT accountIDX, @startDate, 0, regionType, @winnerFactionType, 
	CASE WHEN @winnerFactionType = regionType THEN CAST(renspoint * 5 AS INT)
		 WHEN @winnerFactionType <> regionType THEN CAST(renspoint AS INT)
	ELSE CAST(renspoint AS INT) END AS rewardPeso,
	   0, renspoint, GETDATE()
  FROM dbo.userGameDB WITH(NOLOCK)
 WHERE renspoint > 0
   AND accountIDX NOT IN (
	   SELECT accountIDX
		 FROM dbo.userLeagueRewardDB WITH(NOLOCK)
	   )



UPDATE B
   SET currentRound = A.currentRound
  FROM (
	SELECT a.accountIDX, b.currentRound, @startDate AS startDate
	  FROM dbo.userLeagueTeamMemberDB a WITH(NOLOCK)
	  JOIN dbo.userLeagueTeamDB b WITH(NOLOCK)
		ON a.teamIDX=b.idx
	 WHERE a.leagueIDX=@leagueIDX
	   AND b.leagueIDX=@leagueIDX
) A
  JOIN dbo.userLeagueRewardDB B WITH(NOLOCK)
    ON A.accountIDX = B.accountIDX



UPDATE B
   SET factionRank = A.region
  FROM (
	SELECT accountIDX, region
	  FROM dbo.userRankingDB WITH(NOLOCK)
) A
  JOIN dbo.userLeagueRewardDB B WITH(NOLOCK)
    ON A.accountIDX = B.accountIDX



UPDATE dbo.userLeagueRewardDB
   SET factionRank = 100000000
 WHERE factionRank = 0



IF (@winnerTeamIDX > 0)
BEGIN

	SET @winnerTeamCheerCount = (
		SELECT cheerPoint
		  FROM dbo.userLeagueTeamDB WITH(NOLOCK)
		 WHERE leagueIDX=@leagueIDX
		   AND idx=@winnerTeamIDX
	)
/*
	SET @rewardTeamCheer = @winnerTeamCheerCount * @teamConst

	IF (@rewardTeamCheer > 100000)
	BEGIN
		SET @rewardTeamCheer = 100000
	END

	SET @DeveloperKIDX = (
		SELECT accountIDX
		  FROM dbo.userMemberDB WITH(NOLOCK)
		 WHERE userID = 'DeveloperK'
	)

	IF (@DeveloperKIDX NOT IS NULL)
	BEGIN
		INSERT INTO dbo.userPresentDB (
			sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
		)
		SELECT @DeveloperKIDX, accountIDX, 4, @rewardTeamCheer, 0, 0, 0, 3, 1, GETDATE()+14, GETDATE())
	END
*/




	SET @cheerTotalCount = convert( numeric( 19,1 ), (
		SELECT COUNT(*)
		  FROM dbo.userLeagueCheerDB WITH(NOLOCK)
		 WHERE leagueIDX=@leagueIDX
	) )

	SET @rewardUserCheer = ((@cheerTotalCount / @leagueSize) / @winnerTeamCheerCount * @userConst)


	IF (@rewardUserCheer < 1000)
	BEGIN
		SET @rewardUserCheer = 1000
	END


	IF (@rewardUserCheer > 100000)
	BEGIN
		SET @rewardUserCheer = 100000
	END

	INSERT INTO dbo.userLeagueRewardCheerDB (
		accountIDX, rewardPeso, startDate, flag, regDate
	)
	SELECT accountIDX, @rewardUserCheer, @startDate, 1, GETDATE()
	  FROM dbo.userLeagueCheerDB WITH(NOLOCK)
	 WHERE leagueIDX=@leagueIDX
	   AND teamIDX=@winnerTeamIDX

END
GO


-- ----------------------------
-- Procedure structure for game_guild_change_guildname
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_change_guildname]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_change_guildname]
GO

CREATE PROCEDURE [dbo].[game_guild_change_guildname]
(
	@guildIDX int
,	@guildName varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @cnt int, @errcount int

SET @cnt = 0
SET @errcount = 0

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildDB WITH(NOLOCK)
	 WHERE guildName=@guildName
)
IF (@cnt > 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount = 0)
BEGIN
	SELECT 1 AS 'returnVal'

	UPDATE dbo.userGuildDB
	   SET guildName=@guildName
	 WHERE idx=@guildIDX
END
GO


-- ----------------------------
-- Procedure structure for game_league_user_reward_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_user_reward_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_user_reward_add]
GO

CREATE PROCEDURE [dbo].[game_league_user_reward_add]
(
	@leagueIDX int
)
AS

SET NOCOUNT ON

DECLARE @rt1A int, @rt1B int, @rt1C int, @rt1D int
DECLARE @rt2A int, @rt2B int, @rt2C int, @rt2D int
DECLARE @rt3A int, @rt3B int, @rt3C int, @rt3D int
DECLARE @rt4A int, @rt4B int, @rt4C int, @rt4D int
DECLARE @rt5A int, @rt5B int, @rt5C int, @rt5D int
DECLARE @rt6A int, @rt6B int, @rt6C int, @rt6D int
DECLARE @rt7A int, @rt7B int, @rt7C int, @rt7D int
DECLARE @rt8A int, @rt8B int, @rt8C int, @rt8D int
DECLARE @rt9A int, @rt9B int, @rt9C int, @rt9D int
DECLARE @rt10A int, @rt10B int, @rt10C int, @rt10D int
DECLARE @rt11A int, @rt11B int, @rt11C int, @rt11D int
DECLARE @infoIDX int
DECLARE @maxRound smallint
DECLARE @sendNickName nvarchar(20)
DECLARE @leagueName nvarchar(20)
DECLARE @teamList table (accountIDX int, currentRound tinyint)

INSERT INTO @teamList (accountIDX, currentRound)
SELECT a.accountIDX, b.currentRound
  FROM dbo.userLeagueTeamMemberDB a WITH(NOLOCK)
  JOIN dbo.userLeagueTeamDB b WITH(NOLOCK)
	ON a.teamIDX=b.idx
 WHERE a.leagueIDX=@leagueIDX
   AND b.leagueIDX=@leagueIDX
   AND a.joinType=1

SELECT @infoIDX = idx,
	   @leagueName = leagueName,
	   @maxRound = maxRound
  FROM dbo.userLeagueInfoDB WITH(NOLOCK)
 WHERE leagueIDX=@leagueIDX

SET @sendNickName = ISNULL((
	SELECT b.nickName
	  FROM dbo.userLeagueListDB a WITH(NOLOCK)
	  JOIN dbo.userMemberDB b WITH(NOLOCK)
		ON a.accountIDX=b.accountIDX
	 WHERE a.idx=@leagueIDX
), 'DeveloperK')

SELECT @rt1A = roundType1_presentCode1,
	   @rt1B = roundType1_presentCode2,
	   @rt1C = roundType1_presentCode3,
	   @rt1D = roundType1_presentCode4,
	   @rt2A = roundType2_presentCode1,
	   @rt2B = roundType2_presentCode2,
	   @rt2C = roundType2_presentCode3,
	   @rt2D = roundType2_presentCode4,
	   @rt3A = roundType3_presentCode1,
	   @rt3B = roundType3_presentCode2,
	   @rt3C = roundType3_presentCode3,
	   @rt3D = roundType3_presentCode4,
	   @rt4A = roundType4_presentCode1,
	   @rt4B = roundType4_presentCode2,
	   @rt4C = roundType4_presentCode3,
	   @rt4D = roundType4_presentCode4,
	   @rt5A = roundType5_presentCode1,
	   @rt5B = roundType5_presentCode2,
	   @rt5C = roundType5_presentCode3,
	   @rt5D = roundType5_presentCode4,
	   @rt6A = roundType6_presentCode1,
	   @rt6B = roundType6_presentCode2,
	   @rt6C = roundType6_presentCode3,
	   @rt6D = roundType6_presentCode4,
	   @rt7A = roundType7_presentCode1,
	   @rt7B = roundType7_presentCode2,
	   @rt7C = roundType7_presentCode3,
	   @rt7D = roundType7_presentCode4,
	   @rt8A = roundType8_presentCode1,
	   @rt8B = roundType8_presentCode2,
	   @rt8C = roundType8_presentCode3,
	   @rt8D = roundType8_presentCode4,
	   @rt9A = roundType9_presentCode1,
	   @rt9B = roundType9_presentCode2,
	   @rt9C = roundType9_presentCode3,
	   @rt9D = roundType9_presentCode4,
	   @rt10A = roundType10_presentCode1,
	   @rt10B = roundType10_presentCode2,
	   @rt10C = roundType10_presentCode3,
	   @rt10D = roundType10_presentCode4,
	   @rt11A = roundType11_presentCode1,
	   @rt11B = roundType11_presentCode2,
	   @rt11C = roundType11_presentCode3,
	   @rt11D = roundType11_presentCode4
  FROM dbo.userLeagueRoundDB WITH(NOLOCK)
 WHERE infoIDX=@infoIDX

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=1))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt1A, @rt1B, @rt1C, @rt1D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=1
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=2))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt2A, @rt2B, @rt2C, @rt2D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=2
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=3))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt3A, @rt3B, @rt3C, @rt3D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=3
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=4))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt4A, @rt4B, @rt4C, @rt4D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=4
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=5))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt5A, @rt5B, @rt5C, @rt5D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=5
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=6))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt6A, @rt6B, @rt6C, @rt6D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=6
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=7))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt7A, @rt7B, @rt7C, @rt7D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=7
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=8))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt8A, @rt8B, @rt8C, @rt8D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=8
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=9))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt9A, @rt9B, @rt9C, @rt9D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=9
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=10))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt10A, @rt10B, @rt10C, @rt10D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=10
END

IF (EXISTS(SELECT * FROM @teamList WHERE currentRound=11))
BEGIN
	INSERT INTO dbo.userLeagueRewardUserDB (
		accountIDX, leagueIDX, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4, regDate
	)
	SELECT accountIDX, @leagueIDX, @sendNickName, @leagueName, currentRound, @maxRound, @rt11A, @rt11B, @rt11C, @rt11D, GETDATE()
	  FROM @teamList
	 WHERE currentRound=11
END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEDAL_SET_DELETE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEDAL_SET_DELETE]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEDAL_SET_DELETE]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEDAL_SET_DELETE]

	@TABLE_IDX			INT,
	@ACCOUNT_IDX		INT,
	@COLUMN_NO			TINYINT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0

BEGIN TRAN

	IF (@COLUMN_NO = 1)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item1_type = 0,
		       item1_class = 0,
			   item1_limitType = 0,
			   item1_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 2)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item2_type = 0,
		       item2_class = 0,
			   item2_limitType = 0,
			   item2_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 3)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item3_type = 0,
		       item3_class = 0,
			   item3_limitType = 0,
			   item3_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 4)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item4_type = 0,
		       item4_class = 0,
			   item4_limitType = 0,
			   item4_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 5)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item5_type = 0,
		       item5_class = 0,
			   item5_limitType = 0,
			   item5_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 6)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item6_type = 0,
		       item6_class = 0,
			   item6_limitType = 0,
			   item6_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 7)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item7_type = 0,
		       item7_class = 0,
			   item7_limitType = 0,
			   item7_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 8)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item8_type = 0,
		       item8_class = 0,
			   item8_limitType = 0,
			   item8_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 9)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item9_type = 0,
		       item9_class = 0,
			   item9_limitType = 0,
			   item9_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE IF (@COLUMN_NO = 10)
	BEGIN
		UPDATE dbo.userItemMedalDB
		   SET item10_type = 0,
		       item10_class = 0,
			   item10_limitType = 0,
			   item10_limitDate = '1900-01-01 00:00:00'
		 WHERE accountIDX = @ACCOUNT_IDX
		   AND idx = @TABLE_IDX
	END
	ELSE
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

	IF (@@ROWCOUNT=0 OR @@ERROR <> 0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1001;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for web_notice_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_notice_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_notice_add]
GO

CREATE PROCEDURE [dbo].[web_notice_add]
(
	@userID varchar(20),
	@subject varchar(200),
	@type int,
	@content VARCHAR(MAX),
	@plain VARCHAR(MAX)
)
As
	BEGIN
		SET NOCOUNT ON 		
		DECLARE @cnt int;
		SELECT @cnt = count(*) FROM WebNoticeType WHERE Id = @type;
		IF @cnt = 0
		BEGIN
			RETURN (2)
		END

		-- TRAN START 
		BEGIN TRAN

		INSERT INTO WebNotice (NoticeUser, Subject, TypeId, Content, ContentPlain, Status)
		VALUES (@userID, @subject, @type, @content, @plain, 0);
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (3)
		END
		
		-- COMMIT TRAN
		COMMIT TRAN 

		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_USERINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_USERINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_USERINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_USERINFO]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT MB.accountIDX, MB.userID, MB.nickName, MB.limitType, MB.limitDate, ISNULL(MN.realCash + MN.bonusCash, 0) AS Cash, MB.regDate, ISNULL(MN.realCash,0) AS realCash ,ISNULL(MN.bonusCash,0) AS bonusCash
  FROM dbo.userMemberDB MB WITH (NOLOCK)
  LEFT JOIN dbo.userMoneyDB MN WITH (NOLOCK)
    ON MB.accountIDX=MN.accountIDX
 WHERE MB.accountIDX = @ACCOUNT_IDX
GO


-- ----------------------------
-- Procedure structure for game_class_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_class_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_class_save]
GO

CREATE PROCEDURE [dbo].[game_class_save]
(
	@idx INT
,	@class1_type INT
,	@class1_level INT
,	@class1_expert INT
,	@class1_stat TINYINT
,	@class2_type INT
,	@class2_level INT
,	@class2_expert INT
,	@class2_stat TINYINT
,	@class3_type INT
,	@class3_level INT
,	@class3_expert INT
,	@class3_stat TINYINT
,	@class4_type INT
,	@class4_level INT
,	@class4_expert INT
,	@class4_stat TINYINT
,	@class5_type INT
,	@class5_level INT
,	@class5_expert INT
,	@class5_stat TINYINT
,	@class6_type INT
,	@class6_level INT
,	@class6_expert INT
,	@class6_stat TINYINT
,	@class7_type INT
,	@class7_level INT
,	@class7_expert INT
,	@class7_stat TINYINT
,	@class8_type INT
,	@class8_level INT
,	@class8_expert INT
,	@class8_stat TINYINT
,	@class9_type INT
,	@class9_level INT
,	@class9_expert INT
,	@class9_stat TINYINT
,	@class10_type INT
,	@class10_level INT
,	@class10_expert INT
,	@class10_stat TINYINT
)
AS

SET NOCOUNT ON

UPDATE dbo.userClassDB
   SET class1_type = @class1_type,
       class1_level = @class1_level,
       class1_expert = @class1_expert,
       class1_stat = @class1_stat,
       class2_type = @class2_type,
       class2_level = @class2_level,
       class2_expert = @class2_expert,
       class2_stat = @class2_stat,
       class3_type = @class3_type,
       class3_level = @class3_level,
       class3_expert = @class3_expert,
       class3_stat = @class3_stat,
       class4_type = @class4_type,
       class4_level = @class4_level,
       class4_expert = @class4_expert,
       class4_stat = @class4_stat,
       class5_type = @class5_type,
       class5_level = @class5_level,
       class5_expert = @class5_expert,
       class5_stat = @class5_stat,
       class6_type = @class6_type,
       class6_level = @class6_level,
       class6_expert = @class6_expert,
       class6_stat = @class6_stat,
       class7_type = @class7_type,
       class7_level = @class7_level,
       class7_expert = @class7_expert,
       class7_stat = @class7_stat,
       class8_type = @class8_type,
       class8_level = @class8_level,
       class8_expert = @class8_expert,
       class8_stat = @class8_stat,
       class9_type = @class9_type,
       class9_level = @class9_level,
       class9_expert = @class9_expert,
       class9_stat = @class9_stat,
       class10_type = @class10_type,
       class10_level = @class10_level,
       class10_expert = @class10_expert,
       class10_stat = @class10_stat
 WHERE idx = @idx
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
-- Procedure structure for game_friend_best_add_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_best_add_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_best_add_self_index]
GO

CREATE PROCEDURE [dbo].[game_friend_best_add_self_index]
(
	@accountIDX int
,	@friendIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userFriendBestDB 
 WHERE accountIDX=@accountIDX
   AND friendIDX=@friendIDX
   AND flag=1
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_league_reward_cheer_del
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_reward_cheer_del]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_reward_cheer_del]
GO

CREATE PROCEDURE [dbo].[game_league_reward_cheer_del]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userLeagueRewardCheerDB
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for USP_ADM_RESTRICTION_GET_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_RESTRICTION_GET_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_RESTRICTION_GET_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_RESTRICTION_GET_LIST]

	@ACCOUNT_IDX	INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, limitType, limitDate, reason, userIP, regDate
  FROM LosaGame_log.dbo.log_user_block WITH (NOLOCK)
 WHERE accountIDX = @ACCOUNT_IDX
GO


-- ----------------------------
-- Procedure structure for game_spentGold_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_spentGold_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_spentGold_get_data]
GO

CREATE PROCEDURE [dbo].[game_spentGold_get_data]

	@ACCOUNT_IDX		INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	DECLARE @nReturn			INT
	DECLARE @SPENT_GOLD_SUM		INT
	DECLARE @SPENT_GOLD			INT
	DECLARE @PLAY_TIME			INT
	
	DECLARE @START_DATE		DATETIME
	DECLARE @OVER_DATE		DATETIME
	
	SET @OVER_DATE = CAST(CONVERT(CHAR(10), GETDATE(), 121) as DATETIME);
	SET @START_DATE = DATEADD(dd, -30, @OVER_DATE)

	SET @nReturn=0;
	SET @SPENT_GOLD_SUM=0;
	SET @SPENT_GOLD=0;
	SET @PLAY_TIME=0;

	IF EXISTS (SELECT * FROM dbo.userMemberDB WHERE AccountIDX=@ACCOUNT_IDX)
	BEGIN

		-- 누적 소비 골드
		SET @SPENT_GOLD_SUM = (SELECT UserSpentGold FROM dbo.userSpentGoldDB WITH (READCOMMITTED)
		WHERE AccountIDX=@ACCOUNT_IDX);
	
		-- 해당 기간의 소비 골드 합
		SET @SPENT_GOLD=(SELECT SpentGold FROM (
				SELECT AccountIDX, SUM(UserSpentGold) as SpentGold FROM dbo.userSpentGoldLogDB WITH (READCOMMITTED)
				WHERE RegDate>=@START_DATE and RegDate<@OVER_DATE+1 and AccountIDX=@ACCOUNT_IDX
				GROUP BY AccountIDX
			) as userSpentGoldLogDB
		)

		-- 사용자 플레이 타임
		SET @PLAY_TIME = (SELECT PlayTime FROM dbo.userGameDB WITH (READUNCOMMITTED) WHERE AccountIDX=@ACCOUNT_IDX);


		SELECT @nReturn as nReturn, ISNULL(@SPENT_GOLD_SUM,0) as SPENT_GOLD_SUM, ISNULL(@SPENT_GOLD,0) as SPENT_GOLD, @PLAY_TIME as PlayTime
	END
	ELSE
	BEGIN
		SELECT -1, 0 as SPENT_GOLD_SUM, 0 as SPENT_GOLD, 0 as PlayTime
	END
	
	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_user_reward_del
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_user_reward_del]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_user_reward_del]
GO

CREATE PROCEDURE [dbo].[game_league_user_reward_del]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userLeagueRewardUserDB
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for USP_ADM_LOGIN_GET_DATA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_LOGIN_GET_DATA]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_LOGIN_GET_DATA]
GO

CREATE PROCEDURE [dbo].[USP_ADM_LOGIN_GET_DATA]

	@ACCOUNT_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT gameServerID
  FROM dbo.userLoginDB WITH (NOLOCK)
 WHERE accountIDX = @ACCOUNT_IDX
GO


-- ----------------------------
-- Procedure structure for game_character_rental_history
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_rental_history]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_rental_history]
GO

CREATE PROCEDURE [dbo].[game_character_rental_history]
(
	@accountIDX int
,	@friendIDX int
,	@classType int
)
AS

SET NOCOUNT ON

INSERT INTO LosaGame_log.DBO.log_class_rental_history (accountIDX, friendIDX, classType, regDate)
VALUES (@accountIDX, @friendIDX, @classType, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_guild_position_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_position_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_position_save]
GO

CREATE PROCEDURE [dbo].[game_guild_position_save]
(
	@accountIDX int
,	@guildIDX int
,	@position varchar(20)
)
AS

SET NOCOUNT ON

DECLARE @msg tinyint
SET @msg = 0

IF (@position = 'Officer')
	SET @msg = 3

IF (@position = 'Member')
	SET @msg = 5

UPDATE dbo.userGuildInfoDB
   SET guildPosition=@position,
	   msg=@msg
 WHERE guildIDX=@guildIDX
   AND accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_UPGRADEINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_UPGRADEINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_UPGRADEINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_UPGRADEINFO]

	@ACCOUNT_IDX  INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;


SELECT idx, pos, classType, classBasic1, classBasic2, classBasic3, classBasic4, classSkill1, classSkill2, classSkill3, classSkill4, classTimeSlot, classLimitDate
  FROM (
	SELECT idx, 1 AS pos, class1_type AS classType, class1_basic01 AS classBasic1, class1_basic02 AS classBasic2, class1_basic03 AS classBasic3, class1_basic04 AS classBasic4, class1_skill1_sd AS classSkill1, class1_skill1_asd AS classSkill2, class1_skill1_ad AS classSkill3, class1_skill1_as AS classSkill4, class1_timeslot AS classTimeSlot, class1_limitdate AS classLimitDate
	  FROM dbo.userAbilityDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class1_type > 0

	UNION ALL

	SELECT idx, 2 AS pos, class2_type AS classType, class2_basic01 AS classBasic1, class2_basic02 AS classBasic2, class2_basic03 AS classBasic3, class2_basic04 AS classBasic4, class2_skill1_sd AS classSkill1, class2_skill1_asd AS classSkill2, class2_skill1_ad AS classSkill3, class2_skill1_as AS classSkill4, class2_timeslot AS classTimeSlot, class2_limitdate AS classLimitDate
	  FROM dbo.userAbilityDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class2_type > 0

	UNION ALL
	
	SELECT idx, 3 AS pos, class3_type AS classType, class3_basic01 AS classBasic1, class3_basic02 AS classBasic2, class3_basic03 AS classBasic3, class3_basic04 AS classBasic4, class3_skill1_sd AS classSkill1, class3_skill1_asd AS classSkill2, class3_skill1_ad AS classSkill3, class3_skill1_as AS classSkill4, class3_timeslot AS classTimeSlot, class3_limitdate AS classLimitDate
	  FROM dbo.userAbilityDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class3_type > 0

	UNION ALL

	SELECT idx, 4 AS pos, class4_type AS classType, class4_basic01 AS classBasic1, class4_basic02 AS classBasic2, class4_basic03 AS classBasic3, class4_basic04 AS classBasic4, class4_skill1_sd AS classSkill1, class4_skill1_asd AS classSkill2, class4_skill1_ad AS classSkill3, class4_skill1_as AS classSkill4, class4_timeslot AS classTimeSlot, class4_limitdate AS classLimitDate
	  FROM dbo.userAbilityDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class4_type > 0

	UNION ALL

	SELECT idx, 5 AS pos, class5_type AS classType, class5_basic01 AS classBasic1, class5_basic02 AS classBasic2, class5_basic03 AS classBasic3, class5_basic04 AS classBasic4, class5_skill1_sd AS classSkill1, class5_skill1_asd AS classSkill2, class5_skill1_ad AS classSkill3, class5_skill1_as AS classSkill4, class5_timeslot AS classTimeSlot, class5_limitdate AS classLimitDate
	  FROM dbo.userAbilityDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND class5_type > 0
  ) AS UpgradeHero
GO


-- ----------------------------
-- Procedure structure for game_clover_friend_receive_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_clover_friend_receive_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_clover_friend_receive_save]
GO

CREATE PROCEDURE [dbo].[game_clover_friend_receive_save]
(
	@UserIndex		int
,	@FriendIndex	int
,	@receiveDate	int
,	@receiveCount	int
)
AS

SET NOCOUNT ON

DECLARE	@Index INT

SET @Index = ISNULL((
	SELECT idx
	  FROM dbo.userFriendDB WITH( NOLOCK )
	 WHERE userAccIDX = @FriendIndex
	   AND FriendAccIDX = @UserIndex
), 0 )


IF ( @Index > 0 )
BEGIN

	-- update
	UPDATE dbo.userFriendDB
	   SET receiveBCloverCnt = receiveBCloverCnt + @receiveCount,
		   receiveCloverDate = @receiveDate
	 WHERE idx = @Index

	-- select
	SELECT idx, userAccIDX, receiveCloverDate, receiveBCloverCnt
	  FROM dbo.userFriendDB WITH( nolock )
	 WHERE idx = @Index

END
ELSE
BEGIN
	SELECT 0 as idx, 0 as userAccIDX, 0 as receiveCloverDate, 0 as receiveBCloverCnt
END
GO


-- ----------------------------
-- Procedure structure for game_character_rental_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_character_rental_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_character_rental_list]
GO

CREATE PROCEDURE [dbo].[game_character_rental_list]
(
	@accountIDX int
,	@selectDate datetime
)
AS

SET NOCOUNT ON

SELECT friendIDX, regDate
  FROM LosaGame_log.DBO.log_class_rental_history WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
   AND regDate >= @selectDate
GO


-- ----------------------------
-- Procedure structure for game_region_player_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_player_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_player_count]
GO

CREATE PROCEDURE [dbo].[game_region_player_count]
(
	@regionType int
)
AS

SET NOCOUNT ON

DECLARE @limitRenpoint int
SET @limitRenpoint = DBO.DEFINE_REGION_LIMIT_RENSPOINT()

SELECT COUNT(*)
  FROM dbo.userGameDB WITH(NOLOCK)
 WHERE regionType=@regionType
   AND renspoint > @limitRenpoint
GO


-- ----------------------------
-- Procedure structure for game_friend_best_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_best_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_best_delete]
GO

CREATE PROCEDURE [dbo].[game_friend_best_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userFriendBestDB
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for usp_user_set_migration
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_user_set_migration]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_user_set_migration]
GO

CREATE PROCEDURE [dbo].[usp_user_set_migration]

	@USER_ID		VARCHAR(128),
	@GUSER_ID		VARCHAR(20),
	@GUSER_LoginID	NVARCHAR(32),
	@ACCOUNT_IDX	INT					OUTPUT

AS

	SET NOCOUNT ON
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
	SET LOCK_TIMEOUT 10000

	DECLARE @nReturn				INT
	DECLARE @LOST_ACCOUNT_IDX		INT
	DECLARE @CONFIRM_ACCOUNT_IDX	INT
	DECLARE @CHECK_nickName			NVARCHAR(130)
	
	SET @nReturn=0
	SET @ACCOUNT_IDX=0
	SET @LOST_ACCOUNT_IDX=0       
	SET @CONFIRM_ACCOUNT_IDX=0       

	SELECT @LOST_ACCOUNT_IDX=AccountIDX, @CHECK_nickName=nickName FROM LosaGame.dbo.userMemberDB
	WHERE UserID=@USER_ID
	
	IF (@@ROWCOUNT=0)
	BEGIN
		INSERT INTO dbo.TBL_migration_error_log (AsiasoftID, GarenaUID, GarenaID, errorCode, regDate)
		VALUES (@USER_ID, @GUSER_ID, @GUSER_LoginID, -1, GETDATE())

		RETURN -1;
	END 

	IF (@@ERROR<>0)
	BEGIN
		RETURN -2;
	END 

	IF (RIGHT(@CHECK_nickName, 1) = '#')
	BEGIN
		INSERT INTO dbo.TBL_migration_error_log (AsiasoftID, GarenaUID, GarenaID, errorCode, regDate)
		VALUES (@USER_ID, @GUSER_ID, @GUSER_LoginID, -1, GETDATE())

		RETURN -1;
	END

	IF (EXISTS(SELECT * FROM dbo.TBL_migration_mapping_log WHERE GarenaUID=@GUSER_ID))
	BEGIN
		INSERT INTO dbo.TBL_migration_error_log (AsiasoftID, GarenaUID, GarenaID, errorCode, regDate)
		VALUES (@USER_ID, @GUSER_ID, @GUSER_LoginID, -3, GETDATE())

		RETURN -3;
	END

	IF (EXISTS(SELECT * FROM dbo.TBL_migration_mapping_log WHERE AsiasoftID=@USER_ID))
	BEGIN
		INSERT INTO dbo.TBL_migration_error_log (AsiasoftID, GarenaUID, GarenaID, errorCode, regDate)
		VALUES (@USER_ID, @GUSER_ID, @GUSER_LoginID, -4, GETDATE())

		RETURN -4;
	END

/*
	--Garena DB 에 데이터가 존재하는지 확인
	SELECT @CONFIRM_ACCOUNT_IDX=AccountIDX FROM dbo.userMemberDB
	WHERE UserID=@GUSER_ID
	
	IF (@CONFIRM_ACCOUNT_IDX!=0) 
	BEGIN
		RETURN -1;
	END 
*/

	BEGIN TRAN

	-- dbo.userMemberDB
	INSERT dbo.userMemberDB (userID, nickName, userPWD, email, mailling, userType, joinType, eventType, cpType, limitType, limitDate, regDate)
	SELECT @GUSER_ID, nickName, userPWD, email, mailling, userType, joinType, eventType, cpType, limitType, limitDate, regDate
	  FROM LosaGame.dbo.userMemberDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -5;
	END 

	SET @ACCOUNT_IDX=SCOPE_IDENTITY();

	-- dbo.userLoginDB
	INSERT dbo.userLoginDB ( accountIDX, encodeKey, gameServerID, userIP, connDate )
	SELECT @ACCOUNT_IDX, encodeKey, 0, userIP, connDate
	  FROM LosaGame.dbo.userLoginDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -6;
	END 
		
	-- dbo.userAbilityDB
	INSERT dbo.userAbilityDB (accountIDX, class1_type, class1_basic01, class1_basic02, class1_basic03, class1_basic04, class1_skill1_sd, class1_skill1_asd, class1_skill1_ad, class1_skill1_as, class1_timeslot, class1_limitdate, class2_type, class2_basic01, class2_basic02, class2_basic03, class2_basic04, class2_skill1_sd, class2_skill1_asd, class2_skill1_ad, class2_skill1_as, class2_timeslot, class2_limitdate, class3_type, class3_basic01, class3_basic02, class3_basic03, class3_basic04, class3_skill1_sd, class3_skill1_asd, class3_skill1_ad, class3_skill1_as, class3_timeslot, class3_limitdate, class4_type, class4_basic01, class4_basic02, class4_basic03, class4_basic04, class4_skill1_sd, class4_skill1_asd, class4_skill1_ad, class4_skill1_as, class4_timeslot, class4_limitdate, class5_type, class5_basic01, class5_basic02, class5_basic03, class5_basic04, class5_skill1_sd, class5_skill1_asd, class5_skill1_ad, class5_skill1_as, class5_timeslot, class5_limitdate, regDate)
	SELECT @ACCOUNT_IDX, class1_type, class1_basic01, class1_basic02, class1_basic03, class1_basic04, class1_skill1_sd, class1_skill1_asd, class1_skill1_ad, class1_skill1_as, class1_timeslot, class1_limitdate, class2_type, class2_basic01, class2_basic02, class2_basic03, class2_basic04, class2_skill1_sd, class2_skill1_asd, class2_skill1_ad, class2_skill1_as, class2_timeslot, class2_limitdate, class3_type, class3_basic01, class3_basic02, class3_basic03, class3_basic04, class3_skill1_sd, class3_skill1_asd, class3_skill1_ad, class3_skill1_as, class3_timeslot, class3_limitdate, class4_type, class4_basic01, class4_basic02, class4_basic03, class4_basic04, class4_skill1_sd, class4_skill1_asd, class4_skill1_ad, class4_skill1_as, class4_timeslot, class4_limitdate, class5_type, class5_basic01, class5_basic02, class5_basic03, class5_basic04, class5_skill1_sd, class5_skill1_asd, class5_skill1_ad, class5_skill1_as, class5_timeslot, class5_limitdate, regDate
	FROM LosaGame.dbo.userAbilityDB
	WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -7;
	END 

	-- dbo.userAwardDB
	INSERT dbo.userAwardDB (accountIDX, award1_type, award1_number, award1_point, award2_type, award2_number, award2_point, award3_type, award3_number, award3_point, award4_type, award4_number, award4_point, award5_type, award5_number, award5_point, award6_type, award6_number, award6_point, award7_type, award7_number, award7_point, award8_type, award8_number, award8_point, award9_type, award9_number, award9_point, award10_type, award10_number, award10_point, regDate)
	SELECT @ACCOUNT_IDX, award1_type, award1_number, award1_point, award2_type, award2_number, award2_point, award3_type, award3_number, award3_point, award4_type, award4_number, award4_point, award5_type, award5_number, award5_point, award6_type, award6_number, award6_point, award7_type, award7_number, award7_point, award8_type, award8_number, award8_point, award9_type, award9_number, award9_point, award10_type, award10_number, award10_point, regDate
	  FROM LosaGame.dbo.userAwardDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -8;
	END 

	-- dbo.userCharacterDB
	INSERT dbo.userCharacterDB (accountIDX, ClassType, CI_type, CI_gender, CI_beard, CI_face, CI_hair, CI_skinColor, CI_hairColor, CI_trinket, CI_position, CI_underwear, EI1_type, EI2_type, EI3_type, EI4_type, limitTime, limitType, leaderType, rentalType, rentalTime, awakeType, awakeTime, regDate)
	SELECT @ACCOUNT_IDX, ClassType, CI_type, CI_gender, CI_beard, CI_face, CI_hair, CI_skinColor, CI_hairColor, CI_trinket, CI_position, CI_underwear, EI1_type, EI2_type, EI3_type, EI4_type, limitTime, limitType, leaderType, rentalType, rentalTime, 0, 0, regDate
	  FROM LosaGame.dbo.userCharacterDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -9;
	END 

	-- dbo.userClassDB
	INSERT dbo.userClassDB (accountIDX, class1_type, class1_level, class1_expert, class1_stat, class2_type, class2_level, class2_expert, class2_stat, class3_type, class3_level, class3_expert, class3_stat, class4_type, class4_level, class4_expert, class4_stat, class5_type, class5_level, class5_expert, class5_stat, class6_type, class6_level, class6_expert, class6_stat, class7_type, class7_level, class7_expert, class7_stat, class8_type, class8_level, class8_expert, class8_stat, class9_type, class9_level, class9_expert, class9_stat, class10_type, class10_level, class10_expert, class10_stat)
	SELECT @ACCOUNT_IDX, class1_type, class1_level, class1_expert, 0, class2_type, class2_level, class2_expert, 0, class3_type, class3_level, class3_expert, 0, class4_type, class4_level, class4_expert, 0, class5_type, class5_level, class5_expert, 0, class6_type, class6_level, class6_expert, 0, class7_type, class7_level, class7_expert, 0, class8_type, class8_level, class8_expert, 0, class9_type, class9_level, class9_expert, 0, class10_type, class10_level, class10_expert, 0
	  FROM LosaGame.dbo.userClassDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -10;
	END 

	-- dbo.userEventDB
	INSERT dbo.userEventDB (accountIDX, value1, value2, eventType, regDate)
	SELECT @ACCOUNT_IDX, value1, value2, eventType, regDate
	  FROM LosaGame.dbo.userEventDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -11;
	END 

	-- dbo.userFishDB
	INSERT dbo.userFishDB (accountIDX, fish1_type, fish1_an, fish2_type, fish2_an, fish3_type, fish3_an, fish4_type, fish4_an, fish5_type, fish5_an, fish6_type, fish6_an, fish7_type, fish7_an, fish8_type, fish8_an, fish9_type, fish9_an, fish10_type, fish10_an, fish11_type, fish11_an, fish12_type, fish12_an, fish13_type, fish13_an, fish14_type, fish14_an, fish15_type, fish15_an, fish16_type, fish16_an, fish17_type, fish17_an, fish18_type, fish18_an, fish19_type, fish19_an, fish20_type, fish20_an, regDate)
	SELECT @ACCOUNT_IDX, fish1_type, fish1_an, fish2_type, fish2_an, fish3_type, fish3_an, fish4_type, fish4_an, fish5_type, fish5_an, fish6_type, fish6_an, fish7_type, fish7_an, fish8_type, fish8_an, fish9_type, fish9_an, fish10_type, fish10_an, fish11_type, fish11_an, fish12_type, fish12_an, fish13_type, fish13_an, fish14_type, fish14_an, fish15_type, fish15_an, fish16_type, fish16_an, fish17_type, fish17_an, fish18_type, fish18_an, fish19_type, fish19_an, fish20_type, fish20_an, regDate
	  FROM LosaGame.dbo.userFishDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -12;
	END 

	-- dbo.userGameDB
	INSERT dbo.userGameDB (accountIDX, userState, gameMoney, playTime, conn_count, userLevel, userEXP, userFishingLevel, userFishingEXP, userExcavationLevel, userExcavationEXP, userHerocEXP, userHerosEXP, rencpoint, renspoint, relateLevel, regionType, refillData, connDate, regDate)
	SELECT @ACCOUNT_IDX, userState, gameMoney, playTime, conn_count, userLevel, userEXP, userFishingLevel, userFishingEXP, userExcavationLevel, userExcavationEXP, userHerocEXP, userHerosEXP, rencpoint, renspoint, relateLevel, regionType, refillData, connDate, regDate
	  FROM LosaGame.dbo.userGameDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -13;
	END 

	-- dbo.userHqDB
	INSERT dbo.userHqDB (accountIDX, class1_type, class1_posx, class1_posy, class2_type, class2_posx, class2_posy, class3_type, class3_posx, class3_posy, class4_type, class4_posx, class4_posy, class5_type, class5_posx, class5_posy, class6_type, class6_posx, class6_posy, class7_type, class7_posx, class7_posy, class8_type, class8_posx, class8_posy, class9_type, class9_posx, class9_posy, class10_type, class10_posx, class10_posy, lockType, regDate)
	SELECT @ACCOUNT_IDX, class1_type, class1_posx, class1_posy, class2_type, class2_posx, class2_posy, class3_type, class3_posx, class3_posy, class4_type, class4_posx, class4_posy, class5_type, class5_posx, class5_posy, class6_type, class6_posx, class6_posy, class7_type, class7_posx, class7_posy, class8_type, class8_posx, class8_posy, class9_type, class9_posx, class9_posy, class10_type, class10_posx, class10_posy, lockType, regDate
	  FROM LosaGame.dbo.userHqDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -14;
	END 

	-- dbo.userItemDB
	INSERT dbo.userItemDB (accountIDX, item1_type, item1_code, item2_type, item2_code, item3_type, item3_code, item4_type, item4_code, item5_type, item5_code, item6_type, item6_code, item7_type, item7_code, item8_type, item8_code, item9_type, item9_code, item10_type, item10_code, item11_type, item11_code, item12_type, item12_code, item13_type, item13_code, item14_type, item14_code, item15_type, item15_code, item16_type, item16_code, item17_type, item17_code, item18_type, item18_code, item19_type, item19_code, item20_type, item20_code)
	SELECT @ACCOUNT_IDX, item1_type, item1_code, item2_type, item2_code, item3_type, item3_code, item4_type, item4_code, item5_type, item5_code, item6_type, item6_code, item7_type, item7_code, item8_type, item8_code, item9_type, item9_code, item10_type, item10_code, item11_type, item11_code, item12_type, item12_code, item13_type, item13_code, item14_type, item14_code, item15_type, item15_code, item16_type, item16_code, item17_type, item17_code, item18_type, item18_code, item19_type, item19_code, item20_type, item20_code
	  FROM LosaGame.dbo.userItemDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -15;
	END 

	-- dbo.userItemEtcDB
	INSERT dbo.userItemEtcDB (accountIDX, item1_type, item1_value1, item1_value2, item2_type, item2_value1, item2_value2, item3_type, item3_value1, item3_value2, item4_type, item4_value1, item4_value2, item5_type, item5_value1, item5_value2, item6_type, item6_value1, item6_value2, item7_type, item7_value1, item7_value2, item8_type, item8_value1, item8_value2, item9_type, item9_value1, item9_value2, item10_type, item10_value1, item10_value2, item11_type, item11_value1, item11_value2, item12_type, item12_value1, item12_value2, item13_type, item13_value1, item13_value2, item14_type, item14_value1, item14_value2, item15_type, item15_value1, item15_value2, item16_type, item16_value1, item16_value2, item17_type, item17_value1, item17_value2, item18_type, item18_value1, item18_value2, item19_type, item19_value1, item19_value2, item20_type, item20_value1, item20_value2)
	SELECT @ACCOUNT_IDX, item1_type, item1_value1, item1_value2, item2_type, item2_value1, item2_value2, item3_type, item3_value1, item3_value2, item4_type, item4_value1, item4_value2, item5_type, item5_value1, item5_value2, item6_type, item6_value1, item6_value2, item7_type, item7_value1, item7_value2, item8_type, item8_value1, item8_value2, item9_type, item9_value1, item9_value2, item10_type, item10_value1, item10_value2, item11_type, item11_value1, item11_value2, item12_type, item12_value1, item12_value2, item13_type, item13_value1, item13_value2, item14_type, item14_value1, item14_value2, item15_type, item15_value1, item15_value2, item16_type, item16_value1, item16_value2, item17_type, item17_value1, item17_value2, item18_type, item18_value1, item18_value2, item19_type, item19_value1, item19_value2, item20_type, item20_value1, item20_value2
	  FROM LosaGame.dbo.userItemEtcDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -16;
	END 

	-- dbo.userItemExtraDB
	INSERT dbo.userItemExtraDB (accountIDX, item1_type, item1_reinforce, item1_slotindex, item1_tradetype, item1_mcustom, item1_fcustom, item1_failexp, item1_limitType, item1_limitDate, item2_type, item2_reinforce, item2_slotindex, item2_tradetype, item2_mcustom, item2_fcustom, item2_failexp, item2_limitType, item2_limitDate, item3_type, item3_reinforce, item3_slotindex, item3_tradetype, item3_mcustom, item3_fcustom, item3_failexp, item3_limitType, item3_limitDate, item4_type, item4_reinforce, item4_slotindex, item4_tradetype, item4_mcustom, item4_fcustom, item4_failexp, item4_limitType, item4_limitDate, item5_type, item5_reinforce, item5_slotindex, item5_tradetype, item5_mcustom, item5_fcustom, item5_failexp, item5_limitType, item5_limitDate, item6_type, item6_reinforce, item6_slotindex, item6_tradetype, item6_mcustom, item6_fcustom, item6_failexp, item6_limitType, item6_limitDate, item7_type, item7_reinforce, item7_slotindex, item7_tradetype, item7_mcustom, item7_fcustom, item7_failexp, item7_limitType, item7_limitDate, item8_type, item8_reinforce, item8_slotindex, item8_tradetype, item8_mcustom, item8_fcustom, item8_failexp, item8_limitType, item8_limitDate, item9_type, item9_reinforce, item9_slotindex, item9_tradetype, item9_mcustom, item9_fcustom, item9_failexp, item9_limitType, item9_limitDate, item10_type, item10_reinforce, item10_slotindex, item10_tradetype, item10_mcustom, item10_fcustom, item10_failexp, item10_limitType, item10_limitDate, regDate)
	SELECT @ACCOUNT_IDX, item1_type, item1_reinforce, item1_slotindex, item1_tradetype, 0, 0, 0, item1_limitType, item1_limitDate, item2_type, item2_reinforce, item2_slotindex, item2_tradetype, 0, 0, 0, item2_limitType, item2_limitDate, item3_type, item3_reinforce, item3_slotindex, item3_tradetype, 0, 0, 0, item3_limitType, item3_limitDate, item4_type, item4_reinforce, item4_slotindex, item4_tradetype, 0, 0, 0, item4_limitType, item4_limitDate, item5_type, item5_reinforce, item5_slotindex, item5_tradetype, 0, 0, 0, item5_limitType, item5_limitDate, item6_type, item6_reinforce, item6_slotindex, item6_tradetype, 0, 0, 0, item6_limitType, item6_limitDate, item7_type, item7_reinforce, item7_slotindex, item7_tradetype, 0, 0, 0, item7_limitType, item7_limitDate, item8_type, item8_reinforce, item8_slotindex, item8_tradetype, 0, 0, 0, item8_limitType, item8_limitDate, item9_type, item9_reinforce, item9_slotindex, item9_tradetype, 0, 0, 0, item9_limitType, item9_limitDate, item10_type, item10_reinforce, item10_slotindex, item10_tradetype, 0, 0, 0, item10_limitType, item10_limitDate, regDate
	  FROM LosaGame.dbo.userItemExtraDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -17;
	END 

	-- dbo.userItemMedalDB
	INSERT dbo.userItemMedalDB (accountIDX, item1_type, item1_class, item1_limitType, item1_limitDate, item2_type, item2_class, item2_limitType, item2_limitDate, item3_type, item3_class, item3_limitType, item3_limitDate, item4_type, item4_class, item4_limitType, item4_limitDate, item5_type, item5_class, item5_limitType, item5_limitDate, item6_type, item6_class, item6_limitType, item6_limitDate, item7_type, item7_class, item7_limitType, item7_limitDate, item8_type, item8_class, item8_limitType, item8_limitDate, item9_type, item9_class, item9_limitType, item9_limitDate, item10_type, item10_class, item10_limitType, item10_limitDate, regDate)
	SELECT @ACCOUNT_IDX, item1_type, item1_class, item1_limitType, item1_limitDate, item2_type, item2_class, item2_limitType, item2_limitDate, item3_type, item3_class, item3_limitType, item3_limitDate, item4_type, item4_class, item4_limitType, item4_limitDate, item5_type, item5_class, item5_limitType, item5_limitDate, item6_type, item6_class, item6_limitType, item6_limitDate, item7_type, item7_class, item7_limitType, item7_limitDate, item8_type, item8_class, item8_limitType, item8_limitDate, item9_type, item9_class, item9_limitType, item9_limitDate, item10_type, item10_class, item10_limitType, item10_limitDate, regDate
	  FROM LosaGame.dbo.userItemMedalDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -18;
	END 

	-- dbo.userItemMedalExtendDB
	INSERT dbo.userItemMedalExtendDB (accountIDX, medal1_class, medal1_slot, medal1_period, medal2_class, medal2_slot, medal2_period, medal3_class, medal3_slot, medal3_period, medal4_class, medal4_slot, medal4_period, medal5_class, medal5_slot, medal5_period, medal6_class, medal6_slot, medal6_period, medal7_class, medal7_slot, medal7_period, medal8_class, medal8_slot, medal8_period, medal9_class, medal9_slot, medal9_period, medal10_class, medal10_slot, medal10_period, regDate)
	SELECT @ACCOUNT_IDX, medal1_class, medal1_slot, medal1_period, medal2_class, medal2_slot, medal2_period, medal3_class, medal3_slot, medal3_period, medal4_class, medal4_slot, medal4_period, medal5_class, medal5_slot, medal5_period, medal6_class, medal6_slot, medal6_period, medal7_class, medal7_slot, medal7_period, medal8_class, medal8_slot, medal8_period, medal9_class, medal9_slot, medal9_period, medal10_class, medal10_slot, medal10_period, regDate
	  FROM LosaGame.dbo.userItemMedalExtendDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -19;
	END 

	-- dbo.userPieceDB
	INSERT dbo.userPieceDB (accountIDX, piece1_type, piece1_value1, piece1_value2, piece1_cnt, piece2_type, piece2_value1, piece2_value2, piece2_cnt, piece3_type, piece3_value1, piece3_value2, piece3_cnt, piece4_type, piece4_value1, piece4_value2, piece4_cnt, piece5_type, piece5_value1, piece5_value2, piece5_cnt, piece6_type, piece6_value1, piece6_value2, piece6_cnt, piece7_type, piece7_value1, piece7_value2, piece7_cnt, piece8_type, piece8_value1, piece8_value2, piece8_cnt, piece9_type, piece9_value1, piece9_value2, piece9_cnt, piece10_type, piece10_value1, piece10_value2, piece10_cnt, regDate)
	SELECT @ACCOUNT_IDX, piece1_type, piece1_value1, piece1_value2, piece1_cnt, piece2_type, piece2_value1, piece2_value2, piece2_cnt, piece3_type, piece3_value1, piece3_value2, piece3_cnt, piece4_type, piece4_value1, piece4_value2, piece4_cnt, piece5_type, piece5_value1, piece5_value2, piece5_cnt, piece6_type, piece6_value1, piece6_value2, piece6_cnt, piece7_type, piece7_value1, piece7_value2, piece7_cnt, piece8_type, piece8_value1, piece8_value2, piece8_cnt, piece9_type, piece9_value1, piece9_value2, piece9_cnt, piece10_type, piece10_value1, piece10_value2, piece10_cnt, regDate
	  FROM LosaGame.dbo.userPieceDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -20;
	END 

	-- dbo.userQuestCompleteDB
	INSERT dbo.userQuestCompleteDB (accountIDX, quest1_type, quest1_time, quest2_type, quest2_time, quest3_type, quest3_time, quest4_type, quest4_time, quest5_type, quest5_time, quest6_type, quest6_time, quest7_type, quest7_time, quest8_type, quest8_time, quest9_type, quest9_time, quest10_type, quest10_time, quest11_type, quest11_time, quest12_type, quest12_time, quest13_type, quest13_time, quest14_type, quest14_time, quest15_type, quest15_time, quest16_type, quest16_time, quest17_type, quest17_time, quest18_type, quest18_time, quest19_type, quest19_time, quest20_type, quest20_time, regDate)
	SELECT @ACCOUNT_IDX, quest1_type, quest1_time, quest2_type, quest2_time, quest3_type, quest3_time, quest4_type, quest4_time, quest5_type, quest5_time, quest6_type, quest6_time, quest7_type, quest7_time, quest8_type, quest8_time, quest9_type, quest9_time, quest10_type, quest10_time, quest11_type, quest11_time, quest12_type, quest12_time, quest13_type, quest13_time, quest14_type, quest14_time, quest15_type, quest15_time, quest16_type, quest16_time, quest17_type, quest17_time, quest18_type, quest18_time, quest19_type, quest19_time, quest20_type, quest20_time, regDate
	  FROM LosaGame.dbo.userQuestCompleteDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -21;
	END 

	-- dbo.userQuestDB
	INSERT dbo.userQuestDB (accountIDX, quest1_type, quest1_value1, quest1_value2, quest1_time, quest2_type, quest2_value1, quest2_value2, quest2_time, quest3_type, quest3_value1, quest3_value2, quest3_time, quest4_type, quest4_value1, quest4_value2, quest4_time, quest5_type, quest5_value1, quest5_value2, quest5_time, quest6_type, quest6_value1, quest6_value2, quest6_time, quest7_type, quest7_value1, quest7_value2, quest7_time, quest8_type, quest8_value1, quest8_value2, quest8_time, quest9_type, quest9_value1, quest9_value2, quest9_time, quest10_type, quest10_value1, quest10_value2, quest10_time, quest11_type, quest11_value1, quest11_value2, quest11_time, quest12_type, quest12_value1, quest12_value2, quest12_time, quest13_type, quest13_value1, quest13_value2, quest13_time, quest14_type, quest14_value1, quest14_value2, quest14_time, quest15_type, quest15_value1, quest15_value2, quest15_time, quest16_type, quest16_value1, quest16_value2, quest16_time, quest17_type, quest17_value1, quest17_value2, quest17_time, quest18_type, quest18_value1, quest18_value2, quest18_time, quest19_type, quest19_value1, quest19_value2, quest19_time, quest20_type, quest20_value1, quest20_value2, quest20_time, regDate)
	SELECT @ACCOUNT_IDX, quest1_type, quest1_value1, quest1_value2, quest1_time, quest2_type, quest2_value1, quest2_value2, quest2_time, quest3_type, quest3_value1, quest3_value2, quest3_time, quest4_type, quest4_value1, quest4_value2, quest4_time, quest5_type, quest5_value1, quest5_value2, quest5_time, quest6_type, quest6_value1, quest6_value2, quest6_time, quest7_type, quest7_value1, quest7_value2, quest7_time, quest8_type, quest8_value1, quest8_value2, quest8_time, quest9_type, quest9_value1, quest9_value2, quest9_time, quest10_type, quest10_value1, quest10_value2, quest10_time, quest11_type, quest11_value1, quest11_value2, quest11_time, quest12_type, quest12_value1, quest12_value2, quest12_time, quest13_type, quest13_value1, quest13_value2, quest13_time, quest14_type, quest14_value1, quest14_value2, quest14_time, quest15_type, quest15_value1, quest15_value2, quest15_time, quest16_type, quest16_value1, quest16_value2, quest16_time, quest17_type, quest17_value1, quest17_value2, quest17_time, quest18_type, quest18_value1, quest18_value2, quest18_time, quest19_type, quest19_value1, quest19_value2, quest19_time, quest20_type, quest20_value1, quest20_value2, quest20_time, regDate
	  FROM LosaGame.dbo.userQuestDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -22;
	END 

	-- dbo.userRankingDB_award
	INSERT dbo.userRankingDB_award (accountIDX, awardLevel, expert, award1_prev, award1_now, award1_point, award2_prev, award2_now, award2_point, award3_prev, award3_now, award3_point, award4_prev, award4_now, award4_point, award5_prev, award5_now, award5_point, award6_prev, award6_now, award6_point, award7_prev, award7_now, award7_point, award8_prev, award8_now, award8_point, award9_prev, award9_now, award9_point, award10_prev, award10_now, award10_point, award11_prev, award11_now, award11_point, award12_prev, award12_now, award12_point, award13_prev, award13_now, award13_point, award14_prev, award14_now, award14_point, award15_prev, award15_now, award15_point, award16_prev, award16_now, award16_point, award17_prev, award17_now, award17_point, award18_prev, award18_now, award18_point, award19_prev, award19_now, award19_point, award20_prev, award20_now, award20_point, award21_prev, award21_now, award21_point, award22_prev, award22_now, award22_point, award23_prev, award23_now, award23_point, award24_prev, award24_now, award24_point, award25_prev, award25_now, award25_point, award26_prev, award26_now, award26_point, award27_prev, award27_now, award27_point, regDate)
	SELECT @ACCOUNT_IDX, awardLevel, expert, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, regDate
	  FROM LosaGame.dbo.userRankingDB_award
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -23;
	END 

	-- dbo.userRecordBattleDB
	INSERT dbo.userRecordBattleDB (accountIDX, type1_win, type1_lose, type1_kill, type1_death, type2_win, type2_lose, type2_kill, type2_death, type3_win, type3_lose, type3_kill, type3_death, type4_win, type4_lose, type4_kill, type4_death, regDate)
	SELECT @ACCOUNT_IDX, type1_win, type1_lose, type1_kill, type1_death, type2_win, type2_lose, type2_kill, type2_death, type3_win, type3_lose, type3_kill, type3_death, type4_win, type4_lose, type4_kill, type4_death, regDate
	  FROM LosaGame.dbo.userRecordBattleDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -24;
	END 

	-- dbo.userRelativeLevelDB
	INSERT dbo.userRelativeLevelDB (accountIDX, weekend_BackupLevel, weekend_BackupExp, init_time, reward_State, regDate)
	SELECT @ACCOUNT_IDX, weekend_BackupLevel, weekend_BackupExp, init_time, reward_State, regDate
	  FROM LosaGame.dbo.userRelativeLevelDB
	 WHERE AccountIDX=@LOST_ACCOUNT_IDX

	IF (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -25;
	END 

	-- dbo.userMoneyDB
	INSERT INTO dbo.userMoneyDB (accountIDX, realCash, bonusCash, regDate)
	VALUES (@ACCOUNT_IDX, 0, 0, GETDATE())

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -27;
	END

	-- dbo.TBL_migration_mapping_log
	INSERT INTO dbo.TBL_migration_mapping_log (accountIDX, GarenaID, GarenaUID, AsiasoftID, regDate)
	VALUES (@ACCOUNT_IDX, @GUSER_LoginID, @GUSER_ID, @USER_ID, GETDATE())

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN -26;
	END 

	COMMIT TRAN
	
	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_league_reward_del
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_reward_del]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_reward_del]
GO

CREATE PROCEDURE [dbo].[game_league_reward_del]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userLeagueRewardDB
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_event_openbeta_coin_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_event_openbeta_coin_log]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_event_openbeta_coin_log]
GO

CREATE PROCEDURE [dbo].[game_event_openbeta_coin_log]
(
	@accountIDX int
,	@coin int
)
AS

SET NOCOUNT ON

INSERT INTO LosaGame_log.DBO.log_event_openbeta_coin (accountIDX, coin, flag, regDate)
VALUES (@accountIDX, @coin, 0, GETDATE())
GO


-- ----------------------------
-- Procedure structure for web_valentine_daily_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_valentine_daily_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_valentine_daily_add]
GO

CREATE PROCEDURE [dbo].[web_valentine_daily_add]
(
	@userId varchar(20)
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @amount_1 int;
		DECLARE @amount_2 int;
		DECLARE @rewardId_1 int;
		DECLARE @rewardId_2 int;
		DECLARE @missionCnt int;
		SET @missionCnt = 0;
		SET @rewardId_1 = 1;
		SET @rewardId_2 = 2;
		SET @amount_1 = 0;
		SET @amount_2 = 0;

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END

		--Check Event Available
		IF NOT GETDATE() BETWEEN '2019-02-04 07:00' AND '2019-02-18 05:00'
		BEGIN
			RETURN (-2)
		END

		--Check Mission Complete
		SELECT @cnt = count(*) FROM WebEventValentineDailyLog WHERE CONVERT(DATE, CompleteDate) = CONVERT(DATE, GETDATE()) AND AccountIdx = @accountIdx AND ItemId IN (@rewardId_1, @rewardId_2);
		IF @cnt > 0
		BEGIN
			RETURN (-3)
		END

		--Check User Mission
		--1 Seed form each kill at TDM mode
		SELECT
			@missionCnt = ISNULL(SUM(kill_count), 0)
		FROM (
			SELECT
				accountIDX,
				sum(l.[kill]) AS 'kill_count'
			FROM  [LosaLogData].[dbo].[log_data_play] l WITH (NOLOCK)
			WHERE playTime > 0
			AND peso > 0
			AND l.modeType = 2
			AND DATEADD(day, DATEDIFF(day, 0, GETDATE() - 1), 0) = DATEADD(day, DATEDIFF(day, 0, regDate), 0) 
			GROUP BY accountIDX
		) a
		WHERE accountIDX = @accountIdx
		GROUP BY accountIDX;

		IF @missionCnt IS NULL
		BEGIN
			SET @missionCnt = 0
		END

		IF @missionCnt > 0
		BEGIN
			--Max 35 per day
			IF @missionCnt > 35
			BEGIN
				SET @missionCnt = 35
			END
			SET @amount_1 = @missionCnt * 2
		END	

		--1 Golden Seed from each 100BP Donation
		SELECT
			@missionCnt = ISNULL(SUM(New), 0)
		FROM WebTransaction
		WHERE DATEADD(day, DATEDIFF(day, 0, GETDATE() - 1), 0) = DATEADD(day, DATEDIFF(day, 0, Time), 0)
		AND Uid = @userId

		IF @missionCnt IS NULL
		BEGIN
			SET @missionCnt = 0
		END

		IF @missionCnt > 0
		BEGIN
			--Max 50*100 per day
			IF @missionCnt > 5000
			BEGIN
				SET @missionCnt = 5000
			END
			SET @amount_2 = @missionCnt / 100
		END

		IF @amount_1 < 1 AND @amount_2 < 1
		BEGIN
			RETURN (-4)
		END

		-- TRAN START
		BEGIN TRAN		
		-- Reward 1
		IF @amount_1 > 0
		BEGIN
			SELECT @cnt = count(*) FROM WebEventValentineUserItem WHERE ItemId = @rewardId_1 AND AccountIdx = @accountIdx;
			IF @cnt = 0
				BEGIN
					INSERT INTO WebEventValentineUserItem (AccountIdx, ItemId, Amount) VALUES (@accountIdx, @rewardId_1, @amount_1);
				END
			ELSE
				BEGIN
					UPDATE WebEventValentineUserItem SET Amount += @amount_1 WHERE AccountIdx = @accountIdx AND ItemId = @rewardId_1;
				END

			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-5)
				END

			-- Log
			INSERT INTO WebEventValentineDailyLog (AccountIdx, ItemId, Amount, CompleteDate ) VALUES (@accountIdx, @rewardId_1, @amount_1, GETDATE());
			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-6)
				END	
		END

		IF @amount_2 > 0
		BEGIN
			SELECT @cnt = count(*) FROM WebEventValentineUserItem WHERE ItemId = @rewardId_2 AND AccountIdx = @accountIdx;
			IF @cnt = 0
				BEGIN
					INSERT INTO WebEventValentineUserItem (AccountIdx, ItemId, Amount) VALUES (@accountIdx, @rewardId_2, @amount_2);
				END
			ELSE
				BEGIN
					UPDATE WebEventValentineUserItem SET Amount += @amount_2 WHERE AccountIdx = @accountIdx AND ItemId = @rewardId_2;
				END

			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-5)
				END

			-- Log
			INSERT INTO WebEventValentineDailyLog (AccountIdx, ItemId, Amount, CompleteDate ) VALUES (@accountIdx, @rewardId_2, @amount_2, GETDATE());
			IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
				BEGIN
					ROLLBACK TRAN
					RETURN (-6)
				END	
		END

		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (1)
	END
GO


-- ----------------------------
-- Procedure structure for game_spentGold_set_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_spentGold_set_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_spentGold_set_add]
GO

CREATE PROCEDURE [dbo].[game_spentGold_set_add]

	@ACCOUNT_IDX		INT,
	@SPENT_GOLD			INT

AS

	SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	DECLARE @GET_DATE		DATETIME
	SET @GET_DATE=GETDATE();

	BEGIN TRAN

		-- 골드 소비 내역 테이블에 Insert
		INSERT dbo.userSpentGoldLogDB WITH (XLOCK, ROWLOCK) (RegDate, AccountIDX, UserSpentGold) 
		VALUES (@GET_DATE, @ACCOUNT_IDX, @SPENT_GOLD)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN;
		END 

		-- 누적 테이블에 Insert or Update		
		;MERGE dbo.userSpentGoldDB as TARGET
		USING (SELECT @ACCOUNT_IDX, @SPENT_GOLD) AS SOURCE (AccountIDX, UserSpentGold)
		ON (TARGET.AccountIDX=SOURCE.AccountIDX)
		WHEN MATCHED THEN
			UPDATE SET TARGET.UserSpentGold=TARGET.UserSpentGold+SOURCE.UserSpentGold
		WHEN NOT MATCHED THEN
			INSERT (AccountIDX, UserSpentGold) VALUES (SOURCE.AccountIDX, SOURCE.UserSpentGold);

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN
			RETURN;
		END 

	COMMIT TRAN		

	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_league_user_reward_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_user_reward_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_user_reward_get_data]
GO

CREATE PROCEDURE [dbo].[game_league_user_reward_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, sendNickname, leagueName, roundnum, maxRound, presentCode1, presentCode2, presentCode3, presentCode4
  FROM dbo.userLeagueRewardUserDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
   AND regDate >= DATEADD(d, -14, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_quest_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_quest_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_quest_add]
GO

CREATE PROCEDURE [dbo].[game_quest_add]
(
	@accountIDX int
,	@quest1_type int
,	@quest1_value1 int
,	@quest1_value2 int
,	@quest1_time int
,	@quest2_type int
,	@quest2_value1 int
,	@quest2_value2 int
,	@quest2_time int
,	@quest3_type int
,	@quest3_value1 int
,	@quest3_value2 int
,	@quest3_time int
,	@quest4_type int
,	@quest4_value1 int
,	@quest4_value2 int
,	@quest4_time int
,	@quest5_type int
,	@quest5_value1 int
,	@quest5_value2 int
,	@quest5_time int
,	@quest6_type int
,	@quest6_value1 int
,	@quest6_value2 int
,	@quest6_time int
,	@quest7_type int
,	@quest7_value1 int
,	@quest7_value2 int
,	@quest7_time int
,	@quest8_type int
,	@quest8_value1 int
,	@quest8_value2 int
,	@quest8_time int
,	@quest9_type int
,	@quest9_value1 int
,	@quest9_value2 int
,	@quest9_time int
,	@quest10_type int
,	@quest10_value1 int
,	@quest10_value2 int
,	@quest10_time int
,	@quest11_type int
,	@quest11_value1 int
,	@quest11_value2 int
,	@quest11_time int
,	@quest12_type int
,	@quest12_value1 int
,	@quest12_value2 int
,	@quest12_time int
,	@quest13_type int
,	@quest13_value1 int
,	@quest13_value2 int
,	@quest13_time int
,	@quest14_type int
,	@quest14_value1 int
,	@quest14_value2 int
,	@quest14_time int
,	@quest15_type int
,	@quest15_value1 int
,	@quest15_value2 int
,	@quest15_time int
,	@quest16_type int
,	@quest16_value1 int
,	@quest16_value2 int
,	@quest16_time int
,	@quest17_type int
,	@quest17_value1 int
,	@quest17_value2 int
,	@quest17_time int
,	@quest18_type int
,	@quest18_value1 int
,	@quest18_value2 int
,	@quest18_time int
,	@quest19_type int
,	@quest19_value1 int
,	@quest19_value2 int
,	@quest19_time int
,	@quest20_type int
,	@quest20_value1 int
,	@quest20_value2 int
,	@quest20_time int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userQuestDB (
	accountIDX, 
	quest1_type, quest1_value1, quest1_value2, quest1_time, quest2_type, quest2_value1, quest2_value2, quest2_time, quest3_type, quest3_value1, quest3_value2, quest3_time, 
	quest4_type, quest4_value1, quest4_value2, quest4_time, quest5_type, quest5_value1, quest5_value2, quest5_time, quest6_type, quest6_value1, quest6_value2, quest6_time, 
	quest7_type, quest7_value1, quest7_value2, quest7_time, quest8_type, quest8_value1, quest8_value2, quest8_time, quest9_type, quest9_value1, quest9_value2, quest9_time, 
	quest10_type, quest10_value1, quest10_value2, quest10_time, quest11_type, quest11_value1, quest11_value2, quest11_time, quest12_type, quest12_value1, quest12_value2, quest12_time, 
	quest13_type, quest13_value1, quest13_value2, quest13_time, quest14_type, quest14_value1, quest14_value2, quest14_time, quest15_type, quest15_value1, quest15_value2, quest15_time, 
	quest16_type, quest16_value1, quest16_value2, quest16_time, quest17_type, quest17_value1, quest17_value2, quest17_time, quest18_type, quest18_value1, quest18_value2, quest18_time,
	quest19_type, quest19_value1, quest19_value2, quest19_time, quest20_type, quest20_value1, quest20_value2, quest20_time) 
VALUES (
	@accountIDX,
	@quest1_type, @quest1_value1, @quest1_value2, @quest1_time, @quest2_type, @quest2_value1, @quest2_value2, @quest2_time, @quest3_type, @quest3_value1, @quest3_value2, @quest3_time, 
	@quest4_type, @quest4_value1, @quest4_value2, @quest4_time, @quest5_type, @quest5_value1, @quest5_value2, @quest5_time, @quest6_type, @quest6_value1, @quest6_value2, @quest6_time, 
	@quest7_type, @quest7_value1, @quest7_value2, @quest7_time, @quest8_type, @quest8_value1, @quest8_value2, @quest8_time, @quest9_type, @quest9_value1, @quest9_value2, @quest9_time, 
	@quest10_type, @quest10_value1, @quest10_value2, @quest10_time, @quest11_type, @quest11_value1, @quest11_value2, @quest11_time, @quest12_type, @quest12_value1, @quest12_value2, @quest12_time, 
	@quest13_type, @quest13_value1, @quest13_value2, @quest13_time, @quest14_type, @quest14_value1, @quest14_value2, @quest14_time, @quest15_type, @quest15_value1, @quest15_value2, @quest15_time, 
	@quest16_type, @quest16_value1, @quest16_value2, @quest16_time, @quest17_type, @quest17_value1, @quest17_value2, @quest17_time, @quest18_type, @quest18_value1, @quest18_value2, @quest18_time,
	@quest19_type, @quest19_value1, @quest19_value2, @quest19_time, @quest20_type, @quest20_value1, @quest20_value2, @quest20_time
)
GO


-- ----------------------------
-- Procedure structure for USP_ADM_ITEM_SET_ADD
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_ITEM_SET_ADD]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_ITEM_SET_ADD]
GO

CREATE PROCEDURE [dbo].[USP_ADM_ITEM_SET_ADD]

	@RECV_USER		VARCHAR(20),
	@ITEM_TYPE		SMALLINT,
	@VALUE1			INT,
	@VALUE2			INT

AS     

	SET NOCOUNT ON;
	SET LOCK_TIMEOUT 10000;

	DECLARE @nReturn			INT
	DECLARE @CHECK_INDEX		INT
	DECLARE @SEND_ACCOUNT_IDX	INT
	DECLARE @RECV_ACCOUNT_IDX	INT
	DECLARE @ID_TYPE			TINYINT
	DECLARE @SEND_USER			NVARCHAR(20)

	SET @nReturn = 0		-- true
	SET @CHECK_INDEX = -1
	SET @SEND_USER = 'DeveloperK'
	SET @ID_TYPE = 1

	EXEC @CHECK_INDEX = dbo.usp_user_get_accountidx @SEND_USER, @ID_TYPE, @SEND_ACCOUNT_IDX OUTPUT
	IF (@CHECK_INDEX <> 0) or (@SEND_ACCOUNT_IDX = 0)
	BEGIN
		RETURN -1;
	END

	EXEC @CHECK_INDEX = dbo.usp_user_get_accountidx @RECV_USER, @ID_TYPE, @RECV_ACCOUNT_IDX OUTPUT
	IF (@CHECK_INDEX <> 0) or (@RECV_ACCOUNT_IDX = 0)
	BEGIN
		RETURN -2;
	END

	BEGIN TRAN

		INSERT INTO dbo.userPresentDB WITH (XLOCK, ROWLOCK) (
			sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate
		)
		VALUES (
			@SEND_ACCOUNT_IDX, @RECV_ACCOUNT_IDX, @ITEM_TYPE, @VALUE1, @VALUE2, 0, 0, 3, 1, GETDATE()+28, GETDATE()
		)

		IF (@@ROWCOUNT=0) or (@@ERROR<>0)
		BEGIN
			ROLLBACK TRAN;
			RETURN -3;
		END 

	COMMIT TRAN

	RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_friend_list_asc_debug
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_list_asc_debug]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_list_asc_debug]
GO

CREATE PROCEDURE [dbo].[game_friend_list_asc_debug]
(
	@idx		int
,	@accountIDX int
,	@topNo		int
)
AS
DECLARE @strSQL nvarchar(1000)
	DECLARE @ParmDefinition nvarchar(500)

	SET @strSQL = N'SELECT Top (@topNo_in) a.idx, a.friendAccIDX, b.nickName, a.regDate from userFriendDB a WITH (INDEX (idx_userAccIDX)) join userMemberDB b WITH (INDEX (idx_accountIDX)) on a.friendAccIDX = b.accountIDX '
	SET @strSQL = @strSQL + ' WHERE a.userAccIDX = @accountIDX_in  and a.idx > @idx_in and a.flag=1 order by a.idx asc'

	SET @ParmDefinition = N'@topNo_in int, @accountIDX_in int, @idx_in int'

	EXECUTE sp_executesql @strSQL, @ParmDefinition, @idx_in=@idx, @accountIDX_in=@accountIDX, @topNo_in=@topNo
GO


-- ----------------------------
-- Procedure structure for game_guild_ranking_point_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_ranking_point_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_ranking_point_save]
GO

CREATE PROCEDURE [dbo].[game_guild_ranking_point_save]
(
	@guildIDX int
,	@ranking int
,	@point int
,	@todaypoint int
,	@guildLevel int
,	@maxcount int
)
AS

SET NOCOUNT ON

UPDATE dbo.userGuildDB
   SET ranking=@ranking,
	   point=@point,
	   todaypoint=@todaypoint,
	   guildLevel=@guildLevel,
	   maxcount=@maxcount 
 WHERE idx=@guildIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_MEMBER_GET_SPECIALINFO
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_MEMBER_GET_SPECIALINFO]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_MEMBER_GET_SPECIALINFO]
GO

CREATE PROCEDURE [dbo].[USP_ADM_MEMBER_GET_SPECIALINFO]

	@ACCOUNT_IDX  INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT idx, pos, itemType, itemValue1, itemValue2
  FROM (
	SELECT idx, 1 AS pos, item1_type AS itemType, item1_value1 AS itemValue1, item1_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item1_type > 0

	UNION ALL

	SELECT idx, 2 AS pos, item2_type AS itemType, item2_value1 AS itemValue1, item2_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item2_type > 0

	UNION ALL

	SELECT idx, 3 AS pos, item3_type AS itemType, item3_value1 AS itemValue1, item3_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item3_type > 0

	UNION ALL

	SELECT idx, 4 AS pos, item4_type AS itemType, item4_value1 AS itemValue1, item4_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item4_type > 0

	UNION ALL
	
	SELECT idx, 5 AS pos, item5_type AS itemType, item5_value1 AS itemValue1, item5_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item5_type > 0

	UNION ALL
	
	SELECT idx, 6 AS pos, item6_type AS itemType, item6_value1 AS itemValue1, item6_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item6_type > 0

	UNION ALL
	
	SELECT idx, 7 AS pos, item7_type AS itemType, item7_value1 AS itemValue1, item7_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item7_type > 0

	UNION ALL
	
	SELECT idx, 8 AS pos, item8_type AS itemType, item8_value1 AS itemValue1, item8_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item8_type > 0

	UNION ALL
	
	SELECT idx, 9 AS pos, item9_type AS itemType, item9_value1 AS itemValue1, item9_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item9_type > 0

	UNION ALL
	
	SELECT idx, 10 AS pos, item10_type AS itemType, item10_value1 AS itemValue1, item10_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item10_type > 0

	UNION ALL
	
	SELECT idx, 11 AS pos, item11_type AS itemType, item11_value1 AS itemValue1, item11_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item11_type > 0

	UNION ALL
	
	SELECT idx, 12 AS pos, item12_type AS itemType, item12_value1 AS itemValue1, item12_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item12_type > 0

	UNION ALL
	
	SELECT idx, 13 AS pos, item13_type AS itemType, item13_value1 AS itemValue1, item13_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item13_type > 0

	UNION ALL
	
	SELECT idx, 14 AS pos, item14_type AS itemType, item14_value1 AS itemValue1, item14_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item14_type > 0

	UNION ALL
	
	SELECT idx, 15 AS pos, item15_type AS itemType, item15_value1 AS itemValue1, item15_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item15_type > 0

	UNION ALL
	
	SELECT idx, 16 AS pos, item16_type AS itemType, item16_value1 AS itemValue1, item16_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item16_type > 0

	UNION ALL
	
	SELECT idx, 17 AS pos, item17_type AS itemType, item17_value1 AS itemValue1, item17_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item17_type > 0

	UNION ALL
	
	SELECT idx, 18 AS pos, item18_type AS itemType, item18_value1 AS itemValue1, item18_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item18_type > 0

	UNION ALL
	
	SELECT idx, 19 AS pos, item19_type AS itemType, item19_value1 AS itemValue1, item19_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item19_type > 0

	UNION ALL
	
	SELECT idx, 20 AS pos, item20_type AS itemType, item20_value1 AS itemValue1, item20_value2 AS itemValue2
	  FROM dbo.userItemEtcDB WITH (NOLOCK)
	 WHERE accountIDX = @ACCOUNT_IDX
	   AND item20_type > 0

  ) AS speicalItem
GO


-- ----------------------------
-- Procedure structure for game_guild_join_in
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_in]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_in]
GO

CREATE PROCEDURE [dbo].[game_guild_join_in]
(
	@accountIDX int
,	@guildIDX int
)
AS

SET NOCOUNT ON

DECLARE @cnt int, @errcount int, @maxcount int

SET @cnt = 0
SET @errcount = 0

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE accountIDX=@accountIDX
	   AND guildJoinType > 0
)
IF (@cnt > 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE (guildIDX=@guildIDX
	   AND accountIDX=@accountIDX
	   AND guildJoinType = 0)
)
IF (@cnt > 0)
BEGIN
	SET @errcount = 2
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE guildIDX=@guildIDX
	   AND guildJoinType = 0
)

IF (@cnt >= 16)
BEGIN
	SET @errcount = 3
	SELECT @errcount AS 'returnVal'
	RETURN
END

SET @maxcount = ISNULL((SELECT maxcount FROM dbo.userGuildDB WITH(NOLOCK) WHERE idx=@guildIDX), 0)
SET @cnt = (
	SELECT COUNT(*)
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE guildIDX=@guildIDX
	   AND guildJoinType = 1
)

IF (@maxcount <= @cnt)
BEGIN
	SET @errcount = 4
	SELECT @errcount AS 'returnVal'
	RETURN
END

IF (@errcount = 0)
BEGIN
	SELECT 1 AS 'returnVal'
	INSERT INTO dbo.userGuildInfoDB (accountIDX, guildIDX, guildPosition, guildJoinType, regDate)
	VALUES (@accountIDX, @guildIDX, 'Member', 0, GETDATE())
END
GO


-- ----------------------------
-- Procedure structure for game_friend_list_asc_org
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_list_asc_org]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_list_asc_org]
GO

CREATE PROCEDURE [dbo].[game_friend_list_asc_org]
(
	@idx		int
,	@accountIDX int
,	@topNo		int
)
AS
DECLARE @strSQL nvarchar(1000)
	DECLARE @ParmDefinition nvarchar(500)

	SET @strSQL = N'SELECT Top (@topNo_in) a.idx, a.friendAccIDX, b.nickName, a.regDate from userFriendDB a WITH(NOLOCK) join userMemberDB b WITH(NOLOCK) on a.friendAccIDX = b.accountIDX '
	SET @strSQL = @strSQL + ' WHERE a.userAccIDX = @accountIDX_in  and a.idx > @idx_in and a.flag=1 order by a.idx asc'

	SET @ParmDefinition = N'@topNo_in int, @accountIDX_in int, @idx_in int'

	EXECUTE sp_executesql @strSQL, @ParmDefinition, @idx_in=@idx, @accountIDX_in=@accountIDX, @topNo_in=@topNo
GO


-- ----------------------------
-- Procedure structure for game_region_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_save]
GO

CREATE PROCEDURE [dbo].[game_region_save]
(
	@rt1point int
,	@rt1point_today int
,	@rt1point_bonus int
,	@rt2point int
,	@rt2point_today int
,	@rt2point_bonus int
)
AS

SET NOCOUNT ON

UPDATE dbo.userRegionDB
   SET rt1point = @rt1point,
	   rt1point_today = @rt1point_today,
	   rt1point_bonus = @rt1point_bonus,
	   rt2point = @rt2point,
	   rt2point_today = @rt2point_today,
	   rt2point_bonus = @rt2point_bonus
GO


-- ----------------------------
-- Procedure structure for game_friend_best_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_friend_best_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_friend_best_list]
GO

CREATE PROCEDURE [dbo].[game_friend_best_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, friendIDX, flag, flagTime
  FROM dbo.userFriendBestDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
   AND flag > 0
 ORDER BY idx ASC
GO


-- ----------------------------
-- Procedure structure for web_add_cash
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_add_cash]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_add_cash]
GO

CREATE PROCEDURE [dbo].[web_add_cash]
(
	@userID VARCHAR(20),
	@cash int
)
As

begin
  UPDATE m
  SET realcash += @cash
  FROM userMoneyDB m
  INNER JOIN userMemberDB u
  on m.accountIDX = u.accountIDX
  WHERE u.userID = @userID;
end
GO


-- ----------------------------
-- Procedure structure for game_get_age
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_get_age]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_get_age]
GO

CREATE PROCEDURE [dbo].[game_get_age]
(
	@accountIDX int
)
AS
GO


-- ----------------------------
-- Procedure structure for game_guild_user_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_user_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_user_get_data]
GO

CREATE PROCEDURE [dbo].[game_guild_user_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, guildName, guildmark
  FROM dbo.userGuildDB WITH(NOLOCK)
 WHERE idx=(
	SELECT guildIDX
	  FROM dbo.userGuildInfoDB WITH(NOLOCK)
	 WHERE @accountIDX=accountIDX
	   AND guildJoinType=1
)
GO


-- ----------------------------
-- Procedure structure for game_guild_join_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_init]
GO

CREATE PROCEDURE [dbo].[game_guild_join_init]
(
	@guildIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userGuildInfoDB
 WHERE guildIDX=@guildIDX
   AND guildJoinType=0
GO


-- ----------------------------
-- Procedure structure for game_guild_mark_log_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_mark_log_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_mark_log_add]
GO

CREATE PROCEDURE [dbo].[game_guild_mark_log_add]
(
	@guildIDX int
,	@accountIDX int
,	@havepeso bigint
,	@markprice int
,	@nowmark int
,	@changemark int
)
AS

SET NOCOUNT ON

DECLARE @cnt tinyint
SET @cnt = (
	SELECT COUNT(*)
	  FROM LosaGame_log.DBO.log_guild_mark WITH(NOLOCK)
	 WHERE guildIDX=@guildIDX and flag=0
)

IF (@cnt = 0)
BEGIN
	INSERT INTO LosaGame_log.DBO.log_guild_mark (
		guildIDX, accountIDX, havepeso, markprice, nowmark, changemark, flag, regDate
	)
	VALUES (
		@guildIDX, @accountIDX, @havepeso, @markprice, @nowmark, @changemark, 0, GETDATE()
	)
END
GO


-- ----------------------------
-- Procedure structure for game_region_season_end_data_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_season_end_data_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_season_end_data_init]
GO

CREATE PROCEDURE [dbo].[game_region_season_end_data_init]

AS

SET NOCOUNT ON


UPDATE dbo.userGameDB
   SET renspoint = 0
 WHERE renspoint > 0

UPDATE dbo.userGameDB
   SET regionType=0
 WHERE regionType > 0

UPDATE dbo.userRecordBattleDB
   SET type4_win=0
 WHERE type4_win > 0

UPDATE dbo.userRecordBattleDB
   SET type4_lose=0
 WHERE type4_lose > 0

UPDATE dbo.userRecordBattleDB
   SET type4_kill=0
 WHERE type4_kill > 0

UPDATE dbo.userRecordBattleDB
   SET type4_death=0
 WHERE type4_death > 0

UPDATE dbo.userGameDB
   SET userHerocEXP = CONVERT(int, userHerocEXP * 0.9) + userHerosEXP,
	   userHerosEXP = -1
 WHERE userHerosEXP > 0
GO


-- ----------------------------
-- Procedure structure for usp_user_get_migration_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_user_get_migration_log]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[usp_user_get_migration_log]
GO

CREATE PROCEDURE [dbo].[usp_user_get_migration_log]

	@USER_ID		VARCHAR(128),	-- 검색ID
	@SEARCH_TYPE	TINYINT			-- 1: 가레나UID 검색, 2: 아시아소프트ID 검색

AS

SET NOCOUNT ON
SET LOCK_TIMEOUT 10000

IF (@SEARCH_TYPE = 1)
BEGIN
	SELECT ML.GarenaID, ML.GarenaUID, ML.AsiasoftID, UM.nickName, ML.regDate
	  FROM dbo.TBL_migration_mapping_log ML WITH (NOLOCK)
	  JOIN dbo.userMemberDB UM WITH (NOLOCK)
		ON ML.GarenaUID = UM.userID
	 WHERE ML.GarenaUID = @USER_ID
END
ELSE
BEGIN
	SELECT ML.GarenaID, ML.GarenaUID, ML.AsiasoftID, UM.nickName, ML.regDate
	  FROM dbo.TBL_migration_mapping_log ML WITH (NOLOCK)
	  JOIN dbo.userMemberDB UM WITH (NOLOCK)
		ON ML.GarenaUID = UM.userID
	 WHERE ML.AsiasoftID = @USER_ID
END
GO


-- ----------------------------
-- Procedure structure for game_guild_mark_log_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_mark_log_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_mark_log_delete]
GO

CREATE PROCEDURE [dbo].[game_guild_mark_log_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

UPDATE LosaGame_log.DBO.log_guild_mark
   SET flag=2
 WHERE idx=@idx
GO


-- ----------------------------
-- Procedure structure for game_guild_user_nick_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_user_nick_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_user_nick_get_data]
GO

CREATE PROCEDURE [dbo].[game_guild_user_nick_get_data]
(
	@nickname varchar(20)
)
AS

SET NOCOUNT ON

SELECT guildIDX
  FROM dbo.userGuildInfoDB WITH(NOLOCK)
 WHERE accountIDX=(
	SELECT accountIDX
	  FROM dbo.userMemberDB WITH(NOLOCK)
	 WHERE nickName=@nickname
	)
   AND guildJoinType=1
GO


-- ----------------------------
-- Procedure structure for game_quest_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_quest_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_quest_delete]
GO

CREATE PROCEDURE [dbo].[game_quest_delete]
(
	@idx int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userQuestDB
 WHERE idx = @idx
GO


-- ----------------------------
-- Procedure structure for game_guild_mark_log_get_self_idx
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_mark_log_get_self_idx]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_mark_log_get_self_idx]
GO

CREATE PROCEDURE [dbo].[game_guild_mark_log_get_self_idx]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT MAX(idx)
  FROM LosaGame_log.DBO.log_guild_mark
 WHERE accountIDX=@accountIDX
   AND flag=0
GO


-- ----------------------------
-- Procedure structure for game_hq_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_hq_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_hq_add]
GO

CREATE PROCEDURE [dbo].[game_hq_add]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userHqDB (
	accountIDX,
	class1_type, class1_posx, class1_posy, class2_type, class2_posx, class2_posy, 
	class3_type, class3_posx, class3_posy, class4_type, class4_posx, class4_posy, 
	class5_type, class5_posx, class5_posy, class6_type, class6_posx, class6_posy,
	class7_type, class7_posx, class7_posy, class8_type, class8_posx, class8_posy, 
	class9_type, class9_posx, class9_posy, class10_type, class10_posx, class10_posy, 
	lockType, regDate
)
VALUES (
	@accountIDX,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, GETDATE()
)
GO


-- ----------------------------
-- Procedure structure for game_reset_bingonumber
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_reset_bingonumber]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_reset_bingonumber]
GO

CREATE PROCEDURE [dbo].[game_reset_bingonumber]  

AS  
  
SET NOCOUNT ON  
  
DELETE FROM dbo.userEventBingo_Number  
DELETE FROM dbo.userEventBingo_Present
GO


-- ----------------------------
-- Procedure structure for game_guild_use_item
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_use_item]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_use_item]
GO

CREATE PROCEDURE [dbo].[game_guild_use_item]
(
	@no varchar(4)
,	@tblIDX varchar(12)
)
AS

SET NOCOUNT ON

DECLARE @sql varchar(200)
SET @sql = 'UPDATE dbo.userItemETCDB SET item' + @no + '_type=0, item' + @no + '_value1=0, item' + @no + '_value2=0 WHERE idx=' + @tblIDX
EXECUTE (@sql)
GO


-- ----------------------------
-- Procedure structure for game_hq_get_count
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_hq_get_count]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_hq_get_count]
GO

CREATE PROCEDURE [dbo].[game_hq_get_count]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT COUNT(*)
  FROM dbo.userHqDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_clover_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_clover_info]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_clover_info]
GO

CREATE PROCEDURE [dbo].[game_clover_info]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

IF ( EXISTS(SELECT * FROM dbo.userCloverDB WITH( NOLOCK ) WHERE accountIDX = @accountIDX) )
BEGIN
	SELECT CloverCnt, LastChargeDate, RemainTime
	  FROM dbo.userCloverDB WITH( NOLOCK )
	 WHERE accountIDX = @accountIDX
END
ELSE
BEGIN
	INSERT INTO dbo.userCloverDB( accountIDX, CloverCnt, LastChargeDate, RemainTime, regDate )
	VALUES( @accountIDX, 0, 0, 0, GETDATE() )

	SELECT 0 AS CloverCnt, 0 AS LastChargeDate, 0 AS RemainTime
END
GO


-- ----------------------------
-- Procedure structure for game_item_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_item_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 idx
  FROM dbo.userItemDB
 WHERE accountIDX = @accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_log_class_buytime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_log_class_buytime]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_log_class_buytime]
GO

CREATE PROCEDURE [dbo].[game_log_class_buytime]
(
	@classType int
,	@buyTime bigint
)
AS

SET NOCOUNT ON

INSERT INTO LosaGame_log.DBO.log_class_buytime (classType, buyTime, regDate)
VALUES (@classType, @buyTime, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_relative_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_relative_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_relative_add]
GO

CREATE PROCEDURE [dbo].[game_relative_add]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

IF( EXISTS( SELECT * FROM dbo.userRelativeLevelDB WITH( NOLOCK ) WHERE accountIDX = @accountIDX ) )
BEGIN
	RETURN
END
ELSE
BEGIN
	INSERT INTO dbo.userRelativeLevelDB ( accountIDX, weekend_BackupLevel, weekend_BackupExp, init_time, reward_State, regDate )
	VALUES( @accountIDX, 50, 0, 0, 0, GETDATE() )
END
GO


-- ----------------------------
-- Procedure structure for game_league_round_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_league_round_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_league_round_data]
GO

CREATE PROCEDURE [dbo].[game_league_round_data]
(
	@infoIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   roundType1_playDate, roundType1_presentCode1, roundType1_presentCode2, roundType1_presentCode3, roundType1_presentCode4,
	   roundType2_playDate, roundType2_presentCode1, roundType2_presentCode2, roundType2_presentCode3, roundType2_presentCode4,
	   roundType3_playDate, roundType3_presentCode1, roundType3_presentCode2, roundType3_presentCode3, roundType3_presentCode4,
	   roundType4_playDate, roundType4_presentCode1, roundType4_presentCode2, roundType4_presentCode3, roundType4_presentCode4,
	   roundType5_playDate, roundType5_presentCode1, roundType5_presentCode2, roundType5_presentCode3, roundType5_presentCode4,
	   roundType6_playDate, roundType6_presentCode1, roundType6_presentCode2, roundType6_presentCode3, roundType6_presentCode4,
	   roundType7_playDate, roundType7_presentCode1, roundType7_presentCode2, roundType7_presentCode3, roundType7_presentCode4,
	   roundType8_playDate, roundType8_presentCode1, roundType8_presentCode2, roundType8_presentCode3, roundType8_presentCode4,
	   roundType9_playDate, roundType9_presentCode1, roundType9_presentCode2, roundType9_presentCode3, roundType9_presentCode4,
	   roundType10_playDate, roundType10_presentCode1, roundType10_presentCode2, roundType10_presentCode3, roundType10_presentCode4,
	   roundType11_playDate, roundType11_presentCode1, roundType11_presentCode2, roundType11_presentCode3, roundType11_presentCode4
  FROM dbo.userLeagueRoundDB WITH(NOLOCK)
 WHERE infoIDX=@infoIDX
GO


-- ----------------------------
-- Procedure structure for web_roulette_use
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[web_roulette_use]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[web_roulette_use]
GO

CREATE PROCEDURE [dbo].[web_roulette_use]
(
	@rid int,
	@userId varchar(20),
	@rewardId int
)
As
	BEGIN
		SET NOCOUNT ON
		DECLARE @cnt int;
		DECLARE @accountIdx int;
		DECLARE @costitem int;
		DECLARE @amount int;
		DECLARE @cash int;
		DECLARE @bonusCash int;
		DECLARE @flag int;
		DECLARE @myluck int;
		DECLARE @new_id int;
		SET @cash = 0;
		SET @bonusCash = 0;
		SET @flag = 0;

		--Check user exist
		SELECT @accountIdx = Id FROM WebLogin WITH (NOLOCK) WHERE Username = @userId;
		IF @accountIdx IS NULL
		BEGIN
			RETURN (-1)
		END

		--Check Roulette Available
		SELECT @cnt = count(*) FROM WebRoulette WITH (NOLOCK) WHERE GETDATE() BETWEEN StartDate AND EndDate AND Id = @rid AND Status = 1;
		IF @cnt = 0
		BEGIN
			RETURN (-2)
		END

		--Check Ticket
		SELECT
			@cnt = i.Amount,
			@amount = r.Cost,
			@costitem = r.CostItem
		FROM WebRoulette r WITH (NOLOCK)
		INNER JOIN WebRouletteUserItem i WITH (NOLOCK)
		ON r.CostItem = i.ItemId AND i.Amount >= r.Cost
		WHERE r.Id = @rid AND i.AccountIdx = @accountIdx;
		IF @@ROWCOUNT <> 1 OR @cnt = 0 OR @amount = 0
		BEGIN
			RETURN (-3)
		END
		IF @cnt < @amount
		BEGIN
			RETURN (-4)
		END

		--Check Reward Valid
		SELECT @cnt = count(*) FROM WebRouletteReward WITH (NOLOCK) WHERE RId = rid AND Id = @rewardId;
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			RETURN (-5)
		END
		-- TRAN START
		BEGIN TRAN

		--Deduce Item
		UPDATE WebRouletteUserItem
		SET Amount -= @amount
		WHERE AccountIdx = @accountIdx AND ItemId = @costitem;
			
		IF @@ROWCOUNT <> 1 OR @@ERROR <> 0
		BEGIN
			ROLLBACK TRAN
			RETURN (-6)
		END		

		--Add Reward
		INSERT INTO dbo.userPresentDB (sendIDX, receiveIDX, presentType, value1, value2, value3, value4, msgType, flag, limitDate, regDate)
		SELECT 1, @accountIdx, presentType, value1, value2, 0, 0, 1011, 0, DATEADD(DAY, 14, GETDATE()), GETDATE()
		FROM WebRouletteReward r WITH (NOLOCK)
		WHERE r.RId = @rid AND r.Id = @rewardId AND r.ItemType = 0;

		IF @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-7)
			END

		--Add Cash
		SELECT @cash = ISNULL(SUM(Value1), 0) FROM WebRouletteReward WITH (NOLOCK) WHERE RId = @rid AND Id = @rewardId AND ItemType = 1;
		IF @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-7)
			END

		--Add Bonus Cash
		SELECT @bonusCash = ISNULL(SUM(Value1), 0) FROM WebRouletteReward WITH (NOLOCK) WHERE RId = @rid AND Id = @rewardId AND ItemType = 2;
		IF @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-7)
			END

		UPDATE c 
		SET
			realCash+= @cash,
			bonusCash += @bonusCash
		FROM userMoneyDB c
		INNER JOIN userMemberDB m
		ON c.accountIDX = m.accountIDX
		WHERE userID = @userID;

		IF @@ROWCOUNT = 0 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-7)
			END

		--Add Lucky / Change Roulette
		UPDATE WebRouletteSetting SET Lucky +=1 WHERE Id = 1;--fixed ID

		--Add My Lucky
		SELECT @myluck = Lucky From WebRouletteUserLucky WHERE RouletteId = @rid AND AccountIdx = @accountIdx;
		IF @myluck IS NULL
			BEGIN
				INSERT INTO WebRouletteUserLucky (AccountIdx, RouletteId, Lucky) VALUES (@accountIdx, @rid, 1);
			END
		ELSE
			BEGIN
				IF @myLuck >= 50
					BEGIN
						UPDATE WebRouletteUserLucky SET Lucky = 1 WHERE RouletteId = @rid AND AccountIdx = @accountIdx;
					END
				ELSE
					BEGIN
						UPDATE WebRouletteUserLucky SET Lucky += 1 WHERE RouletteId = @rid AND AccountIdx = @accountIdx;
					END
			END

		--Add Log
		INSERT INTO WebRouletteRewardLog (AccountIdx, Nickname, RouletteId, RewardName, Flag)
		SELECT @accountIdx, nickname, @rid, r.Name, CASE WHEN @myluck >= 50 THEN 0 ELSE r.Flag END
		FROM userMemberDB m WITH (NOLOCK)
		INNER JOIN WebRouletteReward r WITH (NOLOCK)
		ON r.RId = @rid AND r.Id = @rewardId AND accountIDX = @accountIdx;
		IF @@ROWCOUNT = 0 OR @@ERROR <> 0
			BEGIN
				ROLLBACK TRAN
				RETURN (-8)
			END

		SELECT @flag = Flag FROM WebRouletteReward r WHERE r.RId = @rid AND r.Id = @rewardId;
		IF @flag = 2 AND @myLuck < 50 --MAX PRIZE
			BEGIN
				--check next roulette
				SELECT @new_id = r.Id FROM WebRouletteSetting s WITH (NOLOCK) LEFT JOIN WebRoulette r WITH (NOLOCK) ON s.NextRoulette = r.Id WHERE s.Id = 1 AND GETDATE() BETWEEN r.StartDate AND r.EndDate;
				IF @new_id IS NULL
					BEGIN
						--random
						SELECT TOP 1 @new_id = Id FROM WebRoulette WITH (NOLOCK) WHERE Id != @rid AND GETDATE() BETWEEN StartDate AND EndDate ORDER BY NEWID()
					END
				--SET @new_id = 9;
				IF @new_id IS NOT NULL
					BEGIN
						UPDATE WebRouletteSetting SET RouletteId = @new_id, Lucky = 0, NextRoulette = NULL, UpdateDate = GETDATE() WHERE Id = 1; -- fixed
						UPDATE WebRoulette SET Status = 0 WHERE Id = @rid;
						UPDATE WebRoulette SET Status = 1 WHERE Id = @new_id;
					END
			END

		-- COMMIT TRAN
		COMMIT TRAN 
		RETURN (1)
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
As

	INSERT INTO log_game_concurrent (serverID, serverIP, serverPort, serverName, concurrent, cpType, regDate)
	VALUES (@serverID, @serverIP, @serverPort, @serverName, @concurrent, @cpType, getdate())
GO


-- ----------------------------
-- Procedure structure for game_hq_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_hq_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_hq_get_data]
GO

CREATE PROCEDURE [dbo].[game_hq_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT class1_type, class1_posx, class1_posy, class2_type, class2_posx, class2_posy, 
	   class3_type, class3_posx, class3_posy, class4_type, class4_posx, class4_posy, 
	   class5_type, class5_posx, class5_posy, class6_type, class6_posx, class6_posy,
	   class7_type, class7_posx, class7_posy, class8_type, class8_posx, class8_posy, 
	   class9_type, class9_posx, class9_posy, class10_type, class10_posx, class10_posy, 
	   lockType
  FROM dbo.userHqDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GUILD_SET_NAME
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GUILD_SET_NAME]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GUILD_SET_NAME]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GUILD_SET_NAME]

	@GUILD_IDX		INT,
	@GUILD_NAME		VARCHAR(20)

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (NOT EXISTS(SELECT * FROM dbo.userGuildDB WITH (NOLOCK) WHERE idx = @GUILD_IDX))
BEGIN
	RETURN 1001;
END

IF (EXISTS(SELECT * FROM dbo.userGuildDB WITH (NOLOCK) WHERE guildName = @GUILD_NAME))
BEGIN
	RETURN 1002;
END

BEGIN TRAN

	UPDATE dbo.userGuildDB WITH (ROWLOCK, XLOCK)
	   SET guildName = @GUILD_NAME
	 WHERE idx = @GUILD_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1003;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_log_level_playtime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_log_level_playtime]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_log_level_playtime]
GO

CREATE PROCEDURE [dbo].[game_log_level_playtime]
(
	@userLevel int
,	@playTime bigint
)
AS

SET NOCOUNT ON

INSERT INTO LosaGame_log.DBO.log_level_playtime (userLevel, playTime, regDate)
VALUES (@userLevel, @playTime, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_relative_ranking_week
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_relative_ranking_week]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_relative_ranking_week]
GO

CREATE PROCEDURE [dbo].[game_relative_ranking_week]
(
	@init_time	int
,	@rate int
)
AS

SET NOCOUNT ON

DECLARE @temp_table TABLE
(
	ranking INT
,	accountIDX INT
,	tempLevel INT
)


DECLARE @tblName varchar(256), @sql varchar(256)

SET @tblName = '[Backup].dbo.LosaGame_' + convert( varchar(16), @init_time ) + '_userGameDB'
SET @sql = 'SELECT * INTO ' + @tblName + ' FROM dbo.userGameDB WITH( NOLOCK )'

EXECUTE( @sql )


DELETE FROM dbo.userRelativeLevelDB
 WHERE accountIDX  NOT IN
(
	SELECT accountIDX
	  FROM dbo.userGameDB WITH( NOLOCK )
	 WHERE userLevel >= 50
)


UPDATE dbo.userRelativeLevelDB
   SET weekend_BackupLevel = UG.userLevel,
	   reward_State = 0
  FROM dbo.userRelativeLevelDB URL WITH( NOLOCK )
  JOIN dbo.userGameDB UG WITH( NOLOCK )
	ON UG.accountIDX = URL.accountIDX
 WHERE UG.userLevel >= 50



INSERT INTO @temp_table( ranking, accountIDX, tempLevel )
(
	SELECT ROW_NUMBER() OVER ( ORDER BY userExp DESC ), accountIDX, 0
	  FROM dbo.userGameDB WITH( NOLOCK )
	 WHERE userLevel >= 50
)




DECLARE @userCount INT
SET @userCount = 0;

SELECT @userCount = COUNT(*) FROM @temp_table


DECLARE @5star INT, @4star INT, @3star INT, @2star INT
DECLARE @LoopCount INT, @LoopLevel INT


IF( @userCount <= 5 )
BEGIN
	SET @2star = 30;
	SET @LoopCount = 2;
	SET @LoopLevel = 51;	-- 2 star
END
ELSE IF( @userCount > 5 and @userCount <= 50 )
BEGIN
	SET @3star = 5
	SET @2star = 25;
	SET @LoopCount = 3;
	SET @LoopLevel = 52;	-- 3 start	
END
ELSE IF( @userCount > 50 and @userCount <= 80 )
BEGIN
	SET @4star = 2
	SET @3star = 3
	SET @2star = 25;
	SET @LoopCount = 4;
	SET @LoopLevel = 53;	-- 4 start
END
ELSE IF( @userCount > 80 )
BEGIN
	-- 81.
	SET @5star = 1
	SET @4star = 2
	SET @3star = 3
	SET @2star = 24;
	SET @LoopCount = 5;
	SET @LoopLevel = 54;	-- 5 start
END


WHILE( @LoopCount > 0 )
BEGIN

	IF( @LoopCount = 1 )
		BEGIN
			UPDATE @temp_table
			   SET tempLevel = @LoopLevel
			 WHERE tempLevel = 0
		END
	ELSE
		BEGIN
			DECLARE @percent INT;
			SET @percent = 
				CASE
					WHEN ( @LoopCount = 2 ) THEN @2star
					WHEN ( @LoopCount = 3 ) THEN @3star
					WHEN ( @LoopCount = 4 ) THEN @4star
					WHEN ( @LoopCount = 5 ) THEN @5star
				END

			DECLARE @userCNT INT;
			SET @userCNT = 0;

			SET @userCNT = FLOOR( @userCount * 1. * @percent / 100 );

			IF( @userCNT > 0 )
				BEGIN
					UPDATE @temp_table
					   SET tempLevel = @LoopLevel
					 WHERE accountIDX IN
					(
						SELECT TOP( @userCNT ) accountIDX
						  FROM @temp_table
						 WHERE tempLevel = 0
						 ORDER BY ranking
					)
				END
		END

	SET @LoopLevel = @LoopLevel - 1;
	SET @LoopCount = @LoopCount - 1;

END

UPDATE b
   SET userLevel = a.tempLevel
  FROM
(
	SELECT * FROM @temp_table
) a
  JOIN userGameDB b WITH( NOLOCK )
	ON a.accountIDX = b.accountIDX
 WHERE b.userlevel >= 50




UPDATE dbo.userRelativeLevelDB
   SET reward_State = 1
 WHERE accountIDX in
(
	SELECT URL.accountIDX
	  FROM dbo.userRelativeLevelDB URL WITH( NOLOCK )
	  JOIN dbo.userGameDB UG WITH( NOLOCK )
		ON URL.accountIDX = UG.accountIDX
	 WHERE UG.userLevel >= 50
       AND UG.userExp > URL.weekend_BackupExp
)


/*
UPDATE dbo.userRelativeLevelDB
   SET reward_State = 0
 WHERE accountIDX in
(
	SELECT URL.accountIDX
	  FROM dbo.userRelativeLevelDB URL WITH( NOLOCK )
	  JOIN dbo.userGameDB UG WITH( NOLOCK )
		ON URL.accountIDX = UG.accountIDX
	 WHERE UG.userLevel >= 50
       AND UG.userExp = URL.weekend_BackupExp
)
*/


UPDATE dbo.userGameDB
   SET userExp = userExp - FLOOR( ( userExp * 1. * @rate ) / 100 )
 WHERE userLevel >= 50
   AND accountIDX in
(
	SELECT accountIDX
	  FROM dbo.userRelativeLevelDB WITH( NOLOCK )
	 WHERE init_time <> @init_time
)


UPDATE dbo.userRelativeLevelDB
   SET init_time = @init_time
 WHERE accountIDX in
(
	SELECT accountIDX
	  FROM dbo.userRelativeLevelDB WITH( NOLOCK )
	 WHERE init_time <> @init_time
) 



UPDATE dbo.userRelativeLevelDB
   SET weekend_BackupExp = UG.userExp
  FROM dbo.userRelativeLevelDB URL WITH( NOLOCK )
  JOIN dbo.userGameDB UG WITH( NOLOCK )
	ON UG.accountIDX = URL.accountIDX
 WHERE UG.userLevel >= 50
GO


-- ----------------------------
-- Procedure structure for game_mission_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_mission_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_mission_get_data]
GO

CREATE PROCEDURE [dbo].[game_mission_get_data]

	@ACCOUNT_IDX		INT

AS
SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000
		
	SELECT MissionType, MissionCode, MissionValue, MissionStatus FROM dbo.userMissionDB WITH (READUNCOMMITTED)
	WHERE AccountIDX=@ACCOUNT_IDX and MissionStatus<4

	IF (@@ERROR<>0)
	BEGIN	
		SELECT -1
		RETURN;
	END	

	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_clover_info_update
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_clover_info_update]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_clover_info_update]
GO

CREATE PROCEDURE [dbo].[game_clover_info_update]
(
	@accountIDX int
,	@CloverCount int
,	@UpdateTime int
,	@RemainTime	smallint
)
AS

SET NOCOUNT ON

UPDATE dbo.userCloverDB
   SET CloverCnt = @CloverCount,
	   LastChargeDate = @UpdateTime,
	   RemainTime = @RemainTime,
	   regDate = GETDATE()
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_mannerpoint_log_get_receiveIDX_from_tableIDX
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_mannerpoint_log_get_receiveIDX_from_tableIDX]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_mannerpoint_log_get_receiveIDX_from_tableIDX]
GO

CREATE PROCEDURE [dbo].[game_mannerpoint_log_get_receiveIDX_from_tableIDX]
(
	@idx varchar(200)
)
AS

SET NOCOUNT ON

DECLARE @strSQL varchar(1000)

SET @strSQL = 'SELECT receiveIDX FROM LosaGame_log.DBO.log_mannerpoint WITH(NOLOCK) WHERE idx in (' + @idx + ')'
EXECUTE (@strSQL)
GO


-- ----------------------------
-- Procedure structure for game_hq_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_hq_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_hq_save]
GO

CREATE PROCEDURE [dbo].[game_hq_save]
(
	@accountIDX int
,	@class1_type int
,	@class1_posx int
,	@class1_posy int
,	@class2_type int
,	@class2_posx int
,	@class2_posy int
,	@class3_type int
,	@class3_posx int
,	@class3_posy int
,	@class4_type int
,	@class4_posx int
,	@class4_posy int
,	@class5_type int
,	@class5_posx int
,	@class5_posy int
,	@class6_type int
,	@class6_posx int
,	@class6_posy int
,	@class7_type int
,	@class7_posx int
,	@class7_posy int
,	@class8_type int
,	@class8_posx int
,	@class8_posy int
,	@class9_type int
,	@class9_posx int
,	@class9_posy int
,	@class10_type int
,	@class10_posx int
,	@class10_posy int
,	@lockType smallint
)
AS

SET NOCOUNT ON

UPDATE dbo.userHqDB
   SET class1_type = @class1_type,
	   class1_posx = @class1_posx,
	   class1_posy = @class1_posy,
	   class2_type = @class2_type,
	   class2_posx = @class2_posx,
	   class2_posy = @class2_posy,
	   class3_type = @class3_type,
	   class3_posx = @class3_posx,
	   class3_posy = @class3_posy,
	   class4_type = @class4_type,
	   class4_posx = @class4_posx,
	   class4_posy = @class4_posy,
	   class5_type = @class5_type,
	   class5_posx = @class5_posx,
	   class5_posy = @class5_posy,
	   class6_type = @class6_type,
	   class6_posx = @class6_posx,
	   class6_posy = @class6_posy,
	   class7_type = @class7_type,
	   class7_posx = @class7_posx,
	   class7_posy = @class7_posy,
	   class8_type = @class8_type,
	   class8_posx = @class8_posx,
	   class8_posy = @class8_posy,
	   class9_type = @class9_type,
	   class9_posx = @class9_posx,
	   class9_posy = @class9_posy,
	   class10_type = @class10_type,
	   class10_posx = @class10_posx,
	   class10_posy = @class10_posy,
	   lockType = @lockType
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_guild_join_my_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_my_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_my_list]
GO

CREATE PROCEDURE [dbo].[game_guild_join_my_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 100 b.idx
  FROM dbo.userGuildInfoDB a WITH(NOLOCK)
 INNER JOIN userGuildDB b WITH(NOLOCK)
    ON a.guildIDX = b.idx
 WHERE accountIDX=@accountIDX
 ORDER BY a.idx ASC
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GUILD_SET_MARK
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GUILD_SET_MARK]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GUILD_SET_MARK]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GUILD_SET_MARK]

	@GUILD_IDX		INT,
	@GUILD_MARK		TINYINT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

DECLARE @nReturn INT
SET @nReturn = 0


IF (NOT EXISTS(SELECT * FROM dbo.userGuildDB WITH (NOLOCK) WHERE idx = @GUILD_IDX))
BEGIN
	RETURN 1001;
END

BEGIN TRAN

	UPDATE dbo.userGuildDB WITH (ROWLOCK, XLOCK)
	   SET guildmark = @GUILD_MARK
	 WHERE idx = @GUILD_IDX

	IF (@@ROWCOUNT=0) or (@@ERROR<>0)
	BEGIN
		ROLLBACK TRAN
		RETURN 1002;
	END

COMMIT TRAN

RETURN @nReturn;
GO


-- ----------------------------
-- Procedure structure for game_medal_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_medal_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_medal_add]
GO

CREATE PROCEDURE [dbo].[game_medal_add]
(
	@accountIDX int
,	@medalIDX int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userMedalDB_receive (accountIDX, medalIDX, flag, regDate)
VALUES (@accountIDX, @medalIDX, 0, GETDATE())
GO


-- ----------------------------
-- Procedure structure for game_relative_reward_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_relative_reward_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_relative_reward_get_data]
GO

CREATE PROCEDURE [dbo].[game_relative_reward_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

IF ( EXISTS( SELECT * FROM dbo.userRelativeLevelDB WITH( NOLOCK ) WHERE accountIDX = @accountIDX ) )
BEGIN
	SELECT weekend_BackupExp, init_time, reward_State
      FROM dbo.userRelativeLevelDB WITH( NOLOCK )
	 WHERE accountIDX = @accountIDX
END
ELSE
BEGIN
	-- return 0, 0, 0, ... 0
	SELECT 0 AS weekend_BackupExp, 0 AS init_time, 0 AS reward_State
END
GO


-- ----------------------------
-- Procedure structure for game_quest_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_quest_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_quest_get_list]
GO

CREATE PROCEDURE [dbo].[game_quest_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx,
	   quest1_type, quest1_value1, quest1_value2, quest1_time, quest2_type, quest2_value1, quest2_value2, quest2_time, quest3_type, quest3_value1, quest3_value2, quest3_time, 
	   quest4_type, quest4_value1, quest4_value2, quest4_time, quest5_type, quest5_value1, quest5_value2, quest5_time, quest6_type, quest6_value1, quest6_value2, quest6_time, 
	   quest7_type, quest7_value1, quest7_value2, quest7_time, quest8_type, quest8_value1, quest8_value2, quest8_time, quest9_type, quest9_value1, quest9_value2, quest9_time, 
	   quest10_type, quest10_value1, quest10_value2, quest10_time, quest11_type, quest11_value1, quest11_value2, quest11_time, quest12_type, quest12_value1, quest12_value2, quest12_time, 
	   quest13_type, quest13_value1, quest13_value2, quest13_time, quest14_type, quest14_value1, quest14_value2, quest14_time, quest15_type, quest15_value1, quest15_value2, quest15_time, 
	   quest16_type, quest16_value1, quest16_value2, quest16_time, quest17_type, quest17_value1, quest17_value2, quest17_time, quest18_type, quest18_value1, quest18_value2, quest18_time,
	   quest19_type, quest19_value1, quest19_value2, quest19_time, quest20_type, quest20_value1, quest20_value2, quest20_time 
  FROM dbo.userQuestDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_medal_get_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_medal_get_list]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_medal_get_list]
GO

CREATE PROCEDURE [dbo].[game_medal_get_list]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT idx, medal1_type, medal2_type, medal3_type, medal4_type, medal5_type, medal6_type, medal7_type, medal8_type, medal9_type, medal10_type
  FROM dbo.userMedalDB WITH(NOLOCK)
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for game_item_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_add]
GO

CREATE PROCEDURE [dbo].[game_item_add]
(
	@accountIDX int
,	@item1_type int
,	@item1_code int
,	@item2_type int
,	@item2_code int
,	@item3_type int
,	@item3_code int
,	@item4_type int
,	@item4_code int
,	@item5_type int
,	@item5_code int
,	@item6_type int
,	@item6_code int
,	@item7_type int
,	@item7_code int
,	@item8_type int
,	@item8_code int
,	@item9_type int
,	@item9_code int
,	@item10_type int
,	@item10_code int
,	@item11_type int
,	@item11_code int
,	@item12_type int
,	@item12_code int
,	@item13_type int
,	@item13_code int
,	@item14_type int
,	@item14_code int
,	@item15_type int
,	@item15_code int
,	@item16_type int
,	@item16_code int
,	@item17_type int
,	@item17_code int
,	@item18_type int
,	@item18_code int
,	@item19_type int
,	@item19_code int
,	@item20_type int
,	@item20_code int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userItemDB (
	accountIDX,
	item1_type, item1_code, item2_type, item2_code, item3_type, item3_code, item4_type, item4_code, item5_type, item5_code,
	item6_type, item6_code, item7_type, item7_code, item8_type, item8_code, item9_type, item9_code, item10_type, item10_code,
	item11_type, item11_code, item12_type, item12_code, item13_type, item13_code, item14_type, item14_code, item15_type, item15_code,
	item16_type, item16_code, item17_type, item17_code, item18_type, item18_code, item19_type, item19_code, item20_type, item20_code
)
VALUES (
	@accountIDX,
	@item1_type, @item1_code, @item2_type, @item2_code, @item3_type, @item3_code, @item4_type, @item4_code, @item5_type, @item5_code,
	@item6_type, @item6_code, @item7_type, @item7_code, @item8_type, @item8_code, @item9_type, @item9_code, @item10_type, @item10_code,
	@item11_type, @item11_code, @item12_type, @item12_code, @item13_type, @item13_code, @item14_type, @item14_code, @item15_type, @item15_code,
	@item16_type, @item16_code, @item17_type, @item17_code, @item18_type, @item18_code, @item19_type, @item19_code, @item20_type, @item20_code
)
GO


-- ----------------------------
-- Procedure structure for game_mission_set_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_mission_set_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_mission_set_data]
GO

CREATE PROCEDURE [dbo].[game_mission_set_data]  
  
 @ACCOUNT_IDX  INT,  
 @MISSION_TYPE  TINYINT,  
 @MISSION_CODE  INT,  
 @MISSION_VALUE  INT,  
 @MISSION_STATUS  TINYINT  
  
AS  
  
 SET NOCOUNT ON  
 SET LOCK_TIMEOUT 10000  
  
 DECLARE @nReturn   INT   
 SET @nReturn=0   -- True  
  
 BEGIN TRAN  
  
  -- MERGE dbo.userMissionDB as TARGET  
  -- USING (SELECT @ACCOUNT_IDX, @MISSION_TYPE, @MISSION_CODE, @MISSION_VALUE, @MISSION_STATUS) AS SOURCE (AccountIDX, MissionType, MissionCode, MissionValue, MissionStatus)  
  -- ON (TARGET.AccountIDX=SOURCE.AccountIDX and TARGET.MissionType=SOURCE.MissionType and TARGET.MissionCode=SOURCE.MissionCode)  
  -- WHEN MATCHED THEN  
  --  UPDATE SET MissionValue=SOURCE.MissionValue, MissionStatus=SOURCE.MissionStatus  
  -- WHEN NOT MATCHED THEN  
  --  INSERT (AccountIDX, MissionType, MissionCode, MissionValue, MissionStatus) VALUES (@ACCOUNT_IDX, SOURCE.MissionType, SOURCE.MissionCode, SOURCE.MissionValue, SOURCE.MissionStatus);  
  
  UPDATE dbo.userMissionDB WITH (XLOCK, ROWLOCK) SET MissionValue=@MISSION_VALUE, MissionStatus=@MISSION_STATUS  
  WHERE AccountIDX=@ACCOUNT_IDX and MissionType=@MISSION_TYPE and MissionCode=@MISSION_CODE  
  
  IF (@@ROWCOUNT=0)  
  BEGIN   
  
   INSERT dbo.userMissionDB WITH (XLOCK, ROWLOCK) (AccountIDX, MissionType, MissionCode, MissionValue, MissionStatus)  
   VALUES (@ACCOUNT_IDX, @MISSION_TYPE, @MISSION_CODE, @MISSION_VALUE, @MISSION_STATUS)  
   IF (@@ROWCOUNT=0) or (@@ERROR<>0)  
   BEGIN  
    ROLLBACK TRAN      
    SELECT -1  
    RETURN;  
   END  
  END  
  
 COMMIT TRAN  
  
 SELECT @nReturn  
 RETURN;
GO


-- ----------------------------
-- Procedure structure for game_medal_get_top1
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_medal_get_top1]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_medal_get_top1]
GO

CREATE PROCEDURE [dbo].[game_medal_get_top1]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT TOP 1 medal1_type, medal2_type, medal3_type, medal4_type, medal5_type, medal6_type, medal7_type, medal8_type, medal9_type, medal10_type 
  FROM dbo.userMedalDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
 ORDER BY idx DESC
GO


-- ----------------------------
-- Procedure structure for game_relative_reward_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_relative_reward_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_relative_reward_save]
GO

CREATE PROCEDURE [dbo].[game_relative_reward_save]
(
	@accountIDX int
,	@reward tinyint
)
AS

SET NOCOUNT ON

IF( EXISTS( SELECT * FROM dbo.userRelativeLevelDB WITH( NOLOCK ) WHERE accountIDX = @accountIDX ) )
BEGIN
	UPDATE dbo.userRelativeLevelDB
	   SET reward_State = @reward
	 WHERE accountIDX = @accountIDX
END
ELSE
BEGIN
	RETURN
END
GO


-- ----------------------------
-- Procedure structure for game_guild_join_self_delete
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_self_delete]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_self_delete]
GO

CREATE PROCEDURE [dbo].[game_guild_join_self_delete]
(
	@accountIDX int
,	@guildIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userGuildInfoDB
 WHERE guildIDX=@guildIDX
   AND accountIDX=@accountIDX
   AND guildJoinType=0
GO


-- ----------------------------
-- Procedure structure for game_config_keyboard_get_data
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_config_keyboard_get_data]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_config_keyboard_get_data]
GO

CREATE PROCEDURE [dbo].[game_config_keyboard_get_data]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT keyvalue
  FROM dbo.userConfigDB WITH(NOLOCK)
 WHERE accountIDX=@accountIDX
GO


-- ----------------------------
-- Procedure structure for game_price_class_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_price_class_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_price_class_save]
GO

CREATE PROCEDURE [dbo].[game_price_class_save]
(
	@class_number varchar(4)
,	@cnt varchar(4)
)
AS

SET NOCOUNT ON

DECLARE @strSQL varchar(500)
SET @strSQL = 'UPDATE dbo.define_class_price SET '
SET @strSQL = @strSQL + 'class' + @class_number + '_buy_cnt = class' + @class_number + '_buy_cnt + ' + @cnt + ' '
SET @strSQL = @strSQL + 'WHERE idx = (SELECT Max(idx) FROM define_class_price)'
EXEC (@strSQL)
GO


-- ----------------------------
-- Procedure structure for game_item_etc_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_item_etc_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_item_etc_add]
GO

CREATE PROCEDURE [dbo].[game_item_etc_add]
(
	@accountIDX int
,	@item1_type int
,	@item1_value1 int
,	@item1_value2 int
,	@item2_type int
,	@item2_value1 int
,	@item2_value2 int
,	@item3_type int
,	@item3_value1 int
,	@item3_value2 int
,	@item4_type int
,	@item4_value1 int
,	@item4_value2 int
,	@item5_type int
,	@item5_value1 int
,	@item5_value2 int
,	@item6_type int
,	@item6_value1 int
,	@item6_value2 int
,	@item7_type int
,	@item7_value1 int
,	@item7_value2 int
,	@item8_type int
,	@item8_value1 int
,	@item8_value2 int
,	@item9_type int
,	@item9_value1 int
,	@item9_value2 int
,	@item10_type int
,	@item10_value1 int
,	@item10_value2 int
,	@item11_type int
,	@item11_value1 int
,	@item11_value2 int
,	@item12_type int
,	@item12_value1 int
,	@item12_value2 int
,	@item13_type int
,	@item13_value1 int
,	@item13_value2 int
,	@item14_type int
,	@item14_value1 int
,	@item14_value2 int
,	@item15_type int
,	@item15_value1 int
,	@item15_value2 int
,	@item16_type int
,	@item16_value1 int
,	@item16_value2 int
,	@item17_type int
,	@item17_value1 int
,	@item17_value2 int
,	@item18_type int
,	@item18_value1 int
,	@item18_value2 int
,	@item19_type int
,	@item19_value1 int
,	@item19_value2 int
,	@item20_type int
,	@item20_value1 int
,	@item20_value2 int
)
AS

SET NOCOUNT ON

INSERT INTO dbo.userItemEtcDB (
	accountIDX,
	item1_type, item1_value1, item1_value2, item2_type, item2_value1, item2_value2, item3_type, item3_value1, item3_value2, 
	item4_type, item4_value1, item4_value2, item5_type, item5_value1, item5_value2, item6_type, item6_value1, item6_value2, 
	item7_type, item7_value1, item7_value2, item8_type, item8_value1, item8_value2, item9_type, item9_value1, item9_value2, 
	item10_type, item10_value1, item10_value2, item11_type, item11_value1, item11_value2, item12_type, item12_value1, item12_value2, 
	item13_type, item13_value1, item13_value2, item14_type, item14_value1, item14_value2, item15_type, item15_value1, item15_value2, 
	item16_type, item16_value1, item16_value2, item17_type, item17_value1, item17_value2, item18_type, item18_value1, item18_value2,
	item19_type, item19_value1, item19_value2, item20_type, item20_value1, item20_value2
)
VALUES (
	@accountIDX,
	@item1_type, @item1_value1, @item1_value2, @item2_type, @item2_value1, @item2_value2, @item3_type, @item3_value1, @item3_value2, 
	@item4_type, @item4_value1, @item4_value2, @item5_type, @item5_value1, @item5_value2, @item6_type, @item6_value1, @item6_value2, 
	@item7_type, @item7_value1, @item7_value2, @item8_type, @item8_value1, @item8_value2, @item9_type, @item9_value1, @item9_value2, 
	@item10_type, @item10_value1, @item10_value2, @item11_type, @item11_value1, @item11_value2, @item12_type, @item12_value1, @item12_value2, 
	@item13_type, @item13_value1, @item13_value2, @item14_type, @item14_value1, @item14_value2, @item15_type, @item15_value1, @item15_value2, 
	@item16_type, @item16_value1, @item16_value2, @item17_type, @item17_value1, @item17_value2, @item18_type, @item18_value1, @item18_value2,
	@item19_type, @item19_value1, @item19_value2, @item20_type, @item20_value1, @item20_value2
)
GO


-- ----------------------------
-- Procedure structure for game_quest_get_self_index
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_quest_get_self_index]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_quest_get_self_index]
GO

CREATE PROCEDURE [dbo].[game_quest_get_self_index]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

SELECT MAX(idx)
  FROM dbo.userQuestDB
 WHERE accountIDX = @accountIDX
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GUILD_GET_MEMBER_LIST
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GUILD_GET_MEMBER_LIST]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GUILD_GET_MEMBER_LIST]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GUILD_GET_MEMBER_LIST]

	@GUILD_IDX		INT

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

SELECT ME.accountIDX, ME.userID, ME.nickName, GI.guildPosition, ME.regDate
  FROM dbo.userGuildDB GU WITH (NOLOCK)
  JOIN dbo.userGuildInfoDB GI WITH (NOLOCK)
    ON GU.idx = GI.guildIDX
  JOIN dbo.userMemberDB ME WITH (NOLOCK)
    ON GI.accountIDX = ME.accountIDX
 WHERE GU.idx = @GUILD_IDX
   AND GI.guildJoinType IN (0, 1)
GO


-- ----------------------------
-- Procedure structure for game_quest_board_add
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_quest_board_add]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_quest_board_add]
GO

CREATE PROCEDURE [dbo].[game_quest_board_add]
(
	@accountIDX int
,	@nickname varchar(20)
,	@gameLevel int
,	@questIDX int
,	@userIP varchar(16)
)
AS
GO


-- ----------------------------
-- Procedure structure for game_mission_set_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_mission_set_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_mission_set_init]
GO

CREATE PROCEDURE [dbo].[game_mission_set_init]

	@ACCOUNT_IDX		INT,
	@MISSION_TYPE		TINYINT

AS
SET NOCOUNT ON
	SET LOCK_TIMEOUT 10000

	DECLARE @nReturn			INT	
	SET @nReturn=0			-- True

	BEGIN TRAN

		UPDATE dbo.userMissionDB WITH (XLOCK, ROWLOCK) SET MissionStatus=4 
		WHERE AccountIDX=@ACCOUNT_IDX and MissionType=@MISSION_TYPE

		IF (@@ERROR<>0)			
		BEGIN	
			ROLLBACK TRAN
			SELECT -1
			RETURN;
		END

	COMMIT TRAN

	SELECT @nReturn
	RETURN;
GO


-- ----------------------------
-- Procedure structure for game_config_keyboard_save
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_config_keyboard_save]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_config_keyboard_save]
GO

CREATE PROCEDURE [dbo].[game_config_keyboard_save]
(
	@accountIDX int
,	@keyvalue varchar(200)
)
AS

SET NOCOUNT ON

If (EXISTS(SELECT * FROM userConfigDB WITH(NOLOCK) WHERE accountIDX=@accountIDX))
BEGIN
	UPDATE dbo.userConfigDB
	   SET keyvalue=@keyvalue
	 WHERE accountIDX=@accountIDX
END
ELSE
BEGIN
	INSERT INTO dbo.userConfigDB (accountIDX, keyvalue, regDate)
	VALUES (@accountIDX, @keyvalue, GETDATE())
END
GO


-- ----------------------------
-- Procedure structure for game_region_season_end
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_region_season_end]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_region_season_end]
GO

CREATE PROCEDURE [dbo].[game_region_season_end]

AS
/*
	BEGIN TRAN

	DECLARE @limitRenpoint int, @limitPrepoint int, @season int, @totalpoint int
	DECLARE @rt1point int, @rt1point_bonus int, @rt1count int, @rt2point int, @rt2point_bonus int, @rt2count int

	SET @limitRenpoint = DBO.DEFINE_REGION_LIMIT_RENSPOINT()
	SET @limitPrepoint = DBO.DEFINE_REGION_LIMIT_SE_RENSPOINT()
	SET @season = ISNULL((SELECT max(season) FROM userRegionDB_history), 0) + 1
	SET @totalpoint = (SELECT rt1point + rt2point AS 'rp' FROM userRegionDB)
	SET @rt1point = (SELECT rt1point FROM userRegionDB)
	SET @rt2point = (SELECT rt2point FROM userRegionDB)
	SET @rt1point_bonus = (SELECT rt1point_bonus FROM userRegionDB)
	SET @rt2point_bonus = (SELECT rt2point_bonus FROM userRegionDB)
	SET @rt1count = (SELECT COUNT(*) FROM userGameDB WHERE regionType=1 and renspoint > @limitRenpoint)
	SET @rt2count = (SELECT COUNT(*) FROM userGameDB WHERE regionType=2 and renspoint > @limitRenpoint)

	If (@totalpoint > 0)
	BEGIN
		INSERT INTO userRegionDB_compen (accountIDX, rt1point, rt1point_bonus, rt1count, rt2point, rt2point_bonus, rt2count, regionType, renspoint, regionRanking, regDate)
		SELECT a.accountIDX, @rt1point,  @rt1point_bonus, @rt1count, @rt2point, @rt2point_bonus, @rt2count, a.regionType, a.renspoint, ISNULL(b.region, 0), GETDATE() FROM userGameDB a LEFT JOIN userRankingDB b ON a.accountIDX=b.accountIDX WHERE a.regionType > 0 and renspoint > @limitPrepoint
	END

	DELETE FROM userRegionDB_compen WHERE regDate < Left(GETDATE(), 10)

	INSERT INTO dbo.userRegionDB_history (point, point_bonus, membercount, regionType, season, regDate) VALUES (@rt1point, @rt1point_bonus, @rt1count, 1, @season, GETDATE())
	INSERT INTO dbo.userRegionDB_history (point, point_bonus, membercount, regionType, season, regDate) VALUES (@rt2point, @rt2point_bonus, @rt2count, 2, @season, GETDATE())

	COMMIT TRAN
*/
GO


-- ----------------------------
-- Procedure structure for game_guild_join_self_init
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[game_guild_join_self_init]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[game_guild_join_self_init]
GO

CREATE PROCEDURE [dbo].[game_guild_join_self_init]
(
	@accountIDX int
)
AS

SET NOCOUNT ON

DELETE FROM dbo.userGuildInfoDB
 WHERE accountIDX=@accountIDX
   AND guildJoinType=0
GO


-- ----------------------------
-- Procedure structure for USP_ADM_GUILD_GET_DATA
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_ADM_GUILD_GET_DATA]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[USP_ADM_GUILD_GET_DATA]
GO

CREATE PROCEDURE [dbo].[USP_ADM_GUILD_GET_DATA]

	@SEARCH_TYPE	TINYINT,			-- 1: 길드명, 2: 아이디, 3: 닉네임
	@SEARCH_ID		NVARCHAR(20)

AS

SET NOCOUNT ON;
SET LOCK_TIMEOUT 10000;

IF (@SEARCH_TYPE = 1)
BEGIN
	SELECT idx, guildName, aboutguild, guildmark, ranking, point, todaypoint, guildLevel, maxcount, membercount, regDate
	  FROM dbo.userGuildDB WITH (NOLOCK)
	 WHERE guildName = @SEARCH_ID
END
ELSE IF (@SEARCH_TYPE = 2)
BEGIN
	SELECT GU.idx, GU.guildName, GU.aboutguild, GU.guildmark, GU.ranking, GU.point, GU.todaypoint, GU.guildLevel, GU.maxcount, GU.membercount, GU.regDate
	  FROM dbo.userGuildInfoDB GI WITH (NOLOCK)
	  JOIN dbo.userGuildDB GU WITH (NOLOCK)
	    ON GI.guildIDX = GU.idx
	  JOIN dbo.userMemberDB ME WITH (NOLOCK)
	    ON GI.accountIDX = ME.accountIDX
	 WHERE ME.userID = @SEARCH_ID
END
ELSE
BEGIN
	SELECT GU.idx, GU.guildName, GU.aboutguild, GU.guildmark, GU.ranking, GU.point, GU.todaypoint, GU.guildLevel, GU.maxcount, GU.membercount, GU.regDate
	  FROM dbo.userGuildInfoDB GI WITH (NOLOCK)
	  JOIN dbo.userGuildDB GU WITH (NOLOCK)
	    ON GI.guildIDX = GU.idx
	  JOIN dbo.userMemberDB ME WITH (NOLOCK)
	    ON GI.accountIDX = ME.accountIDX
	 WHERE ME.nickName = @SEARCH_ID
END
GO


-- ----------------------------
-- Indexes structure for table define_class_price
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[define_class_price] (
  [idx] ASC
)  
 
GO


-- ----------------------------
-- Primary Key structure for table define_custom_customidx
-- ----------------------------
ALTER TABLE [dbo].[define_custom_customidx] ADD CONSTRAINT [pk_define_custom_customidx_idx] PRIMARY KEY CLUSTERED ([idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table define_game_server
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_serverIP]
ON [dbo].[define_game_server] (
  [serverIP] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table define_game_server
-- ----------------------------
ALTER TABLE [dbo].[define_game_server] ADD CONSTRAINT [PK_define_game_server] PRIMARY KEY CLUSTERED ([serverID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table define_gear_customidx
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[define_gear_customidx] (
  [idx] ASC
)  
 
GO


-- ----------------------------
-- Primary Key structure for table define_hero_price
-- ----------------------------
ALTER TABLE [dbo].[define_hero_price] ADD CONSTRAINT [PK_define_hero_price] PRIMARY KEY CLUSTERED ([HeroCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table event_chuchun
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[event_chuchun] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_cpID]
ON [dbo].[event_chuchun] (
  [cpID] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_friendIDX]
ON [dbo].[event_chuchun] (
  [friendIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table event_chuchun
-- ----------------------------
ALTER TABLE [dbo].[event_chuchun] ADD CONSTRAINT [idx_event_chuchun_idx] PRIMARY KEY CLUSTERED ([idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table event_item_limited
-- ----------------------------
ALTER TABLE [dbo].[event_item_limited] ADD CONSTRAINT [PK_event_item_limited_AccountIDX] PRIMARY KEY CLUSTERED ([AccountIDX], [EventType], [GoodsIndex])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table TB_LTS_WEEKTIME_PARENT_CHILD_INFO
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_TB_LTS_WEEKTIME_PARENT_CHILD_INFO__CHILD_UIDSEQ_Agree_Type]
ON [dbo].[TB_LTS_WEEKTIME_PARENT_CHILD_INFO] (
  [CHILD_ID] ASC,
  [Agree_Type] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_TB_LTS_WEEKTIME_PARENT_CHILD_INFO__PSEQ_CSEQ_Agree_Type]
ON [dbo].[TB_LTS_WEEKTIME_PARENT_CHILD_INFO] (
  [PARENT_ID] ASC,
  [CHILD_ID] ASC,
  [Agree_Type] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table TB_LTS_WEEKTIME_PARENT_CHILD_INFO
-- ----------------------------
ALTER TABLE [dbo].[TB_LTS_WEEKTIME_PARENT_CHILD_INFO] ADD CONSTRAINT [PK_TB_LTS_WEEKTIME_PARENT_CHILD_INFO] PRIMARY KEY NONCLUSTERED ([PARENT_ID], [CHILD_ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TBL_migration_error_log
-- ----------------------------
ALTER TABLE [dbo].[TBL_migration_error_log] ADD CONSTRAINT [PK_TBL_migration_error_log] PRIMARY KEY CLUSTERED ([idx], [GarenaID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table TBL_migration_mapping_log
-- ----------------------------
CREATE NONCLUSTERED INDEX [NC_TBL_migration_mapping_log_AsiasoftID]
ON [dbo].[TBL_migration_mapping_log] (
  [AsiasoftID] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_TBL_migration_mapping_log_GarenaUID]
ON [dbo].[TBL_migration_mapping_log] (
  [GarenaUID] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table TBL_migration_mapping_log
-- ----------------------------
ALTER TABLE [dbo].[TBL_migration_mapping_log] ADD CONSTRAINT [PK_TBL_migration_mapping_log] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TBL_obt_event_bug_reporting
-- ----------------------------
ALTER TABLE [dbo].[TBL_obt_event_bug_reporting] ADD CONSTRAINT [PK_TBL_obt_event_bug_reporting] PRIMARY KEY CLUSTERED ([accountIDX], [brType])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TBL_obt_event_log
-- ----------------------------
ALTER TABLE [dbo].[TBL_obt_event_log] ADD CONSTRAINT [PK_TBL_obt_event_log] PRIMARY KEY CLUSTERED ([accountIDX], [eventType])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table TBL_RANKING_AWARD
-- ----------------------------
CREATE CLUSTERED INDEX [CL_TBL_RANKING_AWARD]
ON [dbo].[TBL_RANKING_AWARD] (
  [nowRanking] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_TBL_RANKING_AWARD_accountIDX]
ON [dbo].[TBL_RANKING_AWARD] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_TBL_RANKING_AWARD_awardType]
ON [dbo].[TBL_RANKING_AWARD] (
  [awardType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userAbilityDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userAbilityDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userAbilityDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userAccessoryDB
-- ----------------------------
ALTER TABLE [dbo].[userAccessoryDB] ADD CONSTRAINT [PK_userAccessoryDB] PRIMARY KEY CLUSTERED ([AccountIDX], [idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userAttendanceDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userAttendanceDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userAttendanceDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userAttendDB
-- ----------------------------
ALTER TABLE [dbo].[userAttendDB] ADD CONSTRAINT [PK_userAttendDB_LogIndex] PRIMARY KEY CLUSTERED ([AccountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userAwardDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userAwardDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userAwardDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userCharacterDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userCharacterDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userCharacterDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userClassDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userClassDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userClassDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userCloverDB
-- ----------------------------
ALTER TABLE [dbo].[userCloverDB] ADD CONSTRAINT [PK_userCloverDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userCoinDB
-- ----------------------------
ALTER TABLE [dbo].[userCoinDB] ADD CONSTRAINT [PK_userCoinDB] PRIMARY KEY CLUSTERED ([AccountIDX], [CoinType])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userConfigDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userConfigDB] (
  [accountIDX] ASC
)  
 
GO


-- ----------------------------
-- Indexes structure for table userCooperationDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_cpType]
ON [dbo].[userCooperationDB] (
  [cpType] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userCooperationDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_cpID]
ON [dbo].[userCooperationDB] (
  [cpID] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_userCooperationDB__note]
ON [dbo].[userCooperationDB] (
  [note] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userCooperationDB
-- ----------------------------
ALTER TABLE [dbo].[userCooperationDB] ADD CONSTRAINT [pk_idx_accountIDX] PRIMARY KEY NONCLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userCostumeDB
-- ----------------------------
ALTER TABLE [dbo].[userCostumeDB] ADD CONSTRAINT [PK_userCostumeDB] PRIMARY KEY CLUSTERED ([idx], [accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userEventBingo_Number
-- ----------------------------
ALTER TABLE [dbo].[userEventBingo_Number] ADD CONSTRAINT [PK_userEventBingo_Number] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userEventBingo_Present
-- ----------------------------
ALTER TABLE [dbo].[userEventBingo_Present] ADD CONSTRAINT [PK_userEventBingo_Present] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userEventDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userEventDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_eventType]
ON [dbo].[userEventDB] (
  [accountIDX] ASC,
  [eventType] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userEventDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userEventPirateRoulette_Number
-- ----------------------------
ALTER TABLE [dbo].[userEventPirateRoulette_Number] ADD CONSTRAINT [PK_userEventPirateRoulette_Number] PRIMARY KEY CLUSTERED ([accountidx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userEventPirateRoulette_Present
-- ----------------------------
ALTER TABLE [dbo].[userEventPirateRoulette_Present] ADD CONSTRAINT [PK_userEventPirateRoulette_Present] PRIMARY KEY CLUSTERED ([accountidx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userFishDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userFishDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userFishDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userFriendBestDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userFriendBestDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userFriendBestDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_flag]
ON [dbo].[userFriendBestDB] (
  [flag] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_friendIDX]
ON [dbo].[userFriendBestDB] (
  [friendIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userFriendDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_userAccIDX]
ON [dbo].[userFriendDB] (
  [userAccIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userFriendDB] (
  [idx] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_accIDX]
ON [dbo].[userFriendDB] (
  [userAccIDX] ASC,
  [friendAccIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userGameDB
-- ----------------------------
ALTER TABLE [dbo].[userGameDB] ADD CONSTRAINT [PK_userGameDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userGuildAttendDB
-- ----------------------------
CREATE CLUSTERED INDEX [CX_userGuildAttendDB_RegDate_GuildIDX]
ON [dbo].[userGuildAttendDB] (
  [InitDate] ASC,
  [GuildIDX] ASC
)  
 
GO


-- ----------------------------
-- Primary Key structure for table userGuildAttendDB
-- ----------------------------
ALTER TABLE [dbo].[userGuildAttendDB] ADD CONSTRAINT [PK_userGuildAttendDB_RegDate_AccountIDX] PRIMARY KEY NONCLUSTERED ([InitDate], [AccountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userGuildDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userGuildDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userGuildDB
-- ----------------------------
ALTER TABLE [dbo].[userGuildDB] ADD CONSTRAINT [PK_userGuildDB] PRIMARY KEY CLUSTERED ([guildName])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userGuildHQDB
-- ----------------------------
ALTER TABLE [dbo].[userGuildHQDB] ADD CONSTRAINT [PK_userGuildHQDB] PRIMARY KEY CLUSTERED ([GuildIDX], [ItemSerial])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userGuildHQVerDB
-- ----------------------------
ALTER TABLE [dbo].[userGuildHQVerDB] ADD CONSTRAINT [PK_userGuildHQVerDB] PRIMARY KEY CLUSTERED ([GuildIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userGuildInfoDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_guildIDX]
ON [dbo].[userGuildInfoDB] (
  [guildIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userGuildInfoDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userGuildInfoDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userHqDB
-- ----------------------------
ALTER TABLE [dbo].[userHqDB] ADD CONSTRAINT [PK_userHqDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userItemDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userItemDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userItemDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userItemEtcDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userItemEtcDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userItemEtcDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userItemExtraDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userItemExtraDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userItemExtraDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userItemMedalDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userItemMedalDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userItemMedalDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userItemMedalExtendDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userItemMedalExtendDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userItemMedalExtendDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueAuthDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueAuthDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueAuthDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_leagueIDX]
ON [dbo].[userLeagueAuthDB] (
  [leagueIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueCheerDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueCheerDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_leagueIDX]
ON [dbo].[userLeagueCheerDB] (
  [leagueIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userLeagueCheerDB
-- ----------------------------
ALTER TABLE [dbo].[userLeagueCheerDB] ADD CONSTRAINT [PK_userLeagueCheerDB] PRIMARY KEY CLUSTERED ([idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userLeagueInfoDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueInfoDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_leagueIDX]
ON [dbo].[userLeagueInfoDB] (
  [leagueIDX] ASC
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


-- ----------------------------
-- Indexes structure for table userLeagueRewardCheerDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueRewardCheerDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueRewardCheerDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueRewardDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueRewardDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueRewardDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueRewardUserDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_regDate]
ON [dbo].[userLeagueRewardUserDB] (
  [regDate] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueRewardUserDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueRewardUserDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueRoundDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueRoundDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_infoIDX]
ON [dbo].[userLeagueRoundDB] (
  [infoIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueTeamDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_leaderIDX]
ON [dbo].[userLeagueTeamDB] (
  [leaderIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_leagueIDX]
ON [dbo].[userLeagueTeamDB] (
  [leagueIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userLeagueTeamDB
-- ----------------------------
ALTER TABLE [dbo].[userLeagueTeamDB] ADD CONSTRAINT [PK_userLeagueTeamDB] PRIMARY KEY CLUSTERED ([idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userLeagueTeamMemberDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueTeamMemberDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_leagueIDX]
ON [dbo].[userLeagueTeamMemberDB] (
  [leagueIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_teamIDX]
ON [dbo].[userLeagueTeamMemberDB] (
  [teamIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userLeagueTeamMemberDB
-- ----------------------------
ALTER TABLE [dbo].[userLeagueTeamMemberDB] ADD CONSTRAINT [PK_userLeagueTeamMemberDB] PRIMARY KEY CLUSTERED ([idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userLeagueWinnerHistoryDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueWinnerHistoryDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_endDate]
ON [dbo].[userLeagueWinnerHistoryDB] (
  [endDate] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_startDate]
ON [dbo].[userLeagueWinnerHistoryDB] (
  [startDate] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userLeagueWinnerInfoDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userLeagueWinnerInfoDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userLeagueWinnerInfoDB] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_historyIDX]
ON [dbo].[userLeagueWinnerInfoDB] (
  [historyIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userLoginDB
-- ----------------------------
ALTER TABLE [dbo].[userLoginDB] ADD CONSTRAINT [PK_userLoginDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userMemberDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userMemberDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Uniques structure for table userMemberDB
-- ----------------------------
ALTER TABLE [dbo].[userMemberDB] ADD CONSTRAINT [UK_userMemberDB] UNIQUE NONCLUSTERED ([nickName] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userMemberDB
-- ----------------------------
ALTER TABLE [dbo].[userMemberDB] ADD CONSTRAINT [PK_userMemberDB] PRIMARY KEY CLUSTERED ([userID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userMissionDB
-- ----------------------------
ALTER TABLE [dbo].[userMissionDB] ADD CONSTRAINT [PK_userMissionDB_AccountIDX] PRIMARY KEY CLUSTERED ([AccountIDX], [MissionType], [MissionCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userMoneyDB
-- ----------------------------
ALTER TABLE [dbo].[userMoneyDB] ADD CONSTRAINT [PK_userMoneyDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userNameDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_TB_userNameDB__ipinCI]
ON [dbo].[userNameDB] (
  [ipinCI] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_userencode]
ON [dbo].[userNameDB] (
  [userEnCode] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_jumin]
ON [dbo].[userNameDB] (
  [userJumin1] ASC,
  [userJumin2] ASC
)
GO

CREATE NONCLUSTERED INDEX [idx_userName]
ON [dbo].[userNameDB] (
  [userName] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userNameDB
-- ----------------------------
ALTER TABLE [dbo].[userNameDB] ADD CONSTRAINT [PK_userNameDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userPersonalHQDB
-- ----------------------------
ALTER TABLE [dbo].[userPersonalHQDB] ADD CONSTRAINT [PK_userPersonalHQDB] PRIMARY KEY CLUSTERED ([AccountIDX], [ItemSerial])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userPetDB
-- ----------------------------
ALTER TABLE [dbo].[userPetDB] ADD CONSTRAINT [PK_userPetDB_accountIDX_PetIDX] PRIMARY KEY CLUSTERED ([accountIDX], [petIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userPieceDB
-- ----------------------------
CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userPieceDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userPieceDB
-- ----------------------------
ALTER TABLE [dbo].[userPieceDB] ADD CONSTRAINT [PK_userPieceDB] PRIMARY KEY CLUSTERED ([idx])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userPopStoreDB
-- ----------------------------
ALTER TABLE [dbo].[userPopStoreDB] ADD CONSTRAINT [PK_userPopStoreDB_AccountIDX] PRIMARY KEY CLUSTERED ([AccountIDX], [PopupSlot])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userPresentDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userPresentDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_receiveIDX]
ON [dbo].[userPresentDB] (
  [receiveIDX] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userQuestCompleteDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userQuestCompleteDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userQuestCompleteDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userQuestDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userQuestDB] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userQuestDB] (
  [idx] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userRankingDB
-- ----------------------------
ALTER TABLE [dbo].[userRankingDB] ADD CONSTRAINT [PK_userRankingDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userRankingDB_award
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userRankingDB_award] (
  [accountIDX] ASC
)  
 
GO


-- ----------------------------
-- Indexes structure for table userRankingDB_class
-- ----------------------------
CREATE CLUSTERED INDEX [CL_userRankingDB_class]
ON [dbo].[userRankingDB_class] (
  [nowRanking] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [NC_userRankingDB_class_accountIDX]
ON [dbo].[userRankingDB_class] (
  [accountIDX] ASC
)
GO

CREATE NONCLUSTERED INDEX [NC_userRankingDB_class_classType]
ON [dbo].[userRankingDB_class] (
  [classType] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userRankingDB_hero
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userRankingDB_hero] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_daily]
ON [dbo].[userRankingDB_hero] (
  [daily] ASC
)
GO


-- ----------------------------
-- Indexes structure for table userRankingDB_medal
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userRankingDB_medal] (
  [accountIDX] ASC
)  
 
GO


-- ----------------------------
-- Primary Key structure for table userRecordBattleDB
-- ----------------------------
ALTER TABLE [dbo].[userRecordBattleDB] ADD CONSTRAINT [PK_userRecordBattleDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userRecordGuildDB
-- ----------------------------
ALTER TABLE [dbo].[userRecordGuildDB] ADD CONSTRAINT [PK_userRecordGuildDB] PRIMARY KEY CLUSTERED ([guildIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userRegionDB_compen
-- ----------------------------
CREATE CLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userRegionDB_compen] (
  [accountIDX] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_idx]
ON [dbo].[userRegionDB_compen] (
  [idx] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userRelativeLevelDB
-- ----------------------------
ALTER TABLE [dbo].[userRelativeLevelDB] ADD CONSTRAINT [PK_userRelativeLevelDB] PRIMARY KEY CLUSTERED ([accountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userSBoxDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userSBoxDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userSBoxDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table userSpentGoldDB
-- ----------------------------
ALTER TABLE [dbo].[userSpentGoldDB] ADD CONSTRAINT [PK_userSpentGoldDB_AccountIDX] PRIMARY KEY CLUSTERED ([AccountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userSpRankDB
-- ----------------------------
ALTER TABLE [dbo].[userSpRankDB] ADD CONSTRAINT [PK_userSpRank] PRIMARY KEY CLUSTERED ([AccountIDX])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userTitleDB
-- ----------------------------
ALTER TABLE [dbo].[userTitleDB] ADD CONSTRAINT [PK_userTitleDB_AccountIDX] PRIMARY KEY CLUSTERED ([AccountIDX], [TitleCode])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table userTradeDB
-- ----------------------------
CREATE CLUSTERED INDEX [idx_idx]
ON [dbo].[userTradeDB] (
  [idx] ASC
)  
 
GO

CREATE NONCLUSTERED INDEX [idx_accountIDX]
ON [dbo].[userTradeDB] (
  [accountIDX] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table WebBlockException
-- ----------------------------
ALTER TABLE [dbo].[WebBlockException] ADD CONSTRAINT [PK_WebBlockException] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebConnectLog
-- ----------------------------
ALTER TABLE [dbo].[WebConnectLog] ADD CONSTRAINT [PK_WebBlock] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebCouponItem
-- ----------------------------
ALTER TABLE [dbo].[WebCouponItem] ADD CONSTRAINT [PK_WebCouponItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebEvent
-- ----------------------------
ALTER TABLE [dbo].[WebEvent] ADD CONSTRAINT [PK_WebEvent] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebEventLog
-- ----------------------------
ALTER TABLE [dbo].[WebEventLog] ADD CONSTRAINT [PK_WebEventLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebEventValentineDailyLog
-- ----------------------------
ALTER TABLE [dbo].[WebEventValentineDailyLog] ADD CONSTRAINT [PK_WebEventValentineDailyLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebEventValentineGoal
-- ----------------------------
ALTER TABLE [dbo].[WebEventValentineGoal] ADD CONSTRAINT [PK_WebEventValentineGoal] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebEventValentineGoalLog
-- ----------------------------
ALTER TABLE [dbo].[WebEventValentineGoalLog] ADD CONSTRAINT [PK_WebEventValentineGoalLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebEventValentineHistory
-- ----------------------------
ALTER TABLE [dbo].[WebEventValentineHistory] ADD CONSTRAINT [PK_WebEventValentineHistory] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebEventValentineUserItem
-- ----------------------------
ALTER TABLE [dbo].[WebEventValentineUserItem] ADD CONSTRAINT [PK_WebEventValentineUserItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebGallery
-- ----------------------------
ALTER TABLE [dbo].[WebGallery] ADD CONSTRAINT [PK_WebGallery2] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebHardware
-- ----------------------------
ALTER TABLE [dbo].[WebHardware] ADD CONSTRAINT [PK_WebHardware2] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebHardwareLog
-- ----------------------------
ALTER TABLE [dbo].[WebHardwareLog] ADD CONSTRAINT [PK_WebHardwareLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebLogin
-- ----------------------------
ALTER TABLE [dbo].[WebLogin] ADD CONSTRAINT [PK_WebLogin] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebNotice
-- ----------------------------
ALTER TABLE [dbo].[WebNotice] ADD CONSTRAINT [PK_WebNotice] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebNoticeType
-- ----------------------------
ALTER TABLE [dbo].[WebNoticeType] ADD CONSTRAINT [PK_WebNoticeType] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebQuest
-- ----------------------------
ALTER TABLE [dbo].[WebQuest] ADD CONSTRAINT [PK_WebQuest] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebQuestReward
-- ----------------------------
ALTER TABLE [dbo].[WebQuestReward] ADD CONSTRAINT [PK_WebQuestReward] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebQuestUser
-- ----------------------------
ALTER TABLE [dbo].[WebQuestUser] ADD CONSTRAINT [PK_WebQuestUser] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRoulette
-- ----------------------------
ALTER TABLE [dbo].[WebRoulette] ADD CONSTRAINT [PK_WebRoulette] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteItem
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteItem] ADD CONSTRAINT [PK_WebRouletteItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteMission
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteMission] ADD CONSTRAINT [PK_WebRouletteMission] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRoulettePayLog
-- ----------------------------
ALTER TABLE [dbo].[WebRoulettePayLog] ADD CONSTRAINT [PK_WebRoulettePayLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteReward
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteReward] ADD CONSTRAINT [PK_WebRouletteReward] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteRewardLog
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteRewardLog] ADD CONSTRAINT [PK_WebRouletteRewardLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteSetting
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteSetting] ADD CONSTRAINT [PK_WebRouletteSetting] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteSPMission
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteSPMission] ADD CONSTRAINT [PK_WebRouletteSPMission] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteSPMissionLog
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteSPMissionLog] ADD CONSTRAINT [PK_WebRouletteSPMissionLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteUserItem
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteUserItem] ADD CONSTRAINT [PK_WebRouletteUserItem] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteUserItemDeleteLog
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteUserItemDeleteLog] ADD CONSTRAINT [PK_WebRouletteUserItemDeleteLog] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteUserLucky
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteUserLucky] ADD CONSTRAINT [PK_WebRouletteUserLucky] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebRouletteUserMission
-- ----------------------------
ALTER TABLE [dbo].[WebRouletteUserMission] ADD CONSTRAINT [PK_WebRouletteUserMission] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebTicket
-- ----------------------------
ALTER TABLE [dbo].[WebTicket] ADD CONSTRAINT [PK_WebTicket] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebTicketDetail
-- ----------------------------
ALTER TABLE [dbo].[WebTicketDetail] ADD CONSTRAINT [PK_WebTicketDetail] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebTicketType
-- ----------------------------
ALTER TABLE [dbo].[WebTicketType] ADD CONSTRAINT [PK_WebTicketType] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table WebTransaction
-- ----------------------------
ALTER TABLE [dbo].[WebTransaction] ADD CONSTRAINT [PK_WebTransaction] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

