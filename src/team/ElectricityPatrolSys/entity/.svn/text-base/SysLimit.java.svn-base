package team.ElectricityPatrolSys.entity;

import java.util.ArrayList;
import java.util.List;


public class SysLimit {

	private String limit_id;                   //权限id
	
	private String limit_name;					//权限名称
	
	private Integer leave;						//权限等级    单词写错了，改起来太多le，见谅
	
	private StatusComm statusComm;			//权限状态id  外键
	
	private int limit_status_id;        //状态id
	
	private String url;							//权限url
	
	private String parent_id;					//父节点id
	
	private Integer isleaf;						//是否shi最低级别    

	private List<SysLimit> sysLimits=new ArrayList<SysLimit>();           //该权限下，所拥有的子权限
	
	public SysLimit(String limit_id, String limit_name, Integer leave,
			StatusComm statusComm, String url, String parent_id,
			Integer isleaf, List<SysLimit> sysLimits) {
		this.limit_id = limit_id;
		this.limit_name = limit_name;
		this.leave = leave;
		this.statusComm = statusComm;
		this.url = url;
		this.parent_id = parent_id;
		this.isleaf = isleaf;
		this.sysLimits = sysLimits;
	}
	public SysLimit(String limit_id, String limit_name, Integer leave,
			StatusComm statusComm, String url, String parent_id, Integer isleaf) {
		super();
		this.limit_id = limit_id;
		this.limit_name = limit_name;
		this.leave = leave;
		this.statusComm = statusComm;
		this.url = url;
		this.parent_id = parent_id;
		this.isleaf = isleaf;
	}
	
	public SysLimit() {
	}
	
	public String getLimit_id() {
		return limit_id;
	}
	
	public void setLimit_id(String limit_id) {
		this.limit_id = limit_id;
	}
	
	public String getLimit_name() {
		return limit_name;
	}
	
	public void setLimit_name(String limit_name) {
		this.limit_name = limit_name;
	}
	
	public Integer getLeave() {
		return leave;
	}
	
	public void setLeave(Integer leave) {
		this.leave = leave;
	}
	
	public StatusComm getStatusComm() {
		return statusComm;
	}
	
	public void setStatusComm(StatusComm statusComm) {
		this.statusComm = statusComm;
	}
	
	public String getUrl() {
		return url;
	}
	
	public void setUrl(String url) {
		this.url = url;
	}
	
	public String getParent_id() {
		return parent_id;
	}
	
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	
	public Integer getIsleaf() {
		return isleaf;
	}
	
	public void setIsleaf(Integer isleaf) {
		this.isleaf = isleaf;
	}

	public List<SysLimit> getSysLimits() {
		return sysLimits;
	}

	public void setSysLimits(List<SysLimit> sysLimits) {
		this.sysLimits = sysLimits;
	}
	
	public int getLimit_status_id() {
		return limit_status_id;
	}
	
	public void setLimit_status_id(int limit_status_id) {
		this.limit_status_id = limit_status_id;
	}
	
	public SysLimit(String limit_id, String limit_name, Integer leave,
			StatusComm statusComm, int limit_status_id, String url,
			String parent_id, Integer isleaf, List<SysLimit> sysLimits) {
		this.limit_id = limit_id;
		this.limit_name = limit_name;
		this.leave = leave;
		this.statusComm = statusComm;
		this.limit_status_id = limit_status_id;
		this.url = url;
		this.parent_id = parent_id;
		this.isleaf = isleaf;
		this.sysLimits = sysLimits;
	}

}
