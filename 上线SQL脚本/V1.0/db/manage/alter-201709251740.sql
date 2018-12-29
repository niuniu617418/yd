USE sd_manager;
Alter table tmn_sys_msg drop column departmentId;
Alter table tmn_sys_attachment_relation drop primary key;
Alter table tmn_sys_attachment_relation drop index uk_relation_attach_id;
Alter table tmn_sys_attachment_relation add primary key(relationId,attachmentId,relationType);
