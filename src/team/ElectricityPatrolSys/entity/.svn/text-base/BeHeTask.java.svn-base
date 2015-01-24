package team.ElectricityPatrolSys.entity;

import java.util.Date;
import java.util.List;

public class BeHeTask {

	private String task_id; // 消缺任务id

	private String task_name; // 消缺任务名

	private Tower tower; // 杆塔id

	private SysUser fromSysUser; // 下达人
	
	private String from_user_id;

	private Date from_date; // 下达日期

	private String des; // 任务描述

	private PollTask pollTask; // 巡检任务id

	private String exam_idea; // 审查意见

	private String from_user_idea; // 下达人意见

	private String ok_des; // 完成描述

	private Integer exam_status; // 审查状态 0，不通过 1，通过

	private String report_matter; // 报告事项

	private Integer task_status_id; // 任务执行状态
	
	private StatusComm statusComm;

	private Integer istrue; // 是否取消

	private Date ok_time; // 完成时间

	private Bug bug; // q
	
	private List<Bug> bugs;

	private List<SysUser> toSysUser;

	public BeHeTask(String task_id, String task_name, Tower tower,
			SysUser fromSysUser, Date from_date, String des, PollTask pollTask,
			String exam_idea, String from_user_idea, String ok_des,
			Integer exam_status, String report_matter, Integer task_status_id,
			Integer istrue, Date ok_time, Bug bug) {
		this.task_id = task_id;
		this.task_name = task_name;
		this.tower = tower;
		this.fromSysUser = fromSysUser;
		this.from_date = from_date;
		this.des = des;
		this.pollTask = pollTask;
		this.exam_idea = exam_idea;
		this.from_user_idea = from_user_idea;
		this.ok_des = ok_des;
		this.exam_status = exam_status;
		this.report_matter = report_matter;
		this.task_status_id = task_status_id;
		this.istrue = istrue;
		this.ok_time = ok_time;
		this.bug = bug;
	}

	public BeHeTask() {
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

	public Tower getTower() {
		return tower;
	}

	public void setTower(Tower tower) {
		this.tower = tower;
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

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public PollTask getPollTask() {
		return pollTask;
	}

	public void setPollTask(PollTask pollTask) {
		this.pollTask = pollTask;
	}

	public String getExam_idea() {
		return exam_idea;
	}

	public void setExam_idea(String exam_idea) {
		this.exam_idea = exam_idea;
	}

	public String getFrom_user_idea() {
		return from_user_idea;
	}

	public void setFrom_user_idea(String from_user_idea) {
		this.from_user_idea = from_user_idea;
	}

	public String getOk_des() {
		return ok_des;
	}

	public void setOk_des(String ok_des) {
		this.ok_des = ok_des;
	}

	public Integer getExam_status() {
		return exam_status;
	}

	public void setExam_status(Integer exam_status) {
		this.exam_status = exam_status;
	}

	public String getReport_matter() {
		return report_matter;
	}

	public void setReport_matter(String report_matter) {
		this.report_matter = report_matter;
	}

	public Integer getTask_status_id() {
		return task_status_id;
	}

	public void setTask_status_id(Integer task_status_id) {
		this.task_status_id = task_status_id;
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

	public Bug getBug() {
		return bug;
	}

	public void setBug(Bug bug) {
		this.bug = bug;
	}

	public List<SysUser> getToSysUser() {
		return toSysUser;
	}

	public void setToSysUser(List<SysUser> toSysUser) {
		this.toSysUser = toSysUser;
	}

	/**
	 * statusComm的getter方法
	 * 创建时间：2015-1-20 上午10:44:12 <br>
	 * @return the statusComm
	 */
	
	public StatusComm getStatusComm() {
		return statusComm;
	}

	/**
	 * statusComm的setter方法
	 * 创建时间：2015-1-20 上午10:44:12 <br>
	 * @param statusComm the statusComm to set
	 */
	
	public void setStatusComm(StatusComm statusComm) {
		this.statusComm = statusComm;
	}

	/** 
	  * 创建时间：2015-1-20 上午10:44:15 <br>
	  * <p>Description: </p> 
	  * @param task_id
	  * @param task_name
	  * @param tower
	  * @param fromSysUser
	  * @param from_date
	  * @param des
	  * @param pollTask
	  * @param exam_idea
	  * @param from_user_idea
	  * @param ok_des
	  * @param exam_status
	  * @param report_matter
	  * @param task_status_id
	  * @param statusComm
	  * @param istrue
	  * @param ok_time
	  * @param bug
	  * @param toSysUser 
	*/
	
	public BeHeTask(String task_id, String task_name, Tower tower,
			SysUser fromSysUser, Date from_date, String des, PollTask pollTask,
			String exam_idea, String from_user_idea, String ok_des,
			Integer exam_status, String report_matter, Integer task_status_id,
			StatusComm statusComm, Integer istrue, Date ok_time, Bug bug,
			List<SysUser> toSysUser) {
		super();
		this.task_id = task_id;
		this.task_name = task_name;
		this.tower = tower;
		this.fromSysUser = fromSysUser;
		this.from_date = from_date;
		this.des = des;
		this.pollTask = pollTask;
		this.exam_idea = exam_idea;
		this.from_user_idea = from_user_idea;
		this.ok_des = ok_des;
		this.exam_status = exam_status;
		this.report_matter = report_matter;
		this.task_status_id = task_status_id;
		this.statusComm = statusComm;
		this.istrue = istrue;
		this.ok_time = ok_time;
		this.bug = bug;
		this.toSysUser = toSysUser;
	}

	/**
	 * bugs的getter方法
	 * 创建时间：2015-1-20 上午10:49:19 <br>
	 * @return the bugs
	 */
	
	public List<Bug> getBugs() {
		return bugs;
	}

	/**
	 * bugs的setter方法
	 * 创建时间：2015-1-20 上午10:49:19 <br>
	 * @param bugs the bugs to set
	 */
	
	public void setBugs(List<Bug> bugs) {
		this.bugs = bugs;
	}

	/** 
	  * 创建时间：2015-1-20 上午10:49:23 <br>
	  * <p>Description: </p> 
	  * @param task_id
	  * @param task_name
	  * @param tower
	  * @param fromSysUser
	  * @param from_date
	  * @param des
	  * @param pollTask
	  * @param exam_idea
	  * @param from_user_idea
	  * @param ok_des
	  * @param exam_status
	  * @param report_matter
	  * @param task_status_id
	  * @param statusComm
	  * @param istrue
	  * @param ok_time
	  * @param bug
	  * @param bugs
	  * @param toSysUser 
	*/
	
	public BeHeTask(String task_id, String task_name, Tower tower,
			SysUser fromSysUser, Date from_date, String des, PollTask pollTask,
			String exam_idea, String from_user_idea, String ok_des,
			Integer exam_status, String report_matter, Integer task_status_id,
			StatusComm statusComm, Integer istrue, Date ok_time, Bug bug,
			List<Bug> bugs, List<SysUser> toSysUser) {
		super();
		this.task_id = task_id;
		this.task_name = task_name;
		this.tower = tower;
		this.fromSysUser = fromSysUser;
		this.from_date = from_date;
		this.des = des;
		this.pollTask = pollTask;
		this.exam_idea = exam_idea;
		this.from_user_idea = from_user_idea;
		this.ok_des = ok_des;
		this.exam_status = exam_status;
		this.report_matter = report_matter;
		this.task_status_id = task_status_id;
		this.statusComm = statusComm;
		this.istrue = istrue;
		this.ok_time = ok_time;
		this.bug = bug;
		this.bugs = bugs;
		this.toSysUser = toSysUser;
	}

	/**
	 * from_user_id的getter方法
	 * 创建时间：2015-1-21 下午9:02:00 <br>
	 * @return the from_user_id
	 */
	
	public String getFrom_user_id() {
		return from_user_id;
	}

	/**
	 * from_user_id的setter方法
	 * 创建时间：2015-1-21 下午9:02:00 <br>
	 * @param from_user_id the from_user_id to set
	 */
	
	public void setFrom_user_id(String from_user_id) {
		this.from_user_id = from_user_id;
	}

	/** 
	  * 创建时间：2015-1-21 下午9:02:05 <br>
	  * <p>Description: </p> 
	  * @param task_id
	  * @param task_name
	  * @param tower
	  * @param fromSysUser
	  * @param from_user_id
	  * @param from_date
	  * @param des
	  * @param pollTask
	  * @param exam_idea
	  * @param from_user_idea
	  * @param ok_des
	  * @param exam_status
	  * @param report_matter
	  * @param task_status_id
	  * @param statusComm
	  * @param istrue
	  * @param ok_time
	  * @param bug
	  * @param bugs
	  * @param toSysUser 
	*/
	
	public BeHeTask(String task_id, String task_name, Tower tower,
			SysUser fromSysUser, String from_user_id, Date from_date,
			String des, PollTask pollTask, String exam_idea,
			String from_user_idea, String ok_des, Integer exam_status,
			String report_matter, Integer task_status_id,
			StatusComm statusComm, Integer istrue, Date ok_time, Bug bug,
			List<Bug> bugs, List<SysUser> toSysUser) {
		super();
		this.task_id = task_id;
		this.task_name = task_name;
		this.tower = tower;
		this.fromSysUser = fromSysUser;
		this.from_user_id = from_user_id;
		this.from_date = from_date;
		this.des = des;
		this.pollTask = pollTask;
		this.exam_idea = exam_idea;
		this.from_user_idea = from_user_idea;
		this.ok_des = ok_des;
		this.exam_status = exam_status;
		this.report_matter = report_matter;
		this.task_status_id = task_status_id;
		this.statusComm = statusComm;
		this.istrue = istrue;
		this.ok_time = ok_time;
		this.bug = bug;
		this.bugs = bugs;
		this.toSysUser = toSysUser;
	}

	
}
