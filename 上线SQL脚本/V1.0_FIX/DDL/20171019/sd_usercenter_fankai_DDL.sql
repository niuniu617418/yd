
use sd_trade;

CREATE TABLE `trd_borrowDeviceInfo` (
  `id` bigint(20) NOT NULL,
  `projectId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `deviceId` varchar(50) DEFAULT NULL COMMENT '�豸ID',
  `os` varchar(50) DEFAULT NULL COMMENT '����ϵͳ',
  `brandType` varchar(50) DEFAULT NULL COMMENT 'Ʒ������',
  `dsds` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�˫��˫����0����   1���ǣ�',
  `deviceStatus` tinyint(4) DEFAULT '0' COMMENT '�豸״̬��0��δԽ��  1����Խ����',
  `gps` varchar(100) DEFAULT NULL COMMENT '���ʱGPS',
  `ip` varchar(50) DEFAULT NULL COMMENT '���ʱIP',
  `network` varchar(50) DEFAULT NULL COMMENT '���ʱ��������',
  `wifissid` varchar(50) DEFAULT NULL COMMENT 'WiFi��SSID',
  `createTime` datetime DEFAULT NULL COMMENT '����ʱ��',
  `updateTime` datetime DEFAULT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY (`id`),
  KEY `idx_project_userid` (`projectId`,`userId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='���ʱ�û��豸��Ϣ';

