USE `sd_usercenter`;
--  短信发送记录表更改字段，提供者 凡凯
ALTER TABLE `tuc_smsRecord` ADD COLUMN `mobilePhone` varchar(30) NOT NULL DEFAULT '' COMMENT '手机号' after `userId`;