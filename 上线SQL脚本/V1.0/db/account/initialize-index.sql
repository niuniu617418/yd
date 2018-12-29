-- sd_account
USE `sd_account`;
alter table tac_account drop key inx_uniq_uid ;
alter table tac_account add UNIQUE key idx_uniq_userId_plateformId(userId,plateformId) ;
alter table tac_accountbill drop key inx_uId ;
alter table tac_accountbill add  key idx_userId_platformId(userId,platformId) ;
alter table tac_exceptionhandle drop key idx_tac_userId ;
alter table tac_exceptionhandle add  key idx_userId(userId) ;
alter table tac_fundsfloworder drop key idx_uId ;
alter table tac_fundsfloworder add  key idx_userId(userId) ;
alter table tac_fundspushorder drop key idx_uId ;
alter table tac_fundspushorder add  key idx_userId(userId) ;
alter table tac_rechargeorder drop key idx_tac_userId ;
alter table tac_rechargeorder add  key idx_userId(userId) ;
alter table tac_withholdorder drop key idx_tac_userId ;
alter table tac_withholdorder add  key idx_borrowUserId(borrowUserId) ;