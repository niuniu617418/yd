-- 13911321050 	Ԭ�� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '72878479149916160'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508148952719924', '72878479149916160', '6216910103497357', '��������', '03050000', 'Ԭ��', '110229198508020025', '13911321050', '������', '��Ͻ��', '1', '1', '1', now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508148959810308', '72878479149916160', '1', 'Ԭ��', '110229198508020025', '6216910103497357', '13911321050', '��������Ͻ��', '2', NULL, now(), now());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '03050000',
			 t.bankName = '��������',
			 t.bankAccount = '6216910103497357',
			 t.updateTime = now()
	WHERE t.userId = '72878479149916160';



-- 15151843794 	�Գ� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '69383130418536448'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508148966870074', '69383130418536448', '6217001370036801652', '��������', '01050000', '�Գ�', '340123199408044111', '15151843794', '����ʡ', '�Ͼ���', '1', '1', '1', now(), now());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508148972509927', '69383130418536448', '1', '�Գ�', '340123199408044111', '6217001370036801652', '15151843794', '����ʡ�Ͼ���', '2', NULL, now(), now());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01050000',
			 t.bankName = '��������',
			 t.bankAccount = '6217001370036801652',
			 t.updateTime = now()
	WHERE t.userId = '69383130418536448';