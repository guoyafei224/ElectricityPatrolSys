package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.BugDao;
import team.ElectricityPatrolSys.entity.Bug;
import team.ElectricityPatrolSys.service.BugService;

@Service("bugService")
public class BugServiceImpl implements BugService {

	@Autowired
	private BugDao bugDao;

	/**
	 * 通过杆塔信息和巡检任务编码查询缺陷信息
	 * 
	 * @author 钱文博
	 * @return
	 */
	@Override
	public Bug queryBugByTowerIdAndTaskId(String towerId, String taskId) {
		Map map = new HashMap();
		map.put("towerId", towerId);
		map.put("taskId", taskId);
		return bugDao.queryBugByTowerIdAndTaskId(map);
	}

	/**
	 * 查询全部巡检信息
	 * 
	 * @author 杨维强
	 */
	public List<Bug> getAllPollTask(int min, int max) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", min);
		map.put("end", max);
		List<Bug> list = bugDao.getAllPollTask(map);
		return list;
	}

	/**
	 * 查询巡检信息总条数
	 * 
	 * @author 杨维强
	 */
	public Integer getPollTaskSum() {
		return bugDao.getPollTaskSum();
	}

	@Override
	public List<Bug> getAllBeHeTask(int min, int max) {
		Map<String,Integer>map=new HashMap<String, Integer>();
		map.put("start", min);
		map.put("end", max);
		List<Bug>list=bugDao.getAllBeHeTask(map);
		return list;
	}

	@Override
	public Integer getAllBeHeTaskSum() {
		return bugDao.getAllBeHeTaskSum();
	}

	/**
	 * 添加缺陷
	 * @author 钱文博
	 */
	public int saveBug(Bug bug){
		Bug bugTemp=queryBugByTowerIdAndTaskId(bug.getTower().getTower_id(),bug.getPollTask().getTask_id());
		if(bugTemp==null){
			return bugDao.saveBug(bug);
		}else{
			bug.setBug_id(bugTemp.getBug_id());
			return bugDao.updateBug(bug);
		}
	}
	
	/**
	 * 删除缺陷
	 * @author 钱文博
	 */
	public int delBug(String towerId, String taskId){
		Bug bugTemp=queryBugByTowerIdAndTaskId(towerId,taskId);
		if(bugTemp!=null){
			return bugDao.delBug(bugTemp.getBug_id());
		}
		return 0;
	}

}
