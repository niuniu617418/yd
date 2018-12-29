CREATE TABLE sd_account.`tac_niiwo_project_fee_detail` (
  `niiwoOrderNo` BIGINT(20) NOT NULL COMMENT '你我标的订单号',
  `capitalFee` DECIMAL(18,2) NOT NULL COMMENT '本金',
  `serviceFee` DECIMAL(18,2) NOT NULL COMMENT '平台服务费',
  `interestFee` DECIMAL(18,2) NOT NULL COMMENT '利息',
  `guaranteeFee` DECIMAL(18,2) NOT NULL COMMENT '担保费',
  `penaltyFee` DECIMAL(18,2) NOT NULL COMMENT '罚息',
  `status` INT(4) NOT NULL COMMENT '0-未收取，1-已收取',
  `createTime` DATETIME NOT NULL COMMENT '添加时间',
  `updateTime` DATETIME NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`niiwoOrderNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='你我金融待收费用明细';