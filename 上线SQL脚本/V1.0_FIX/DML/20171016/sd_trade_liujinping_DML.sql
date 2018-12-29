#--解决此标的无法同步你我金融状态
update sd_trade.trd_project set applyTime = '2017-10-10 00:00:00' 
where projectId in(68670456869167104,
68900064101158912,
68956621610426368,
69225228722524160,
69273107411521536,
69553555983323136,
69616130691452928,
69929344746672128);

#--过15分钟后执行
update sd_trade.trd_project set applyTime = '2017-09-28 23:37:23' where projectId = 68670456869167104;
update sd_trade.trd_project set applyTime = '2017-09-29 14:49:46' where projectId = 68900064101158912;
update sd_trade.trd_project set applyTime = '2017-09-29 18:34:30' where projectId = 68956621610426368;
update sd_trade.trd_project set applyTime = '2017-09-30 12:21:51' where projectId = 69225228722524160;
update sd_trade.trd_project set applyTime = '2017-09-30 15:32:06' where projectId = 69273107411521536;
update sd_trade.trd_project set applyTime = '2017-10-01 10:06:30' where projectId = 69553555983323136;
update sd_trade.trd_project set applyTime = '2017-10-01 14:15:09' where projectId = 69616130691452928;
update sd_trade.trd_project set applyTime = '2017-10-02 10:59:45' where projectId = 69929344746672128;