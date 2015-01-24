package team.ElectricityPatrolSys.entity;


public class StatusComm {

	private Integer status_id;		//状态id
	
	private String config_type;		//配置类型
	
	private String config_desc;		//配置描述
	
	private Integer useType;		//该配置是否启用
	
	private String config_name;		//配置名称
	
	public StatusComm() {
	}
	
	public StatusComm(Integer status_id, String config_type,
			String config_desc, Integer useType, String config_name) {
		super();
		this.status_id = status_id;
		this.config_type = config_type;
		this.config_desc = config_desc;
		this.useType = useType;
		this.config_name = config_name;
	}
	
	public Integer getStatus_id() {
		return status_id;
	}
	
	public void setStatus_id(Integer status_id) {
		this.status_id = status_id;
	}
	
	public String getConfig_type() {
		return config_type;
	}
	
	public void setConfig_type(String config_type) {
		this.config_type = config_type;
	}
	
	public String getConfig_desc() {
		return config_desc;
	}
	
	public void setConfig_desc(String config_desc) {
		this.config_desc = config_desc;
	}

	public Integer getUseType() {
		return useType;
	}
	
	public void setUseType(Integer useType) {
		this.useType = useType;
	}
	
	public String getConfig_name() {
		return config_name;
	}
	
	public void setConfig_name(String config_name) {
		this.config_name = config_name;
	}
	
}
