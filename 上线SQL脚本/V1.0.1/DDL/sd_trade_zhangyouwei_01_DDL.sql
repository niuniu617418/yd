use sd_account;
-- 用户中心新增，注册成功统计表
CREATE TABLE `tuc_regSucStatistic` (
	`id` BIGINT(20) NOT NULL COMMENT '主键',
	`hisUserCount` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '历史注册量',
	`curDayRegCount` BIGINT(15) NOT NULL DEFAULT '0' COMMENT '当日注册量',
	`statisticDate` DATE NOT NULL COMMENT '统计时间',
	`updateTime` DATETIME NOT NULL COMMENT '更新时间',
	`createTime` DATETIME NOT NULL COMMENT '创建时间',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `idx_unique_statisticDate` (`statisticDate`)
)
COMMENT='注册成功统计表'
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

use sd_trade;
CREATE TABLE `trd_projectStatistic` (
	`id` BIGINT(20) NOT NULL COMMENT '主键',
	`hisApplyCount` BIGINT(20) NOT NULL COMMENT '历史申请量',
	`curApplyCount` BIGINT(20) NOT NULL COMMENT '当日申请量',
	`hisPassCount` BIGINT(20) NOT NULL COMMENT '历史通过量（放款成功）',
	`curPassCount` BIGINT(20) NOT NULL COMMENT '当日通过量（放款成功）',
	`hisLoanedAmount` DECIMAL(18,2) NOT NULL COMMENT '历史放款总金额',
	`curLoanedAmount` DECIMAL(18,2) NOT NULL COMMENT '当日放款总金额',
	`statisticDate` DATE NOT NULL COMMENT '统计记录日期',
	`updateTime` DATETIME NOT NULL COMMENT '更新时间',
	`createTime` DATETIME NOT NULL COMMENT '创建时间',
	PRIMARY KEY (`id`),
	UNIQUE INDEX `idx_unique_statisticDate` (`statisticDate`)
)
COMMENT='标的统计表'
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;


CREATE TABLE `trd_riskCheckRecord` (
	`id` BIGINT(20) NOT NULL COMMENT '主键',
	`projectId` BIGINT(20) NOT NULL COMMENT '标的Id',
	`riskType` TINYINT(4) NOT NULL COMMENT '风险类型',
	`checkResult` TINYINT(4) NOT NULL COMMENT '核查结果',
	`memo` VARCHAR(1024) NULL DEFAULT NULL COMMENT '备注说明',
	`operatorUserId` BIGINT(20) NULL DEFAULT NULL COMMENT '核查人ID',
	`updateTime` DATETIME NOT NULL COMMENT '更新时间',
	`createTime` DATETIME NOT NULL COMMENT '创建时间',
	PRIMARY KEY (`id`)
)
COMMENT='风险核查记录'
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;

ALTER TABLE `trd_phoneCallAudit`
	ADD COLUMN `inquiryResult` TINYINT NULL COMMENT '调查结果' AFTER `conclusion`;

