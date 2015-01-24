/**   
* 文件名：SysLimitDao.java
* 创建日期：2014-12-23   
* 创建人：钱文博
* Copyright (c) 2014 by SparkSoft.版权所有.
*/
package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.PollTaskDao;
import team.ElectricityPatrolSys.entity.PollTask;
import team.ElectricityPatrolSys.entity.PollTaskUser;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.entity.Tower;
import team.ElectricityPatrolSys.service.PollTaskService;

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
@Service("pollTaskService")
public class PollTaskServiceImpl implements PollTaskService{
	
	@Autowired
	private PollTaskDao pollTaskDao;
	/**
	 * 添加巡检任务
	 * @author 钱文博
	 * @param pollTask
	 */
	public int savePatrolTask(PollTask pollTask,String message){
		String[] str=message.split(",");
		try {
			message=pollTaskDao.getPollTaskId();
			pollTask.setTask_id(message);
			pollTaskDao.savePatrolTask(pollTask);
			PollTaskUser ptu=null;
			for(int i=0;i<str.length;i++){
				if(!"".equals(str[i])&null!=str[i]){
					ptu=new PollTaskUser();
					ptu.setPoll_task_id(message);
					ptu.setSys_user_id(str[i]);
					pollTaskDao.savePollTaskUser(ptu);
				}
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	/**
	 * 得到所有巡检任务信息
	 * @author 钱文博
	 * @return
	 */
	public List<PollTask> getPollTaskByPage(int start,int end,PollTask pollTask){
		Map map = new HashMap();
		map.put("start",start);
		map.put("end", end); 
		map.put("pollTask", pollTask);
		List<PollTask> list = pollTaskDao.getPollTaskByPage(map);
		return list;
	}
	
	/**
	 * 查询总条数
	 * @author 钱文博
	 * @return
	 */
	public int getPollTaskSize(PollTask pollTask){
		return pollTaskDao.getPollTaskSize(pollTask);
	}
	
	/**
	 * 取消任务
	 */
	public int alterStatus(String task_id){
		return pollTaskDao.alterStatus(task_id);
	}
	
	/**
	 * 查询要修改的信息
	 * @author 钱文博
	 * @return
	 */
	public PollTask queryPollTaskInfo(String task_id){
		return pollTaskDao.queryPollTaskInfo(task_id);
	}
	/**
	 * 查询分配的巡检员
	 */
	public List<SysUser> getTaskUser(String task_id){
		return pollTaskDao.getTaskUser(task_id);
	}
	/**
	 * 执行任务
	 */
	public int alterTaskStatus(String task_id){
		return pollTaskDao.alterTaskStatus(task_id);
	}
	
	/**
	 * 修改任务信息
	 */
	public int updateTask(PollTask pollTask,String message){
		String[] str=message.split(",");
		try {
			pollTaskDao.updateTask(pollTask);
			pollTaskDao.delTaskUser(pollTask.getTask_id());
			PollTaskUser ptu=null;
			for(int i=0;i<str.length;i++){
				if(!"".equals(str[i])&null!=str[i]){
					ptu=new PollTaskUser();
					ptu.setPoll_task_id(pollTask.getTask_id());
					ptu.setSys_user_id(str[i]);
					pollTaskDao.savePollTaskUser(ptu);
				}
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	/**
	 * 修改任务状态为已完成
	 * @author 钱文博
	 */
	public int alterStatusIsOk(String task_id){
		return pollTaskDao.alterStatusIsOk(task_id);
	}
}
