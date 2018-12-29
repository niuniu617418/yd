USE `sd_usercenter`;

-- 用户基本信息表，添加渠道编码、链接编码
alter table tuc_userBasicInfo drop column channelId;
alter table tuc_userBasicInfo add linkCode varchar(64) COMMENT '链接编码' after autoSign;
alter table tuc_userBasicInfo add channelCode varchar(64) COMMENT '渠道编码' after autoSign;