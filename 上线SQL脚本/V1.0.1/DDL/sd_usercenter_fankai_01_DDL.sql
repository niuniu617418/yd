use sd_usercenter;
DROP TABLE IF EXISTS `tuc_darkgreylist`;
CREATE TABLE `tuc_darkgreylist` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL COMMENT '用户Id',
  `realName` varchar(32) DEFAULT '' COMMENT '真实姓名',
  `identityCard` varchar(18) DEFAULT '' COMMENT '身份证号',
  `mobileNo` varchar(11) DEFAULT '' COMMENT '手机号',
  `companyName` varchar(64) DEFAULT '' COMMENT '单位名称',
  `companyTelphone` varchar(16) DEFAULT '' COMMENT '单位电话',
  `userSource` int(2) DEFAULT '1' COMMENT '数据来源(1.人工;2.贷中审核;3.贷后还款)',
  `listType` int(2) DEFAULT '1' COMMENT '名单类型(1.黑名单 ;2.灰名单)',
  `reasonType` varchar(64) DEFAULT NULL COMMENT '添加原因类型',
  `reasonDesc` varchar(256) DEFAULT NULL COMMENT '描述',
  `beginTime` datetime NOT NULL COMMENT '限制开始时间',
  `endTime` datetime NOT NULL COMMENT '限制结束时间',
  `createUserId` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `updateUserId` bigint(20) DEFAULT NULL COMMENT '操作员工Id',
  `updateUserName` varchar(32) DEFAULT '' COMMENT '操作员工名称',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `idx_identityCard` (`identityCard`),
  KEY `idx_userId` (`userId`) USING BTREE,
  KEY `idx_realName` (`realName`) USING BTREE,
  KEY `idx_mobileNo` (`mobileNo`) USING BTREE,
  KEY `idx_companyTelphone` (`companyTelphone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='黑灰名单';

ALTER TABLE `sd_usercenter`.`tuc_darkgreylist`   
  CHANGE `realName` `realName` VARCHAR(32) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '真实姓名',
  CHANGE `identityCard` `identityCard` VARCHAR(18) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '身份证号',
  CHANGE `mobileNo` `mobileNo` VARCHAR(11) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '手机号',
  CHANGE `companyName` `companyName` VARCHAR(64) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '单位名称',
  CHANGE `companyTelphone` `companyTelphone` VARCHAR(16) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '单位电话',
  CHANGE `updateUserName` `updateUserName` VARCHAR(32) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '操作员工名称';




use sd_trade;
-- 审核配置，添加黑灰名单类型字段
ALTER TABLE `trd_approvalReason`
ADD COLUMN `darkgrayType`  int(2) NULL COMMENT '黑灰名单类型（1：黑名单  2：灰名单）' AFTER `limitDays`;



use sd_trade;

CREATE TABLE `trd_borrowDeviceInfo` (
  `id` bigint(20) NOT NULL,
  `projectId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `deviceId` varchar(50) DEFAULT NULL COMMENT '设备ID',
  `os` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `brandType` varchar(50) DEFAULT NULL COMMENT '品牌类型',
  `dsds` tinyint(4) DEFAULT '0' COMMENT '是否双卡双待（0：否   1：是）',
  `deviceStatus` tinyint(4) DEFAULT '0' COMMENT '设备状态（0：未越狱  1：已越狱）',
  `gps` varchar(100) DEFAULT NULL COMMENT '借款时GPS',
  `ip` varchar(50) DEFAULT NULL COMMENT '借款时IP',
  `network` varchar(50) DEFAULT NULL COMMENT '借款时网络类型',
  `wifissid` varchar(50) DEFAULT NULL COMMENT 'WiFi的SSID',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_project_userid` (`projectId`,`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='借款时用户设备信息';

