
/** �绰������ ͨ����¼����**/
ALTER TABLE `sd_usercenter`.`tuc_callRecordDetail`   
  ADD COLUMN `itagDataType` VARCHAR(64) NULL  COMMENT '������ �������' AFTER `Call6Time`,
  ADD COLUMN `itagDataNum` INT(10)  NULL  COMMENT '������ ��Ǵ���' AFTER `itagDataType`,
  ADD COLUMN `itagDataTags` VARCHAR(256) NULL  COMMENT '������ �������' AFTER `itagDataNum`;