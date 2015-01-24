package team.ElectricityPatrolSys.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.base.Tree;
import team.ElectricityPatrolSys.entity.Circuit;
import team.ElectricityPatrolSys.entity.PollTask;
import team.ElectricityPatrolSys.entity.StatusComm;
import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.service.PollTaskService;
import team.ElectricityPatrolSys.service.StatusCommService;
import team.ElectricityPatrolSys.service.SysUserService;
import team.ElectricityPatrolSys.util.Convert;

import com.opensymphony.xwork2.ActionContext;

/**
 * 巡检任务
 * 
 * @author 钱文博
 * 
 */
@Controller("patrolTaskAction")
public class PatrolTaskAction extends ActionBase {

	@Autowired
	private PollTaskService pollTaskService;
	@Autowired
	private SysUserService sus;

	@Autowired
	private StatusCommService statusCommService;

	private List<SysUser> PatrolMembers;

	private List<StatusComm> statusComm;

	private PollTask pollTask;

	private List<Tree> trees;

	private Map map;

	private List<PollTask> pollTasks;
	
	private String str;

	/**
	 * 得到巡检线路
	 * 
	 * @author 钱文博
	 * @return
	 */
	public String getAllPatrolMember() {
		PatrolMembers = sus.getAllPatrolMember();
		Tree tree = null;
		trees = new ArrayList<Tree>();
		for (int i = 0; i < PatrolMembers.size(); i++) {
			tree = new Tree();
			tree.setId(PatrolMembers.get(i).getUser_id());
			tree.setText(PatrolMembers.get(i).getUser_name());
			trees.add(tree);
		}
		return "getAllPatrolMember";
	}

	/**
	 * 分页得到巡检任务
	 * 
	 * @author 钱文博
	 */
	public String getPollTaskByPage() {
		if (message != null & !"".equals(message)) {
			String[] str = message.split(",");
			pollTask.setTask_id(str[0].trim());
			Circuit c = new Circuit();
			c.setCircuit_id(str[1].trim());
			pollTask.setCircuit(c);
			StatusComm sc = null;
			if (!"".equals(str[2].trim())) {
				sc = new StatusComm();
				sc.setStatus_id(Integer.parseInt(str[2].trim()));
			}
			pollTask.setStatusComm(sc);
			SysUser su = new SysUser();
			su.setUser_name(str[3].trim());
			pollTask.setFromSysUser(su);
			pollTask.setFrom_date(Convert.parseString(str[4].trim()));
			pollTask.setOk_time(Convert.parseString(str[5].trim()));
		} else {
			pollTask = new PollTask();
		}
		pollTasks = pollTaskService.getPollTaskByPage((page - 1) * rows, page
				* rows, pollTask);
		/*
		 * SysUser s = (SysUser)
		 * ActionContext.getContext().getSession().get("loginUser"); //如果是巡检员
		 * 删除已经取消的任务
		 * if(s.getSysUserRole().getSysRole().getRole_id().equals("role1003")){
		 * for(PollTask p :pollTasks){ if(p.getIstrue()==1){
		 * pollTasks.remove(p); } } }
		 */
		map = new HashMap();
		map.put("total", pollTaskService.getPollTaskSize(pollTask));
		map.put("rows", pollTasks);
		message = null;
		return "getPollTaskByPage";
	}

	/**
	 * 执行任务
	 */
	public String executePollTask() {
		return "executePollTask";
	}

	/**
	 * 查询任务信息 转发到查看任务信息页面
	 * 
	 * @return
	 */
	public String queryPollTaskInfoToCheck() {
		queryPollTaskInfo();
		return "queryPollTaskInfoToCheck";
	}

	/**
	 * 查询要修改的信息
	 * 
	 * @author 钱文博
	 * @return
	 */
	public String queryPollTaskInfo() {
		pollTask = pollTaskService.queryPollTaskInfo(pollTask.getTask_id());
		PatrolMembers = pollTaskService.getTaskUser(pollTask.getTask_id());
		message = "";
		str="";
		for (SysUser u : PatrolMembers) {
			message += u.getUser_name() + ",";
			str+=u.getUser_id()+",";
		}
		if (message.length() > 0) {
			message = message.substring(0, message.length() - 1);
			str = str.substring(0, str.length() - 1);
		}
		return "queryPollTaskInfo";
	}

	/** 
	 * 修改任务
	 */
	public String updateTask(){
		pollTask.setFrom_date(new Date());
		pollTask.setFromSysUser((SysUser) ActionContext.getContext()
				.getSession().get("loginUser"));
		StatusComm s = new StatusComm();
		s.setStatus_id(1008);
		pollTask.setStatusComm(s);
		pollTask.setIstrue(0);
		int num = pollTaskService.updateTask(pollTask, message);
		pollTask = null;
		message=null;
		return num == 1 ? "savePatrolTask" : "error";
	}
	/**
	 * 修改任务
	 * 查询修改任务信息
	 * @author 钱文博
	 * @return
	 */
	public String alterPollTaskInfo() {
		PatrolMembers = pollTaskService.getTaskUser(message);
		SysUser s = (SysUser) ActionContext.getContext().getSession()
				.get("loginUser");
		message = "error";
		for (SysUser su : PatrolMembers) {
			if (s.getUser_id().equals(su.getUser_id())) {
				message = "ok";
			}
		}
		return "alterPollTaskInfo";
	}

	/**
	 * 执行任务
	 * 
	 * @return
	 */
	public String executePollTaskByTaskId() {
		try {
			pollTaskService.alterTaskStatus(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
		message=null;
		return "executePollTaskByTaskId";
	}
	
	/**
	 * 修改巡检任务状态为已完成
	 */
	public String alterStatusIsOk(){
		
		return "alterStatusIsOk";
	}

	/**
	 * 取消任务
	 * 
	 * @author 钱文博
	 */
	public String alterStatus() {
		message = pollTaskService.alterStatus(pollTask.getTask_id()) + "";
		pollTask = null;
		return "alterStatus";
	}

	/**
	 * 查询所有巡检任务状态
	 * 
	 * @author 钱文博
	 * @return
	 */
	public String getAllStatus() {
		statusComm = statusCommService.getStatusByid("task_status_id");
		return "getAllStatus";
	}

	/**
	 * 添加巡检任务
	 * 
	 * @author 钱文博
	 * @return
	 */
	public String savePatrolTask() {
		pollTask.setFrom_date(new Date());
		pollTask.setFromSysUser((SysUser) ActionContext.getContext()
				.getSession().get("loginUser"));
		StatusComm s = new StatusComm();
		s.setStatus_id(1008);
		pollTask.setStatusComm(s);
		pollTask.setIstrue(0);
		int num = pollTaskService.savePatrolTask(pollTask, message);
		pollTask = null;
		return num == 1 ? "savePatrolTask" : "error";
	}

	public List<SysUser> getPatrolMembers() {
		return PatrolMembers;
	}

	public void setPatrolMembers(List<SysUser> patrolMembers) {
		PatrolMembers = patrolMembers;
	}

	public List<Tree> getTrees() {
		return trees;
	}

	public void setTrees(List<Tree> trees) {
		this.trees = trees;
	}

	public PollTask getPollTask() {
		return pollTask;
	}

	public void setPollTask(PollTask pollTask) {
		this.pollTask = pollTask;
	}

	public List<StatusComm> getStatusComm() {
		return statusComm;
	}

	public void setStatusComm(List<StatusComm> statusComm) {
		this.statusComm = statusComm;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

}
