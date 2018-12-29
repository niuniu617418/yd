ALTER TABLE `sd_usercenter`.`tuc_callrecorddetail`
	ADD COLUMN `isGray` TINYINT(1) NULL DEFAULT '0' COMMENT '是否灰色名单（1：是；0：否）' AFTER `isBlacklist`;



ALTER TABLE `sd_trade`.`trd_callrecorddetailsnapshot`
	ADD COLUMN `isGray` TINYINT(1) NULL DEFAULT NULL COMMENT '是否灰名单（1：是；0：否）' AFTER `isBlacklist`;