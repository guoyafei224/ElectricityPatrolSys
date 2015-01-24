package team.ElectricityPatrolSys.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import team.ElectricityPatrolSys.entity.BeHeTask;
import team.ElectricityPatrolSys.entity.Bug;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.entity.Tower;
import team.ElectricityPatrolSys.service.BugService;
import team.ElectricityPatrolSys.service.TowerService;

@Controller("bugAction")
public class BugAction extends ActionBase {

	@Autowired
	private BugService bugService;
	
	@Autowired
	private TowerService towerService;

	private String towerId;

	private String taskId;

	private Bug bug;

	private Map map;

	private List<Bug> ptList;
	private JSONObject obj; // 传递到前台的数据

	public String queryBugByTowerIdAndTaskId() {
		bug = bugService.queryBugByTowerIdAndTaskId(towerId, taskId);
		return "queryBugByTowerIdAndTaskId";
	}

	/**
	 * 得到全部巡检信息
	 * 
	 * @author 杨维强
	 * @return
	 */
	public String getAllPollTask() {
		ptList = bugService.getAllPollTask((page - 1) * rows, page * rows);
		for (int i = 0; i < ptList.size(); i++) {
			ptList.get(i).setCir_tower(
					ptList.get(i).getPollTask().getCircuit().getCircuit_id()
							+ "("
							+ ptList.get(i).getPollTask().getCircuit()
									.getStart_tower_id()
							+ "-"
							+ ptList.get(i).getPollTask().getCircuit()
									.getEnd_tower_id() + ")");
		}
		sum = bugService.getPollTaskSum();
		map = new HashMap();
		map.put("total", sum);
		map.put("rows", ptList);
		return "getPollTaskOk";
	}

	public String getAllBeHeTask() {
		try {
			ptList = bugService.getAllBeHeTask((page - 1) * rows, page * rows);
		} catch (Exception e) {
			e.printStackTrace();
		}
		for (int i = 0; i < ptList.size(); i++) {
			ptList.get(i).setCir_tower(
					ptList.get(i).getPollTask().getCircuit().getCircuit_id()
							+ "("
							+ ptList.get(i).getPollTask().getCircuit()
									.getStart_tower_id()
							+ "-"
							+ ptList.get(i).getPollTask().getCircuit()
									.getEnd_tower_id() + ")");
		}
		try {
			sum = bugService.getAllBeHeTaskSum();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		map = new HashMap();
		map.put("total", sum);
		map.put("rows", ptList);
		return "getAllBeHeTask";
	}

	/**
	 * 添加缺陷
	 * @author 钱文博
	 * @return
	 */
	public String saveBug(){
		bug.setSysUser((SysUser) ActionContext.getContext()
				.getSession().get("loginUser"));
		bug.setFind_time(new Date());
		Tower tower = towerService.queryTowerInfoById(bug.getTower().getTower_id());
		tower.setGood_proc(bug.getTower().getGood_proc());
		//更新杆塔信息
		//towerService.update()
		bugService.saveBug(bug);
		return "saveBug";
	}
	
	/**
	 * 删除缺陷信息
	 * @return
	 */
	public String delBug(){
		message = bugService.delBug(towerId, taskId)+"";
		return "delBug";
	}
	public BugService getBugService() {
		return bugService;
	}

	public void setBugService(BugService bugService) {
		this.bugService = bugService;
	}

	public Bug getBug() {
		return bug;
	}

	public List<Bug> getList() {
		return ptList;
	}

	public void setList(List<Bug> list) {
		this.ptList = ptList;
	}

	public void setBug(Bug bug) {
		this.bug = bug;
	}

	public String getTowerId() {
		return towerId;
	}

	public void setTowerId(String towerId) {
		this.towerId = towerId;
	}

	public String getTaskId() {
		return taskId;
	}

	public void setTaskId(String taskId) {
		this.taskId = taskId;
	}

	public List<Bug> getPtList() {
		return ptList;
	}

	public void setPtList(List<Bug> ptList) {
		this.ptList = ptList;
	}

	public JSONObject getObj() {
		return obj;
	}

	public void setObj(JSONObject obj) {
		this.obj = obj;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

}
