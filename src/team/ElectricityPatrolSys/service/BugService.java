package team.ElectricityPatrolSys.service;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.BeHeTask;
import team.ElectricityPatrolSys.entity.Bug;
import team.ElectricityPatrolSys.entity.PollTask;

public interface BugService {

	/**
	 * 通过杆塔信息和巡检任务编码查询缺陷信息
	 * 
	 * @author 钱文博
	 * @return
	 */
	public Bug queryBugByTowerIdAndTaskId(String towerId, String taskId);

	/**
	 * 查询全部巡检信息
	 * 
	 * @author 杨维强
	 */
	public List<Bug> getAllPollTask(int min, int max);

	/**
	 * 查询巡检信息总条数
	 * 
	 * @author 杨维强
	 */
	public Integer getPollTaskSum();

	/**
	 * 查询消缺任务记录
	 */
	public List<Bug> getAllBeHeTask(int min, int max);

	/**
	 * 查询巡检信息总条数
	 */
	public Integer getAllBeHeTaskSum();
	
	/**
	 * 添加缺陷
	 * @author 钱文博
	 */
	public int saveBug(Bug bug);
	
	/**
	 * 删除缺陷
	 * @author 钱文博
	 */
	public int delBug(String towerId, String taskId);
}
