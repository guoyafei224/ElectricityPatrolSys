package team.ElectricityPatrolSys.entity;

import java.util.Date;
import java.util.List;


public class PollTask {

	private String task_id;           //巡检任务id
	
	private String task_name;			//任务名
	
	private Circuit circuit;			//线路id
	
	private SysUser fromSysUser;		//下达命令的人id
	
	private Date from_date;				//下达日期
	
	private StatusComm statusComm; 	//任务执行状态
	
	private Integer istrue;				//是否取消
	
	private Date ok_time;				//完成时间
		
	private String des;					//描述
	
	private List<SysUser> toSysUser;
	
	public PollTask() {
	}
	public PollTask(String task_id, String task_name, Circuit circuit,
			SysUser fromSysUser, Date from_date,
			StatusComm statusComm, Integer istrue, Date ok_time, String des) {
		super();
		this.task_id = task_id;
		this.task_name = task_name;
		this.circuit = circuit;
		this.fromSysUser = fromSysUser;
		this.from_date = from_date;
		this.statusComm = statusComm;
		this.istrue = istrue;
		this.ok_time = ok_time;
		this.des = des;
	}
	
	public String getTask_id() {
		return task_id;
	}

	public void setTask_id(String task_id) {
		this.task_id = task_id;
	}
	
	public String getTask_name() {
		return task_name;
	}
	
	public void setTask_name(String task_name) {
		this.task_name = task_name;
	}
	
	public Circuit getCircuit() {
		return circuit;
	}
	
	public void setCircuit(Circuit circuit) {
		this.circuit = circuit;
	}
	
	public SysUser getFromSysUser() {
		return fromSysUser;
	}
	public void setFromSysUser(SysUser fromSysUser) {
		this.fromSysUser = fromSysUser;
	}
	public Date getFrom_date() {
		return from_date;
	}
	
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	
	public StatusComm getStatusComm() {
		return statusComm;
	}
	
	public void setStatusComm(StatusComm statusComm) {
		this.statusComm = statusComm;
	}
	
	public Integer getIstrue() {
		return istrue;
	}
	
	public void setIstrue(Integer istrue) {
		this.istrue = istrue;
	}
	
	public Date getOk_time() {
		return ok_time;
	}

	public void setOk_time(Date ok_time) {
		this.ok_time = ok_time;
	}

	public String getDes() {
		return des;
	}
	
	public void setDes(String des) {
		this.des = des;
	}


	public List<SysUser> getToSysUser() {
		return toSysUser;
	}

	public void setToSysUser(List<SysUser> toSysUser) {
		this.toSysUser = toSysUser;
	}

}
