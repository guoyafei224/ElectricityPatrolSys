package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.BeHeTask;
import team.ElectricityPatrolSys.entity.BeheTaskUser;
import team.ElectricityPatrolSys.entity.Bug;

/**
 * 
* 项目名称：<br>
* 类名称：DoDeElimTaskDao <br>  
* 类描述： 消缺任务制定与分配 <br>
* 创建人：郭亚飞 
* 创建时间：2015-1-19 下午9:57:11 <br> 
* 修改人：   
* 修改时间：                  <br>  
* 修改备注：   
* @version V1.0
 */
public interface DoDeElimTaskDao {
	
	
	/**
	 * 提交审核意见
	 * 创建时间：2015-1-23 下午3:37:46 <br>
	 * @param be
	 * @return
	 */
	public int updateShen(BeHeTask be);
	
	/**
	 * 修改消缺任务
	 * 创建时间：2015-1-23 下午12:05:17 <br>
	 * @param be
	 * @return
	 */
	public int updateBeHeTask(BeHeTask be);
	
	/**
	 * 用户这个先删除
	 * 创建时间：2015-1-23 上午11:46:37 <br>
	 * @param t_id
	 * @return
	 */
	public int delBeHeTaskUser(String t_id);
	
	/**
	 * 修改该消缺任务所对应得bug,将这些bug对应的消缺任务id改为空
	 * 创建时间：2015-1-23 上午11:40:56 <br>
	 * @param t_id
	 * @return
	 */
	public int updateBugByTid(String t_id);
	
	/**
	 * 点击按钮quxiao任务
	 * 创建时间：2015-1-21 下午9:59:51 <br>
	 * @return
	 */
	public int updateCancelTask(String task_id);
	
	/**
	 * 添加缺陷任务
	 * 创建时间：2015-1-21 下午8:50:19 <br>
	 * @param be
	 * @return
	 */
	public int addBeheTask(BeHeTask be);
	
	/**
	 * 添加缺陷任务同时添加处理人中间表
	 * 创建时间：2015-1-21 下午8:50:31 <br>
	 * @param beu
	 * @return
	 */
	public int addBeHeTaskUser(BeheTaskUser beu);
	
	/**
	 * 修改bug表缺陷任务表列
	 * 创建时间：2015-1-21 下午8:50:58 <br>
	 * @param bug
	 * @return
	 */
	public int updateBugByID(Bug bug);

	/**
	 * 查询条数
	 * @return
	 */
	public int getBeHeTaskWeiCoung();
	
	/**
	 * 查询所有的未分配消缺任务的缺陷
	 * @return
	 */
	public List<Bug> getBeHeTaskWei();
	
	/**
	 * 根据消缺id，查询所有的消缺员
	 * @param t_id
	 * @return
	 */
	public List<BeheTaskUser> getBeheUser(String t_id);
	
	/**
	 * 根据消缺任务id，查询下属所有的缺陷
	 * 创建时间：2015-1-20 下午6:46:58 <br>
	 * @param b_id
	 * @return
	 */
	public List<Bug> getBugById(String b_id);
	
	/**
	 * 根据任务id，查询任务的详细信息
	 * 创建时间：2015-1-20 下午5:30:35 <br>
	 * @param b_id
	 * @return
	 */
	public BeHeTask getBeHeTaskById(String b_id);
	
	/**
	 * 查询消缺任务，并进行分页和按条件查询
	 * 创建时间：2015-1-20 上午11:12:30 <br>
	 * @param map
	 * @return
	 */
	public List<BeHeTask> getBeheTask(Map map);
	
	/**
	 * 查询条数
	 * 创建时间：2015-1-20 上午11:30:51 <br>
	 * @param map
	 * @return
	 */
	public int getBeheTaskCount(Map map);
}
