/** �绰������ **/
ALTER TABLE `sd_usercenter`.`tuc_contactPhoneDetail`   
  ADD COLUMN `itagDataType` VARCHAR(64) NULL  COMMENT '������ �������' AFTER `phoneUpdateTime`,
  ADD COLUMN `itagDataNum` INT(10)  NULL  COMMENT '������ ��Ǵ���' AFTER `itagDataType`,
  ADD COLUMN `itagDataTags` VARCHAR(256) NULL  COMMENT '������ �������' AFTER `itagDataNum`;

/** ����ͳ�ƶ������� �� Ĭ��-1 **/
ALTER TABLE `sd_usercenter`.`tuc_smsContent`   
  ADD COLUMN `totalNum` INT(10) DEFAULT -1  NULL  COMMENT '��������' AFTER `updateTime`;
  
/** �����б����� ͨѶ¼ƥ�� **/
ALTER TABLE `sd_usercenter`.`tuc_smsInfoList`   
  ADD COLUMN `name` VARCHAR(32) NULL  COMMENT 'ͨѶ¼ƥ������' AFTER `keywords`;

  