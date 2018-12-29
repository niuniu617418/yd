USE `sd_trade`;
-- sd_trade 更改快照表字段长度
ALTER TABLE `trd_borrowerProjectDetailSnapshot`
  ALTER `driverMobileNo` DROP DEFAULT,
  ALTER `mobileNo` DROP DEFAULT;
ALTER TABLE `trd_borrowerProjectDetailSnapshot`
  CHANGE COLUMN `driverMobileNo` `driverMobileNo` VARCHAR(30) NOT NULL COMMENT '发起匹配的手机号(借款人手机号或借款人紧急联系人手机号)' AFTER `driverProjectId`,
  CHANGE COLUMN `mobileNo` `mobileNo` VARCHAR(30) NOT NULL COMMENT '手机号' AFTER `idCard`;


-- sd_trade 增加字段长度
ALTER TABLE `trd_borrowerProjectDetailSnapshot`
  CHANGE COLUMN `idCard` `idCard` VARCHAR(50) NULL DEFAULT NULL COMMENT '身份证' AFTER `borrowerUserName`,
  CHANGE COLUMN `companyTel` `companyTel` VARCHAR(20) NULL DEFAULT NULL COMMENT '单位电话' AFTER `mobileNo`,
  CHANGE COLUMN `companyName` `companyName` VARCHAR(64) NULL DEFAULT NULL COMMENT '单位名称' AFTER `companyTel`;