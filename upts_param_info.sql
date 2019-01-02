/*
Navicat MySQL Data Transfer

Source Server         : uptsdb
Source Server Version : 50642
Source Host           : 144.48.9.176:3306
Source Database       : uptsdb

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-01-02 15:42:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `upts_param_info`
-- ----------------------------
DROP TABLE IF EXISTS `upts_param_info`;
CREATE TABLE `upts_param_info` (
  `param_key` varchar(20) NOT NULL,
  `param_value` varchar(20) DEFAULT NULL,
  `desc` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`param_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upts_param_info
-- ----------------------------
INSERT INTO `upts_param_info` VALUES ('byeQueueSize', '0', '买单队列深度');
INSERT INTO `upts_param_info` VALUES ('queueSizeMax', '0', '总队列深度');
INSERT INTO `upts_param_info` VALUES ('sellQueueSize', '0', '卖单队列深度');
