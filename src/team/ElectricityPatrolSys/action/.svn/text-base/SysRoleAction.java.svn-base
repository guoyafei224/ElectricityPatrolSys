/**   
 * 文件名：SysRoleAction.java
 * 创建日期：2014-12-25   
 * 创建人：郭亚飞
 * Copyright (c) 2014 by SparkSoft.版权所有.
 */

package team.ElectricityPatrolSys.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.StatusComm;
import team.ElectricityPatrolSys.entity.SysLimit;
import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.entity.SysRoleLimit;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.service.SysLimitService;
import team.ElectricityPatrolSys.service.SysRoleService;

import com.opensymphony.xwork2.ActionContext;

/**
 * 项目名称：<br>
 * 类名称：SysRoleAction <br>
 * 类描述： TODO(请输入类的描述) <br>
 * 创建人：郭亚飞 创建时间：2014-12-25 上午11:06:22 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */
@Controller("sysRoleAction")
public class SysRoleAction extends ActionBase {

	@Autowired
	private SysRoleService sysRoleService;

	@Autowired
	private SysLimitService SysLimitService;

	private List<SysRole> sysRoles = new ArrayList<SysRole>(); // 传递参数的实体类

	private List<SysLimit> Limits; // 首页用

	private String message; // 传递错误

	private SysRole sysRole;

	private Map map;

	private String role_name; // 角色名

	private String status_id; // 状态

	private List<SysRoleLimit> sysRoleLimits; // 角色权限表

	private List limit_id;

	private List<SysLimit> sysLimits; // 权限分配页面用

	/**
	 * 查询所有的权限 创建时间：2015-1-16 下午9:02:36 <br>
	 * 
	 * @return
	 */
	public String UserGetRoleLimit() {
		try {
			sysLimits = sysRoleService.UserGetRoleLimit(); // 查询所有
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}

	}

	/**
	 * 根据用户id，查询所拥有的权限 创建时间：2014-12-25 上午11:08:13 <br>
	 * 
	 * @return
	 */
	public String UserRole() {
		String uid = ((SysUser) ActionContext.getContext().getSession()
				.get("loginUser")).getUser_id();
		List<SysRole> sysRoles = sysRoleService.getRolesByUid(uid);
		Limits = new ArrayList<SysLimit>();
		for (SysRole sysRole : sysRoles) {
			int num = sysRole.getSysRoleLimits().size(); // 获得该角色下拥有的权限记录（角色权限表）
			for (int i = 0; i < num; i++) {
				SysLimit sl = sysRole.getSysRoleLimits().get(i).getSysLimit();
				/*
				 * if(sl.getIsleaf()==0){ List<SysLimit>
				 * limits=SysLimitService.getChildLimit(sl.getLimit_id());
				 * //根据权限id，查询所属的直接子类 sl.setSysLimits(limits); //添加进本个权限的子类集合 }
				 */
				Limits.add(sl); // 添加进集合
			}
		}
		if (sysRoles.size() > 0) {
			Map session = ActionContext.getContext().getSession();
			session.put("roleLimit", sysRoles); // 将查询出的数据存入session
			return "getRoleSuccess";
			// 查询成功
		} else {
			message = "该用户尚未分配角色";
			return "getRoleInput";
			// 失败
		}
	}

	/**
	 * 重新分配权限
	 * 
	 * @return
	 */
	public String disTriLimit() {
		try {
			int num = sysRoleService.delLimitById(sysRole.getRole_id());
			int num1 = sysRoleService.addLimitById(limit_id,
					sysRole.getRole_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}

	/**
	 * 根据所拥有的角色id，查询权限
	 * 
	 * @return
	 */
	public String getLimitByR_id() {
		try {
			Limits = sysRoleService.getLimitByR_id(sysRole.getRole_id());
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}

	}

	/**
	 * 删除角色
	 * 
	 * @return
	 */
	public String freeRole() {
		boolean con = sysRoleService.freeRole(sysRole.getRole_id());
		if (con) {
			message = "冻结成功";
		} else {
			message = "冻结未成功";
		}
		return "success";

	}

	/**
	 * 修改角色
	 * 
	 * @return
	 */
	public String updateRole() {
		try {
			sysRoleService.updateRole(sysRole);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	/**
	 * 添加角色
	 * 
	 * @return
	 */
	public String addRole() {
		SysUser su = (SysUser) ActionContext.getContext().getSession()
				.get("loginUser");
		sysRole.setSysUser(su);
		try {
			sysRoleService.addRole(sysRole);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			message = "角色信息添加失败";
			return "input";
		}

	}

	/**
	 * 查询角色并进行分页 创建时间：2014-12-30 上午10:51:58 <br>
	 * 
	 * @return
	 */
	public String getRoles() {
		sysRoles = sysRoleService.getRoles((page - 1) * rows, page * rows,
				role_name, status_id);
		int num = sysRoleService.getRoleCount(role_name, status_id); // 获得总数量
		map = new HashMap();
		map.put("total", num);
		map.put("rows", sysRoles);
		return "success";
	}

	/**
	 * 查询所有的权限
	 */
	public String getAllRole() {
		sysRoles = sysRoleService.getAllRoles();
		return "success";
	}

	/**
	 * sysRoles的getter方法 创建时间：2014-12-25 上午11:32:01 <br>
	 * 
	 * @return the sysRoles
	 */

	public List<SysRole> getSysRoles() {
		return sysRoles;
	}

	/**
	 * sysRoles的setter方法 创建时间：2014-12-25 上午11:32:01 <br>
	 * 
	 * @param sysRoles
	 *            the sysRoles to set
	 */

	public void setSysRoles(List<SysRole> sysRoles) {
		this.sysRoles = sysRoles;
	}

	/**
	 * message的getter方法 创建时间：2014-12-25 上午11:16:20 <br>
	 * 
	 * @return the message
	 */

	public String getMessage() {
		return message;
	}

	/**
	 * message的setter方法 创建时间：2014-12-25 上午11:16:20 <br>
	 * 
	 * @param message
	 *            the message to set
	 */

	public void setMessage(String message) {
		this.message = message;
	}

	public List<SysLimit> getLimits() {
		return Limits;
	}

	public void setLimits(List<SysLimit> limits) {
		Limits = limits;
	}

	/**
	 * sysRole的getter方法 创建时间：2014-12-30 下午3:37:33 <br>
	 * 
	 * @return the sysRole
	 */

	public SysRole getSysRole() {
		return sysRole;
	}

	/**
	 * sysRole的setter方法 创建时间：2014-12-30 下午3:37:33 <br>
	 * 
	 * @param sysRole
	 *            the sysRole to set
	 */

	public void setSysRole(SysRole sysRole) {
		this.sysRole = sysRole;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

	/**
	 * role_name的getter方法 创建时间：2015-1-5 上午10:34:59 <br>
	 * 
	 * @return the role_name
	 */

	public String getRole_name() {
		return role_name;
	}

	/**
	 * role_name的setter方法 创建时间：2015-1-5 上午10:34:59 <br>
	 * 
	 * @param role_name
	 *            the role_name to set
	 */

	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}

	/**
	 * status_id的getter方法 创建时间：2015-1-5 上午11:17:59 <br>
	 * 
	 * @return the status_id
	 */

	public String getStatus_id() {
		return status_id;
	}

	/**
	 * status_id的setter方法 创建时间：2015-1-5 上午11:17:59 <br>
	 * 
	 * @param status_id
	 *            the status_id to set
	 */

	public void setStatus_id(String status_id) {
		this.status_id = status_id;
	}

	public List<SysRoleLimit> getSysRoleLimits() {
		return sysRoleLimits;
	}

	public void setSysRoleLimits(List<SysRoleLimit> sysRoleLimits) {
		this.sysRoleLimits = sysRoleLimits;
	}

	public List getLimit_id() {
		return limit_id;
	}

	public void setLimit_id(List limit_id) {
		this.limit_id = limit_id;
	}

	/**
	 * sysLimits的getter方法 创建时间：2015-1-16 下午9:10:59 <br>
	 * 
	 * @return the sysLimits
	 */

	public List<SysLimit> getSysLimits() {
		return sysLimits;
	}

	/**
	 * sysLimits的setter方法 创建时间：2015-1-16 下午9:10:59 <br>
	 * 
	 * @param sysLimits
	 *            the sysLimits to set
	 */

	public void setSysLimits(List<SysLimit> sysLimits) {
		this.sysLimits = sysLimits;
	}

}
