package team.ElectricityPatrolSys.entity;

public class BugLeave {

	private Integer bug_leave_id; // id

	private String bug_leave_name; // 名

	public BugLeave(Integer bug_leave_id, String bug_leave_name) {
		this.bug_leave_id = bug_leave_id;
		this.bug_leave_name = bug_leave_name;
	}

	public BugLeave() {
	}

	public Integer getBug_leave_id() {
		return bug_leave_id;
	}

	public void setBug_leave_id(Integer bug_leave_id) {
		this.bug_leave_id = bug_leave_id;
	}

	public String getBug_leave_name() {
		return bug_leave_name;
	}

	public void setBug_leave_name(String bug_leave_name) {
		this.bug_leave_name = bug_leave_name;
	}

}
