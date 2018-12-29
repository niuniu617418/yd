CREATE TABLE sd_account.`tac_niiwo_project_fee_detail` (
  `niiwoOrderNo` BIGINT(20) NOT NULL COMMENT '���ұ�Ķ�����',
  `capitalFee` DECIMAL(18,2) NOT NULL COMMENT '����',
  `serviceFee` DECIMAL(18,2) NOT NULL COMMENT 'ƽ̨�����',
  `interestFee` DECIMAL(18,2) NOT NULL COMMENT '��Ϣ',
  `guaranteeFee` DECIMAL(18,2) NOT NULL COMMENT '������',
  `penaltyFee` DECIMAL(18,2) NOT NULL COMMENT '��Ϣ',
  `status` INT(4) NOT NULL COMMENT '0-δ��ȡ��1-����ȡ',
  `createTime` DATETIME NOT NULL COMMENT '���ʱ��',
  `updateTime` DATETIME NOT NULL COMMENT '�޸�ʱ��',
  PRIMARY KEY (`niiwoOrderNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='���ҽ��ڴ��շ�����ϸ';