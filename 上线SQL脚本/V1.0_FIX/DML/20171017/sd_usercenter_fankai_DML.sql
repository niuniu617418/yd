-- 15763099075 	�߼��� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '70281206922485760'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508243703056937', '70281206922485760', '6227002201603983516', '��������', '01050000', '�߼���', '370781199206125214', '15763099075', 'ɽ��ʡ', 'Ϋ����', '1', '1', '1', now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508243711539730', '70281206922485760', '1', '�߼���', '370781199206125214', '6227002201603983516', '15763099075', 'ɽ��ʡΫ����', '2', NULL, now(), NOW());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01050000',
			 t.bankName = '��������',
			 t.bankAccount = '6227002201603983516',
			 t.updateTime = now()
	WHERE t.userId = '70281206922485760';



-- 15253302131 	��� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67343328982601728'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508243717832350', '67343328982601728', '6212261603014406771', '��������', '01020000', '���', '370302199210086310', '15253302131', 'ɽ��ʡ', '�Ͳ���', '1', '1', '1', now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508243723736729', '67343328982601728', '1', '���', '370302199210086310', '6212261603014406771', '15253302131', 'ɽ��ʡ�Ͳ���', '2', NULL, now(), now());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01020000',
			 t.bankName = '��������',
			 t.bankAccount = '6212261603014406771',
			 t.updateTime = now()
	WHERE t.userId = '67343328982601728';




-- 15833779727 	κ�� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67801487903821824'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508243730366488', '67801487903821824', '6228481739190322372', 'ũҵ����', '01030000', 'κ��', '34122519951201152X', '15833779727', '�ӱ�ʡ', '������', '1', '1', '1', now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508243736214918', '67801487903821824', '1', 'κ��', '34122519951201152X', '6228481739190322372', '15833779727', '�ӱ�ʡ������', '2', NULL, now(), now());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01030000',
			 t.bankName = 'ũҵ����',
			 t.bankAccount = '6228481739190322372',
			 t.updateTime = now()
	WHERE t.userId = '67801487903821824';