/**   
* 文件名：SysRoleServiceImpl.java
* 创建日期：2014-12-23   
* 创建人：郭亚飞
* Copyright (c) 2014 by SparkSoft.版权所有.
*/

package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.SysRoleDao;
import team.ElectricityPatrolSys.entity.SysLimit;
import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.entity.SysRoleLimit;
import team.ElectricityPatrolSys.service.SysRoleService;

/**
 * 项目名称：<br>
 * 类名称：SysRoleServiceImpl <br>  
 * 类描述： 角色的service层实现类  <br>
 * 创建人：郭亚飞 
 * 创建时间：2014-12-23 下午11:49:26 <br> 
 * 修改人：   
 * 修改时间：                  <br>  
 * 修改备注：   
 * @version V1.0
 */
@Service("sysRoleService")
public class SysRoleServiceImpl implements SysRoleService {

	@Autowired
	private SysRoleDao sysRoleDao;

	
	/**
	 * 查询所有权限
	 * 创建时间：2015-1-16 下午9:04:45 <br>
	 * @return
	 */
	public List<SysLimit> UserGetRoleLimit(){
		return sysRoleDao.UserGetRoleLimit();
	}
	
	
	/**
	 * 根据权限id和角色id，添加中间表，为角色重新赋予权限
	 * @param l_id
	 * @return
	 */
	public int addLimitById(List limit_ids,String r_id){
		Map map;
		int num=0;
		int i=0;
		if(limit_ids.get(0)=="0"||"0".equals(limit_ids.get(0))){
			//如果第一个是0的话
			i=1;
		}
		for (;i < limit_ids.size(); i++) {       //循环添加
			map=new HashMap();
			map.put("r_id", r_id);
			map.put("l_id", limit_ids.get(i));
			num=sysRoleDao.addLimitById(map);          //添加一条
		}
		return num;
	}
	
	/**
	 * 根据角色id，删除中间表中该角色的所有数据
	 * @return
	 */
	public int delLimitById(String r_id){
		return sysRoleDao.delLimitById(r_id);
	}
	
	/**
	 * 根据角色id查询所拥有的权限
	 * @param r_id
	 * @return
	 */
	public List<SysLimit> getLimitByR_id(String r_id){
	    return sysRoleDao.getLimitByR_id(r_id);
	}
	
	
	/**
	 * 根据角色id冻结角色
	 */
	@Override
	public boolean freeRole(String r_id) {
		int num=sysRoleDao.freeRole(r_id);
		if(num>0){
			return true;
		}else{
			return false;
		}
		
	}

	
	/**
	 * 修改角色信息
	 * @param sr
	 * @return
	 */
	public boolean updateRole(SysRole sr){
		Map map=new HashMap();
		map.put("role_name", sr.getRole_name());
		map.put("role_status_id",sr.getStatusComm().getStatus_id());
		map.put("role_id", sr.getRole_id());
		int con=sysRoleDao.updateRole(map);         //返回受影响行数
		if(con>0){
			return true;
		}else{
			return false;
		}
		
	}
	
	
	/**
	 * 添加一个角色
	 */
	public void addRole(SysRole sr){
		Map map=new HashMap();
		map.put("role_name", sr.getRole_name());
		map.put("role_status_id",sr.getStatusComm().getStatus_id());
		map.put("create_user_id", sr.getSysUser().getUser_id());
		sysRoleDao.addRole(map);
	}
	
	/**
	 * 查询总条数
	 */
	@Override
	public int getRoleCount(String role_name,String status_id) {
		Map map=new HashMap();
		if(!"".equals(role_name)){
			map.put("role_name", role_name);
		}
		if(!"".equals(status_id)){
			map.put("status_id",status_id);
		}
		return sysRoleDao.getRoleCount(map);
	}
	

	/**
	 * 查询所有角色并进行分页
	 * 创建时间：2014-12-30 上午10:47:02 <br>
	 * @return
	 */
	public List<SysRole> getRoles(Integer min,Integer max,String role_name,String status_id){
		Map map=new HashMap();
		map.put("start", min);
		map.put("end", max);
		if(!"".equals(role_name)){
			map.put("role_name", role_name);
		}
		if(!"".equals(status_id)){
			map.put("status_id",status_id);
		}
		return sysRoleDao.getRoles(map);
	}
	
	
	@Override
	public List<SysRole> getRolesByUid(String uid) {
		
		return sysRoleDao.getRolesByUid(uid);
	}

	/*
	 * 创建时间：2014-12-29 下午10:30:32 <br>
	 * <p>Title: getAllRoles</p> 
	 * <p>Description: </p> 
	 * @return 
	 * @see team.ElectricityPatrolSys.service.SysRoleService#getAllRoles()
	 * 查询所有的角色 
	*/
	
	@Override
	public List<SysRole> getAllRoles() {
		
		return sysRoleDao.getAllRoles();
	}

	
}
