/**   
 * 文件名：SysUserDao.java
 * 创建日期：2014-12-23   
 * 创建人：郭亚飞
 * Copyright (c) 2014 by SparkSoft.版权所有.
 */

package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.entity.SysUserRole;

/**
 * 项目名称：<br>
 * 类名称：SysUserDao <br>
 * 类描述： 用户表dao接口 <br>
 * 创建人：郭亚飞 创建时间：2014-12-23 下午6:00:18 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */

public interface SysUserDao {

	
	/**
	 * 查询所有消缺员信息，未冻结的
	 * @return
	 */
	public List<SysUser> getAllXiao();
	/**
	 * 修改用户角色表 for用户表 创建时间：2015-1-12 下午10:49:48 <br>
	 * 
	 * @param sur
	 * @return
	 */
	public int updateUserRole(Map map);

	/**
	 * 根据用户id，查询用户信息，用于修改前
	 * 
	 * @param u_id
	 * @return
	 */
	public SysUser getUserById(String u_id);

	/**
	 * 修改该用户信息，根据id
	 * 
	 * @param u_id
	 * @return
	 */
	public int updateUserById(SysUser sysUser);

	/**
	 * 删除用户所有的角色，操作用户角色表
	 * 
	 * @param u_id
	 * @return
	 */
	// public int freeUserRole(String u_id);
	/**
	 * 根据用户id，删除用户信息
	 * 
	 * @param u_id
	 * @return
	 */
	public int freeUser(String u_id);

	/**
	 * 添加用户角色表 为用户赋权限 创建时间：2015-1-6 下午4:49:41 <br>
	 * 
	 * @param map
	 * @return
	 */
	public int addUserRole(Map map);

	/**
	 * 添加用户 创建时间：2015-1-6 下午4:49:41 <br>
	 * 
	 * @param map
	 * @return
	 */
	public int addUser(Map map);

	/**
	 * 查询总数量
	 */
	public int getUserCount(Map map);

	/**
	 * 查询所有的用户 创建时间：2014-12-28 下午12:44:51 <br>
	 * 
	 * @param page
	 * @param rows
	 * @return
	 */
	public List<SysUser> getSysUsers(Map map);

	/**
	 * 登录的方法 创建时间：2014-12-23 下午9:30:56 <br>
	 * 
	 * @param user
	 * @return
	 */
	public SysUser login(SysUser user);

	/**
	 * 查询所有巡检员
	 * 
	 * @author 钱文博
	 */
	public List<SysUser> getAllPatrolMember();

	/**
	 * 个人资料修改的方法
	 * 
	 * @author 杨洋 创建时间：2014-12-25 下午3:00:56 <br>
	 * @param sysUser
	 * @return
	 */
	public void sysUserUpdate(SysUser sysUser);

}
