package team.ElectricityPatrolSys.entity;

import java.util.Date;


public class SysLog {

	private Integer log_id;			//日志id
	
	private SysUser sysUser;			//用户uid
	
	private String operate_type;	//操作类型
	
	private Date operate_date;		//操作日期
	
	private String user_id; 
	
	
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public Integer getLog_id() {
		return log_id;
	}
	
	public void setLog_id(Integer log_id) {
		this.log_id = log_id;
	}
	
	public SysUser getSysUser() {
		return sysUser;
	}
	
	public void setSysUser(SysUser sysUser) {
		this.sysUser = sysUser;
	}
	
	public String getOperate_type() {
		return operate_type;
	}
	
	public void setOperate_type(String operate_type) {
		this.operate_type = operate_type;
	}
	
	public Date getOperate_date() {
		return operate_date;
	}
	
	public void setOperate_date(Date operate_date) {
		this.operate_date = operate_date;
	}
	
	public SysLog() {
	}

	public SysLog(Integer log_id, SysUser sysUser, String operate_type,
			Date operate_date) {
		this.log_id = log_id;
		this.sysUser = sysUser;
		this.operate_type = operate_type;
		this.operate_date = operate_date;
	}
	
}
