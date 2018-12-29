-- sd_manager
USE `sd_manager`;
create index idx_parentId_level on tmn_sys_menu(parentId,level) ;
alter table tmn_sys_menu drop key parentId;

alter table tmn_sys_department drop key parentId ;
alter table tmn_sys_department add  key idx_parentId(parentId) ;
alter table tmn_sys_login_log drop key userName ;
alter table tmn_sys_login_log add  key idx_userName(userName) ;
alter table tmn_sys_permission drop key permissionValue ;
alter table tmn_sys_permission add  UNIQUE KEY idx_uniq_permissionValue_menuId (permissionValue,menuId) ;
alter table tmn_sys_role_menu drop key UK__ROLE_MENU ;
alter table tmn_sys_role_menu add  UNIQUE KEY idx_uniq_roleId_menuId (roleId,menuId) ;
alter table tmn_sys_role_permission drop key UK_ROLE_PERMISSION ;
alter table tmn_sys_role_permission add  UNIQUE KEY idx_uniq_roleId_permissionId (roleId,permissionId) ;
alter table tmn_sys_user drop key UK_USER_UNAME ;
alter table tmn_sys_user add  UNIQUE KEY idx_uniq_userName (userName) ;
alter table tmn_sys_user_role drop key UK_USER_ROLE ;
alter table tmn_sys_user_role add  UNIQUE KEY idx_uniq_userId_roleId (userId,roleId) ;