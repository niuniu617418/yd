USE `sd_trade`;
-- 用户通话记录详细信息快照表，修改字段
ALTER TABLE `trd_callRecordDetailSnapshot`
  CHANGE COLUMN `contactName` `contactName` VARCHAR(64) NULL DEFAULT NULL COMMENT '联系人姓名' AFTER `isBlacklist`,
  CHANGE COLUMN `contactPhone` `contactPhone` VARCHAR(64) NULL DEFAULT NULL COMMENT '联系人手机号' AFTER `contactName`;