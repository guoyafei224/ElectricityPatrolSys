/**   
 * 文件名：SysLimitDao.java
 * 创建日期：2014-12-23   
 * 创建人：郭亚飞
 * Copyright (c) 2014 by SparkSoft.版权所有.
 */

package team.ElectricityPatrolSys.dao;

import java.util.List;

import team.ElectricityPatrolSys.entity.SysLimit;
import team.ElectricityPatrolSys.entity.SysRole;

/**
 * 项目名称：<br>
 * 类名称：SysLimitDao <br>
 * 类描述： 权限dao接口 <br>
 * 创建人：郭亚飞 创建时间：2014-12-23 下午6:03:30 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */

public interface SysLimitDao {

	/**
	 * 根据当前节点id，查询自节点中最大的节点
	 * 
	 * @param limit_id
	 * @return
	 */
	public SysLimit getMaxLimit_id(String limit_id);

	/**
	 * 添加权限节点
	 * 
	 * @param sysLimit
	 * @return
	 */
	public int addLimit(SysLimit sysLimit);

	/**
	 * 根据id删除该节点， 创建时间：2015-1-16 下午11:26:45 <br>
	 * 
	 * @param limit_id
	 * @return
	 */
	public int deleteLimit(String limit_id);

	/**
	 * 如果下面有子节点，先删除子节点 创建时间：2015-1-16 下午11:32:54 <br>
	 * 
	 * @param parent_id
	 * @return
	 */
	public int deleteChidLimit(String parent_id);

	/**
	 * 删除中间表信息 创建时间：2015-1-16 下午11:59:45 <br>
	 * 
	 * @param limit_id
	 * @return
	 */
	public int deleteRoleLimitByLid(String limit_id);

	/**
	 * 根据id，查询权限信息 创建时间：2015-1-16 下午10:52:33 <br>
	 * 
	 * @param limit_id
	 * @return
	 */
	public SysLimit getLimitById(String limit_id);

	/**
	 * 根据权限id，查询子节点的id
	 * 
	 * @param lid
	 * @return
	 */
	public List<SysLimit> getChildLimit(String limit_id);

	/**
	 * 修改权限 创建时间：2015-1-16 下午10:31:16 <br>
	 * 
	 * @return
	 */
	public int updateLimit(SysLimit sysLimit);

}
