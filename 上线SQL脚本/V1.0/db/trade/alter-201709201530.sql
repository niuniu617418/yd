USE `sd_trade`;
ALTER TABLE `trd_followTaskProcess`
  ADD COLUMN `refundDate` DATETIME NOT NULL COMMENT '预期还款时间' AFTER `deadline`,
  CHANGE COLUMN `allocTime` `allocTime` DATETIME NULL COMMENT '分配时间' AFTER `refundDate`,
  CHANGE COLUMN `followUserId` `followUserId` BIGINT(20) NULL COMMENT '跟踪人ID' AFTER `allocTime`,
  CHANGE COLUMN `followUserName` `followUserName` VARCHAR(50) NULL COMMENT '跟踪人姓名' AFTER `followUserId`,
  CHANGE COLUMN `hisFollowUserId` `hisFollowUserId` BIGINT(20) NULL COMMENT '历史跟踪人ID' AFTER `followUserName`,
  CHANGE COLUMN `hisFollowUserName` `hisFollowUserName` VARCHAR(50) NULL COMMENT '历史跟踪人姓名' AFTER `hisFollowUserId`;
