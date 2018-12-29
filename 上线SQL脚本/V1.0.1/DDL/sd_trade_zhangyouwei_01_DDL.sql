use sd_account;
-- �û�����������ע��ɹ�ͳ�Ʊ�
CREATE TABLE `tuc_regSucStatistic` (
	`id` BIGINT(20) NOT NULL COMMENT '����',
	`hisUserCount` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '��ʷע����',
	`curDayRegCount` BIGINT(15) NOT NULL DEFAULT '0' COMMENT '����ע����',
	`statisticDate` DATE NOT NULL COMMENT 'ͳ��ʱ��',
	`updateTime` DATETIME NOT NULL COMMENT '����ʱ��',
	`createTime` DATETIME NOT NULL COMMENT '����ʱ��',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `idx_unique_statisticDate` (`statisticDate`)
)
COMMENT='ע��ɹ�ͳ�Ʊ�'
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

use sd_trade;
CREATE TABLE `trd_projectStatistic` (
	`id` BIGINT(20) NOT NULL COMMENT '����',
	`hisApplyCount` BIGINT(20) NOT NULL COMMENT '��ʷ������',
	`curApplyCount` BIGINT(20) NOT NULL COMMENT '����������',
	`hisPassCount` BIGINT(20) NOT NULL COMMENT '��ʷͨ�������ſ�ɹ���',
	`curPassCount` BIGINT(20) NOT NULL COMMENT '����ͨ�������ſ�ɹ���',
	`hisLoanedAmount` DECIMAL(18,2) NOT NULL COMMENT '��ʷ�ſ��ܽ��',
	`curLoanedAmount` DECIMAL(18,2) NOT NULL COMMENT '���շſ��ܽ��',
	`statisticDate` DATE NOT NULL COMMENT 'ͳ�Ƽ�¼����',
	`updateTime` DATETIME NOT NULL COMMENT '����ʱ��',
	`createTime` DATETIME NOT NULL COMMENT '����ʱ��',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `idx_unique_statisticDate` (`statisticDate`)
)
COMMENT='���ͳ�Ʊ�'
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `trd_riskCheckRecord` (
	`id` BIGINT(20) NOT NULL COMMENT '����',
	`projectId` BIGINT(20) NOT NULL COMMENT '���Id',
	`riskType` TINYINT(4) NOT NULL COMMENT '��������',
	`checkResult` TINYINT(4) NOT NULL COMMENT '�˲���',
	`memo` VARCHAR(1024) NULL DEFAULT NULL COMMENT '��ע˵��',
	`operatorUserId` BIGINT(20) NULL DEFAULT NULL COMMENT '�˲���ID',
	`updateTime` DATETIME NOT NULL COMMENT '����ʱ��',
	`createTime` DATETIME NOT NULL COMMENT '����ʱ��',
	PRIMARY KEY (`id`)
)
COMMENT='���պ˲��¼'
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

ALTER TABLE `trd_phoneCallAudit`
	ADD COLUMN `inquiryResult` TINYINT NULL COMMENT '������' AFTER `conclusion`;

