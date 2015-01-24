create sequence se_sys_user
start with 1001
increment by 1
maxvalue 9999;  
create sequence ptu_user
start with 1001
increment by 1
maxvalue 9999; 
create sequence btu_user
start with 1001
increment by 1
maxvalue 9999; 
create sequence poll_task_num
start with 1001
increment by 1
maxvalue 9999;  
create sequence behe_task_num
start with 1001
increment by 1
maxvalue 9999; 
create sequence se_sys_role
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_sys_limit
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_sys_user_role
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_sys_role_limit
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_sys_log
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_poll_task
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_behe_task
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_status_comm
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_circuit
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_tower
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_bug
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_bug_type
start with 1001
increment by 1
maxvalue 9999;  
create sequence se_bug_leave
start with 1001
increment by 1
maxvalue 9999;  
--创建序列
insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'user_status_id','该用户可以使用',1,'正常');
insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'user_status_id','该用户被冻结',1,'冻结');
 --用户
 insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'role_status_id','该角色启用状态',1,'启用');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'role_status_id','该角色未启用状态',1,'未启用');
 --角色
 insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'limit_status_id','该权限启用状态',1,'启用');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'limit_status_id','该权限未启用状态',1,'未启用');
 --权限
   insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'task_status_id','该任务未分配',1,'待分配');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'task_status_id','该任务已分配未执行',1,'已分配');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'task_status_id','该任务执行中',1,'执行中');
   insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'task_status_id','该任务已完成',1,'已完成');
 --任务状态
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'run_status_id','该线路正常使用中',1,'正常');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'run_status_id','该线路正在检修中',1,'检修中');
   insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'run_status_id','该线路故障待维修',1,'待维修');
 --线路运行状态
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'use_status_id','该线路启用',1,'启用');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'use_status_id','该线路未启用',1,'未启用');
 --线路使用状态
   insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'tower_status_id','该杆塔启用',1,'启用');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'tower_status_id','该杆塔未启用',1,'未启用');
 --杆塔启用状态
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'bug_type_status_id','该缺陷类型启用',1,'启用');
  insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'bug_type_status_id','该缺陷类型未启用',1,'未启用');
 --缺陷类型状态
insert into status_comm(status_id,config_type,config_desc,usetype,config_name) 
 values(se_status_comm.nextval,'task_status_id','该任务待审核',1,'待审核');
/*select * from status_comm;*/
--添加状态

insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'guo','guo','123456',24,'15537165231',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'xianlu','xianlu','123456',18,'18839783653',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'xunjian','xunjian','123456',22,'15939240034',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'xiaoque','xiaoque','123456',26,'13939212040',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
 insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'zhang','zhang','123456',26,'13939212040',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'li','li','123456',26,'13939212040',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'wang','wang','123456',26,'13939212040',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'zhao','zhao','123456',26,'13939212040',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
insert into sys_user(user_id,account,user_name,password,age,phone,enertdate,regdate,user_status_id) 
values('user'||se_sys_user.nextval,'tian','tian','123456',26,'13939212040',to_date('2013-12-16','yyyy-MM-dd'),to_date('2013-12-17','yyyy-MM-dd'),1001);
/*select * from sys_user;*/
--添加user
insert into sys_role(role_id,role_name,create_user_id,role_status_id)
values('role'||se_sys_role.nextval,'系统管理员','user1001',1003);
insert into sys_role(role_id,role_name,create_user_id,role_status_id)
values('role'||se_sys_role.nextval,'线路管理员','user1001',1003);
insert into sys_role(role_id,role_name,create_user_id,role_status_id)
values('role'||se_sys_role.nextval,'巡检员','user1001',1003);
insert into sys_role(role_id,role_name,create_user_id,role_status_id)
values('role'||se_sys_role.nextval,'消缺员','user1001',1003);
/* select * from status_comm;
--添加角色
SELECT * FROM sys_limit;
select se_sys_limit.nextval from dual;*/
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(1,'我的工作平台',1,1005,'myWorkTerrace/waitList.jsp','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(11,'代办列表',2,1005,'myWorkTerrace/waitList.jsp','1',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(12,'个人资料修改',2,1005,'myWorkTerrace/alterInfo.jsp','1',1);
--我的工作平台
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(2,'系统管理',1,1005,'null','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(21,'角色管理',2,1005,'sysMgr/roleMgr.jsp','2',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(22,'用户管理',2,1005,'sysMgr/userMgr.jsp','2',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(23,'角色权限配置',2,1005,'sysMgr/roleJuriConfig.jsp','2',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(24,'系统配置',2,1005,'sysMgr/sysConfig.jsp','2',1);
--系统管理
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(3,'杆塔管理',1,1005,'null','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(31,'杆塔管理',2,1005,'towerMgr/towerMgr.jsp','3',1);
--杆塔管理
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(4,'线路管理',1,1005,'null','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(41,'线路管理',2,1005,'circuitMgr/circuitMgr.jsp','4',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(42,'增加线路',2,1005,'circuitMgr/addCircuit.jsp','4',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(43,'修改线路',2,1005,'circuitMgr/addCircuit.jsp','4',1);
--线路管理
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(5,'缺陷管理',1,1005,'null','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(51,'缺陷类型设置',2,1005,'bugMgr/bugTypeSetMyJsp.jsp','5',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(52,'缺陷等级确认',2,1005,'bugMgr/bugLevelAffirm.jsp','5',0);
--缺陷管理
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(6,'巡检任务管理',1,1005,'null','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(61,'巡检任务制定与分配',2,1005,'patrolTaskMgr/enactAllot.jsp','6',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(611,'制定巡检任务',3,1005,'patrolTaskMgr/addPatrolTask.jsp','61',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(612,'查看巡检任务',3,1005,'patrolTaskMgr/checkPatrolTask.jsp','61',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(613,'修改巡检任务',3,1005,'patrolTaskMgr/alterPatrolTask.jsp','61',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(62,'巡检任务执行与回执',2,1005,'patrolTaskMgr/executeReceipt.jsp','6',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(621,'查看巡检任务',3,1005,'patrolTaskMgr/checkPatrolTask.jsp','62',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(622,'回执录入',3,1005,'patrolTaskMgr/receiptEntering.jsp','62',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(623,'修改回执录入',3,1005,'patrolTaskMgr/receiptEntering.jsp','62',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(63,'缺陷查询',2,1005,'patrolTaskMgr/bugQuery.jsp','6',1);

--巡检任务管理
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(7,'消缺任务管理',1,1005,'null','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(71,'消缺任制定与分配',2,1005,'deElimTaskMgr/enactAllot.jsp','7',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(711,'查看消缺任务',3,1005,'deElimTaskMgr/checkdeElimTask.jsp','71',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(712,'审查消缺任务',3,1005,'deElimTaskMgr/examineDeElimTask.jsp','71',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(713,'修改消缺任务',3,1005,'deElimTaskMgr/alterdeElimTask.jsp','71',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(714,'制定消缺任务',3,1005,'deElimTaskMgr/','71',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(72,'消缺任务执行与回执',2,1005,'deElimTaskMgr/executeReceipt.jsp','7',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(721,'查看消缺任务',3,1005,'deElimTaskMgr/alterReceiptEn.jsp','72',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(722,'回执录入',3,1005,'deElimTaskMgr/','72',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(723,'修改回执录入',3,1005,'deElimTaskMgr/','72',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(724,'驳回后修改回执录入',3,1005,'deElimTaskMgr/','72',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(73,'消缺查询',2,1005,'deElimTaskMgr/','7',1);
--消缺任务管理
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(8,'信息统计',1,1005,'null','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(81,'巡检记录统计',2,1005,'countInfo/patrolRecord.jsp','8',1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values(82,'消缺记录统计',2,1005,'countInfo/deElimRecord.jsp','8',1);
--信息统计
select * from sys_limit;
--信息统计
select * from sys_limit;
/*insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'系统管理',1,1005,'roleMgr.jsp','0',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'角色管理',2,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-1),1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'用户管理',2,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-2),1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'角色配置管理',2,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-3),1);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'系统配置',2,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-4),1);*/
--系统设置
/*insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'杆塔管理',1,1005,'roleMgr.jsp',0);*/
       --杆塔

/*insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'线路管理',1,1005,'roleMgr.jsp',0);*/
       --线路

/*insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'缺陷管理',1,1005,'roleMgr.jsp',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'缺陷类型设置',2,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-1));
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'缺陷等级确认',2,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-2));*/
       --缺陷管理
/*insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'巡检任务管理',1,1005,'roleMgr.jsp',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'巡检任务制定与分配',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-1));
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'巡检任务执行与回执',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-2));
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'缺陷查询',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-3));*/
       --巡检任务
/*insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'消缺任务管理',1,1005,'roleMgr.jsp',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'消缺任务制定与分配',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-1));
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'消缺任务执行与回执',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-2));
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'消缺查询',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-3));*/
       --消缺任务
/*insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'信息统计',1,1005,'roleMgr.jsp',0);
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'巡检记录统计',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-1));
insert into sys_limit(limit_id,limit_name,leave,limit_status_id,url,parent_id,isleaf) 
values('limit'||se_sys_limit.nextval,'消缺记录统计',1,1005,'roleMgr.jsp','limit'||(se_sys_limit.nextval-2));*/
       --信息统计
      
--添加权限
select * from sys_user_role;
insert into sys_user_role(id,user_id,role_id)
values(se_sys_user_role.nextval,'user1001','role1001');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1002','role1002');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1003','role1003');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1004','role1004');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1005','role1004');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1006','role1004');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1007','role1003');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1008','role1003');
insert into SYS_USER_ROLE values(se_sys_user_role.nextval,'user1009','role1003');
--添加用户角色表
select * from sys_limit;
--系统管理员权限
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',1);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',11);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',12);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',2);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',21);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',22);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',23);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',24);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',3);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',31);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',4);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',41);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',42);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',43);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',5);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',51);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',52);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',6);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',61);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',611);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',612);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',613);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',62);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',621);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',622);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',623);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',7);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',71);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',711);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',712);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',713);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',714);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',72);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',721);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',722);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',723);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',724);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',73);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',8);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',81);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1001',82);
--线路管理员权限
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',1);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',11);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',12);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',3);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',31);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',4);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',41);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',42);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',43);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',5);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',51);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',52);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',6);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',61);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',611);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',612);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',613);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',7);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',71);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',711);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',712);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',713);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',714);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',73);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',8);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',81);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1002',82);
--巡检员权限
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',1);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',11);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',12);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',6);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',62);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',621);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',622);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1003',623);
--消缺员权限
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',1);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',11);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',12);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',7);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',72);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',721);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',722);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',723);
insert into sys_role_limit(id,role_id,limit_id)
values(se_sys_role_limit.nextval,'role1004',724);
--添加角色权限表
insert into sys_log values(se_sys_log.nextval,'user1002','登录系统',to_date('2013-12-16 15:44:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1002','退出系统',to_date('2013-12-16 15:22:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1002','修改个人信息',to_date('2013-12-16 15:11:32','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1003','登录系统',to_date('2013-12-16 15:44:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1003','退出系统',to_date('2013-12-16 15:22:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1003','登录系统',to_date('2013-12-17 15:44:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1004','退出系统',to_date('2013-12-17 15:22:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1004','登录系统',to_date('2013-12-16 15:44:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1004','退出系统',to_date('2013-12-16 15:22:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1004','登录系统',to_date('2013-12-17 15:44:30','yyyy-mm-dd hh24:mi:ss'));
insert into sys_log values(se_sys_log.nextval,'user1004','退出系统',to_date('2013-12-17 15:22:30','yyyy-mm-dd hh24:mi:ss'));
--添加日志表
insert into 
circuit(circuit_id,circuit_name,circuit_length,hui_length,start_tower_id,end_tower_id,fund_num,des,isstoppage,run_status_id,use_status_id)
values('cir'||se_circuit.nextval,'文化路',8000,6000,'XW1001','XW1010',99,'文化路是最早的线路'，0，'1011','1014');
insert into 
circuit(circuit_id,circuit_name,circuit_length,hui_length,start_tower_id,end_tower_id,fund_num,des,isstoppage,run_status_id,use_status_id)
values('cir'||se_circuit.nextval,'国基路',8000,6000,'XW1003','XW1010',99,'国基路修的很好'，0，'1011','1014');
insert into 
circuit(circuit_id,circuit_name,circuit_length,hui_length,start_tower_id,end_tower_id,fund_num,des,isstoppage,run_status_id,use_status_id)
values('cir'||se_circuit.nextval,'东风路',8000,6000,'XW1005','XW1010',99,'东风路是豆腐渣工程'，0，'1011','1014');
/*select * from circuit;*/
--添加线路表
insert into tower values('XW'||se_tower.nextval,'cir1001',1016,99);
insert into tower values('XW'||se_tower.nextval,'cir1001',1016,98);
insert into tower values('XW'||se_tower.nextval,'cir1001',1016,97);
insert into tower values('XW'||se_tower.nextval,'cir1001',1017,98);
insert into tower values('XW'||se_tower.nextval,'cir1001',1016,97);
insert into tower values('XW'||se_tower.nextval,'cir1001',1016,99);
insert into tower values('XW'||se_tower.nextval,'cir1002',1016,98);
insert into tower values('XW'||se_tower.nextval,'cir1002',1016,97);
insert into tower values('XW'||se_tower.nextval,'cir1002',1017,98);
insert into tower values('XW'||se_tower.nextval,'cir1003',1016,97);
insert into tower values('XW'||se_tower.nextval,'cir1003',1016,98);
insert into tower values('XW'||se_tower.nextval,'cir1003',1016,97);
insert into tower values('XW'||se_tower.nextval,'cir1003',1016,97);
--添加杆塔表
insert into bug_type(bug_type_id,bug_type_name,bug_type_status_id)
values(se_bug_type.nextval,'叉梁断裂',1018);
insert into bug_type(bug_type_id,bug_type_name,bug_type_status_id)
values(se_bug_type.nextval,'拦河线断裂',1018);
insert into bug_type(bug_type_id,bug_type_name,bug_type_status_id)
values(se_bug_type.nextval,'绝缘子爆破',1018);
insert into bug_type(bug_type_id,bug_type_name,bug_type_status_id)
values(se_bug_type.nextval,'杆塔倾斜',1018);
insert into bug_type(bug_type_id,bug_type_name,bug_type_status_id)
values(se_bug_type.nextval,'绝缘子爆破',1018);
insert into bug_type(bug_type_id,bug_type_name,bug_type_status_id)
values(se_bug_type.nextval,'吊杆变形',1018);
insert into bug_type(bug_type_id,bug_type_name,bug_type_status_id)
values(se_bug_type.nextval,'其它',1018);
--添加缺陷类型
insert into bug_leave (bug_leave_id,bug_leave_name)
values(se_bug_leave.nextval,'一般');
insert into bug_leave (bug_leave_id,bug_leave_name)
values(se_bug_leave.nextval,'紧急');
insert into bug_leave (bug_leave_id,bug_leave_name)
values(se_bug_leave.nextval,'严重');
--添加缺陷等级
select poll_task_num.nextval from dual;
select poll_task_num.nextval from dual;
select poll_task_num.nextval from dual;
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1001','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1008',0,NULL,NULL);
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1001','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1008',0,NULL,NULL);
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1001','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1008',0,NULL,NULL);
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1001','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1009',1,NULL,NULL);
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1001','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1009',1,NULL,NULL);
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1001','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1010',0,to_date('2013-12-18','yyyy-MM-dd'),'描述');
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1002','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1010',0,to_date('2013-12-18','yyyy-MM-dd'),'描述');
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1001','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1010',0,to_date('2013-12-18','yyyy-MM-dd'),'描述');
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1003','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1010',0,to_date('2013-12-18','yyyy-MM-dd'),'描述');
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1002','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1010',0,to_date('2013-12-18','yyyy-MM-dd'),'描述');
insert into POLL_TASK values('RW'||se_poll_task.nextval,'西渭一线任务巡检','cir1002','user1002',to_date('2013-12-16','yyyy-MM-dd'),'1010',0,to_date('2013-12-18','yyyy-MM-dd'),'描述');
--添加巡检任务
insert into bug values(se_bug.nextval,'user1003',to_date('2013-12-16','yyyy-MM-dd'),'XW1001',1001,'轻微损坏倾斜',1004,'RW1001',NULL);
insert into bug values(se_bug.nextval,'user1003',to_date('2013-12-16','yyyy-MM-dd'),'XW1004',1001,'轻微损坏倾斜',1003,'RW1002',NULL);
insert into bug values(se_bug.nextval,'user1003',to_date('2013-12-16','yyyy-MM-dd'),'XW1005',1001,'轻微损坏倾斜',1003,'RW1003',NULL);
insert into bug values(se_bug.nextval,'user1003',to_date('2013-12-16','yyyy-MM-dd'),'XW1002',1001,'轻微损坏倾斜',1003,'RW1004',NULL);
insert into bug values(se_bug.nextval,'user1003',to_date('2013-12-16','yyyy-MM-dd'),'XW1010',1002,'损坏倾斜',1002,'RW1005',NULL);
--添加未消缺的缺陷
select behe_task_num.nextval from dual;
select behe_task_num.nextval from dual;
insert into BEHE_TASK values('RW'||se_behe_task.nextval,'西渭一线任务巡检','user1002',to_date('2013-12-16','yyyy-MM-dd'),'完成西临3号线路消缺任务。',NULL,NULL,NULL,0,NULL,'1008',0,NULL,'1001');
insert into BEHE_TASK values('RW'||se_behe_task.nextval,'西渭一线任务巡检','user1002',to_date('2013-12-16','yyyy-MM-dd'),'完成西临3号线路消缺任务。','正在执行','正在执行',NULL,0,NULL,'1009',0,NULL,'1001');
insert into BEHE_TASK values('RW'||se_behe_task.nextval,'西渭一线任务巡检','user1002',to_date('2013-12-16','yyyy-MM-dd'),'完成西临3号线路消缺任务。','快',NULL,NULL,0,NULL,'1008',0,NULL,'1001');
insert into BEHE_TASK values('RW'||se_behe_task.nextval,'西渭一线任务巡检','user1002',to_date('2013-12-16','yyyy-MM-dd'),'完成西临3号线路消缺任务。','任务取消','任务取消',NULL,0,NULL,'1007',0,NULL,'1001');
insert into BEHE_TASK values('RW'||se_behe_task.nextval,'西渭一线任务巡检','user1002',to_date('2013-12-16','yyyy-MM-dd'),'完成西临3号线路消缺任务。',NULL,NULL,NULL,0,NULL,'1007',0,NULL,'1001');
insert into BEHE_TASK values('RW'||se_behe_task.nextval,'西渭一线任务巡检','user1002',to_date('2013-12-16','yyyy-MM-dd'),'完成西临3号线路消缺任务。','好','赶紧','完成',1,'完成任务','1010',0,to_date('2013-12-16','yyyy-MM-dd'),'1001');
--添加消缺任务
insert into bug values(se_bug.nextval,'user1003',to_date('2013-12-16','yyyy-MM-dd'),'XW1010',1001,'轻微损坏倾斜',1004,'RW1006','RW1001');
insert into bug values(se_bug.nextval,'user1007',to_date('2013-12-16','yyyy-MM-dd'),'XW1004',1001,'轻微损坏倾斜',1003,'RW1007','RW1002');
insert into bug values(se_bug.nextval,'user1009',to_date('2013-12-16','yyyy-MM-dd'),'XW1008',1001,'轻微损坏倾斜',1003,'RW1008','RW1003');
insert into bug values(se_bug.nextval,'user1007',to_date('2013-12-16','yyyy-MM-dd'),'XW1002',1001,'轻微损坏倾斜',1003,'RW1009','RW1004');
insert into bug values(se_bug.nextval,'user1003',to_date('2013-12-16','yyyy-MM-dd'),'XW1010',1002,'损坏倾斜',1002,'RW1010','RW1005');
insert into bug values(se_bug.nextval,'user1008',to_date('2013-12-16','yyyy-MM-dd'),'XW1009',1002,'损坏倾斜',1002,'RW1011','RW1006');

--添加缺陷表
insert into poll_task_user values(ptu_user.nextval,'RW1001','user1003');
insert into poll_task_user values(ptu_user.nextval,'RW1001','user1009');
insert into poll_task_user values(ptu_user.nextval,'RW1001','user1008');
insert into poll_task_user values(ptu_user.nextval,'RW1002','user1003');
insert into poll_task_user values(ptu_user.nextval,'RW1002','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1002','user1008');
insert into poll_task_user values(ptu_user.nextval,'RW1003','user1009');
insert into poll_task_user values(ptu_user.nextval,'RW1003','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1003','user1008');
insert into poll_task_user values(ptu_user.nextval,'RW1004','user1003');
insert into poll_task_user values(ptu_user.nextval,'RW1004','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1004','user1008');
insert into poll_task_user values(ptu_user.nextval,'RW1005','user1003');
insert into poll_task_user values(ptu_user.nextval,'RW1005','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1006','user1008');
insert into poll_task_user values(ptu_user.nextval,'RW1006','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1007','user1008');
insert into poll_task_user values(ptu_user.nextval,'RW1007','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1008','user1008');
insert into poll_task_user values(ptu_user.nextval,'RW1008','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1009','user1003');
insert into poll_task_user values(ptu_user.nextval,'RW1010','user1007');
insert into poll_task_user values(ptu_user.nextval,'RW1010','user1009');
insert into poll_task_user values(ptu_user.nextval,'RW1011','user1007');
--添加 巡检任务中间表
insert into behe_task_user values(btu_user.nextval,'RW1001','user1004');
insert into behe_task_user values(btu_user.nextval,'RW1001','user1005');
insert into behe_task_user values(btu_user.nextval,'RW1001','user1006');
insert into behe_task_user values(btu_user.nextval,'RW1002','user1004');
insert into behe_task_user values(btu_user.nextval,'RW1002','user1005');
insert into behe_task_user values(btu_user.nextval,'RW1003','user1006');
insert into behe_task_user values(btu_user.nextval,'RW1003','user1005');
insert into behe_task_user values(btu_user.nextval,'RW1004','user1006');
insert into behe_task_user values(btu_user.nextval,'RW1004','user1004');
insert into behe_task_user values(btu_user.nextval,'RW1005','user1005');
insert into behe_task_user values(btu_user.nextval,'RW1005','user1004');
insert into behe_task_user values(btu_user.nextval,'RW1006','user1006');
insert into behe_task_user values(btu_user.nextval,'RW1006','user1005');
--添加消缺任务中间表
commit;

/*select * from sys_user;
select * from sys_role;
select * from sys_limit;
select * from sys_user_role;
select * from sys_role_limit;
select * from sys_log;
select * from poll_task;
select * from behe_task;
select * from status_comm;
select * from circuit;
select * from tower;
select * from bug;
select * from bug_type;
select * from bug_leave;*/
 
