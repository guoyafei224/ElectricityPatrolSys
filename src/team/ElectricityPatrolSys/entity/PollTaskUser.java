package team.ElectricityPatrolSys.entity;

public class PollTaskUser {

	private String ptu_id;
	
	private String poll_task_id;
	
	private String sys_user_id;
	
	public PollTaskUser(){}
	
	public PollTaskUser(String ptu_id, String poll_task_id, String sys_user_id) {
		this.ptu_id = ptu_id;
		this.poll_task_id = poll_task_id;
		this.sys_user_id = sys_user_id;
	}
	public String getPtu_id() {
		return ptu_id;
	}
	public void setPtu_id(String ptu_id) {
		this.ptu_id = ptu_id;
	}
	public String getPoll_task_id() {
		return poll_task_id;
	}
	public void setPoll_task_id(String poll_task_id) {
		this.poll_task_id = poll_task_id;
	}
	public String getSys_user_id() {
		return sys_user_id;
	}
	public void setSys_user_id(String sys_user_id) {
		this.sys_user_id = sys_user_id;
	}
	
}
