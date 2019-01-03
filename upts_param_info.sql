/*
Navicat MySQL Data Transfer

Source Server         : uaisdb
Source Server Version : 50617
Source Host           : 172.19.66.201:3306
Source Database       : uaisdb

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2019-01-03 12:12:02
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `upts_param_info` VALUES ('buyQueueSize', '0', '买单队列深度', '2019-01-02 17:36:38');
INSERT INTO `upts_param_info` VALUES ('forceOrderNum', '0', '历史爆仓单数', '2019-01-02 17:39:20');
INSERT INTO `upts_param_info` VALUES ('queueSizeMax', '0', '总队列深度', '2019-01-02 17:36:38');
INSERT INTO `upts_param_info` VALUES ('sellQueueSize', '0', '卖单队列深度', '2019-01-02 17:37:07');

-- ----------------------------
-- Table structure for `upts_report_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_report_info`;
CREATE TABLE `upts_report_info` (
  `id` varchar(20) DEFAULT NULL,
  `force_order_num` varchar(10) DEFAULT NULL,
  `force_order_cost` decimal(20,0) DEFAULT NULL,
  `sprofit` decimal(20,0) DEFAULT NULL,
  `scost` decimal(20,0) DEFAULT NULL,
  `update_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upts_report_info
-- ----------------------------
