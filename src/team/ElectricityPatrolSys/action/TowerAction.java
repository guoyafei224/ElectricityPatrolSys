package team.ElectricityPatrolSys.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.base.Tree;
import team.ElectricityPatrolSys.dao.StatusCommDao;
import team.ElectricityPatrolSys.entity.Circuit;
import team.ElectricityPatrolSys.entity.Tower;
import team.ElectricityPatrolSys.service.CircuitService;
import team.ElectricityPatrolSys.service.TowerService;

/**
 * 杆塔管理
 * 
 * @author 杨维强
 * 
 */
@Controller("towerAction")
public class TowerAction extends ActionBase {

	@Autowired
	private TowerService towerService;
	@Autowired
	private CircuitService circuitService;
	@Autowired
	private StatusCommDao statusCommDao;

	private List<Tower> towers; // 接收后台杆塔数据

	private List<Circuit> circuit; // 接收后台线路数据

	private JSONObject obj; // 传递到前台的数据

	private List<Tree> trees;

	private Tower tower;

	/**
	 * 查询全部信息
	 * 
	 * @return
	 */
	public String queryAllTower() {
		towers = towerService.getAllTower((page - 1) * rows, page * rows);
		sum = towerService.getTowerSum();
		Map map = new HashMap();
		map.put("total", sum);
		map.put("rows", towers);
		JsonConfig jc = new JsonConfig();
		jc.setExcludes(new String[] { "runstatusComm", "usestatusComm" });
		obj = JSONObject.fromObject(map, jc);
		return "getAllTower";
	}

	/**
	 * 得到路线名字
	 * 
	 * @return
	 */
	public String queryCircuitName() {
		circuit = circuitService.getCircuitName();
		return "getCircuitName";
	}

	/**
	 * 通过杆塔编号 得到杆塔信息
	 * 
	 * @author 钱文博
	 * @param towerService
	 */
	public String queryTowerInfoById() {
		tower = towerService.queryTowerInfoById(tower.getTower_id());
		return "queryTowerInfoById";
	}

	/**
	 * 通过线路编号 查询该线路的所有杆塔
	 * 
	 * @author 钱文博
	 * @param towerService
	 */
	public String getTowerByCricuitId() {
		towers = towerService.getTowerByCricuitId(message);
		Tree tree = null;
		if (null != towers) {
			Tree treeTemp = new Tree();
			treeTemp.setId(towers.get(0).getCircuit().getCircuit_id());
			treeTemp.setText(towers.get(0).getCircuit().getCircuit_name());
			trees = new ArrayList<Tree>();
			for (Tower t : towers) {
				tree = new Tree();
				tree.setId(t.getTower_id());
				tree.setText(t.getTower_id());
				trees.add(tree);
			}
			treeTemp.setChildren(trees);
			trees = new ArrayList<Tree>();
			trees.add(treeTemp);
		}
		return "getTowerByCricuitId";
	}

	public void setTowerService(TowerService towerService) {
		this.towerService = towerService;
	}

	public List<Tower> getTowers() {
		return towers;
	}

	public void setTowers(List<Tower> towers) {
		this.towers = towers;
	}

	public JSONObject getObj() {
		return obj;
	}

	public void setObj(JSONObject obj) {
		this.obj = obj;
	}

	public List<Circuit> getCircuit() {
		return circuit;
	}

	public void setCircuit(List<Circuit> circuit) {
		this.circuit = circuit;
	}

	public Tower getTower() {
		return tower;
	}

	public void setTower(Tower tower) {
		this.tower = tower;
	}

	public List<Tree> getTrees() {
		return trees;
	}

	public void setTrees(List<Tree> trees) {
		this.trees = trees;
	}

}
