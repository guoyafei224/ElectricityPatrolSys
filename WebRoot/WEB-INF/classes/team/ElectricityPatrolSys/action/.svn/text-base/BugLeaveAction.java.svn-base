package team.ElectricityPatrolSys.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.BugLeave;
import team.ElectricityPatrolSys.service.BugLeaveBiz;

@Controller("bugLeaveAction")
public class BugLeaveAction extends ActionBase{

	@Autowired
	private BugLeaveBiz bugLeaveBiz;
	
	private BugLeave bugLeave;

	private List<BugLeave> bugLeaves;
	/**
	 * 获取所有缺陷级别
	 * @author 钱文博
	 * @return
	 */
	public String getAllBugLeave(){
		bugLeaves = bugLeaveBiz.getAllBugLeave();
		return "getAllBugLeave";
	}
	
	public BugLeave getBugLeave() {
		return bugLeave;
	}

	public void setBugLeave(BugLeave bugLeave) {
		this.bugLeave = bugLeave;
	}

	public List<BugLeave> getBugLeaves() {
		return bugLeaves;
	}

	public void setBugLeaves(List<BugLeave> bugLeaves) {
		this.bugLeaves = bugLeaves;
	}
	
}
