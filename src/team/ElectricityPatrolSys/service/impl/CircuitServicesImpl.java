package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.CircuitDao;
import team.ElectricityPatrolSys.entity.Circuit;
import team.ElectricityPatrolSys.service.CircuitService;

@Service("circuitService")
public class CircuitServicesImpl implements CircuitService {
	@Autowired
	private CircuitDao circuitDao;

	/**
	 * 查询
	 */
	@Override
	public List<Circuit> getAllCircuit() {
		return circuitDao.getAllCircuit();
	}

	/**
	 * 添加
	 */
	@Override
	public int addCircuit(Circuit circuit) {
		return circuitDao.addCircuit(circuit);
	}

	/**
	 * 查询线路名字
	 * 
	 * @author 杨维强
	 * @return
	 */
	public List<Circuit> getCircuitName() {
		return circuitDao.getCircuitName();
	}
    /**
     * 刪除线路
     */
	@Override
	public void delCircuit(String id) {
		circuitDao.delCircuit(id);
	}

	@Override
	/**
	 * 分页查询
	 */
	public List<Circuit> getAllCircuits(int min, int max, String circuit_id,
			String status_id) {
		Map map = new HashMap();
		map.put("start", min);
		map.put("end", max);
		map.put("circuit_id", circuit_id);
		map.put("status_id", status_id);
		List<Circuit> list = circuitDao.getAllCircuits(map);
		return list;
	}
    /**
     * 线路总条数
     */
	@Override
	public Integer getCircuit(String circuit_id,String status_id) {
		Map map = new HashMap();
		map.put("circuit_id", circuit_id);
		map.put("status_id", status_id);
		return circuitDao.getCircuit(map);
	}
    /**
     * 修改线路
     */
	@Override
	public int updateCircuit(Circuit circuit) {
		return circuitDao.updateCircuit(circuit);
	}
    /**
     * 通过id查询线路
     */
	@Override
	public Circuit getCircuitById(String circuit_id) {
		return circuitDao.getCircuitById(circuit_id);
	}
    /**
     * 修改状态
     */
	@Override
	public int alterStatus(Circuit circuit) {
		return circuitDao.alterStatus(circuit);
	}

}
