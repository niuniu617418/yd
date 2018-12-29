/** 电话邦需求 **/
ALTER TABLE `sd_usercenter`.`tuc_contactphonedetail`   
  ADD COLUMN `itagDataType` VARCHAR(64) NULL  COMMENT '帮秒配 标记类型' AFTER `phoneUpdateTime`,
  ADD COLUMN `itagDataNum` INT(10)  NULL  COMMENT '帮秒配 标记次数' AFTER `itagDataType`,
  ADD COLUMN `itagDataTags` VARCHAR(256) NULL  COMMENT '帮秒配 标记内容' AFTER `itagDataNum`;
