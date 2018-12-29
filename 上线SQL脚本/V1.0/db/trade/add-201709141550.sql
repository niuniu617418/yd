USE `sd_trade`;
-- 交易库 新增 贷后跟踪人员信息表
CREATE TABLE `trd_followTaskUserInfo` (
  `userId` BIGINT(20) NOT NULL COMMENT '主键跟用户表ID保持一直',
  `realName` VARCHAR(20) NOT NULL COMMENT '跟踪员姓名',
  `userCode` VARCHAR(20) NOT NULL COMMENT '跟踪员编号',
  `mobile` VARCHAR(20) NOT NULL COMMENT '手机号码',
  `taskNum` INT(11) NOT NULL DEFAULT '0' COMMENT '当前任务数',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `updateTime` DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='贷后跟踪人员信息表';