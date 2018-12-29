USE `sd_usercenter`;
-- 入网时间可以为空
ALTER TABLE `tuc_callrecord`
  ALTER `registerTime` DROP DEFAULT;
ALTER TABLE `tuc_callrecord`
  CHANGE COLUMN `registerTime` `registerTime` DATETIME NULL COMMENT '是入网时长' AFTER `mobilePhone`;