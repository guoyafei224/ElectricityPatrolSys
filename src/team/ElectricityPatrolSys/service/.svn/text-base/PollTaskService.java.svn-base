/**   
* 文件名：SysLimitDao.java
* 创建日期：2014-12-23   
* 创建人：钱文博
* Copyright (c) 2014 by SparkSoft.版权所有.
*/
package team.ElectricityPatrolSys.service;

import java.util.List;

import team.ElectricityPatrolSys.entity.PollTask;
import team.ElectricityPatrolSys.entity.SysUser;

/**
 * 
* 项目名称：<br>
* 类名称：PollTaskService <br>
* 类描述：巡检任务 <br>
* 创建人：钱文博
* 创建时间：2014-12-25 下午4:20:43 <br>
* 修改人：
* 修改时间：<br>
* 修改备注：
* @version V1.0
 */
public interface PollTaskService {

	/**
	 * 添加巡检任务
	 * @author 钱文博
	 * @param pollTask
	 */
	
	public int savePatrolTask(PollTask pollTask,String message);
	
	/**
	 * 得到所有巡检任务信息
	 * @author 钱文博
	 * @return
	 */
	public List<PollTask> getPollTaskByPage(int start,int end,PollTask pollTask);
	
	/**
	 * 查询总条数
	 * @author 钱文博
	 * @return
	 */
	public int getPollTaskSize(PollTask pollTask);
	/**
	 * 取消任务
	 */
	public int alterStatus(String task_id);
	
	/**
	 * 查询要修改的信息
	 * @author 钱文博
	 * @return
	 */
	public PollTask queryPollTaskInfo(String task_id);
	/**
	 * 查询分配的巡检员
	 */
	public List<SysUser> getTaskUser(String task_id);
	/**
	 * 执行任务
	 */
	public int alterTaskStatus(String task_id);
	/**
	 * 修改任务信息
	 */
	public int updateTask(PollTask pollTask,String message);
	
	/**
	 * 修改任务状态为已完成
	 * @author 钱文博
	 */
	public int alterStatusIsOk(String task_id);
}
