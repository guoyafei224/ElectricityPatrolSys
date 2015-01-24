package team.ElectricityPatrolSys.entity;

public class Circuit {

	private String circuit_id; // 线路id

	private String circuit_name; // 线路名称

	private Integer circuit_length; // 线路长度

	private Integer hui_length; // 回路长度

	private String start_tower_id; // 杆塔起始编号

	private String end_tower_id; // 杆塔结束编号

	private Integer fund_num; // 该线路总塔基数

	private String des; // 描述

	private Integer isStoppage; // 有无故障

	private StatusComm runstatusComm; // 运行状态

	private StatusComm usestatusComm; // 使用状态

	public Circuit() {
	}

	public String getStart_tower_id() {
		return start_tower_id;
	}

	public void setStart_tower_id(String start_tower_id) {
		this.start_tower_id = start_tower_id;
	}

	public String getCircuit_id() {
		return circuit_id;
	}

	public void setCircuit_id(String circuit_id) {
		this.circuit_id = circuit_id;
	}

	public String getCircuit_name() {
		return circuit_name;
	}

	public void setCircuit_name(String circuit_name) {
		this.circuit_name = circuit_name;
	}

	public Integer getCircuit_length() {
		return circuit_length;
	}

	public void setCircuit_length(Integer circuit_length) {
		this.circuit_length = circuit_length;
	}

	public Integer getHui_length() {
		return hui_length;
	}

	public void setHui_length(Integer hui_length) {
		this.hui_length = hui_length;
	}

	public String getEnd_tower_id() {
		return end_tower_id;
	}

	public void setEnd_tower_id(String end_tower_id) {
		this.end_tower_id = end_tower_id;
	}

	public Integer getFund_num() {
		return fund_num;
	}

	public void setFund_num(Integer fund_num) {
		this.fund_num = fund_num;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	public Integer getIsStoppage() {
		return isStoppage;
	}

	public void setIsStoppage(Integer isStoppage) {
		this.isStoppage = isStoppage;
	}

	public StatusComm getRunstatusComm() {
		return runstatusComm;
	}

	public void setRunstatusComm(StatusComm runstatusComm) {
		this.runstatusComm = runstatusComm;
	}

	public StatusComm getUsestatusComm() {
		return usestatusComm;
	}

	public void setUsestatusComm(StatusComm usestatusComm) {
		this.usestatusComm = usestatusComm;
	}

	public Circuit(String circuit_id, String circuit_name,
			Integer circuit_length, Integer hui_length, String start_tower_id,
			String end_tower_id, Integer fund_num, String des,
			Integer isStoppage, StatusComm runstatusComm,
			StatusComm usestatusComm) {
		this.circuit_id = circuit_id;
		this.circuit_name = circuit_name;
		this.circuit_length = circuit_length;
		this.hui_length = hui_length;
		this.start_tower_id = start_tower_id;
		this.end_tower_id = end_tower_id;
		this.fund_num = fund_num;
		this.des = des;
		this.isStoppage = isStoppage;
		this.runstatusComm = runstatusComm;
		this.usestatusComm = usestatusComm;
	}

}
