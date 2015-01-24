package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.DeElimTaskDao;
import team.ElectricityPatrolSys.entity.BeHeTask;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.entity.Tower;
import team.ElectricityPatrolSys.service.DeElimTaskService;

/**
* 类描述：消缺任务 <br>
* 创建人：钱文博
 */
@Service("deElimTaskService")
public class DeElimTaskServiceImpl implements DeElimTaskService{
	
	@Autowired
	private DeElimTaskDao deElimTaskDao;
	/**
	 * 添加巡检任务
	 * @author 钱文博
	 * @param pollTask
	 */
	public int saveDeElimTask(BeHeTask beHeTask,String message){
		return -1;
	}
	
	/**
	 * 得到所有巡检任务信息
	 * @author 钱文博
	 * @return
	 */
	public List<BeHeTask> getBeHeTaskByPage(int start,int end,BeHeTask beHeTask){
		Map map = new HashMap();
		map.put("start",start);
		map.put("end", end); 
		map.put("beHeTask", beHeTask);
		List<BeHeTask> list = deElimTaskDao.getBeHeTaskByPage(map);
		return list;
	}
	
	/**
	 * 查询总条数
	 * @author 钱文博
	 * @return
	 */
	public int getBeHeTaskSize(BeHeTask beHeTask){
		return deElimTaskDao.getBeHeTaskSize(beHeTask);
	}
	
	/**
	 * 取消任务
	 */
	public int alterStatus(String task_id){
		return deElimTaskDao.alterStatus(task_id);
	}
	
	/**
	 * 查询要修改的信息
	 * @author 钱文博
	 * @return
	 */
	public BeHeTask queryBeHeTaskInfo(String task_id){
		return deElimTaskDao.queryBeHeTaskInfo(task_id);
	}
	/**
	 * 查询分配的巡检员
	 */
	public List<SysUser> getTaskUser(String task_id){
		return deElimTaskDao.getTaskUser(task_id);
	}
	/**
	 * 执行任务
	 */
	public int alterTaskStatus(String task_id){
		return deElimTaskDao.alterTaskStatus(task_id);
	}
}
