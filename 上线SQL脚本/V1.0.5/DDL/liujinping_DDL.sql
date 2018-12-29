CREATE TABLE `trd_projectcoupon` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `projectId` bigint(20) NOT NULL COMMENT '标的ID',
  `couponId` tinyint(20) NOT NULL COMMENT '优惠券ID',
  `couponType` int(11) NOT NULL COMMENT '优惠券类型',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `status` tinyint(4) NOT NULL COMMENT '优惠券状态：0 未使用 1使用中 2已使用 3 已作废',
  `discountRate` decimal(18,2) DEFAULT NULL COMMENT '折扣率',
  `deadlineLimt` int(11) DEFAULT NULL COMMENT '7天标还是15天标',
  `amountLimit` decimal(9,2) DEFAULT NULL COMMENT '折扣最大金额',
  `amount` decimal(9,2) NOT NULL COMMENT '金额',
  `invalidTime` datetime NOT NULL COMMENT '失效时间',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标的使用优惠券记录表';

