USE `sd_usercenter`;
-- 新建 短信发送记录表，提供者 凡凯
DROP TABLE IF EXISTS `tuc_smsRecord`;
CREATE TABLE `tuc_smsRecord` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `smsContent` varchar(200) DEFAULT NULL COMMENT '短信内容',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型 1:登录短信验证码',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='短信发送记录';