/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50151
Source Host           : localhost:3306
Source Database       : city

Target Server Type    : MYSQL
Target Server Version : 50151
File Encoding         : 65001

Date: 2016-07-27 10:59:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_info`
-- ----------------------------
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE `tb_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `info_type` int(5) NOT NULL,
  `info_title` varchar(100) NOT NULL,
  `info_content` varchar(1000) NOT NULL,
  `info_linkman` varchar(20) DEFAULT NULL,
  `info_phone` varchar(11) DEFAULT NULL,
  `info_email` varchar(50) DEFAULT NULL,
  `info_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `info_check` varchar(1) NOT NULL DEFAULT '0',
  `info_payfor` varchar(1) NOT NULL DEFAULT '0',
  `info_status` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `info_type` (`info_type`),
  CONSTRAINT `info_type` FOREIGN KEY (`info_type`) REFERENCES `tb_type` (`type_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_info
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_type`
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `type_sign` int(5) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL,
  `type_intro` varchar(100) NOT NULL,
  PRIMARY KEY (`type_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(8) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `user_type` varchar(1) NOT NULL,
  `user_statue` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`user_name`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'li', '123', '0', '0');
INSERT INTO `tb_user` VALUES ('2', 'ning', '123', '0', '0');
