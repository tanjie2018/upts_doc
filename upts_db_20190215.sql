/*
Navicat MySQL Data Transfer

Source Server         : uptsdb
Source Server Version : 50642
Source Host           : 144.48.9.176:3306
Source Database       : uptsdb

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-02-15 14:13:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `upts_candle_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_candle_info`;
CREATE TABLE `upts_candle_info` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `open` double(30,3) NOT NULL,
  `high` double(30,3) NOT NULL,
  `low` double(30,3) NOT NULL,
  `close` double(30,3) NOT NULL,
  `prop` varchar(3) COLLATE utf8_bin DEFAULT NULL COMMENT 'U:上；D:下；C:中',
  `rang` decimal(10,3) DEFAULT NULL,
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upts_candle_info
-- ----------------------------

-- ----------------------------
-- Table structure for `upts_dcandle_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_dcandle_info`;
CREATE TABLE `upts_dcandle_info` (
  `id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `open` double(30,3) NOT NULL,
  `high` double(30,3) NOT NULL,
  `low` double(30,3) NOT NULL,
  `close` double(30,3) NOT NULL,
  `prop` varchar(3) COLLATE utf8_bin DEFAULT NULL COMMENT 'U:上；D:下；C:中',
  `rang` decimal(10,3) DEFAULT NULL,
  `volume` double(30,3) NOT NULL,
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upts_dcandle_info
-- ----------------------------

-- ----------------------------
-- Table structure for `upts_param_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_param_info`;
CREATE TABLE `upts_param_info` (
  `param_key` varchar(20) NOT NULL,
  `param_value` varchar(20) DEFAULT NULL,
  `param_desc` varchar(30) DEFAULT NULL,
  `update_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`param_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upts_param_info
-- ----------------------------
INSERT INTO `upts_param_info` VALUES ('buyQueueSize', '0', '买单队列深度', '2019-02-15 14:14:29.484');
INSERT INTO `upts_param_info` VALUES ('forceOrderNum', '0', '历史爆仓单数', '2019-02-15 14:14:31.172');
INSERT INTO `upts_param_info` VALUES ('queueSizeMax', '0', '总队列深度', '2019-02-15 14:14:31.872');
INSERT INTO `upts_param_info` VALUES ('sellQueueSize', '0', '卖单队列深度', '2019-02-15 14:14:34.140');

-- ----------------------------
-- Table structure for `upts_report_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_report_info`;
CREATE TABLE `upts_report_info` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `force_order_num` varchar(10) DEFAULT NULL,
  `force_order_cost` decimal(20,0) DEFAULT NULL,
  `profit` decimal(20,0) DEFAULT NULL,
  `sprofit` decimal(20,0) DEFAULT NULL,
  `scost` decimal(20,0) DEFAULT NULL,
  `update_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upts_report_info
-- ----------------------------

-- ----------------------------
-- Table structure for `upts_trade_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_trade_info`;
CREATE TABLE `upts_trade_info` (
  `order_id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `btime` varchar(20) COLLATE utf8_bin DEFAULT '',
  `bprice` double(30,3) DEFAULT NULL,
  `sprice` double(30,3) DEFAULT NULL,
  `stime` varchar(20) COLLATE utf8_bin DEFAULT '',
  `sider` varchar(20) COLLATE utf8_bin DEFAULT '' COMMENT 'buy,sell',
  `size` int(5) DEFAULT NULL,
  `high` double(30,3) DEFAULT NULL,
  `low` double(30,3) DEFAULT NULL,
  `flag` varchar(1) COLLATE utf8_bin DEFAULT NULL COMMENT '0:建；1:平',
  `profit` decimal(14,3) DEFAULT NULL,
  `rang` decimal(14,3) DEFAULT NULL,
  `bsum` double(30,3) DEFAULT NULL,
  `ssum` double(30,3) DEFAULT NULL,
  `strategy` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of upts_trade_info
-- ----------------------------
