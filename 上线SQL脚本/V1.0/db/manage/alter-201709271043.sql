-- 修改时间字段  提供者：刘金平
ALTER TABLE `sd_manager`.`tmn_sys_attachment`
  CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '创建时间';

ALTER TABLE `sd_manager`.`tmn_sys_attachment_relation`
  CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '创建时间';

ALTER TABLE `sd_manager`.`tmn_sys_msg`
  CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '创建时间',
  CHANGE `updatedTime` `updatedTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '更新时间';

ALTER TABLE `sd_manager`.`tmn_sys_msg_department_relation`
  CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '创建时间';

ALTER TABLE `sd_manager`.`tmn_sys_user_msg`
  CHANGE `createTime` `createTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '创建时间',
  CHANGE `updatedTime` `updatedTime` DATETIME DEFAULT CURRENT_TIMESTAMP   NOT NULL  COMMENT '更新时间';