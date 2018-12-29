USE `sd_trade`;
ALTER TABLE `trd_snapshotTask`
  ADD COLUMN `type` TINYINT(1) NULL DEFAULT NULL COMMENT '快照类型' AFTER `userId`;