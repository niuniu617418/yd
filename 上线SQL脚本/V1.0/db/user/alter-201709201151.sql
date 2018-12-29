USE `sd_usercenter`;
-- 用户状态表唯一索引调整
ALTER TABLE `tuc_userDataStatus`
  DROP INDEX `idx_uniq_userid_type_status`,
  ADD UNIQUE INDEX `idx_uniq_userid_type` (`userId`, `dataType`);