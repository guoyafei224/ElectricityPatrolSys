package team.ElectricityPatrolSys.entity;

import java.util.Date;
import java.util.List;


public class SysUser {

	private String user_id;        //id
	
	private String account;			//账号
	
	private String user_name;		//用户的姓名
	
	private String password;		//密码
	
	private Integer age;			//年龄
	
	private String phone;			//电话
	
	private Date enertDate;			//入职日期
	
	private Date leaveDate;			//离职日期
	
	private Date regDate;			//注册日期
	
	private StatusComm statusComm; //该用户的账号状态  外键   是否冻结
	
	private Integer user_status_id;       //状态id
	
	private SysLog log ;			//日志			外键
	
	private Integer isoccupy;		//该员工是否已经有任务	外键
	
	private SysUserRole sysUserRole;		//用户权限表
	
	private List<SysLog> logs;           //日志 
	
	private String email;              //邮箱
	
	private Integer sex;               //性别    0女 1男
	
	private Date lastlogindate;          //最后登录时间
	
	public SysUser(String account, String password) {
		super();
		this.account = account;
		this.password = password;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getEnertDate() {
		return enertDate;
	}

	public void setEnertDate(Date enertDate) {
		this.enertDate = enertDate;
	}

	public Date getLeaveDate() {
		return leaveDate;
	}

	public void setLeaveDate(Date leaveDate) {
		this.leaveDate = leaveDate;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public StatusComm getStatusComm() {
		return statusComm;
	}

	public void setStatusComm(StatusComm statusComm) {
		this.statusComm = statusComm;
	}

	public SysLog getLog() {
		return log;
	}

	public void setLog(SysLog log) {
		this.log = log;
	}

	public Integer getIsoccupy() {
		return isoccupy;
	}

	public void setIsoccupy(Integer isoccupy) {
		this.isoccupy = isoccupy;
	}

	public SysUserRole getSysUserRole() {
		return sysUserRole;
	}

	public void setSysUserRole(SysUserRole sysUserRole) {
		this.sysUserRole = sysUserRole;
	}

	public List<SysLog> getLogs() {
		return logs;
	}

	public void setLogs(List<SysLog> logs) {
		this.logs = logs;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getLastlogindate() {
		return lastlogindate;
	}

	public void setLastlogindate(Date lastlogindate) {
		this.lastlogindate = lastlogindate;
	}

	public SysUser(String user_id, String account, String user_name,
			String password, Integer age, String phone, Date enertDate,
			Date leaveDate, Date regDate, StatusComm statusComm, SysLog log,
			Integer isoccupy, SysUserRole sysUserRole, List<SysLog> logs,
			String email, Integer sex, Date lastlogindate) {
		this.user_id = user_id;
		this.account = account;
		this.user_name = user_name;
		this.password = password;
		this.age = age;
		this.phone = phone;
		this.enertDate = enertDate;
		this.leaveDate = leaveDate;
		this.regDate = regDate;
		this.statusComm = statusComm;
		this.log = log;
		this.isoccupy = isoccupy;
		this.sysUserRole = sysUserRole;
		this.logs = logs;
		this.email = email;
		this.sex = sex;
		this.lastlogindate = lastlogindate;
	}

	public SysUser() {
		super();
	}

	public Integer getUser_status_id() {
		return user_status_id;
	}

	public void setUser_status_id(Integer user_status_id) {
		this.user_status_id = user_status_id;
	}
	
}
