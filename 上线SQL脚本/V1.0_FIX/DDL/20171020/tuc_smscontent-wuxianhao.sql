/** tuc_smscontent 新增短信总数列 默认-1**/
ALTER TABLE `sd_usercenter`.`tuc_smscontent`   
  ADD COLUMN `totalNum` INT(10) DEFAULT -1  NULL  COMMENT '短信总数' AFTER `updateTime`;
