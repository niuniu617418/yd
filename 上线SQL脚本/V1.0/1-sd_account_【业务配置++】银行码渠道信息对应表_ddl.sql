CREATE TABLE `tac_bankChannel` (
	`bankCode` VARCHAR(16) NOT NULL COMMENT '���д���',
	`channel` TINYINT(4) NOT NULL COMMENT '������1��������',
	`bankCodeOther` VARCHAR(16) NOT NULL COMMENT '���д���(������)',
	`bankName` VARCHAR(32) NOT NULL COMMENT '��������',
	PRIMARY KEY (`bankCode`, `channel`)
)
COMMENT='1�� ��ҵ������++��������������Ϣ��Ӧ��'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;
