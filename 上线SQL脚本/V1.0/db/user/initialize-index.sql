-- sd_usercenter
USE `sd_usercenter`;
create index  idx_userid_datatype on tuc_userdatastatus (userid,datatype);
create index  idx_idCard on tuc_userIdCard (idCard);
create index  idx_userId_status on tuc_userBindBankRecord(userId,status);
alter table tuc_linkManInfo add key idx_userId_mobileNo (userId,mobileNo);
alter table tuc_callRecordDetail add key idx_userId_contactPhone(userId,contactPhone);
alter table tuc_userdatafile add key idx_userId(userId);

alter table tuc_appversion drop key unq_vv_d ,drop key unq_vn_d ;
alter table tuc_appversion add UNIQUE KEY idx_uniq_versionValue_deviceType(versionValue,deviceType) ,add UNIQUE KEY idx_uniq_versionName_deviceType(versionName,deviceType);
alter table tuc_messagetemplate drop key index_templateKey ;
alter table tuc_messagetemplate add  UNIQUE KEY idx_uniq_templateKey (templateKey) ;
alter table tuc_sysparam drop key uniq_paramKey ;
alter table tuc_sysparam add  UNIQUE KEY idx_uniq_paramKey (paramKey) ;
alter table tuc_userfaceverificationrecord drop key index_userId ,drop key index_verificationResult ;
alter table tuc_userfaceverificationrecord add key idx_userid(userId),add key idx_verificationResult(verificationResult);