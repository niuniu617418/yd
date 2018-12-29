USE `sd_trade`;

create index idx_projectId_riskType on trd_projectRiskInfo(projectId,riskType);

alter table trd_projectRiskInfo drop key idx_userId ,add key idx_userid_riskType(userid,riskType) ;

alter table trd_projectRiskDetailInfo add key idx_projectId_riskType(projectId,riskType),add key idx_userid(userId);

create index idx_projectId on trd_snapshotTask(projectId);