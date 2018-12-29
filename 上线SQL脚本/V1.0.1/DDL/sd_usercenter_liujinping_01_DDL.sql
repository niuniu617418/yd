use sd_usercenter;
CREATE TABLE `sd_usercenter`.`tuc_userTag`(  
  `ID` BIGINT(20) NOT NULL COMMENT 'ID',
  `userId` BIGINT(20) NOT NULL COMMENT '用户ID',
  `tagType` TINYINT(4) COMMENT '标签类型：1-老用户,2-身份证黑名单,3-身份证灰名单,4-手机号黑名单,5-手机号灰名单,6-单位名称黑名单,7-单位名称灰名单,8-单位电话黑名单,9-单位电话灰名单',
  `tagValue` VARCHAR(32) COMMENT '标签值：tagType=1,为标的结清量',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `updateTime` DATETIME NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `idx_unique_userId_tagType` (`userId`, `tagType`)
);

ALTER TABLE `sd_usercenter`.`tuc_userTag`  
COMMENT='用户标签表';


use sd_trade;
CREATE TABLE `trd_linkManInfoManual` (
  `id` bigint(20) NOT NULL COMMENT '记录ID',
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `userId` bigint(20) NOT NULL COMMENT '借款用户ID',
  `name` varchar(50) NOT NULL COMMENT '紧急联系人姓名',
  `relation` tinyint(4) NOT NULL COMMENT '关系',
  `mobile` varchar(50) NOT NULL COMMENT '手机号',
  `managerUserId` BIGINT(20) NOT NULL COMMENT '操作人id',
  `managerUserName` VARCHAR(32) NOT NULL COMMENT '操作人姓名',
  `updateTime` DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT '修改时间',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='人工录入紧急联系人';


use sd_account;
CREATE TABLE sd_account.`tac_manualWithholdRecord` (
  `id` BIGINT(20) NOT NULL COMMENT 'ID',
  `borrowUserId` BIGINT(20) NOT NULL COMMENT '借款人userId',
  `projectId` BIGINT(20) NOT NULL  COMMENT '标的ID',
  `orderNo` BIGINT(20) NOT NULL  COMMENT '代扣流水号',
  `phaseType` TINYINT NOT NULL  COMMENT '代扣类型：1-提前代扣，2-还款日代扣，3-逾期代扣',
  `withholdReasonId` BIGINT(20) NOT NULL  COMMENT '代扣原因ID',
  `managerUserId` BIGINT(20) NOT NULL COMMENT '代扣处理人id',
  `managerUserName` VARCHAR(32) NOT NULL COMMENT '代扣处理人姓名',
  `createTime` DATETIME NOT NULL COMMENT '添加时间',
  `updateTime` DATETIME NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`orderNo`),
  KEY `idx_userId` (`projectId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='人工发起代扣记录表';


CREATE TABLE sd_account.`tac_manualWithholdReason` (
  `id` BIGINT(20) NOT NULL COMMENT 'ID',
  `imagePath` VARCHAR(256) NOT NULL COMMENT '附件路径',
  `remark` VARCHAR(512) NOT NULL COMMENT '备注',
  `managerUserId` BIGINT(20) NOT NULL COMMENT '处理人id',
  `managerUserName` VARCHAR(32) NOT NULL COMMENT '处理人姓名',
  `createTime` DATETIME NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='人工发起代扣原因记录表';




ALTER TABLE `sd_trade`.`trd_linkManInfoManual`   
  ADD COLUMN `callStatus` TINYINT(4) NULL  COMMENT '通话状态' AFTER `mobile`;

