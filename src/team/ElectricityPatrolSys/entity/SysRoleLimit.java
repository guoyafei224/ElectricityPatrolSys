package team.ElectricityPatrolSys.entity;


public class SysRoleLimit {

	private Integer id;          //角色权限表id
	
	private SysRole sysRole;	//角色id
	
	private SysLimit sysLimit;	//权限id
	
	public SysRoleLimit(Integer id, SysRole sysRole, SysLimit sysLimit) {
		this.id = id;
		this.sysRole = sysRole;
		this.sysLimit = sysLimit;
	}
	
	public SysRoleLimit() {
	}
	
	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public SysRole getSysRole() {
		return sysRole;
	}
	
	public void setSysRole(SysRole sysRole) {
		this.sysRole = sysRole;
	}
	
	public SysLimit getSysLimit() {
		return sysLimit;
	}

	public void setSysLimit(SysLimit sysLimit) {
		this.sysLimit = sysLimit;
	}
	
}
