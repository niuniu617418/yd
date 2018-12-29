USE `sd_manager`;
ALTER TABLE `tmn_sys_login_log`
  CHANGE COLUMN `loginIp` `loginIp` VARCHAR(100) NULL DEFAULT NULL COMMENT '登录IP' AFTER `loginTime`;

ALTER TABLE `tmn_sys_user`
  CHANGE COLUMN `loginIp` `loginIp` VARCHAR(100) NULL DEFAULT NULL COMMENT '最后登录IP' COLLATE 'utf8_bin' AFTER `loginTime`;
