package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.Bug;

public interface BugDao {

	/**
	 * 通过杆塔信息和巡检任务编码查询缺陷信息
	 * 
	 * @author 钱文博
	 * @return
	 */
	public Bug queryBugByTowerIdAndTaskId(Map map);

	/**
	 * 查询全部巡检信息
	 * 
	 * @author 杨维强
	 */
	public List<Bug> getAllPollTask(Map map);

	/**
	 * 得到杆塔信息总条数
	 * 
	 * @author 杨维强
	 */
	public Integer getPollTaskSum();
	/**
	 * 查询消缺任务记录
	 */
	public List<Bug> getAllBeHeTask(Map map);
	/**
	 * 得到信息总条数
	 * 
	 * @author 王倩
	 */
	public Integer getAllBeHeTaskSum();
	
	/**
	 * 添加缺陷
	 * @author 钱文博
	 */
	public int saveBug(Bug bug);
	
	/**
	 * 更新缺陷
	 * @author 钱文博
	 */
	public int updateBug(Bug bug);
	
	/**
	 * 删除缺陷
	 * @author 钱文博
	 */
	public int delBug(String bug_id);
	
}
