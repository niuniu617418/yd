-------------[74980732182728704]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74980732182728704;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74980732182728704);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74980732182728704;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871566217216,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74980732182728704;
-------------[74980732182728704]end------------------
-------------[74976217953996800]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74976217953996800;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74976217953996800);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74976217953996800;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871566217217,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74976217953996800;
-------------[74976217953996800]end------------------
-------------[74967460935127040]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74967460935127040;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74967460935127040);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74967460935127040;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871566217218,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74967460935127040;
-------------[74967460935127040]end------------------
-------------[74958667136372736]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74958667136372736;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74958667136372736);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74958667136372736;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871566217219,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74958667136372736;
-------------[74958667136372736]end------------------
-------------[74958066302324736]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74958066302324736;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74958066302324736);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74958066302324736;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871570411520,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74958066302324736;
-------------[74958066302324736]end------------------
-------------[74953738233581568]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74953738233581568;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74953738233581568);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74953738233581568;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871570411521,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74953738233581568;
-------------[74953738233581568]end------------------
-------------[74946077005991936]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74946077005991936;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74946077005991936);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74946077005991936;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871570411522,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74946077005991936;
-------------[74946077005991936]end------------------
-------------[74944010451439616]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74944010451439616;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74944010451439616);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74944010451439616;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871570411523,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74944010451439616;
-------------[74944010451439616]end------------------
-------------[74887792089370624]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74887792089370624;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74887792089370624);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74887792089370624;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871570411524,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74887792089370624;
-------------[74887792089370624]end------------------
-------------[74864372475777024]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74864372475777024;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74864372475777024);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74864372475777024;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871570411525,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74864372475777024;
-------------[74864372475777024]end------------------
-------------[74845049711497216]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74845049711497216;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74845049711497216);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74845049711497216;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871570411526,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74845049711497216;
-------------[74845049711497216]end------------------
-------------[74830618482970624]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74830618482970624;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74830618482970624);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74830618482970624;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871582994432,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74830618482970624;
-------------[74830618482970624]end------------------
-------------[74824240594948096]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74824240594948096;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74824240594948096);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74824240594948096;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871582994433,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74824240594948096;
-------------[74824240594948096]end------------------
-------------[74813681552084992]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74813681552084992;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74813681552084992);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74813681552084992;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871582994434,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74813681552084992;
-------------[74813681552084992]end------------------
-------------[74805246144024576]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74805246144024576;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74805246144024576);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74805246144024576;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871582994435,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74805246144024576;
-------------[74805246144024576]end------------------
-------------[74743597307531264]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74743597307531264;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74743597307531264);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74743597307531264;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188736,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74743597307531264;
-------------[74743597307531264]end------------------
-------------[74735068471382016]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74735068471382016;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74735068471382016);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74735068471382016;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188737,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74735068471382016;
-------------[74735068471382016]end------------------
-------------[74734807786983424]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74734807786983424;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74734807786983424);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74734807786983424;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188738,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74734807786983424;
-------------[74734807786983424]end------------------
-------------[74722037490257920]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74722037490257920;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74722037490257920);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74722037490257920;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188739,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74722037490257920;
-------------[74722037490257920]end------------------
-------------[74722022734696448]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74722022734696448;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74722022734696448);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74722022734696448;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188740,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74722022734696448;
-------------[74722022734696448]end------------------
-------------[74696815672315904]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74696815672315904;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74696815672315904);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74696815672315904;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188741,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74696815672315904;
-------------[74696815672315904]end------------------
-------------[74676511327653888]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74676511327653888;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74676511327653888);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74676511327653888;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188742,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74676511327653888;
-------------[74676511327653888]end------------------
-------------[74673369684922368]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74673369684922368;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74673369684922368);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74673369684922368;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188743,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74673369684922368;
-------------[74673369684922368]end------------------
-------------[74670929849880576]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74670929849880576;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74670929849880576);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74670929849880576;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188744,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74670929849880576;
-------------[74670929849880576]end------------------
-------------[74667676181483520]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74667676181483520;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74667676181483520);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74667676181483520;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188745,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74667676181483520;
-------------[74667676181483520]end------------------
-------------[74662322156605440]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74662322156605440;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74662322156605440);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74662322156605440;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188746,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74662322156605440;
-------------[74662322156605440]end------------------
-------------[74646812773863424]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74646812773863424;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74646812773863424);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74646812773863424;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188747,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74646812773863424;
-------------[74646812773863424]end------------------
-------------[74643178241675264]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74643178241675264;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74643178241675264);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74643178241675264;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188748,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74643178241675264;
-------------[74643178241675264]end------------------
-------------[74640871798099968]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74640871798099968;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74640871798099968);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74640871798099968;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188749,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74640871798099968;
-------------[74640871798099968]end------------------
-------------[74634717323857920]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74634717323857920;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74634717323857920);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74634717323857920;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188750,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74634717323857920;
-------------[74634717323857920]end------------------
-------------[74620128062345216]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74620128062345216;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74620128062345216);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74620128062345216;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871587188751,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74620128062345216;
-------------[74620128062345216]end------------------
-------------[74607134234382336]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74607134234382336;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74607134234382336);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74607134234382336;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871616548864,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74607134234382336;
-------------[74607134234382336]end------------------
-------------[74595298843824128]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74595298843824128;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74595298843824128);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74595298843824128;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871620743168,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74595298843824128;
-------------[74595298843824128]end------------------
-------------[74590629190963200]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74590629190963200;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74590629190963200);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74590629190963200;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871620743169,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74590629190963200;
-------------[74590629190963200]end------------------
-------------[74512352812224512]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74512352812224512;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74512352812224512);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74512352812224512;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871620743170,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74512352812224512;
-------------[74512352812224512]end------------------
-------------[74480648944898048]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74480648944898048;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74480648944898048);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74480648944898048;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871620743171,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74480648944898048;
-------------[74480648944898048]end------------------
-------------[74377913608196096]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74377913608196096;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74377913608196096);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74377913608196096;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326080,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74377913608196096;
-------------[74377913608196096]end------------------
-------------[74375286262616064]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74375286262616064;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74375286262616064);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74375286262616064;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326081,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74375286262616064;
-------------[74375286262616064]end------------------
-------------[74362264878059520]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74362264878059520;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74362264878059520);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74362264878059520;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326082,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74362264878059520;
-------------[74362264878059520]end------------------
-------------[74359877798989824]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74359877798989824;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74359877798989824);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74359877798989824;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326083,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74359877798989824;
-------------[74359877798989824]end------------------
-------------[74341449642020864]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74341449642020864;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74341449642020864);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74341449642020864;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326084,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74341449642020864;
-------------[74341449642020864]end------------------
-------------[74332069295034368]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74332069295034368;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74332069295034368);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74332069295034368;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326085,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74332069295034368;
-------------[74332069295034368]end------------------
-------------[75155077584670720]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75155077584670720;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75155077584670720);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75155077584670720;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326086,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75155077584670720;
-------------[75155077584670720]end------------------
-------------[75136874707947520]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75136874707947520;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75136874707947520);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75136874707947520;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326087,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75136874707947520;
-------------[75136874707947520]end------------------
-------------[75337145039982592]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75337145039982592;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75337145039982592);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75337145039982592;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871633326088,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75337145039982592;
-------------[75337145039982592]end------------------
-------------[75314736622735360]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75314736622735360;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75314736622735360);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75314736622735360;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520384,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75314736622735360;
-------------[75314736622735360]end------------------
-------------[75287440213954560]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75287440213954560;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75287440213954560);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75287440213954560;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520385,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75287440213954560;
-------------[75287440213954560]end------------------
-------------[75235427937685504]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75235427937685504;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75235427937685504);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75235427937685504;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520386,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75235427937685504;
-------------[75235427937685504]end------------------
-------------[75211140921053184]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75211140921053184;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75211140921053184);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75211140921053184;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520387,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75211140921053184;
-------------[75211140921053184]end------------------
-------------[75175993546919936]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75175993546919936;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75175993546919936);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75175993546919936;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520388,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75175993546919936;
-------------[75175993546919936]end------------------
-------------[75165295945191424]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75165295945191424;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75165295945191424);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75165295945191424;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520389,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75165295945191424;
-------------[75165295945191424]end------------------
-------------[75108655657127936]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75108655657127936;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75108655657127936);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75108655657127936;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520390,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75108655657127936;
-------------[75108655657127936]end------------------
-------------[75080110499188736]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75080110499188736;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75080110499188736);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75080110499188736;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520391,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75080110499188736;
-------------[75080110499188736]end------------------
-------------[75073669809852416]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75073669809852416;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75073669809852416);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75073669809852416;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520392,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75073669809852416;
-------------[75073669809852416]end------------------
-------------[75066282008924160]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75066282008924160;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75066282008924160);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75066282008924160;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520393,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75066282008924160;
-------------[75066282008924160]end------------------
-------------[75064541725069312]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75064541725069312;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75064541725069312);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75064541725069312;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520394,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75064541725069312;
-------------[75064541725069312]end------------------
-------------[75058401398231040]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75058401398231040;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75058401398231040);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75058401398231040;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520395,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75058401398231040;
-------------[75058401398231040]end------------------
-------------[75051088444657664]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75051088444657664;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75051088444657664);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75051088444657664;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520396,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75051088444657664;
-------------[75051088444657664]end------------------
-------------[75043136585355264]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75043136585355264;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75043136585355264);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75043136585355264;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520397,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75043136585355264;
-------------[75043136585355264]end------------------
-------------[75034408507150336]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75034408507150336;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75034408507150336);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75034408507150336;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520398,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75034408507150336;
-------------[75034408507150336]end------------------
-------------[75023307950280704]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75023307950280704;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75023307950280704);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75023307950280704;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520399,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75023307950280704;
-------------[75023307950280704]end------------------
-------------[75018481598222336]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75018481598222336;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75018481598222336);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75018481598222336;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520400,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75018481598222336;
-------------[75018481598222336]end------------------
-------------[75015082861400064]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75015082861400064;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75015082861400064);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75015082861400064;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520401,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75015082861400064;
-------------[75015082861400064]end------------------
-------------[75012298753708032]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 75012298753708032;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =75012298753708032);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 75012298753708032;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520402,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 75012298753708032;
-------------[75012298753708032]end------------------
-------------[74997454503694336]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74997454503694336;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74997454503694336);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74997454503694336;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520403,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74997454503694336;
-------------[74997454503694336]end------------------
-------------[74994645741867008]begin------------------
update trd_worktaskprocess set taskStatus = 3, updateTime = current_timestamp where projectId = 74994645741867008;
update trd_worktaskuserinfo set taskNum = taskNum - 1,updateTime = current_timestamp where userId = (select approvalUserId from trd_worktaskprocess  where projectId =74994645741867008);
update  trd_project set projectStatus = -1010,manualAuditTime = current_timestamp,updateTime = current_timestamp where projectId = 74994645741867008;
 insert into trd_projectaudit (`id`, `projectId`, `borrowerUserId`, `approvalUser`, `approvalUserName`, `approvalTime`, `approvalStatus`, `approvalReason`, `message`, `createTime`, `updateTime`, `approvalMemo`)
        select 76129871637520404,projectId,userId,approvalUserId,approvalUserName,current_timestamp,0,64086178504134656,'异常标人工处理',current_timestamp,current_timestamp,'异常标人工处理' from trd_worktaskprocess
        where projectId = 74994645741867008;
-------------[74994645741867008]end------------------
