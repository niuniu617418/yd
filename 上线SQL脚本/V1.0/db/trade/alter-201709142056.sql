USE `sd_trade`;
-- 标的历史记录快照表增加字段 '历史标的状态'
ALTER TABLE `trd_borrowHisSnapshot`
  ADD COLUMN `projectStatus` INT NOT NULL COMMENT '历史标的状态' AFTER `projectId`;
-- 标的历史记录快照表增加字段 '当前标的审核id'
ALTER TABLE `trd_borrowHisSnapshot` DROP COLUMN `driverAuditId`;