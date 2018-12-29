USE `sd_usercenter`;
-- 添加联合唯一索引
ALTER table sd_usercenter.tuc_userDataStatus add UNIQUE index idx_uniq_userid_type_status(userId, dataType, dataStatus);