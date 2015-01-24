package team.ElectricityPatrolSys.entity;

import java.util.Date;
import java.util.List;


public class SysRole {

	private String role_id;               //角色id
			
	private String role_name;				//角色名称
	
	private SysUser sysUser;				//创建用户id		外键
	
	private Date modifidate;				//修改日期
	
	private StatusComm statusComm;			//角色状态	外键
	
	private List<SysRoleLimit> sysRoleLimits;    //角色权限表
	
	private List<SysUserRole> sysUserRoles;      //用户角色表

	public SysRole(String role_id, String role_name, SysUser sysUser,
			Date modifidate, StatusComm statusComm,
			List<SysRoleLimit> sysRoleLimits, List<SysUserRole> sysUserRoles) {
		this.role_id = role_id;
		this.role_name = role_name;
		this.sysUser = sysUser;
		this.modifidate = modifidate;
		this.statusComm = statusComm;
		this.sysRoleLimits = sysRoleLimits;
		this.sysUserRoles = sysUserRoles;
	}

	public SysRole(String role_id, String role_name, SysUser sysUser,
			Date modifidate, StatusComm statusComm,
			List<SysRoleLimit> sysRoleLimits) {
		super();
		this.role_id = role_id;
		this.role_name = role_name;
		this.sysUser = sysUser;
		this.modifidate = modifidate;
		this.statusComm = statusComm;
		this.sysRoleLimits = sysRoleLimits;
	}

	
	public SysRole(String role_id, String role_name, SysUser sysUser,
			Date modifidate, StatusComm statusComm) {
		super();
		this.role_id = role_id;
		this.role_name = role_name;
		this.sysUser = sysUser;
		this.modifidate = modifidate;
		this.statusComm = statusComm;
	}
	
	public SysRole() {
	}
	public String getRole_id() {
		return role_id;
	}
	
	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	
	public String getRole_name() {
		return role_name;
	}
	
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	
	public SysUser getSysUser() {
		return sysUser;
	}
	
	public void setSysUser(SysUser sysUser) {
		this.sysUser = sysUser;
	}
	
	public Date getModifidate() {
		return modifidate;
	}
	
	public void setModifidate(Date modifidate) {
		this.modifidate = modifidate;
	}
	public StatusComm getStatusComm() {
		return statusComm;
	}
	
	public void setStatusComm(StatusComm statusComm) {
		this.statusComm = statusComm;
	}
	
	public List<SysRoleLimit> getSysRoleLimits() {
		return sysRoleLimits;
	}
	
	public void setSysRoleLimits(List<SysRoleLimit> sysRoleLimits) {
		this.sysRoleLimits = sysRoleLimits;
	}
	
	public List<SysUserRole> getSysUserRoles() {
		return sysUserRoles;
	}
	
	public void setSysUserRoles(List<SysUserRole> sysUserRoles) {
		this.sysUserRoles = sysUserRoles;
	}

}
