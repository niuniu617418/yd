-- 15520032352 	��� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67818757094924288'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508292298744371', '67818757094924288', '6217853200001748845', '�й�����', '01040000', '���', '500106199801182813', '15520032352', '������', '��Ͻ��', '1', '1', '1',  now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508292310755147', '67818757094924288', '1', '���', '500106199801182813', '6217853200001748845', '15520032352', '��������Ͻ��', '2', NULL, now(), now());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01040000',
			 t.bankName = '�й�����',
			 t.bankAccount = '6217853200001748845',
			 t.updateTime = now()
	WHERE t.userId = '67818757094924288';
	
	
-- 18651905332 	���� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '70296906739245056'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508316462212298', '70296906739245056', '6217002730008661930', '��������', '01050000', '����', '421122198204120012', '18651905332', '����ʡ', '�Ƹ���', '1', '1', '1', now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508316499922835', '70296906739245056', '1', '����', '421122198204120012', '6217002730008661930', '18651905332', '����ʡ�Ƹ���', '2', NULL, now(), now());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01050000',
			 t.bankName = '��������',
			 t.bankAccount = '6217002730008661930',
			 t.updateTime = now()
	WHERE t.userId = '70296906739245056';



-- 17704515662 	��Ч�� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67607480087109632'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508316506593650', '67607480087109632', '6217001140037681449', '��������', '01050000', '��Ч��', '220182198703237213', '17704515662', '������ʡ', '��������', '1', '1', '1', now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508316489301924', '67607480087109632', '1', '��Ч��', '220182198703237213', '6217001140037681449', '17704515662', '������ʡ��������', '2', NULL, now(), now());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01050000',
			 t.bankName = '��������',
			 t.bankAccount = '6217001140037681449',
			 t.updateTime = now()
	WHERE t.userId = '67607480087109632';	