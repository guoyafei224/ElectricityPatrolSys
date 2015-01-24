package team.ElectricityPatrolSys.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.base.Tree;
import team.ElectricityPatrolSys.entity.Circuit;
import team.ElectricityPatrolSys.entity.StatusComm;
import team.ElectricityPatrolSys.entity.Tower;
import team.ElectricityPatrolSys.service.CircuitService;
import team.ElectricityPatrolSys.service.StatusCommService;
import team.ElectricityPatrolSys.service.TowerService;

@Controller("circuitAction")
public class CircuitAction extends ActionBase {

	@Autowired
	private CircuitService circuitService;
	private List<Tower> towers;
	private List<Circuit> circuits; // 接收后台线路数据
	private List<Tree> trees;
	private List<StatusComm> statusComm;
	@Autowired
	private TowerService towerService;
	@Autowired
	private StatusCommService statusCommService;
	private JSONObject obj; // 传递到前台的数据
	private String circuit_id;
	private String status_id;
	private Map map;
	private Circuit circuit;

	public Circuit getCircuit() {
		return circuit;
	}

	public void setCircuit(Circuit circuit) {
		this.circuit = circuit;
	}

	/**
	 * 查詢
	 * 
	 * @return
	 */
	public String getAllCircuit() {
		circuits = circuitService.getAllCircuit();
		return "getAllCircuit";
	}

	/**
	 * 修改状态
	 * 
	 * @return
	 */
	public String alterStatus() {
		circuitService.alterStatus(circuit);
		circuit = null;
		return "alterStatus";
	}

	/**
	 * 分页查询
	 */
	public String queryallCircuit() {
		circuits = circuitService.getAllCircuits((page - 1) * rows,
				page * rows, circuit_id, status_id);
		map = new HashMap();
		map.put("total", circuitService.getCircuit(circuit_id, status_id));
		map.put("rows", circuits);
		circuit_id = null;
		status_id = null;
		return "getAllCircuits";
	}

	/**
	 * 查询所有杆塔
	 * 
	 * @return
	 */
	public String getAllTowers() {
		towers = towerService.getAllTowers();
		Tree tree;
		trees = new ArrayList<Tree>();
		for (Tower t : towers) {
			tree = new Tree();
			tree.setId(t.getTower_id());
			tree.setText(t.getTower_id());
			trees.add(tree);
		}
		return "getAllTower";
	}

	/**
	 * 查询线路状态
	 */
	public String queryCircuitSC() {
		statusComm = statusCommService.getStatusByid("use_status_id");
		return "querycircuit";
	}

	/**
	 * 添加
	 * 
	 * @return
	 */
	public String addCircuit() {
		if ("".equals(circuit.getCircuit_id())
				|| circuit.getCircuit_id() == null) {
			circuit.setIsStoppage(0);
			StatusComm sc = new StatusComm();
			sc.setStatus_id(1011);
			circuit.setRunstatusComm(sc);
			circuitService.addCircuit(circuit);
		} else {
			circuitService.updateCircuit(circuit);
		}
		circuit = null;
		return "addCircuit";
	}

	/**
	 * 修改线路
	 */
	public String updateCircuit() {
		circuitService.updateCircuit(circuit);
		return "updateCircuit";
	}

	/**
	 * 通过id查找线路信息
	 */
	public String getCircuitById() {
		circuit = circuitService.getCircuitById(circuit.getCircuit_id());
		return "getCircuitById";
	}

	/**
	 * 删除
	 * 
	 * @return
	 */
	public String delCircuit(String id) {
		circuitService.delCircuit(id);
		return "delCircuit";
	}

	public List<Circuit> getCircuits() {
		return circuits;
	}

	public void setCircuits(List<Circuit> circuits) {
		this.circuits = circuits;
	}

	public List<Tree> getTrees() {
		return trees;
	}

	public void setCircuit_id(String circuit_id) {
		this.circuit_id = circuit_id;
	}

	public void setStatus_id(String status_id) {
		this.status_id = status_id;
	}

	public void setTrees(List<Tree> trees) {
		this.trees = trees;
	}

	public List<Tower> getTowers() {
		return towers;
	}

	public void setTowers(List<Tower> towers) {
		this.towers = towers;
	}

	public List<StatusComm> getStatusComm() {
		return statusComm;
	}

	public void setStatusComm(List<StatusComm> statusComm) {
		this.statusComm = statusComm;
	}

	public JSONObject getObj() {
		return obj;
	}

	public void setObj(JSONObject obj) {
		this.obj = obj;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

}
