--退款已处理
update sd_account.tac_fundsfloworder t set t.status = 5 where t.fundsFlowOrderNo = 74067466489184256

-------------[74026158869467136]end------------------
-------------[69181873615540224]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 69181873615540224;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =69181873615540224);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 69181873615540224;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574146772992,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 69181873615540224;
-------------[69181873615540224]end------------------
-------------[69231294805987328]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 69231294805987328;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =69231294805987328);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 69231294805987328;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574146772993,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 69231294805987328;
-------------[69231294805987328]end------------------
-------------[70312400527560704]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 70312400527560704;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =70312400527560704);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 70312400527560704;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967296,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 70312400527560704;
-------------[70312400527560704]end------------------
-------------[70399252651577344]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 70399252651577344;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =70399252651577344);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 70399252651577344;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967297,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 70399252651577344;
-------------[70399252651577344]end------------------
-------------[70520614615535616]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 70520614615535616;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =70520614615535616);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 70520614615535616;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967298,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 70520614615535616;
-------------[70520614615535616]end------------------
-------------[70637082762039296]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 70637082762039296;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =70637082762039296);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 70637082762039296;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967299,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 70637082762039296;
-------------[70637082762039296]end------------------
-------------[70656487906627584]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 70656487906627584;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =70656487906627584);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 70656487906627584;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967300,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 70656487906627584;
-------------[70656487906627584]end------------------
-------------[70695654900371456]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 70695654900371456;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =70695654900371456);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 70695654900371456;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967301,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 70695654900371456;
-------------[70695654900371456]end------------------
-------------[70712064011685888]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 70712064011685888;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =70712064011685888);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 70712064011685888;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967302,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 70712064011685888;
-------------[70712064011685888]end------------------
-------------[71007434302312448]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 71007434302312448;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =71007434302312448);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 71007434302312448;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967303,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 71007434302312448;
-------------[71007434302312448]end------------------
-------------[71481631856136192]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 71481631856136192;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =71481631856136192);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 71481631856136192;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967304,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 71481631856136192;
-------------[71481631856136192]end------------------
-------------[71971359797809152]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 71971359797809152;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =71971359797809152);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 71971359797809152;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967305,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 71971359797809152;
-------------[71971359797809152]end------------------
-------------[72817361052258304]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72817361052258304;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72817361052258304);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72817361052258304;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967306,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72817361052258304;
-------------[72817361052258304]end------------------
-------------[72825653279330304]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72825653279330304;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72825653279330304);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72825653279330304;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967307,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72825653279330304;
-------------[72825653279330304]end------------------
-------------[72831035703840768]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72831035703840768;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72831035703840768);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72831035703840768;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967308,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72831035703840768;
-------------[72831035703840768]end------------------
-------------[72852907195633664]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72852907195633664;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72852907195633664);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72852907195633664;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967309,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72852907195633664;
-------------[72852907195633664]end------------------
-------------[72854904997154816]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72854904997154816;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72854904997154816);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72854904997154816;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574150967310,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72854904997154816;
-------------[72854904997154816]end------------------
-------------[72858068416745472]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72858068416745472;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72858068416745472);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72858068416745472;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161600,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72858068416745472;
-------------[72858068416745472]end------------------
-------------[72868474463997952]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72868474463997952;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72868474463997952);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72868474463997952;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161601,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72868474463997952;
-------------[72868474463997952]end------------------
-------------[72870339784232960]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72870339784232960;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72870339784232960);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72870339784232960;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161602,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72870339784232960;
-------------[72870339784232960]end------------------
-------------[72875656219725824]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72875656219725824;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72875656219725824);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72875656219725824;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161603,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72875656219725824;
-------------[72875656219725824]end------------------
-------------[72878850349993984]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72878850349993984;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72878850349993984);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72878850349993984;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161604,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72878850349993984;
-------------[72878850349993984]end------------------
-------------[72892015423000576]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72892015423000576;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72892015423000576);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72892015423000576;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161605,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72892015423000576;
-------------[72892015423000576]end------------------
-------------[72895373718343680]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72895373718343680;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72895373718343680);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72895373718343680;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161606,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72895373718343680;
-------------[72895373718343680]end------------------
-------------[72898986960228352]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72898986960228352;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72898986960228352);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72898986960228352;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161607,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72898986960228352;
-------------[72898986960228352]end------------------
-------------[72902427799457792]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72902427799457792;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72902427799457792);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72902427799457792;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161608,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72902427799457792;
-------------[72902427799457792]end------------------
-------------[72912692351864832]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72912692351864832;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72912692351864832);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72912692351864832;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161609,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72912692351864832;
-------------[72912692351864832]end------------------
-------------[72931720915079168]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72931720915079168;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72931720915079168);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72931720915079168;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161610,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72931720915079168;
-------------[72931720915079168]end------------------
-------------[72934744861462528]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72934744861462528;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72934744861462528);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72934744861462528;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161611,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72934744861462528;
-------------[72934744861462528]end------------------
-------------[72934798531760128]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72934798531760128;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72934798531760128);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72934798531760128;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161612,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72934798531760128;
-------------[72934798531760128]end------------------
-------------[72939053946769408]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72939053946769408;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72939053946769408);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72939053946769408;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161613,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72939053946769408;
-------------[72939053946769408]end------------------
-------------[72946607590494208]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72946607590494208;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72946607590494208);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72946607590494208;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161614,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72946607590494208;
-------------[72946607590494208]end------------------
-------------[72969598391046144]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72969598391046144;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72969598391046144);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72969598391046144;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161615,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72969598391046144;
-------------[72969598391046144]end------------------
-------------[72978714077450240]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 72978714077450240;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =72978714077450240);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 72978714077450240;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161616,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 72978714077450240;
-------------[72978714077450240]end------------------
-------------[73016889080549376]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73016889080549376;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73016889080549376);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73016889080549376;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574155161617,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73016889080549376;
-------------[73016889080549376]end------------------
-------------[73033531244171264]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73033531244171264;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73033531244171264);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73033531244171264;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355904,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73033531244171264;
-------------[73033531244171264]end------------------
-------------[73034653618950144]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73034653618950144;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73034653618950144);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73034653618950144;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355905,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73034653618950144;
-------------[73034653618950144]end------------------
-------------[73034968388882432]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73034968388882432;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73034968388882432);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73034968388882432;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355906,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73034968388882432;
-------------[73034968388882432]end------------------
-------------[73056585500348416]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73056585500348416;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73056585500348416);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73056585500348416;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355907,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73056585500348416;
-------------[73056585500348416]end------------------
-------------[73110719142318080]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73110719142318080;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73110719142318080);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73110719142318080;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355908,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73110719142318080;
-------------[73110719142318080]end------------------
-------------[73148945781510144]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73148945781510144;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73148945781510144);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73148945781510144;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355909,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73148945781510144;
-------------[73148945781510144]end------------------
-------------[73157705937719296]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73157705937719296;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73157705937719296);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73157705937719296;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355910,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73157705937719296;
-------------[73157705937719296]end------------------
-------------[73160025001955328]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73160025001955328;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73160025001955328);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73160025001955328;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355911,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73160025001955328;
-------------[73160025001955328]end------------------
-------------[73160702562406400]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73160702562406400;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73160702562406400);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73160702562406400;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355912,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73160702562406400;
-------------[73160702562406400]end------------------
-------------[73164105661304832]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73164105661304832;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73164105661304832);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73164105661304832;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355913,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73164105661304832;
-------------[73164105661304832]end------------------
-------------[73177208075603968]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73177208075603968;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73177208075603968);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73177208075603968;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355914,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73177208075603968;
-------------[73177208075603968]end------------------
-------------[73179497897136128]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73179497897136128;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73179497897136128);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73179497897136128;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355915,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73179497897136128;
-------------[73179497897136128]end------------------
-------------[73181807507427328]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73181807507427328;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73181807507427328);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73181807507427328;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355916,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73181807507427328;
-------------[73181807507427328]end------------------
-------------[73184764449804288]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73184764449804288;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73184764449804288);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73184764449804288;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355917,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73184764449804288;
-------------[73184764449804288]end------------------
-------------[73198579136598016]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73198579136598016;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73198579136598016);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73198579136598016;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355918,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73198579136598016;
-------------[73198579136598016]end------------------
-------------[73204835171717120]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73204835171717120;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73204835171717120);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73204835171717120;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355919,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73204835171717120;
-------------[73204835171717120]end------------------
-------------[73205694790111232]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73205694790111232;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73205694790111232);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73205694790111232;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355920,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73205694790111232;
-------------[73205694790111232]end------------------
-------------[73206903089401856]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73206903089401856;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73206903089401856);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73206903089401856;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574159355921,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73206903089401856;
-------------[73206903089401856]end------------------
-------------[73208460904239104]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73208460904239104;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73208460904239104);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73208460904239104;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550208,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73208460904239104;
-------------[73208460904239104]end------------------
-------------[73213754967330816]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73213754967330816;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73213754967330816);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73213754967330816;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550209,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73213754967330816;
-------------[73213754967330816]end------------------
-------------[73217682228400128]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73217682228400128;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73217682228400128);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73217682228400128;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550210,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73217682228400128;
-------------[73217682228400128]end------------------
-------------[73218266364907520]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73218266364907520;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73218266364907520);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73218266364907520;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550211,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73218266364907520;
-------------[73218266364907520]end------------------
-------------[73234084154839040]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73234084154839040;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73234084154839040);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73234084154839040;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550212,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73234084154839040;
-------------[73234084154839040]end------------------
-------------[73238087559303168]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73238087559303168;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73238087559303168);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73238087559303168;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550213,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73238087559303168;
-------------[73238087559303168]end------------------
-------------[73241111962865664]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73241111962865664;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73241111962865664);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73241111962865664;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550214,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73241111962865664;
-------------[73241111962865664]end------------------
-------------[73252947806392320]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73252947806392320;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73252947806392320);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73252947806392320;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550215,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73252947806392320;
-------------[73252947806392320]end------------------
-------------[73265749224869888]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73265749224869888;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73265749224869888);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73265749224869888;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550216,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73265749224869888;
-------------[73265749224869888]end------------------
-------------[73267045218652160]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73267045218652160;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73267045218652160);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73267045218652160;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574163550217,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73267045218652160;
-------------[73267045218652160]end------------------
-------------[73274152613597184]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73274152613597184;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73274152613597184);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73274152613597184;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574176133120,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73274152613597184;
-------------[73274152613597184]end------------------
-------------[73289436837711872]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73289436837711872;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73289436837711872);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73289436837711872;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574176133121,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73289436837711872;
-------------[73289436837711872]end------------------
-------------[73298225263546368]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73298225263546368;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73298225263546368);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73298225263546368;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574176133122,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73298225263546368;
-------------[73298225263546368]end------------------
-------------[73299010319831040]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73299010319831040;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73299010319831040);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73299010319831040;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574176133123,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73299010319831040;
-------------[73299010319831040]end------------------
-------------[73312187581468672]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73312187581468672;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73312187581468672);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73312187581468672;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574176133124,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73312187581468672;
-------------[73312187581468672]end------------------
-------------[73312431174078464]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73312431174078464;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73312431174078464);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73312431174078464;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327424,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73312431174078464;
-------------[73312431174078464]end------------------
-------------[73344480912084992]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73344480912084992;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73344480912084992);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73344480912084992;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327425,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73344480912084992;
-------------[73344480912084992]end------------------
-------------[73345805884329984]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73345805884329984;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73345805884329984);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73345805884329984;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327426,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73345805884329984;
-------------[73345805884329984]end------------------
-------------[73350911371513856]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73350911371513856;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73350911371513856);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73350911371513856;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327427,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73350911371513856;
-------------[73350911371513856]end------------------
-------------[73353640189890560]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73353640189890560;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73353640189890560);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73353640189890560;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327428,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73353640189890560;
-------------[73353640189890560]end------------------
-------------[73356096600821760]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73356096600821760;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73356096600821760);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73356096600821760;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327429,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73356096600821760;
-------------[73356096600821760]end------------------
-------------[73409601948635136]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73409601948635136;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73409601948635136);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73409601948635136;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327430,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73409601948635136;
-------------[73409601948635136]end------------------
-------------[73523668524748800]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73523668524748800;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73523668524748800);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73523668524748800;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327431,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73523668524748800;
-------------[73523668524748800]end------------------
-------------[73526331161202688]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73526331161202688;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73526331161202688);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73526331161202688;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327432,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73526331161202688;
-------------[73526331161202688]end------------------
-------------[73537348406628352]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73537348406628352;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73537348406628352);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73537348406628352;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327433,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73537348406628352;
-------------[73537348406628352]end------------------
-------------[73540665450958848]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73540665450958848;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73540665450958848);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73540665450958848;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327434,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73540665450958848;
-------------[73540665450958848]end------------------
-------------[73560496225128448]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73560496225128448;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73560496225128448);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73560496225128448;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327435,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73560496225128448;
-------------[73560496225128448]end------------------
-------------[73566735684358144]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73566735684358144;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73566735684358144);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73566735684358144;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327436,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73566735684358144;
-------------[73566735684358144]end------------------
-------------[73588707495530496]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73588707495530496;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73588707495530496);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73588707495530496;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327437,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73588707495530496;
-------------[73588707495530496]end------------------
-------------[73606920719568896]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73606920719568896;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73606920719568896);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73606920719568896;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327438,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73606920719568896;
-------------[73606920719568896]end------------------
-------------[73610016384372736]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73610016384372736;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73610016384372736);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73610016384372736;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327439,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73610016384372736;
-------------[73610016384372736]end------------------
-------------[73622574877118464]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73622574877118464;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73622574877118464);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73622574877118464;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574180327440,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73622574877118464;
-------------[73622574877118464]end------------------
-------------[73663922640539648]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73663922640539648;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73663922640539648);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73663922640539648;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521728,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73663922640539648;
-------------[73663922640539648]end------------------
-------------[73697158825529344]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73697158825529344;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73697158825529344);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73697158825529344;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521729,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73697158825529344;
-------------[73697158825529344]end------------------
-------------[73698880616665088]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73698880616665088;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73698880616665088);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73698880616665088;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521730,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73698880616665088;
-------------[73698880616665088]end------------------
-------------[73711371488874496]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73711371488874496;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73711371488874496);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73711371488874496;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521731,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73711371488874496;
-------------[73711371488874496]end------------------
-------------[73730569095090176]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73730569095090176;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73730569095090176);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73730569095090176;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521732,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73730569095090176;
-------------[73730569095090176]end------------------
-------------[73760415661690880]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73760415661690880;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73760415661690880);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73760415661690880;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521733,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73760415661690880;
-------------[73760415661690880]end------------------
-------------[73866773497122816]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73866773497122816;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73866773497122816);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73866773497122816;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521734,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73866773497122816;
-------------[73866773497122816]end------------------
-------------[73887688742162432]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73887688742162432;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73887688742162432);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73887688742162432;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521735,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73887688742162432;
-------------[73887688742162432]end------------------
-------------[73897471327096832]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73897471327096832;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73897471327096832);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73897471327096832;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521736,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73897471327096832;
-------------[73897471327096832]end------------------
-------------[73907051817865216]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73907051817865216;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73907051817865216);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73907051817865216;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521737,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73907051817865216;
-------------[73907051817865216]end------------------
-------------[73929274343559168]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73929274343559168;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73929274343559168);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73929274343559168;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521738,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73929274343559168;
-------------[73929274343559168]end------------------
-------------[73940999671402496]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73940999671402496;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73940999671402496);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73940999671402496;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521739,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73940999671402496;
-------------[73940999671402496]end------------------
-------------[73941345663717376]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73941345663717376;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73941345663717376);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73941345663717376;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521740,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73941345663717376;
-------------[73941345663717376]end------------------
-------------[73946949031563264]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73946949031563264;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73946949031563264);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73946949031563264;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521741,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73946949031563264;
-------------[73946949031563264]end------------------
-------------[73956238513147904]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73956238513147904;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73956238513147904);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73956238513147904;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521742,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73956238513147904;
-------------[73956238513147904]end------------------
-------------[73957305162403840]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73957305162403840;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73957305162403840);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73957305162403840;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521743,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73957305162403840;
-------------[73957305162403840]end------------------
-------------[73957618355294208]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73957618355294208;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73957618355294208);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73957618355294208;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574184521744,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73957618355294208;
-------------[73957618355294208]end------------------
-------------[73962885239279616]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73962885239279616;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73962885239279616);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73962885239279616;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716032,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73962885239279616;
-------------[73962885239279616]end------------------
-------------[73978021463216128]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73978021463216128;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73978021463216128);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73978021463216128;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716033,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73978021463216128;
-------------[73978021463216128]end------------------
-------------[73979896900096000]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 73979896900096000;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =73979896900096000);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 73979896900096000;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716034,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 73979896900096000;
-------------[73979896900096000]end------------------
-------------[74004874685075456]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74004874685075456;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74004874685075456);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74004874685075456;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716035,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74004874685075456;
-------------[74004874685075456]end------------------
-------------[74009279543136256]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74009279543136256;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74009279543136256);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74009279543136256;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716036,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74009279543136256;
-------------[74009279543136256]end------------------
-------------[74015528670203904]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74015528670203904;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74015528670203904);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74015528670203904;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716037,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74015528670203904;
-------------[74015528670203904]end------------------
-------------[74016264590217216]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74016264590217216;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74016264590217216);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74016264590217216;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716038,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74016264590217216;
-------------[74016264590217216]end------------------
-------------[74017674140585984]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74017674140585984;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74017674140585984);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74017674140585984;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716039,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74017674140585984;
-------------[74017674140585984]end------------------
-------------[74040119446736896]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74040119446736896;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74040119446736896);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74040119446736896;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716040,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74040119446736896;
-------------[74040119446736896]end------------------
-------------[74105745716547584]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74105745716547584;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74105745716547584);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74105745716547584;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716041,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74105745716547584;
-------------[74105745716547584]end------------------
-------------[74113223627902976]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74113223627902976;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74113223627902976);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74113223627902976;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716042,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74113223627902976;
-------------[74113223627902976]end------------------
-------------[74115449578606592]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74115449578606592;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74115449578606592);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74115449578606592;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716043,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74115449578606592;
-------------[74115449578606592]end------------------
-------------[74117790977511424]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74117790977511424;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74117790977511424);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74117790977511424;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716044,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74117790977511424;
-------------[74117790977511424]end------------------
-------------[74122547410522112]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74122547410522112;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74122547410522112);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74122547410522112;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716045,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74122547410522112;
-------------[74122547410522112]end------------------
-------------[74154934337032192]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74154934337032192;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74154934337032192);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74154934337032192;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716046,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74154934337032192;
-------------[74154934337032192]end------------------
-------------[74173597903507456]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74173597903507456;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74173597903507456);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74173597903507456;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716047,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74173597903507456;
-------------[74173597903507456]end------------------
-------------[74207102788177920]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74207102788177920;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74207102788177920);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74207102788177920;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716048,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74207102788177920;
-------------[74207102788177920]end------------------
-------------[74220425248247808]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74220425248247808;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74220425248247808);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74220425248247808;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716049,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74220425248247808;
-------------[74220425248247808]end------------------
-------------[74232373838876672]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74232373838876672;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74232373838876672);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74232373838876672;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716050,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74232373838876672;
-------------[74232373838876672]end------------------
-------------[74238741824163840]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74238741824163840;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74238741824163840);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74238741824163840;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716051,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74238741824163840;
-------------[74238741824163840]end------------------
-------------[74241827523284992]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74241827523284992;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74241827523284992);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74241827523284992;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716052,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74241827523284992;
-------------[74241827523284992]end------------------
-------------[74252735054090240]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74252735054090240;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74252735054090240);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74252735054090240;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716053,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74252735054090240;
-------------[74252735054090240]end------------------
-------------[74253697256804352]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74253697256804352;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74253697256804352);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74253697256804352;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716054,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74253697256804352;
-------------[74253697256804352]end------------------
-------------[74259931808681984]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74259931808681984;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74259931808681984);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74259931808681984;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574188716055,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74259931808681984;
-------------[74259931808681984]end------------------
-------------[74270385050243072]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74270385050243072;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74270385050243072);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74270385050243072;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574192910336,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74270385050243072;
-------------[74270385050243072]end------------------
-------------[74275463077302272]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74275463077302272;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74275463077302272);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74275463077302272;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574192910337,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74275463077302272;
-------------[74275463077302272]end------------------
-------------[74282017100926976]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74282017100926976;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74282017100926976);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74282017100926976;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574192910338,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74282017100926976;
-------------[74282017100926976]end------------------
-------------[74301498166611968]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74301498166611968;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74301498166611968);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74301498166611968;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574192910339,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74301498166611968;
-------------[74301498166611968]end------------------
-------------[74323896010018816]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74323896010018816;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74323896010018816);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74323896010018816;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574192910340,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74323896010018816;
-------------[74323896010018816]end------------------
-------------[74327161611243520]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74327161611243520;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74327161611243520);
update  trd_project set projectStatus = -1002,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74327161611243520;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 74338574192910341,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74327161611243520;
-------------[74327161611243520]end------------------