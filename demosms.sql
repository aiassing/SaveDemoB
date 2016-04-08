/*
Navicat MySQL Data Transfer

Source Server         : mysql56
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : demosms

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2016-04-08 15:54:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nicheng` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `truename` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xb` bit(1) DEFAULT NULL,
  `csrq` date DEFAULT NULL,
  `zy` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xq` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bz` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('2', '李四', '李晓兰', '\0', '1992-09-09', '通信工程', '数据结构&操作系统', 'book&web', '我非常喜欢计算机');
INSERT INTO `studentinfo` VALUES ('3', 'null', 'null', '', null, '通信工程', '', '', '123');
INSERT INTO `studentinfo` VALUES ('4', '张四', '张日天', '\0', '1996-09-06', '电气工程', '数据库原理', '', '我有点喜欢这门课程');
INSERT INTO `studentinfo` VALUES ('5', null, null, '', null, '通信工程', '', '', null);
INSERT INTO `studentinfo` VALUES ('8', 'jj', '毛K', '', '1992-02-01', '通信工程', '计算机导论', 'book', '1');
INSERT INTO `studentinfo` VALUES ('9', 'zz2', '12', '', '1994-02-01', '计算机科学与技术', '数据结构', 'music&book', '');
INSERT INTO `studentinfo` VALUES ('10', '', '', '', null, '通信工程', '', '', '');
INSERT INTO `studentinfo` VALUES ('11', '', '', '', null, '通信工程', '', '', '');

-- ----------------------------
-- Table structure for usertable
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `username` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO `usertable` VALUES ('admin', 'admin');
INSERT INTO `usertable` VALUES ('test', 'test');
