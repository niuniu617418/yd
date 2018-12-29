USE `sd_usercenter`;

-- 用户基本信息表，添加渠道ID
alter table tuc_userBasicInfo add channelId varchar(64) not null COMMENT '渠道ID' after autoSign;