/**   
* 文件名：SysUserDao.java
* 创建日期：2014-12-23   
* 创建人：郭亚飞
* Copyright (c) 2014 by SparkSoft.版权所有.
*/

package team.ElectricityPatrolSys.service;

import java.util.List;

import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.entity.SysUserRole;

/**
 * 项目名称：<br>
 * 类名称：SysUserDao <br>  
 * 类描述： 用户表service接口 <br>
 * 创建人：郭亚飞 
 * 创建时间：2014-12-23 下午6:00:18 <br> 
 * 修改人：   
 * 修改时间：                  <br>  
 * 修改备注：   
 * @version V1.0
 */

public interface SysUserService {

	/**
	 * 查询所有消缺员信息，未冻结的
	 * @return
	 */
	public List<SysUser> getAllXiao();
	
	/**
	 * 修改用户角色表
	 * 创建时间：2015-1-12 下午10:50:47 <br>
	 * @param sur
	 * @return
	 */
	public int updateUserRole(SysUserRole sur);

	/**
	 * 根据用户id，查询用户信息，用于修改前
	 * @param u_id
	 * @return
	 */
	public SysUser getUserById(String u_id);     
	
	/**
	 * 修改该用户信息，根据id
	 * @param u_id
	 * @return
	 */
	public int updateUserById(SysUser sysUser);
	
	/**
	 * 根据条件冻结用户
	 * @return
	 */
	public boolean freeUser(String u_id);
	
	/**
	 * 添加用户信息
	 * 创建时间：2015-1-6 下午5:30:55 <br>
	 * @return
	 */
	public boolean addUser(SysUser su,String role_id);
	
	/**
	 *查询总数量
	 */
	public int getUserCount(String user_name,String status_id);
	
	
	/**
	 * 查询所有的用户
	 * 创建时间：2014-12-28 下午12:44:51 <br>
	 * @param page
	 * @param rows
	 * @return
	 */
	public List<SysUser> getSysUsers(int min,int max,String user_name,String status_id);
	
	/**
	 * 登陆
	 * @author 郭亚飞
	 * @return 登陆者所有信息
	 */
	public SysUser login(SysUser su);
	
	/**
	 * 得到所有巡检员
	 * @author 钱文博
	 * @return
	 */
	public List<SysUser> getAllPatrolMember();
	
	/**
	 * 个人资料修改的方法
	 * @author 杨洋
	 * 创建时间：2014-12-25 下午3:00:56 <br>
	 * @param sysUser
	 * @return
	 */
	 public void sysUserUpdate(SysUser sysUser);
	 
}
