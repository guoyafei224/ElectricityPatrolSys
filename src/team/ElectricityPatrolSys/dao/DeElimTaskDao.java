package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.BeHeTask;
import team.ElectricityPatrolSys.entity.BeheTaskUser;
import team.ElectricityPatrolSys.entity.PollTask;
import team.ElectricityPatrolSys.entity.PollTaskUser;
import team.ElectricityPatrolSys.entity.SysUser;

/**
 * 类描述：消缺任务 <br>
 * 创建人：钱文博
 */
public interface DeElimTaskDao {

	/**
	 * 添加消缺任务
	 * 
	 * @author 钱文博
	 * @param pollTask
	 */

	public int saveElimTask(BeHeTask beHeTask);

	/**
	 * 得到所有消缺任务信息
	 * 
	 * @author 钱文博
	 * @return
	 */
	public List<BeHeTask> getBeHeTaskByPage(Map map);

	/**
	 * 查询总条数
	 * 
	 * @author 钱文博
	 * @return
	 */
	public int getBeHeTaskSize(BeHeTask beHeTask);

	/**
	 * 查询任务编号
	 */
	public String getBeHeTaskId();

	/**
	 * 查询修改任务的信息
	 * 
	 * @return
	 */
	public BeHeTask queryBeHeTaskInfo(String task_id);

	/**
	 * 取消任务
	 */
	public int alterStatus(String task_id);

	/**
	 * 添加消缺员
	 */
	public int saveBeHeTaskUser(BeheTaskUser ptu);

	/**
	 * 查询分配的消缺员
	 */
	public List<SysUser> getTaskUser(String task_id);

	/**
	 * 执行任务
	 */
	public int alterTaskStatus(String task_id);
}
