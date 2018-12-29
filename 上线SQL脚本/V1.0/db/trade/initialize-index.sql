-- sd_trade
USE `sd_trade`;
create index  idx_parentId_approvalStatus on trd_approvalReason (parentId,approvalStatus);
create index  idx_userid_projectid_linkmanid on trd_phoneCallAudit(userid,projectid,linkmanid );
alter table trd_project add key idx_orgOrderNo(orgOrderNo),  add key idx_applyTime_projectStatus(applyTime,projectStatus),add key idx_createTime (createTime);
alter table trd_project add key idx_borrowerUserId (borrowerUserId);
alter table trd_project drop key borrowerUserId;
alter table trd_auditLinkman  add key idx_userId(userId);
alter table trd_projectriskinfo  add key idx_userId(userId);
alter table trd_linkmaninfosnapshot  add key idx_projectId(projectId);

alter table trd_loanrateconfig drop key deadline ;
alter table trd_loanrateconfig add  UNIQUE KEY idx_uniq_deadline (deadline) ;
alter table trd_overduecancel drop key inx_projectId ;
alter table trd_overduecancel add  UNIQUE KEY idx_uniq_projectId (projectId) ;
alter table trd_phonetrack drop key inx_projectId,drop key inx_snapshotId ;
alter table trd_phonetrack add  KEY idx_projectId (projectId),add key idx_snapshotId (snapshotId) ;
alter table trd_projectaudit drop key uniq_pid ;
alter table trd_projectaudit add  UNIQUE KEY idx_uniq_projectId (projectId) ;
alter table trd_repaymentinfo drop key index_trd_plan_refund_date ;
alter table trd_repaymentinfo add  key idx_refundDate(refundDate) ;
alter table trd_repaymentplan drop key inx_pId,drop key index_trd_plan_update_time,drop key index_trd_plan_refund_date,drop key index_trd_plan_status;
alter table trd_repaymentplan add UNIQUE KEY idx_uniq_projectId(projectId),add key idx_updateTime(updateTime),add key idx_refundDate(refundDate),add key idx_refundStatus(refundStatus);
alter table trd_systemauditresult drop key projectId ;
alter table trd_systemauditresult add  UNIQUE KEY idx_uniq_projectId (projectId) ;
alter table trd_worktaskcomplete drop key `Index 2` ;
alter table trd_worktaskcomplete add  UNIQUE KEY idx_uniq_projectId (projectId) ;