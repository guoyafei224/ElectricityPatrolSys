--创建用户表
create table sys_user
(
       user_id varchar2(10) primary key,       ----主键id		主键   
       account varchar2(20) not null,          ----用户账号
       user_name varchar2(20) not null,        ----用户名
       password varchar2(20) not null,         ----用户密码       
       age number(2) not null,                 ----年龄
       phone char(11) not null,                ----联系方式
       enertDate date not null,                ----入职日期
       leaveDate date ,                        ----离职日期    
       regDate date not null,                  ----注册日期 
       user_status_id number(4) not null,      ----用户状态		外键
       log_id number(4),					   ----日志id		外键
       isoccupy number(1),                      ----是否被占用 
	   email varchar2(20) ,
	   --邮箱
       sex number(1),
       --性别
	   lastlogindate Date
);

--创建角色表
create table sys_role
(
       role_id varchar2(10) primary key,   	   ----角色id        主键         
       role_name varchar2(20) not null,        ----角色名称
       create_user_id varchar2(10) not null,   ----角色创建人              外键
       modifidate date,                       ----角色信息最后修改时间
       role_status_id number(4) not null       ----角色状态id     外键
);

--创建权限表
create table sys_limit
(
       limit_id varchar2(10) primary key,      ----权限表id       主键      
       limit_name varchar2(20) not null,       ----权限名
       leave number(4) not null,               ----权限等级/级别
       limit_status_id number(4) not null,     ----权限状态                   外键
       url varchar2(50) not null,              ----权限所对的url
       parent_id varchar2(10),				   ----权限父节点编号
       isleaf number(1) not null               ----是否是最低子节点    
);


--创建用户角色表
----用户角色表                主键
----用户id         外键
--角色id         外键
create table sys_user_role
(
       id number(4) primary key, 
       user_id varchar2(10) not null,
       role_id varchar2(10) not null
);


--创建角色权限表
----权限id			主键
----角色id			外键
----权限id			外键 
create table sys_role_limit
(
	id number(4) primary key, 
	role_id varchar2(10) not null,
	limit_id varchar2(10) not null
);


--创建日志表
create table sys_log
(
       log_id number(4) primary key,			----日志表id			主键                               
       user_id varchar2(10) not null,           ----用户id			外键
       operate_type varchar2(20) not null,      ----操作类型                 
       operate_date date not null----操作时间
);
 
--创建巡检任务表
----任务表主键id		主键
----任务名
----线路id           外键
----下达命令的人                 外键
----下达命令的日期
----执行人                     	外键
----任务执行状态id     外键
----是否取消
----完成时间
----描述
create table poll_task
(
	task_id varchar2(10) primary key,
	task_name varchar2(20) not null,
	circuit_id varchar2(10) not null,
	from_user_id varchar2(10) not null,
	from_date date not null, 
	task_status_id number(4) not null,
	istrue number(1) not null, 
	ok_time date, 
	des varchar2(200)
); 


--消缺任务表
create table behe_task
(
       task_id varchar2(10) primary key,        ----任务表主键id    	主键
       task_name varchar2(20) not null,         ----任务名
      -- tower_id varchar2(10),                   ----杆塔id			外键
       from_user_id varchar2(10) not null,      ----下达命令的人              	外键
       from_date date not null,                 ----下达命令的日期
       des varchar2(200) ,                      ----任务描述
       --find_user_id varchar2(10) not null,      ----发现人                       	外键
       --poll_task_id varchar2(10) not null,      ----巡检任务编号        外键
       exam_idea varchar2(200) ,                ----审查意见
       from_user_idea varchar2(200),            ----下发人意见
       ok_des varchar2(200),                    ----完成情况描述
       exam_status number(1),----审查是否通过      0，不通过 1通过
       report_matter varchar2(200),----报告事项
       task_status_id number(4) not null,----缺陷任务执行状态id  外键
       istrue number(1),----是否取消                   
       ok_time date,----完成时间
       bug_id varchar2(10)----缺陷id			外键
);
	
--创建公共状态表
	create table status_comm
	(
	       status_id number(4) primary key,      ----状态id    		主键              
	       config_type varchar2(20) not null,    ----配置类型，显示连接表的名称    
	       config_desc varchar2(30) ,            ----配置描述
	       useType number(1),                    ----该状态是否启用        
	       config_name varchar2(30) not null     ----配置名称   配置的状态内容  
	);

--创建线路表
create table circuit							
(
       circuit_id varchar2(10) primary key,     ----线路id		主键
       circuit_name varchar2(20) not null,  	----线路名称
       circuit_length number(4) not null,		----线路长度
       hui_length number(4) not null,     		----回路长度
       start_tower_id varchar2(10),     		----杆塔起始编号	外键
       end_tower_id varchar2(10),       		----杆塔结束编号	外键
       fund_num number(4),      				----该线路总塔基数
       des varchar(200),						----描述
       isStoppage number(1),       				----有无故障		0没有   1有
       run_status_id number(4) not null,        ----运行状态		外键
       use_status_id number(4) not null         ----使用状态		外键
);

--创建杆塔表
create table tower								
(		
       tower_id varchar2(10) primary key,		----杆塔id      主键
       circuit_id varchar2(10) not null,		----线路id      外键 
       tower_status_id number(10) not null,		----状态id      外键
       good_proc number(3) not null--完好率
);

--创建缺陷表
----缺陷id       主键
----发现人id		外键
----发现时间        
----杆塔id       外键
----缺陷等级id    外键
----描述
----缺陷类型id    外键
----巡检任务编号
----消缺任务编号
create table bug								
(
       bug_id varchar2(10) primary key,
       find_user_id varchar2(10) not null,
       find_time date not null,
       tower_id varchar2(10) not null,
       bug_leave_id number(4),
       des varchar2(200) not null,
       bug_type_id varchar2(10) not null,
	poll_task_id varchar2(10),
	behe_task_id varchar2(10)
);

--创建缺陷类型表
create table bug_type							
(
      bug_type_id varchar2(10)  primary key,    ----缺陷类型id    主键
      bug_type_name varchar2(20) not null,      ----缺陷类型名称                 
      bug_type_status_id number(4) not null     ----缺陷类型状态        外键
);

--创建缺陷等级表
create table bug_leave							
(
       bug_leave_id number(4) primary key,      ----缺陷等级id    主键  
       bug_leave_name varchar2(20) not null--缺陷等级名称  
);
--巡检任务中间表
--id
--巡检任务Id
--巡检员id
create table poll_task_user
(
	   ptu_id varchar2(10) primary key,
     poll_task_id varchar2(10) not null,
     sys_user_id varchar2(10) not null
);
--消缺任务中间表
--id
--消缺任务Id
--消缺员id
create table behe_task_user
(
     btu_id varchar2(10) primary key,
     behe_task_id varchar2(10) not null,
     sys_user_id varchar2(10) not null
);
--巡检任务中间表外间约束
alter table poll_task_user
add constraint fk_ptu_user_id foreign key(sys_user_id) references sys_user(user_id);
alter table poll_task_user
add constraint fk_ptu_task_id foreign key(poll_task_id) references poll_task(task_id);
--消缺任务中间表外间约束
alter table behe_task_user
add constraint fk_btu_user_id foreign key(sys_user_id) references sys_user(user_id);
alter table behe_task_user
add constraint fk_btu_task_id foreign key(behe_task_id) references behe_task(task_id);
--添加外键约束
alter table sys_user_role
add constraint fk_user_id foreign key(user_id) references sys_user(user_id);
--
alter table sys_user_role
add constraint fk_role_id foreign key(role_id) references sys_role(role_id);
--
alter table sys_role_limit
add constraint fk_role1_id foreign key(role_id) references sys_role(role_id);
--
alter table sys_role_limit
add constraint fk_limit_id foreign key(limit_id) references sys_limit(limit_id);
--权限的外键添加
alter table sys_user
add constraint fk_log_id foreign key(log_id) references sys_log(log_id);
--日志外键
alter table sys_role
add constraint fk_createuser_id foreign key(create_user_id) references sys_user(user_id);
--角色表中创建人id
alter table poll_task
add constraint fk_poll_from_user_id foreign key(from_user_id) references sys_user(user_id);
alter table poll_task
add constraint fk_poll_circuit_id foreign key(circuit_id) references circuit(circuit_id);

--巡检任务表的外键
alter table behe_task
add constraint fk_behe_from_user_id foreign key(from_user_id) references sys_user(user_id);
--alter table behe_task
--add constraint fk_behe_tower_id foreign key(tower_id) references tower(tower_id);
alter table behe_task
add constraint fk_behe_bug_id foreign key(bug_id) references bug(bug_id);
--alter table behe_task
--add constraint fk_behe_find_user_id foreign key(find_user_id) references sys_user(user_id);
--alter table behe_task
--add constraint fk_behe_poll_task_id foreign key(poll_task_id) references poll_task(task_id);
--消缺任务表的外键
alter table tower
add constraint fk_circuit1_id foreign key(circuit_id) references circuit(circuit_id);
--杆塔的外键
alter table bug
add constraint fk_find_user_id foreign key(find_user_id) references sys_user(user_id);
alter table bug
add constraint fk_tower_bug_id foreign key(tower_id) references tower(tower_id);
alter table bug
add constraint fk_bug_leave_id foreign key(bug_leave_id) references bug_leave(bug_leave_id);
alter table bug
add constraint fk_bug_type_id foreign key(bug_type_id) references bug_type(bug_type_id);
alter table bug
add constraint fk_poll_task_id foreign key(poll_task_id) references poll_task(task_id);
alter table bug
add constraint fk_behe_task_id foreign key(behe_task_id) references behe_task(task_id);
--缺陷表外键
alter table sys_user
add constraint fk_user_status_id foreign key(user_status_id) references status_comm(status_id);
alter table sys_role
add constraint fk_role_status_id foreign key(role_status_id) references status_comm(status_id);
alter table sys_limit
add constraint fk_limit_status_id foreign key(limit_status_id) references status_comm(status_id);
alter table poll_task
add constraint fk_poll_task_status_id foreign key(task_status_id) references status_comm(status_id);
alter table behe_task
add constraint fk_behe_task_status_id foreign key(task_status_id) references status_comm(status_id);
alter table circuit
add constraint fk_circuit_status_id foreign key(run_status_id) references status_comm(status_id);
alter table circuit
add constraint fk_circuit_use_status_id foreign key(use_status_id) references status_comm(status_id);
alter table tower
add constraint fk_tower_status_id foreign key(tower_status_id) references status_comm(status_id);
alter table bug_type
add constraint fk_bug_type_status_id foreign key(bug_type_status_id) references status_comm(status_id);
--状态表的外键添加
