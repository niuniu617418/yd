/** 电话邦需求 **/
ALTER TABLE `sd_usercenter`.`tuc_contactPhoneDetail`   
  ADD COLUMN `itagDataType` VARCHAR(64) NULL  COMMENT '帮秒配 标记类型' AFTER `phoneUpdateTime`,
  ADD COLUMN `itagDataNum` INT(10)  NULL  COMMENT '帮秒配 标记次数' AFTER `itagDataType`,
  ADD COLUMN `itagDataTags` VARCHAR(256) NULL  COMMENT '帮秒配 标记内容' AFTER `itagDataNum`;

/** 新增统计短信总数 列 默认-1 **/
ALTER TABLE `sd_usercenter`.`tuc_smsContent`   
  ADD COLUMN `totalNum` INT(10) DEFAULT -1  NULL  COMMENT '短信总数' AFTER `updateTime`;
  
/** 短信列表新增 通讯录匹配 **/
ALTER TABLE `sd_usercenter`.`tuc_smsInfoList`   
  ADD COLUMN `name` VARCHAR(32) NULL  COMMENT '通讯录匹配名称' AFTER `keywords`;

  