package team.ElectricityPatrolSys.service;

import java.util.List;

import team.ElectricityPatrolSys.entity.Circuit;

/**
 * 查询 ，添加，修改，删除
 * 
 * @author 王倩
 * 
 */
public interface CircuitService {

	/**
	 * 查询所有线路
	 * 
	 * @return
	 */
	public List<Circuit> getAllCircuit();

	/**
	 * 分页查询所有线路
	 */
	public List<Circuit> getAllCircuits(int min, int max,String circuit_id,String status_id);
    public Integer getCircuit(String circuit_id,String status_id);
	/**
	 * 添加线路
	 * 
	 * @param circuit
	 * @return
	 */
	public int addCircuit(Circuit circuit);
    /**
     * 删除线路
     * @param id
     */
	public void delCircuit(String id);

	/**
	 * 查询线路名字
	 * 
	 * @author 杨维强
	 * @return
	 */
	public List<Circuit> getCircuitName();
 
	 /**
	  * 修改线路
	  * @author 
	  */
	public int updateCircuit(Circuit circuit);
	
	/**
	 * 查询线路通过Id
	 */
	public Circuit getCircuitById(String circuit_id);
	/**
	 * 修改状态
	 */
	public int alterStatus(Circuit circuit);
}

