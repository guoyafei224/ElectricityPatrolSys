package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.Circuit;

public interface CircuitDao {
	/**
	 * 查询所有线路
	 * 
	 * @author 王倩
	 * @return
	 */
	public List<Circuit> getAllCircuit();

	/**
	 * 分页查询所有线路
	 */
	public List<Circuit> getAllCircuits(Map map);

	/**
	 * 得到条数
	 * 
	 * @return
	 */
	public Integer getCircuit(Map map);

	/**
	 * 添加
	 * 
	 * @author
	 */
	public int addCircuit(Circuit circuit);

	/**
	 * 删除
	 */
	public int delCircuit(String id);

	/**
	 * 得到路线名字
	 * 
	 * @author 杨维强
	 */
	public List<Circuit> getCircuitName();

	/**
	 * 修改线路
	 * 
	 * @author
	 */
	public int updateCircuit(Circuit circuit);

	/**
	 * 通过id查询线路
	 */
	public Circuit getCircuitById(String circuit_id);

	/**
	 * 修改状态
	 */
	public int alterStatus(Circuit circuit);
}
