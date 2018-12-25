/*
Navicat MySQL Data Transfer

Source Server         : uaisdb
Source Server Version : 50617
Source Host           : 172.19.66.201:3306
Source Database       : uaisdb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-12-25 09:03:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `upts_candle_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_candle_info`;
CREATE TABLE `upts_candle_info` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
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
-- Table structure for `upts_trade_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_trade_info`;
CREATE TABLE `upts_trade_info` (
  `order_id` varchar(20) COLLATE utf8_bin NOT NULL,
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
