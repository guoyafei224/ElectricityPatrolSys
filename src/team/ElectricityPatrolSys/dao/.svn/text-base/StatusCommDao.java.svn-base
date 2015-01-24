package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.StatusComm;

/**
 * 公共状态表dao层实现类
 * 
 * @author guo s
 */
public interface StatusCommDao {

	/**
	 * 添加状态 创建时间：2015-1-14 下午11:03:55 <br>
	 * 
	 * @param sc
	 * @return
	 */
	public int addStruts(StatusComm sc);

	/**
	 * 修改状态 创建时间：2015-1-14 下午11:03:55 <br>
	 * 
	 * @param sc
	 * @return
	 */
	public int updateStruts(StatusComm sc);

	/**
	 * 查询不重复的配置类型 创建时间：2015-1-14 下午3:40:04 <br>
	 * 
	 * @return
	 */
	public List<StatusComm> getConfigType();

	/**
	 * 根据id冻结状态 创建时间：2015-1-14 下午3:39:20 <br>
	 * 
	 * @param s_id
	 * @return
	 */
	public int updateStrutsById(int s_id);

	/**
	 * 查询总条数
	 * 
	 * @return
	 */
	public int getCount();

	/**
	 * 查询所有的状态
	 * 
	 * @return
	 */
	public List<StatusComm> getStatus(Map map);

	/**
	 * 根据配置类型查询配置的状态
	 * 
	 * @param config_type
	 * @return
	 */

	public List<StatusComm> getStatusByids(String config_type);

}
