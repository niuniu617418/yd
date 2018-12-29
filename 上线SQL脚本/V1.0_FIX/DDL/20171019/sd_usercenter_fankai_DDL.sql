
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

