update sd_account.tac_withholdOrder t set t.status =4 WHERE t.orderNo = 79437364098777088;

INSERT INTO `sd_account`.`tac_fundsfloworder` (`fundsFlowOrderNo`, `orderNo`, `completeDate`, `orderType`, `userId`, `plateformId`, `projectId`, `amount`, `bankAccount`, `bankCode`, `bankMobile`, `realName`, `idCard`, `status`, `createTime`, `updateTime`) 
VALUES ('20171028183726790', '79437364098777088', '2017-10-28 16:41:14', '2', '71710404887207936', '1', '71714842741837824', '1180.00', '6212262011013979989', '01020000', '13554599333', '罗小云', '421087198605065336', '1', '2017-10-28 16:41:14', '2017-10-28 16:41:14');


UPDATE sd_trade.`trd_project` t SET t.`projectStatus` = 3001
WHERE t.`orgOrderNo` IN ('68857260150890497',
'68857297505374209',
'68864885215219712',
'68874951184109569',
'69189527574433792',
'69219727771176961',
'69237342317056000',
'69919333882548224',
'69959598529843200',
'69982240053923840',
'70264110213763072',
'70988886846738433',
'71097090998013952',
'71215145489010688',
'71466952412893184',
'71766495033561089',
'72186772171280384',
'72192460796743680',
'72193096749699072',
'72193193512275968',
'72193161773993984',
'72194346161557504',
'72440953830379521',
'72453495109718016',
'72566739736465408',
'72810885533405184',
'72853670307303424',
'73027276261838848',
'73200957839642624',
'73246260622004224',
'73251277705842689',
'73545694559866881',
'73626261204783105',
'73719375202373633',
'73898054486347776',
'73923173694853120',
'73955927245459456',
'73955933578858497',
'74013816093937665',
'74051562535653376',
'74381236373557248',
'74398852433596417',
'74715944210944001',
'74723492104245248',
'74746136979591168',
'75045607449825280',
'75048128218140672',
'75830786376355840',
'75845888945180673',
'76200720935686144',
'76502710551072768',
'76826836549505024',
'76827084923604992',
'76827319993372672',
'77219940410613760',
'77257684381863936',
'77680473433726976',
'77889316570796032',
'77889317841670144',
'77891859585699840',
'77894363249643520',
'77912004722974720',
'77984972685729792',
'78309608942211073',
'78312113159802880',
'78329754729582592',
'78347341811179520',
'78626595002126336',
'78629228362358784',
'78709748064608256',
'78755055964000256',
'78976486064787456',
'78986583172210688',
'79041848277995520',
'79046982877863936',
'79401821075955712');




UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 68857140969754624;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 68855837728198656;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 68864192119054336;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 68873904487157760;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 69187353729568768;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 69219244235034624;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 69236801528664064;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 69833551142473728;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 69959445265797120;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 69982196164726784;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 70264004202729472;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 70987667998789632;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 71096940682547200;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 71214687210967040;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 70446112074371072;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 71765461926154240;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 71723536456093696;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72192407529066496;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72192936481132544;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72193038046203904;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72187691982147584;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72194267145048064;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72440904849313792;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72453435303137280;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72565534423519232;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72810256920498176;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 72853631983947776;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73027141180084224;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73200499305762816;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73246130137206784;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73251219967070208;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73545652088344576;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73626217156202496;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73719112689274880;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73896369680568320;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73923120066465792;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73529510670127104;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 73955885210144768;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74013776663285760;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74051512925442048;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74381194615066624;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74398814219292672;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74715858810703872;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74723173941137408;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74745265076047872;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 74762483637702656;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 75047850706227200;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 75830736803876864;
UPDATE sd_trade.trd_project SET applyTime = NOW() WHERE projectId = 75845575131533312;


--过10分钟后执行：
update sd_trade.trd_project set applyTime = '2017-09-29 11:59:12' where projectId = 68857140969754624;
update sd_trade.trd_project set applyTime = '2017-09-29 11:54:01' where projectId = 68855837728198656;
update sd_trade.trd_project set applyTime = '2017-09-29 12:27:13' where projectId = 68864192119054336;
update sd_trade.trd_project set applyTime = '2017-09-29 13:05:49' where projectId = 68873904487157760;
update sd_trade.trd_project set applyTime = '2017-09-30 09:51:21' where projectId = 69187353729568768;
update sd_trade.trd_project set applyTime = '2017-09-30 11:58:04' where projectId = 69219244235034624;
update sd_trade.trd_project set applyTime = '2017-09-30 13:07:50' where projectId = 69236801528664064;
update sd_trade.trd_project set applyTime = '2017-10-02 04:39:07' where projectId = 69833551142473728;
update sd_trade.trd_project set applyTime = '2017-10-02 12:59:22' where projectId = 69959445265797120;
update sd_trade.trd_project set applyTime = '2017-10-02 14:29:46' where projectId = 69982196164726784;
update sd_trade.trd_project set applyTime = '2017-10-03 09:09:35' where projectId = 70264004202729472;
update sd_trade.trd_project set applyTime = '2017-10-05 09:05:09' where projectId = 70987667998789632;
update sd_trade.trd_project set applyTime = '2017-10-05 16:19:22' where projectId = 71096940682547200;
update sd_trade.trd_project set applyTime = '2017-10-06 00:07:15' where projectId = 71214687210967040;
update sd_trade.trd_project set applyTime = '2017-10-03 21:13:12' where projectId = 70446112074371072;
update sd_trade.trd_project set applyTime = '2017-10-07 12:35:50' where projectId = 71765461926154240;
update sd_trade.trd_project set applyTime = '2017-10-07 09:49:14' where projectId = 71723536456093696;
update sd_trade.trd_project set applyTime = '2017-10-08 16:52:22' where projectId = 72192407529066496;
update sd_trade.trd_project set applyTime = '2017-10-08 16:54:28' where projectId = 72192936481132544;
update sd_trade.trd_project set applyTime = '2017-10-08 16:54:52' where projectId = 72193038046203904;
update sd_trade.trd_project set applyTime = '2017-10-08 16:33:37' where projectId = 72187691982147584;
update sd_trade.trd_project set applyTime = '2017-10-08 16:59:45' where projectId = 72194267145048064;
update sd_trade.trd_project set applyTime = '2017-10-09 09:19:48' where projectId = 72440904849313792;
update sd_trade.trd_project set applyTime = '2017-10-09 10:09:36' where projectId = 72453435303137280;
update sd_trade.trd_project set applyTime = '2017-10-09 17:35:02' where projectId = 72565534423519232;
update sd_trade.trd_project set applyTime = '2017-10-10 09:47:28' where projectId = 72810256920498176;
update sd_trade.trd_project set applyTime = '2017-10-10 12:39:50' where projectId = 72853631983947776;
update sd_trade.trd_project set applyTime = '2017-10-11 00:09:18' where projectId = 73027141180084224;
update sd_trade.trd_project set applyTime = '2017-10-11 11:38:10' where projectId = 73200499305762816;
update sd_trade.trd_project set applyTime = '2017-10-11 14:39:29' where projectId = 73246130137206784;
update sd_trade.trd_project set applyTime = '2017-10-11 14:59:42' where projectId = 73251219967070208;
update sd_trade.trd_project set applyTime = '2017-10-12 10:29:40' where projectId = 73545652088344576;
update sd_trade.trd_project set applyTime = '2017-10-12 15:49:49' where projectId = 73626217156202496;
update sd_trade.trd_project set applyTime = '2017-10-12 21:58:57' where projectId = 73719112689274880;
update sd_trade.trd_project set applyTime = '2017-10-13 09:43:18' where projectId = 73896369680568320;
update sd_trade.trd_project set applyTime = '2017-10-13 11:29:36' where projectId = 73923120066465792;
update sd_trade.trd_project set applyTime = '2017-10-12 09:25:32' where projectId = 73529510670127104;
update sd_trade.trd_project set applyTime = '2017-10-13 13:39:48' where projectId = 73955885210144768;
update sd_trade.trd_project set applyTime = '2017-10-13 17:29:50' where projectId = 74013776663285760;
update sd_trade.trd_project set applyTime = '2017-10-13 19:59:47' where projectId = 74051512925442048;
update sd_trade.trd_project set applyTime = '2017-10-14 17:49:49' where projectId = 74381194615066624;
update sd_trade.trd_project set applyTime = '2017-10-14 18:59:50' where projectId = 74398814219292672;
update sd_trade.trd_project set applyTime = '2017-10-15 15:59:39' where projectId = 74715858810703872;
update sd_trade.trd_project set applyTime = '2017-10-15 16:28:43' where projectId = 74723173941137408;
update sd_trade.trd_project set applyTime = '2017-10-15 17:56:30' where projectId = 74745265076047872;
update sd_trade.trd_project set applyTime = '2017-10-15 19:04:56' where projectId = 74762483637702656;
update sd_trade.trd_project set applyTime = '2017-10-16 13:58:52' where projectId = 75047850706227200;
update sd_trade.trd_project set applyTime = '2017-10-18 17:49:47' where projectId = 75830736803876864;
update sd_trade.trd_project set applyTime = '2017-10-18 18:48:45' where projectId = 75845575131533312;