package team.ElectricityPatrolSys.service;

import java.util.List;

import team.ElectricityPatrolSys.entity.StatusComm;

/**
 * 公共状态表的service层
 * 
 * @author guo
 * 
 */
public interface StatusCommService {

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
	 * 查询不重复的配置类型 创建时间：2015-1-14 下午3:41:03 <br>
	 * 
	 * @return
	 */
	public List<StatusComm> getConfigType();

	/**
	 * 根据状态id，冻结该状态
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
	 * 查询所有的状态类型
	 * 
	 * @return
	 */
	public List<StatusComm> getStatus(int min, int max);

	/**
	 * 根据配置类型查询配置的状态
	 * 
	 * @param config_type
	 * @return
	 */
	public List<StatusComm> getStatusByid(String config_type);
}
