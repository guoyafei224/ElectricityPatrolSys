package team.ElectricityPatrolSys.service;

import java.util.List;

import team.ElectricityPatrolSys.entity.BeHeTask;
import team.ElectricityPatrolSys.entity.PollTask;
import team.ElectricityPatrolSys.entity.SysUser;

/**
 * 
* 项目名称：<br>
* 类描述：消缺任务 <br>
* 创建人：钱文博
 */
public interface DeElimTaskService {

	/**
	 * 添加消缺任务
	 * @author 钱文博
	 * @param pollTask
	 */
	
	public int saveDeElimTask(BeHeTask beHeTask,String message);
	
	/**
	 * 得到所有消缺任务信息
	 * @author 钱文博
	 * @return
	 */
	public List<BeHeTask> getBeHeTaskByPage(int start,int end,BeHeTask beHeTask);
	
	/**
	 * 查询总条数
	 * @author 钱文博
	 * @return
	 */
	public int getBeHeTaskSize(BeHeTask beHeTask);
	/**
	 * 取消任务
	 */
	public int alterStatus(String task_id);
	
	/**
	 * 查询要修改的信息
	 * @author 钱文博
	 * @return
	 */
	public BeHeTask queryBeHeTaskInfo(String task_id);
	/**
	 * 查询分配的消缺员
	 */
	public List<SysUser> getTaskUser(String task_id);
	/**
	 * 执行任务
	 */
	public int alterTaskStatus(String task_id);
}
