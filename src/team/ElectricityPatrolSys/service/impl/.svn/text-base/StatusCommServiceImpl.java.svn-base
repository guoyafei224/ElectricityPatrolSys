package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.StatusCommDao;
import team.ElectricityPatrolSys.entity.StatusComm;
import team.ElectricityPatrolSys.service.StatusCommService;

/**
 * 状态表的service层实现类
 * 
 * @author guo
 * 
 */
@Service("StatusCommService")
public class StatusCommServiceImpl implements StatusCommService {

	@Autowired
	private StatusCommDao statusCommDao;

	/**
	 * 添加状态 创建时间：2015-1-14 下午11:03:55 <br>
	 * 
	 * @param sc
	 * @return
	 */
	public int addStruts(StatusComm sc){
		return statusCommDao.addStruts(sc);
	}

	/**
	 * 修改状态 创建时间：2015-1-14 下午11:03:55 <br>
	 * 
	 * @param sc
	 * @return
	 */
	public int updateStruts(StatusComm sc){
		return statusCommDao.updateStruts(sc);
	}

	/**
	 * 查询不重复的配置类型 创建时间：2015-1-14 下午3:41:03 <br>
	 * 
	 * @return
	 */
	public List<StatusComm> getConfigType() {
		return statusCommDao.getConfigType();
	}

	/**
	 * 根据状态id，冻结该状态
	 * 
	 * @param s_id
	 * @return
	 */
	public int updateStrutsById(int s_id) {
		return statusCommDao.updateStrutsById(s_id);
	}

	/**
	 * 查询总条数
	 */
	public int getCount() {
		return statusCommDao.getCount();
	}

	/**
	 * 查询所有的状态
	 */
	@Override
	public List<StatusComm> getStatus(int min, int max) {
		Map map = new HashMap();
		map.put("start", min);
		map.put("end", max);
		return statusCommDao.getStatus(map);
	}

	/**
	 * 根据配置类型，查询所拥有的状态
	 */
	@Override
	public List<StatusComm> getStatusByid(String config_type) {
		List<StatusComm> list = null;
		try {
			list = statusCommDao.getStatusByids(config_type);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
