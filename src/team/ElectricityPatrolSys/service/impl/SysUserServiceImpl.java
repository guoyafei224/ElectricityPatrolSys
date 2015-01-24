/**   
* 文件名：SysUserServiceImpl.java
* 创建日期：2014-12-23   
* 创建人：郭亚飞
* Copyright (c) 2014 by SparkSoft.版权所有.
*/

package team.ElectricityPatrolSys.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.SysUserDao;
import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.entity.SysUserRole;
import team.ElectricityPatrolSys.service.SysUserService;

/**
 * 项目名称：<br>
 * 类名称：SysUserServiceImpl <br>  
 * 类描述：  用户的service层实现类  <br>
 * 创建人：郭亚飞 
 * 创建时间：2014-12-23 下午11:49:01 <br> 
 * 修改人：   
 * 修改时间：                  <br>  
 * 修改备注：   
 * @version V1.0
 */
@Service("sysUserService")
public class SysUserServiceImpl implements SysUserService {

	@Autowired
	private SysUserDao sysUserDao;            
	
	
	/**
	 * 查询所有消缺员信息，未冻结的
	 * @return
	 */
	public List<SysUser> getAllXiao(){
		return sysUserDao.getAllXiao();
	}
	
	/**
	 * 修改用户角色表
	 */
	@Override
	public int updateUserRole(SysUserRole sur) {
		Map map=new HashMap();
		map.put("user_id",sur.getSysUser().getUser_id());
		map.put("role_id",sur.getSysRole().getRole_id());
		return sysUserDao.updateUserRole(map);
	}

	
	/**
	 * 根据用户id，查询用户信息，用于修改前
	 * @param u_id
	 * @return
	 */
	public SysUser getUserById(String u_id){
		return sysUserDao.getUserById(u_id);
	}
	
	/**
	 * 修改该用户信息，根据id
	 * @param u_id
	 * @return
	 */
	public int updateUserById(SysUser sysUser){
		return sysUserDao.updateUserById(sysUser);
	}
	
	
	
	/**
	 * 根据条件删除用户信息，和用户角色表中该用户信息
	 */
	@Override
	public boolean freeUser(String u_id) {
		//sysUserDao.freeUserRole(u_id);	//删除用户角色表中该用户信息
		int num=sysUserDao.freeUser(u_id);      //删除用户
		if(num>0){
			return true;
		}else{
			return false;
		}
		
	}
	
	/**
	 * 添加用户信息
	 * 创建时间：2015-1-6 下午5:30:55 <br>
	 * @return
	 */
	public boolean addUser(SysUser su,String role_id){
			Map map=new HashMap();
			map.put("account", su.getAccount());
			map.put("user_name", su.getUser_name());
			map.put("password", su.getPassword());
			map.put("age", 24);
			map.put("phone", "12345678901");
			map.put("enertDate", su.getEnertDate());
			map.put("regDate", new Date());
			map.put("status_id", su.getStatusComm().getStatus_id());
			String u_id="";
			sysUserDao.addUser(map);
			u_id=(String) map.get("user_id");
			if(!"".equals(u_id)&&u_id!=null){
				map=new HashMap();
				map.put("user_id", u_id);
				map.put("role_id", role_id);
				sysUserDao.addUserRole(map);
			}
			return true;
	}
	
	/**
	 * 查询总条数
	 */
	@Override
	public int getUserCount(String user_name,String status_id) {
		Map map=new HashMap();
		if(!"".equals(user_name)){
			map.put("user_name", user_name);	//用户名,模糊查询
		}
		if(!"".equals(status_id)){
			map.put("status_id", status_id);       //状态id
		}
		return sysUserDao.getUserCount(map);
	}

	/**
	 * 查询所有的用户
	 * 创建时间：2014-12-28 下午12:44:51 <br>
	 * @param page
	 * @param rows
	 * @return
	 */
	public List<SysUser> getSysUsers(int min,int max,String user_name,String status_id){
		List<SysUser> list =null;
		Map map=new HashMap();
		map.put("start", min);
		map.put("end", max);
		if(!"".equals(user_name)){
			map.put("user_name", user_name);	//用户名,模糊查询
		}
		if(!"".equals(status_id)){
			map.put("status_id", status_id);       //状态id
		}
		
		list = sysUserDao.getSysUsers(map);
		return list;
	}
	
	/**
	 * 根据用户id查询所拥有的权限
	 */
	@Override
	public SysUser login(SysUser su) {
		return sysUserDao.login(su);
	}

	/**
	 * 得到所有巡检员
	 * 钱文博
	 */
	@Override
	public List<SysUser> getAllPatrolMember() {
		List<SysUser> PatrolMembers = sysUserDao.getAllPatrolMember();
		return PatrolMembers;
	}

	/**
	 * 个人资料修改
	 * 杨洋
	 */
	@Override
	public void sysUserUpdate(SysUser sysUser) {
		sysUserDao.sysUserUpdate(sysUser);
	}

	/*
	 * 创建时间：2015-1-12 下午10:51:05 <br>
	 * <p>Title: updateUserRole</p> 
	 * <p>Description: </p> 
	 * @param sur
	 * @return 
	 * @see team.ElectricityPatrolSys.service.SysUserService#updateUserRole(team.ElectricityPatrolSys.entity.SysUserRole) 
	*/

}
