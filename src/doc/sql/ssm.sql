/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : ssm

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2016-07-15 15:18:19
*/

CREATE DATABASE ssm
CHARACTER SET 'utf8'
COLLATE 'utf8_general_ci';





SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionName` varchar(50) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `t_permission_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', 'user:*', '1');
INSERT INTO `t_permission` VALUES ('2', 'student:*', '2');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'admin');
INSERT INTO `t_role` VALUES ('2', 'teacher');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'crossoverJie', '123456', '1');
INSERT INTO `t_user` VALUES ('2', 'aaa', '12345', '2');
INSERT INTO `t_user` VALUES ('3', 'bbb', '12345', null);
INSERT INTO `t_user` VALUES ('4', 'ccc', '12345', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `description` text,
  `roleId` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jack', 'abc123', '你的', null);
INSERT INTO `user` VALUES ('2', 'zhangsan', 'abc123', '打算打算', null);
INSERT INTO `user` VALUES ('3', 'lisi', 'abc123', '费大幅度', null);
INSERT INTO `user` VALUES ('4', 'wangwu', 'abc123', '放到的', null);
INSERT INTO `user` VALUES ('5', 'xiaolong', 'abc123', '发的发', null);
INSERT INTO `user` VALUES ('6', '艾弗森', 'abc123', '阿伦·艾弗森1996年6月26日被费城76人队选中，成为NBA状元秀。艾弗森14年职业生涯先后效力过费城76人队、掘金、灰熊和活塞， 场均出战41.1分钟，获得26.7分、6.2次助攻和2.2次抢断。在整个职业生涯中，艾弗森四次荣膺得分王，11次入选全明星，三次荣膺抢断王。2000-2001赛季，艾弗森打出了生涯最好表现，夺得常规赛MVP奖杯，并帮助76队打入NBA总决赛。', null);
INSERT INTO `user` VALUES ('7', '库里', 'abc123', '斯蒂芬·库里2009年通过选秀进入NBA后一直效力于勇士队，新秀赛季入选最佳新秀第一阵容；2014-15赛季随勇士队获得NBA总冠军；两次当选常规赛MVP，两次入选最佳阵容第一阵容，三次入选全明星赛西部首发阵容。斯蒂芬·库里2010年随美国队获土耳其世锦赛冠军，2014年随美国队获西班牙篮球世界杯冠军。', null);
INSERT INTO `user` VALUES ('8', '维斯布鲁克', '1111', '拉塞尔·威斯布鲁克于2008年通过选秀进入NBA，新秀赛季入选最佳新秀阵容第一阵容；2010年随美国队获得土耳其篮球世锦赛冠军，2012年随美国男篮获得伦敦奥运会冠军；5次入选全明星阵容，2015、2016连续两年获得全明星赛MVP；2015-16赛季入选最佳阵容第一阵容，4次入选最佳阵容第二阵容。', null);
INSERT INTO `user` VALUES ('9', '凯里·欧文', '6666', '凯里·欧文2011年以选秀状元身份进入NBA，新秀赛季当选最佳新秀；2014年首次入选全明星正赛先发阵容，并当选最有价值球员；同年代表美国队参加男篮世界杯，获得冠军并当选MVP；2014-15赛季入选最佳阵容第三阵容；2015-16赛季随骑士队获得NBA总冠军。', null);
INSERT INTO `user` VALUES ('10', '拉简·朗多', '34343', '拉简·朗多（Rajon Rondo ），男，1986年2月22日出生于美国肯塔基州路易斯维尔。美国职业篮球运动员，司职控球后卫，效力于NBA芝加哥公牛队。\r\n拉简·朗多在2006年NBA第一轮选秀中以第21顺位被菲尼克斯太阳队选中，随后被交易去了波士顿凯尔特人队，2014年正式成为凯尔特人队第15任队长。2014年12月19日，加入达拉斯小牛队。2015年7月4日，加入萨克拉门托国王队。', null);
INSERT INTO `user` VALUES ('11', '约翰·沃尔', 'wall', '\r\n约翰·沃尔（John Wall），1990年9月6日出生于美国北卡罗来纳州罗利（Raleigh, North Carolina），美国职业篮球运动员，司职控球后卫，效力于NBA华盛顿奇才队。\r\n约翰·沃尔于2010年以选秀状元身份进入NBA，新秀赛季入选最佳新秀阵容第一阵容，2011年全明星新秀挑战赛当选MVP；2014-15赛季入选最佳防守阵容第二阵容；三次入选全明星阵容。\r\n\r\n约翰·沃尔（John Wall），1990年9月6日出生于美国北卡罗来纳州罗利（Raleigh, North Carolina），美国职业篮球运动员，司职控球后卫，效力于NBA华盛顿奇才队。\r\n约翰·沃尔于2010年以选秀状元身份进入NBA，新秀赛季入选最佳新秀阵容第一阵容，2011年全明星新秀挑战赛当选MVP；2014-15赛季入选最佳防守阵容第二阵容；三次入选全明星阵容。\r\n\r\n约翰·沃尔（John Wall），1990年9月6日出生于美国北卡罗来纳州罗利（Raleigh, North Carolina），美国职业篮球运动员，司职控球后卫，效力于NBA华盛顿奇才队。\r\n约翰·沃尔于2010年以选秀状元身份进入NBA，新秀赛季入选最佳新秀阵容第一阵容，2011年全明星新秀挑战赛当选MVP；2014-15赛季入选最佳防守阵容第二阵容；三次入选全明星阵容。', null);
INSERT INTO `user` VALUES ('12', 'NBA', '122324', '美国职业篮球联赛（National Basketball Association，简称NBA，中文简称“美职篮”）于1946年6月6日在纽约成立，是由北美三十支队伍组成的男子职业篮球联盟，美国四大职业体育联盟之一。汇集了全世界最顶级的球员，是世界上水平最高的篮球赛事。[1] ', null);
