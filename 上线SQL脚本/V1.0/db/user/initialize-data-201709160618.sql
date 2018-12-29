USE `sd_usercenter`;
DELETE FROM `sd_usercenter`.`tuc_messageTemplate`;
insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(1,'notify.project.full','放款成功','{0}，您在你我云贷的借款【ID：{1}】放款成功，到账金额：{2}元，到账银行：{3}银行（尾号{4}）,请注意查收。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(2,'notify.project.fial.bind.bank','放款失败','{0}，您在你我云贷的借款【id：{1}】放款失败，建议您换绑银行卡后重新发起借款。详询400-8888-123',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(3,'notify.project.fail.fake','反欺诈不通过','{0}，您在你我云贷提交的借款【id：{1}】因资质不符，审核未能通过。请于7日后重试。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(4,'notify.project.fail.flow','投资或系统主动流标','{0}，您在你我云贷的借款【id：{1}】因放款超时导致流标，建议您再次发起借款申请，系统将重新放款。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(5,'notify.project.repayment.before.day.withhold','还款前一天消息通知【开通代扣】','{0}，明天（{1}月{2}日）是您在你我云贷的借款【ID：{3}】还款日，应还：{4}元。请确保{5}尾号为{6}余额充足，平台将按约执行代扣还款。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(6,'notify.project.repayment.before.day','还款前一天消息通知','{0}，明天（{1}月{2}日）是您在你我云贷的借款【ID：{3}】还款日，应还：{4}元。请注意及时还款。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(7,'notify.project.repayment.today.withhold','还款当天消息通知【开通代扣】','{0}，今天（{1}月{2}日）是您在你我云贷的借款【ID：{3}】还款日，应还：{4}元。请确保{5}尾号为{6}余额充足，平台将按约执行代扣还款。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(8,'notify.project.repayment.today','还款当天消息通知','{0}，今天（{1}月{2}日）是您在你我云贷的借款【ID：{3}】还款日，应还：{4}元。请注意及时还款。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(9,'notify.project.repayment.success','还款成功','{0}，您在你我云贷的借款【ID：{1}】还款已结清，还款金额：{2}元，感谢使用你我云贷，祝您生活愉快~',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(10,'notify.project.overdue.withhold','逾期消息通知【开通代扣】','{0}，您在你我云贷的借款【ID：{1}】还款已超时{2}天，罚息：{3}元，累计应还：{4}元，为避免产生更多罚息，请确保{5}尾号为{6}余额充足或直接在平台还款。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(11,'notify.project.overdue','逾期消息通知','{0}，您在你我云贷的借款【ID：{1}】还款已超时{2}天，罚息：{3}元，累计应还：{4}元，请尽快还款以免产生更多罚息。',null,1,NOW(),1,NOW());

insert into tuc_messageTemplate(id,templateKey,templateTitle,templateContent,templateContentWithUrl,createManager,createTime,updateManager,updateTime)
values(12, 'sms.message.register.verification.code', '注册验证码', '您注册你我金融的手机验证码为：{0}', null, 1, NOW(), 1, NOW());
