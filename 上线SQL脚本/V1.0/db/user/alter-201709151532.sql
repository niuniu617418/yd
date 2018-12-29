USE `sd_usercenter`;

ALTER TABLE `tuc_callRecordDetail`
  CHANGE COLUMN `callSiteMore` `callSiteMore` VARCHAR(500) NULL DEFAULT NULL COMMENT '更多通话地点 json数组' AFTER `callSiteNumber`;