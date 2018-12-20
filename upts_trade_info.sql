/*
Navicat MySQL Data Transfer

Source Server         : uaisdb
Source Server Version : 50617
Source Host           : 172.19.66.201:3306
Source Database       : uaisdb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-12-18 15:27:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `upts_candle_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_trade_info`;
CREATE TABLE `upts_trade_info` (
  `orderId` varchar(20) COLLATE utf8_bin NOT NULL,
  `btime` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bprice` double(30,3) NOT NULL,
  `sprice` double(30,3) NOT NULL,
  `stime` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sider` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `size` int(5) NOT NULL,
  `high` double(30,3) NOT NULL,
  `low` double(30,3) NOT NULL,
  `flag` varchar(1) NOT NULL,
  `profit` decimal(14,3) NOT NULL,
  `bsum` double(30,3) NOT NULL,
  `ssum` double(30,3) NOT NULL,
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `update_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

