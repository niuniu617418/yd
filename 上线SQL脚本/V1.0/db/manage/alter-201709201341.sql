USE `sd_manager`;
update tmn_sys_role set roleName = '你我云贷审核员',updatedTime = current_timestamp where roleName = '优借审核员';
update tmn_sys_role set roleName = '你我云贷跟踪员',updatedTime = current_timestamp where roleName = '优借跟踪员';