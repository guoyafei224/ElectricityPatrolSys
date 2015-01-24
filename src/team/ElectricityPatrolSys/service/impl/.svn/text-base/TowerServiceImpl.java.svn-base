package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.TowerDao;
import team.ElectricityPatrolSys.entity.Tower;
import team.ElectricityPatrolSys.service.TowerService;

/**
 * 杆塔管理实现接口类
 * 
 * @author 杨维强
 * 
 */
@Service("towerService")
public class TowerServiceImpl implements TowerService {

	@Autowired
	private TowerDao towerDao;

	/**
	 * 得到所有杆塔信息 分页得到所有杆塔信息
	 * 
	 * @author 杨维强
	 */
	public List<Tower> getAllTower(int min, int max) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("start", min);
		map.put("end", max);
		List<Tower> list = towerDao.getAllTower(map);
		return list;
	}

	/**
	 * 得到杆塔信息总条数
	 * 
	 * @author 杨维强
	 * 
	 */
	public Integer getTowerSum() {
		Integer num = 0;
		num = towerDao.getTowerSum();
		return num;
	}
	
	/**
	 * 通过杆塔编号得到杆塔信息
	 * @author 钱文博
	 * @param tower_id
	 * @return
	 */
	public Tower queryTowerInfoById(String tower_id){
		return towerDao.queryTowerInfoById(tower_id);
	}

	@Override
	public List<Tower> getAllTowers() {
		return towerDao.getAllTowers();
	}

	/**
	 * 通过线路编号 查询该线路的所有杆塔
	 * @author 钱文博
	 * @param cId
	 */
	public List<Tower> getTowerByCricuitId(String cId){
		return towerDao.getTowerByCricuitId(cId);
	}
}
