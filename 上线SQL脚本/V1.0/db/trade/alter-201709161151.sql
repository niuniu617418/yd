USE `sd_trade`;
-- 更改备注

ALTER TABLE `trd_borrowHisSnapshot`
  CHANGE COLUMN `auditId` `auditId` BIGINT(20) NULL DEFAULT NULL COMMENT '历史审核记录ID（人工或自动）' AFTER `projectStatus`;

-- 更改风险信息详情快照表字段可以为空
ALTER TABLE `sd_trade`.`trd_borrowerProjectDetailSnapshot`
  CHANGE `borrowerUserName` `borrowerUserName` VARCHAR(50) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '~用户姓名',
  CHANGE `idCard` `idCard` VARCHAR(20) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '身份证',
  CHANGE `companyTel` `companyTel` VARCHAR(15) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '单位电话',
  CHANGE `companyName` `companyName` VARCHAR(20) CHARSET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '单位名称';