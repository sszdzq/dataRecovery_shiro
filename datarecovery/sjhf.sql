/*
Navicat MySQL Data Transfer

Source Server         : www
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : sjhf

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-10-30 16:38:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sjhf_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sjhf_permission`;
CREATE TABLE `sjhf_permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限唯一标识',
  `NAME` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `FNPATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `DESCRIPTION` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `PERCODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sjhf_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `sjhf_role`
-- ----------------------------
DROP TABLE IF EXISTS `sjhf_role`;
CREATE TABLE `sjhf_role` (
  `ROLEID` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色唯一标识',
  `ROLENAME` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sjhf_role
-- ----------------------------
INSERT INTO `sjhf_role` VALUES ('1', '管理层');
INSERT INTO `sjhf_role` VALUES ('2', '维护层');
INSERT INTO `sjhf_role` VALUES ('3', '使用层');

-- ----------------------------
-- Table structure for `sjhf_rolepermission`
-- ----------------------------
DROP TABLE IF EXISTS `sjhf_rolepermission`;
CREATE TABLE `sjhf_rolepermission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '关联表唯一标识',
  `ROLEID` int(11) DEFAULT NULL COMMENT '角色表id',
  `PERMISSIONID` int(11) DEFAULT NULL COMMENT '权限表id',
  PRIMARY KEY (`ID`),
  KEY `ROLEID` (`ROLEID`),
  KEY `PERMISSIONID` (`PERMISSIONID`),
  CONSTRAINT `sjhf_rolepermission_ibfk_1` FOREIGN KEY (`ROLEID`) REFERENCES `sjhf_role` (`ROLEID`),
  CONSTRAINT `sjhf_rolepermission_ibfk_2` FOREIGN KEY (`PERMISSIONID`) REFERENCES `sjhf_permission` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sjhf_rolepermission
-- ----------------------------

-- ----------------------------
-- Table structure for `sjhf_user`
-- ----------------------------
DROP TABLE IF EXISTS `sjhf_user`;
CREATE TABLE `sjhf_user` (
  `USERID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表唯一标识',
  `LOGINNAME` varchar(255) NOT NULL COMMENT '用户登陆名称',
  `PASSWORD` varchar(255) NOT NULL COMMENT '用户登陆密码',
  `STATUS` int(11) NOT NULL COMMENT '用户状态码',
  `REALNAME` varchar(255) DEFAULT NULL COMMENT '用户真实姓名',
  `PHONE` varchar(255) DEFAULT NULL COMMENT '用户联系电话',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '用户联系地址',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '用户电子邮件地址',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `LOGINTIME` datetime DEFAULT NULL COMMENT '用户登陆系统时间',
  `LOGOUTTIME` datetime DEFAULT NULL COMMENT '用户登出系统时间',
  `DEPARTMENT` varchar(255) DEFAULT NULL COMMENT '所属部门',
  `CUSTOM01` varchar(255) DEFAULT NULL COMMENT '待修改01',
  `CUSTOM02` varchar(255) DEFAULT NULL COMMENT '待修改02',
  `CUSTOM03` varchar(255) DEFAULT NULL COMMENT '待修改03',
  `CUSTOM04` varchar(255) DEFAULT NULL COMMENT '待修改04',
  `CUSTOM05` varchar(255) DEFAULT NULL COMMENT '待修改05',
  `ROLEID` int(11) DEFAULT NULL COMMENT '外键',
  `salt` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`USERID`),
  KEY `ROLEID` (`ROLEID`),
  CONSTRAINT `sjhf_user_ibfk_1` FOREIGN KEY (`ROLEID`) REFERENCES `sjhf_role` (`ROLEID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sjhf_user
-- ----------------------------
INSERT INTO `sjhf_user` VALUES ('1', 'admin', 'f3694f162729b7d0254c6e40260bf15c', '2', '管理员', '13000000001', '中国北京海淀', 'emma@qq.com', '管理员', null, null, null, null, null, null, null, null, '2', 'qwerty');
