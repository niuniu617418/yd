UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='PSBC' WHERE  `bankCode`='01000000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='ICBC' WHERE  `bankCode`='01020000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='ABC' WHERE  `bankCode`='01030000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='BOC' WHERE  `bankCode`='01040000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='CCB' WHERE  `bankCode`='01050000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='BOCOM' WHERE  `bankCode`='03010000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='CITIC' WHERE  `bankCode`='03020000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='CEB' WHERE  `bankCode`='03030000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='HXB' WHERE  `bankCode`='03040000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='CMBC' WHERE  `bankCode`='03050000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='PAB' WHERE  `bankCode`='03070000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='PAB' WHERE  `bankCode`='03070010' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='CMB' WHERE  `bankCode`='03080000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='CIB' WHERE  `bankCode`='03090000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='SPDB' WHERE  `bankCode`='03100000' AND `channel`=1;
UPDATE `sd_account`.`tac_bankchannel` SET `bankCodeNiiwoo`='CGB' WHERE  `bankCode`='03060000' AND `channel`=1;

--�ظ��ۿ����˻��ģ�����Ϊ���˹�����
update sd_account.tac_fundsfloworder t set t.status = 5 where t.fundsFlowOrderNo in (73275824870014976,73342056998649856,73637094295093248,73897303693328384,73276485296734208);


--����˱���޷�ͬ�����ҽ���״̬
update sd_trade.trd_project set applyTime = '2017-10-05 17:16:24' where projectId = 69299352182460416;

--��15���Ӻ�ִ��
update sd_trade.trd_project set applyTime = '2017-09-30 17:16:24' where projectId = 69299352182460416;


-- 13758231015 	��ǿ ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '66739436263575552'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507888157055938', '66739436263575552', '6215581313002256024', '��������', '01020000', '��ǿ', '341125199309110551', '13758231015', '�㽭ʡ', '������', '1', '1', '1', NOW(), NOW());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507888173070423', '66739436263575552', '1', '��ǿ', '341125199309110551', '6215581313002256024', '13758231015', '�㽭ʡ������', '2', NULL, NOW(), NOW());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01020000',
			 t.bankName = '��������',
			 t.bankAccount = '6215581313002256024',
			 t.updateTime = now()
	WHERE t.userId = '66739436263575552';




-- 13646947808 	������ ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '68451691069968384'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507888566078290', '68451691069968384', '6228481548813153175', 'ũҵ����', '01030000', '������', '352202199112085720', '13646947808', '����ʡ', '������', '1', '1', '1', NOW(), NOW());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507888572146192', '68451691069968384', '1', '������', '352202199112085720', '6228481548813153175', '13646947808', '����ʡ������', '2', NULL, NOW(), NOW());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01030000',
			 t.bankName = 'ũҵ����',
			 t.bankAccount = '6228481548813153175',
			 t.updateTime = now()
	WHERE t.userId = '68451691069968384';




-- 15159589180 	���º� ����

	-- ���û�ԭ�еİ���Ϣ״̬����Ϊ ����Ч��
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '68545659434717184'; 
	
	-- ���û�����һ������Ϣ
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507888825151503', '68545659434717184', '6230520680006413378', 'ũҵ����', '01030000', '���º�', '350525199406041618', '15159589180', '����ʡ', 'Ȫ����', '1', '1', '1', NOW(), NOW());

	-- ����һ���û��������¼��Ϣ	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507888830559102', '68545659434717184', '1', '���º�', '350525199406041618', '6230520680006413378', '15159589180', '����ʡȪ����', '2', NULL, NOW(), NOW());

	-- �޸��û��˻� ���п���Ϣ
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01030000',
			 t.bankName = 'ũҵ����',
			 t.bankAccount = '6230520680006413378',
			 t.updateTime = now()
	WHERE t.userId = '68545659434717184';



