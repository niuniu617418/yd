/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.35-log : Database - sd_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sd_manager` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sd_manager`;

/*Table structure for table `tmn_sys_department` */

DROP TABLE IF EXISTS `tmn_sys_department`;

CREATE TABLE `tmn_sys_department` (
  `departmentId` bigint(20) NOT NULL COMMENT '部门ID',
  `departmentName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '部门名称',
  `parentId` bigint(20) NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `level` int(4) DEFAULT NULL COMMENT '部门层级，1为顶级，往下逐级递增',
  `departmentCode` varchar(20) NOT NULL COMMENT '部门编号',
  `sort` int(20) NOT NULL COMMENT '排序编号',
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `createdTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `updatedTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`departmentId`),
  KEY `parentId` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门信息表';

/*Table structure for table `tmn_sys_login_log` */

DROP TABLE IF EXISTS `tmn_sys_login_log`;

CREATE TABLE `tmn_sys_login_log` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `userName` varchar(64) NOT NULL COMMENT '用户名称',
  `loginTime` datetime NOT NULL COMMENT '登录时间',
  `loginIp` varchar(20) DEFAULT NULL COMMENT '登录IP',
  `status` tinyint(3) NOT NULL COMMENT '状态 1 成功，2 失败',
  `msg` varchar(100) DEFAULT NULL COMMENT '状态描述',
  PRIMARY KEY (`id`),
  KEY `userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='神盾管理登录日志表';

/*Table structure for table `tmn_sys_menu` */

DROP TABLE IF EXISTS `tmn_sys_menu`;

CREATE TABLE `tmn_sys_menu` (
  `menuId` bigint(20) NOT NULL COMMENT '菜单ID',
  `menuName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '菜单名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '菜单url',
  `parentId` bigint(20) DEFAULT '0' COMMENT '上级菜单ID',
  `level` int(4) DEFAULT NULL COMMENT '菜单层级，1为顶级，往下逐级递增',
  `sort` int(10) NOT NULL DEFAULT '0' COMMENT '菜单排序编号',
  `isLeaf` tinyint(4) DEFAULT NULL COMMENT '是否叶子菜单 0 否，1 是',
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `createdTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新人',
  `updatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`menuId`),
  KEY `parentId` (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理-菜单信息表';

/*Table structure for table `tmn_sys_permission` */

DROP TABLE IF EXISTS `tmn_sys_permission`;

CREATE TABLE `tmn_sys_permission` (
  `permissionId` bigint(20) NOT NULL COMMENT '资源ID',
  `permissionName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '资源名称',
  `permissionValue` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '资源内容',
  `menuId` bigint(20) NOT NULL COMMENT '菜单ID',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '资源描述',
  `status` tinyint(5) NOT NULL DEFAULT '0' COMMENT '状态 0 已启用，1 已停用',
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `createdTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新人',
  `updatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`permissionId`),
  UNIQUE KEY `permissionValue` (`permissionValue`,`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理-权限信息表';

/*Table structure for table `tmn_sys_role` */

DROP TABLE IF EXISTS `tmn_sys_role`;

CREATE TABLE `tmn_sys_role` (
  `roleId` bigint(20) NOT NULL COMMENT '角色ID',
  `roleName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '角色描述',
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `createdTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新人',
  `updatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理-角色信息表';

/*Table structure for table `tmn_sys_role_menu` */

DROP TABLE IF EXISTS `tmn_sys_role_menu`;

CREATE TABLE `tmn_sys_role_menu` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `roleId` bigint(20) NOT NULL COMMENT '角色ID',
  `menuId` bigint(20) NOT NULL COMMENT '菜单ID',
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `createdTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新人',
  `updatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK__ROLE_MENU` (`roleId`,`menuId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理-角色菜单关联表';

/*Table structure for table `tmn_sys_role_permission` */

DROP TABLE IF EXISTS `tmn_sys_role_permission`;

CREATE TABLE `tmn_sys_role_permission` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `roleId` bigint(20) NOT NULL COMMENT '角色ID',
  `permissionId` bigint(20) NOT NULL COMMENT '权限ID',
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `createdTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '更新人',
  `updatedTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ROLE_PERMISSION` (`roleId`,`permissionId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理-角色菜单关联表';

/*Table structure for table `tmn_sys_user` */

DROP TABLE IF EXISTS `tmn_sys_user`;

CREATE TABLE `tmn_sys_user` (
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `userName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码',
  `realName` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `userCode` varchar(20) DEFAULT NULL COMMENT '用户编号',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱地址',
  `headImgUrl` varchar(500) DEFAULT NULL COMMENT '用户头像URL',
  `salt` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '密码加密因子',
  `departmentId` bigint(20) NOT NULL COMMENT '部门ID',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态 0 已启用，1 已停用，2 已锁定，3 已删除',
  `loginTime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `loginIp` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '最后登录IP',
  `errorTimes` int(10) DEFAULT '0' COMMENT '密码错误次数',
  `lockTime` datetime DEFAULT NULL COMMENT '账号锁定截至时间',
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `createdTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `updatedTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `UK_USER_UNAME` (`userName`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理-用户信息表';

/*Table structure for table `tmn_sys_user_role` */

DROP TABLE IF EXISTS `tmn_sys_user_role`;

CREATE TABLE `tmn_sys_user_role` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  `createdUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人',
  `createdTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedUser` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '更新人',
  `updatedTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_USER_ROLE` (`userId`,`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='后台管理-角色权限关联表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
