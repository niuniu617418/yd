--���˴�����쳣�����
INSERT INTO `sd_account`.`tac_fundsfloworder` (`fundsFlowOrderNo`, `orderNo`, `completeDate`, `orderType`, `userId`, `plateformId`, `projectId`, `amount`, `bankAccount`, `bankCode`, `bankMobile`, `realName`, `idCard`, `status`, `createTime`, `updateTime`) 
VALUES ('1512726109289243', '94299009073553408', '2017-12-08 16:56:06', '2', '67417105632354304', '1', '88382554339561472', '1146.00', '6228480363281736613', '01030000', '13989606145', '��츣', '331004199112232716', '1', '2017-12-08 16:56:06', '2017-12-08 16:56:06');

UPDATE sd_account.tac_withholdOrder SET status = 4 WHERE orderNo = 94299009073553408;

UPDATE sd_usercenter.`tuc_messagetemplate` SET templateContent = REPLACE(templateContent, '��', '��'); 
UPDATE sd_usercenter.`tuc_messagetemplate` SET templateContent = REPLACE(templateContent, '��', '��'); 

UPDATE sd_usercenter.`tuc_messagetemplate` SET templateContent = '{0}�����������ƴ��Ľ�ID��{1}�������ѵ��ڣ��ۼ�Ӧ����{4}Ԫ��Ϊ����������෣Ϣ����ȷ��{5}β��Ϊ{6}�������ֱ����ƽ̨���' where id = 10;
UPDATE sd_usercenter.`tuc_messagetemplate` SET templateContent = '{0}�����������ƴ��Ľ�ID��{1}�������ѵ��ڣ��ۼ�Ӧ����{4}Ԫ���뾡�컹������������෣Ϣ��' where id = 11;