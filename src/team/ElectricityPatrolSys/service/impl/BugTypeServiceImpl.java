package team.ElectricityPatrolSys.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.BugTypeDao;
import team.ElectricityPatrolSys.entity.BugType;
import team.ElectricityPatrolSys.service.BugTypeService;
@Service("bugTypeService")
public class BugTypeServiceImpl implements BugTypeService{
	@Autowired
	private BugTypeDao bugTypeDao; 
	/**
	 * 修改缺陷类型
	 */
	@Override
	public void bugTypeUpdate(BugType bugType) {
		bugTypeDao.bugTypeUpdate(bugType);
	}
	/**
	 * 删除缺陷类型
	 */
	@Override
	public void bugTypeDelete(BugType bugType) {
		bugTypeDao.bugTypeDelete(bugType);
		
	}
	/**
	 * 查询缺陷类型
	 */
	@Override
	public List<BugType> bugTypeSelect() {
		List<BugType> list=bugTypeDao.bugTypedSelect();
		return list;
	}
	/**
	 * 添加缺陷类型
	 */
	@Override
	public int bugTypedAdd(BugType bugType) {
		Map map=new HashMap();
		map.put("bug_type_name", bugType.getBug_type_name());
		map.put("status_id", bugType.getStatusComm().getStatus_id());
		int bt=bugTypeDao.bugTypeAdd(map);
		return bt;
	}
	public BugTypeDao getBugTypeDao() {
		return bugTypeDao;
	}
	public void setBugTypeDao(BugTypeDao bugTypeDao) {
		this.bugTypeDao = bugTypeDao;
	}
	

	

}
