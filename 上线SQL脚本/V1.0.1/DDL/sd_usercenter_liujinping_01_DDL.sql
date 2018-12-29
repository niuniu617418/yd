use sd_usercenter;
CREATE TABLE `sd_usercenter`.`tuc_userTag`(  
  `ID` BIGINT(20) NOT NULL COMMENT 'ID',
  `userId` BIGINT(20) NOT NULL COMMENT '�û�ID',
  `tagType` TINYINT(4) COMMENT '��ǩ���ͣ�1-���û�,2-���֤������,3-���֤������,4-�ֻ��ź�����,5-�ֻ��Ż�����,6-��λ���ƺ�����,7-��λ���ƻ�����,8-��λ�绰������,9-��λ�绰������',
  `tagValue` VARCHAR(32) COMMENT '��ǩֵ��tagType=1,Ϊ��Ľ�����',
  `createTime` DATETIME NOT NULL COMMENT '����ʱ��',
  `updateTime` DATETIME NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `idx_unique_userId_tagType` (`userId`, `tagType`)
);

ALTER TABLE `sd_usercenter`.`tuc_userTag`  
COMMENT='�û���ǩ��';


use sd_trade;
CREATE TABLE `trd_linkManInfoManual` (
  `id` bigint(20) NOT NULL COMMENT '��¼ID',
  `projectId` bigint(20) NOT NULL COMMENT '��ĿID',
  `userId` bigint(20) NOT NULL COMMENT '����û�ID',
  `name` varchar(50) NOT NULL COMMENT '������ϵ������',
  `relation` tinyint(4) NOT NULL COMMENT '��ϵ',
  `mobile` varchar(50) NOT NULL COMMENT '�ֻ���',
  `managerUserId` BIGINT(20) NOT NULL COMMENT '������id',
  `managerUserName` VARCHAR(32) NOT NULL COMMENT '����������',
  `updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT '�޸�ʱ��',
  `createTime` datetime NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='�˹�¼�������ϵ��';


use sd_account;
CREATE TABLE sd_account.`tac_manualWithholdRecord` (
  `id` BIGINT(20) NOT NULL COMMENT 'ID',
  `borrowUserId` BIGINT(20) NOT NULL COMMENT '�����userId',
  `projectId` BIGINT(20) NOT NULL  COMMENT '���ID',
  `orderNo` BIGINT(20) NOT NULL  COMMENT '������ˮ��',
  `phaseType` TINYINT NOT NULL  COMMENT '�������ͣ�1-��ǰ���ۣ�2-�����մ��ۣ�3-���ڴ���',
  `withholdReasonId` BIGINT(20) NOT NULL  COMMENT '����ԭ��ID',
  `managerUserId` BIGINT(20) NOT NULL COMMENT '���۴�����id',
  `managerUserName` VARCHAR(32) NOT NULL COMMENT '���۴���������',
  `createTime` DATETIME NOT NULL COMMENT '���ʱ��',
  `updateTime` DATETIME NOT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY (`orderNo`),
  KEY `idx_userId` (`projectId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='�˹�������ۼ�¼��';


CREATE TABLE sd_account.`tac_manualWithholdReason` (
  `id` BIGINT(20) NOT NULL COMMENT 'ID',
  `imagePath` VARCHAR(256) NOT NULL COMMENT '����·��',
  `remark` VARCHAR(512) NOT NULL COMMENT '��ע',
  `managerUserId` BIGINT(20) NOT NULL COMMENT '������id',
  `managerUserName` VARCHAR(32) NOT NULL COMMENT '����������',
  `createTime` DATETIME NOT NULL COMMENT '���ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='�˹��������ԭ���¼��';




ALTER TABLE `sd_trade`.`trd_linkManInfoManual`   
  ADD COLUMN `callStatus` TINYINT(4) NULL  COMMENT 'ͨ��״̬' AFTER `mobile`;

