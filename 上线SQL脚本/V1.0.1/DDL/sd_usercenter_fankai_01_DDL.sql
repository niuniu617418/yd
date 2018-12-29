use sd_usercenter;
DROP TABLE IF EXISTS `tuc_darkgreylist`;
CREATE TABLE `tuc_darkgreylist` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL COMMENT '�û�Id',
  `realName` varchar(32) DEFAULT '' COMMENT '��ʵ����',
  `identityCard` varchar(18) DEFAULT '' COMMENT '���֤��',
  `mobileNo` varchar(11) DEFAULT '' COMMENT '�ֻ���',
  `companyName` varchar(64) DEFAULT '' COMMENT '��λ����',
  `companyTelphone` varchar(16) DEFAULT '' COMMENT '��λ�绰',
  `userSource` int(2) DEFAULT '1' COMMENT '������Դ(1.�˹�;2.�������;3.���󻹿�)',
  `listType` int(2) DEFAULT '1' COMMENT '��������(1.������ ;2.������)',
  `reasonType` varchar(64) DEFAULT NULL COMMENT '���ԭ������',
  `reasonDesc` varchar(256) DEFAULT NULL COMMENT '����',
  `beginTime` datetime NOT NULL COMMENT '���ƿ�ʼʱ��',
  `endTime` datetime NOT NULL COMMENT '���ƽ���ʱ��',
  `createUserId` bigint(20) DEFAULT NULL COMMENT '������Id',
  `updateUserId` bigint(20) DEFAULT NULL COMMENT '����Ա��Id',
  `updateUserName` varchar(32) DEFAULT '' COMMENT '����Ա������',
  `createTime` datetime NOT NULL COMMENT '����ʱ��',
  `updateTime` datetime NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`),
  KEY `idx_identityCard` (`identityCard`),
  KEY `idx_userId` (`userId`) USING BTREE,
  KEY `idx_realName` (`realName`) USING BTREE,
  KEY `idx_mobileNo` (`mobileNo`) USING BTREE,
  KEY `idx_companyTelphone` (`companyTelphone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�ڻ�����';

ALTER TABLE `sd_usercenter`.`tuc_darkgreylist`   
  CHANGE `realName` `realName` VARCHAR(32) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '��ʵ����',
  CHANGE `identityCard` `identityCard` VARCHAR(18) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '���֤��',
  CHANGE `mobileNo` `mobileNo` VARCHAR(11) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '�ֻ���',
  CHANGE `companyName` `companyName` VARCHAR(64) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '��λ����',
  CHANGE `companyTelphone` `companyTelphone` VARCHAR(16) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '��λ�绰',
  CHANGE `updateUserName` `updateUserName` VARCHAR(32) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL  COMMENT '����Ա������';




use sd_trade;
-- ������ã���Ӻڻ����������ֶ�
ALTER TABLE `trd_approvalReason`
ADD COLUMN `darkgrayType`  int(2) NULL COMMENT '�ڻ��������ͣ�1��������  2����������' AFTER `limitDays`;



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

