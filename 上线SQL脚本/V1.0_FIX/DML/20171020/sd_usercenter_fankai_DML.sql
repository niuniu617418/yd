-- 修正cardBin表中，bankCode不一致问题
UPDATE sd_usercenter.`tuc_cardbin` SET bankcode = '01000000' WHERE bankcode = '1000000';
UPDATE sd_usercenter.`tuc_cardbin` SET bankcode = '01050000' WHERE bankcode = '1050000';
UPDATE sd_usercenter.`tuc_cardbin` SET bankcode = '03010000' WHERE bankcode = '3010000';
UPDATE sd_usercenter.`tuc_cardbin` SET bankcode = '03080000' WHERE bankcode = '3080000';
UPDATE sd_usercenter.`tuc_cardbin` SET bankcode = '03090000' WHERE bankcode = '3090000';
UPDATE sd_usercenter.`tuc_cardbin` SET bankcode = '03070000' WHERE bankcode = '3070010';
UPDATE sd_usercenter.`tuc_cardbin` SET bankcode = '03070000' WHERE bankcode = '03070010';
delete from sd_usercenter.tuc_cardbin t where t.id in (3698,3640,3638,3588,3676,3506,3518,3437);