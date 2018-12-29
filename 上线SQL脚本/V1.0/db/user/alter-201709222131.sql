USE `sd_usercenter`;
ALTER TABLE `tuc_callRecordDetail`
  CHANGE COLUMN `contactName` `contactName` VARCHAR(64) NULL DEFAULT NULL COMMENT '联系人姓名' AFTER `isBlacklist`,
  CHANGE COLUMN `contactPhone` `contactPhone` VARCHAR(64) NULL DEFAULT NULL COMMENT '联系人手机号' AFTER `contactName`;