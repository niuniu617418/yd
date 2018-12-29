CREATE TABLE `tac_bankChannel` (
	`bankCode` VARCHAR(16) NOT NULL COMMENT '银行代码',
	`channel` TINYINT(4) NOT NULL COMMENT '渠道（1、宝付）',
	`bankCodeOther` VARCHAR(16) NOT NULL COMMENT '银行代码(第三方)',
	`bankName` VARCHAR(32) NOT NULL COMMENT '银行名称',
	PRIMARY KEY (`bankCode`, `channel`)
)
COMMENT='1、 【业务配置++】银行码渠道信息对应表'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
