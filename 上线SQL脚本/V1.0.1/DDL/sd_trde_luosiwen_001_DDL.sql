use sd_trade;
ALTER TABLE `trd_snapshottask`
ADD COLUMN `errorNumber` INT(1) ZEROFILL NULL COMMENT '错误次数记录' AFTER `status`,
ADD COLUMN `errorMsg` VARCHAR(200) NULL DEFAULT '' COMMENT '最近一次任务执行的错误信息方便跟踪任务失败的原因' AFTER `errorNumber`;


ALTER TABLE `trd_snapshotTask`
	CHANGE COLUMN `errorNumber` `errorNumber` INT(1) UNSIGNED ZEROFILL NULL DEFAULT '0' COMMENT '错误次数记录' AFTER `status`;
	

ALTER TABLE `trd_contactInfoSnapshot`
	ADD COLUMN `relativeContactDetails` VARCHAR(2000) NULL DEFAULT NULL COMMENT '亲属联系人详情 JSONObject' AFTER `relativeContactNum`,
	ADD COLUMN `peerNumbers` INT(10) NULL DEFAULT '0' COMMENT '同行数量' AFTER `relativeContactDetails`,
	ADD COLUMN `blacklistNumbers` INT(10) NULL DEFAULT '0' COMMENT '黑名单数量' AFTER `peerNumbers`;




ALTER TABLE `trd_contactPhoneDetailSnapshot`
	ADD COLUMN `isGray` TINYINT(1) NULL DEFAULT '0' COMMENT '是否灰名单（1:是 0:否）' AFTER `isBlacklist`,
	ADD COLUMN `itagDataType` VARCHAR(64) NULL DEFAULT '0' COMMENT '帮秒配 标记类型' AFTER `isGray`,
	ADD COLUMN `itagDataNum` INT(10) NULL DEFAULT '0' COMMENT '帮秒配 标记次数 ' AFTER `itagDataType`,
	ADD COLUMN `itagDataTags` VARCHAR(256) NULL DEFAULT '0' COMMENT '帮秒配 标记内容 见 java文件ItagDataTagsEnum枚举值 ' AFTER `itagDataNum`;




ALTER TABLE `trd_callRecordDetailSnapshot`
	ADD COLUMN `itagDataType` VARCHAR(64) NULL DEFAULT NULL COMMENT '帮秒配 标记类型  ' AFTER `Call6Time`,
	ADD COLUMN `itagDataNum` INT(10) NULL DEFAULT NULL COMMENT '帮秒配 标记次数' AFTER `itagDataType`,
	ADD COLUMN `itagDataTags` VARCHAR(256) NULL DEFAULT NULL COMMENT '帮秒配 标记内容 见 java文件ItagDataTagsEnum枚举值' AFTER `itagDataNum`;
	

ALTER TABLE `sd_usercenter`.`tuc_contactInfo`
	ADD COLUMN `relativeContactDetails` VARCHAR(2000) NULL DEFAULT NULL COMMENT '亲属联系人详情 JSONObject' AFTER `relativeContactNum`,
	ADD COLUMN `peerNumbers` INT(10) NULL DEFAULT '0' COMMENT '同行数量' AFTER `relativeContactDetails`,
	ADD COLUMN `blacklistNumbers` INT(10) NULL DEFAULT '0' COMMENT '黑名单数量' AFTER `peerNumbers`;




ALTER TABLE `sd_usercenter`.`tuc_contactPhoneDetail`
	ADD COLUMN `isGray` TINYINT(1) NULL DEFAULT '0' COMMENT '是否灰名单（1:是 0:否）' AFTER `isBlacklist`;
