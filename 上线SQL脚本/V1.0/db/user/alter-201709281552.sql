USE `sd_usercenter`;
--  短信发送记录表更改字段可空，提供者 凡凯
ALTER TABLE `tuc_smsRecord`
	ALTER `userId` DROP DEFAULT;
ALTER TABLE `tuc_smsRecord`
	CHANGE COLUMN `userId` `userId` BIGINT(20) NULL COMMENT '用户id' AFTER `id`;
