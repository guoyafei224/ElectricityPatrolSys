/**   
 * 文件名：SysRoleDao.java
 * 创建日期：2014-12-23   
 * 创建人：郭亚飞
 * Copyright (c) 2014 by SparkSoft.版权所有.
 */

package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.SysLimit;
import team.ElectricityPatrolSys.entity.SysRole;

/**
 * 项目名称：<br>
 * 类名称：SysRoleDao <br>
 * 类描述： 角色dao接口 <br>
 * 创建人：郭亚飞 创建时间：2014-12-23 下午6:03:01 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */

public interface SysRoleDao {

	/**
	 * 查询所有的权限 创建时间：2015-1-16 下午9:05:59 <br>
	 * 
	 * @return
	 */
	public List<SysLimit> UserGetRoleLimit();

	/**
	 * 根据权限id和角色id，添加中间表，为角色重新赋予权限
	 * 
	 * @param l_id
	 * @return
	 */
	public int addLimitById(Map map);

	/**
	 * 根据角色id，删除中间表中该角色的所有数据
	 * 
	 * @return
	 */
	public int delLimitById(String r_id);

	/**
	 * 根据角色id，查询所拥有的权限
	 * 
	 * @param r_id
	 * @return
	 */
	public List<SysLimit> getLimitByR_id(String r_id);

	/**
	 * 根据角色id，冻结角色
	 * 
	 * @param r_id
	 * @return
	 */
	public int freeRole(String r_id);

	/**
	 * 修改角色信息
	 * 
	 * @param map
	 * @return
	 */
	public int updateRole(Map map);

	/**
	 * 添加一条数据
	 */
	public int addRole(Map map);

	/**
	 * 查询总数量
	 * 
	 * @return
	 */
	public int getRoleCount(Map map);

	/**
	 * 查询所有角色并进行分页 创建时间：2014-12-30 上午10:47:02 <br>
	 * 
	 * @return
	 */
	public List<SysRole> getRoles(Map map);

	/**
	 * 根据用户id，查询该用户所有的权限 创建时间：2014-12-23 下午9:37:29 <br>
	 * 
	 * @param uid
	 * @return
	 */
	public List<SysRole> getRolesByUid(String uid);

	/**
	 * 查询所有的角色
	 */
	public List<SysRole> getAllRoles();

}
