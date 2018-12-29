USE `sd_trade`;
-- 快照表，与用户中心保持一致
ALTER TABLE `trd_callRecordSnapshot`
  ALTER `registerTime` DROP DEFAULT;
ALTER TABLE `trd_callRecordSnapshot`
  CHANGE COLUMN `registerTime` `registerTime` DATETIME NULL COMMENT '是入网时长' AFTER `mobilePhone`;