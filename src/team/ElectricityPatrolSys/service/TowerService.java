package team.ElectricityPatrolSys.service;

import java.util.List;

import team.ElectricityPatrolSys.entity.Tower;

/**
 * 杆塔管理接口
 * 
 * @author 杨维强
 * 
 */
public interface TowerService {
	/**
	 * 得到所有杆塔信息 分页得到所有杆塔信息
	 * 
	 * @author 杨维强
	 * 
	 */
	public List<Tower> getAllTower(int min, int max);

	/**
	 * 得到杆塔信息总条数
	 * 
	 * @author 杨维强
	 */
	public Integer getTowerSum();

	/**
	 * 王倩
	 * 
	 * @return
	 */
	public List<Tower> getAllTowers();
	
	/**
	 * 通过杆塔编号得到杆塔信息
	 * @author 钱文博
	 * @param tower_id
	 * @return
	 */
	public Tower queryTowerInfoById(String tower_id);
	
	/**
	 * 通过线路编号 查询该线路的所有杆塔
	 * @author 钱文博
	 * @param cId
	 */
	public List<Tower> getTowerByCricuitId(String cId);
}
