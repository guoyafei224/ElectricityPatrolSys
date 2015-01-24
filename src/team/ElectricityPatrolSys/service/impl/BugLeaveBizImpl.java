package team.ElectricityPatrolSys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.BugLeaveDao;
import team.ElectricityPatrolSys.entity.BugLeave;
import team.ElectricityPatrolSys.service.BugLeaveBiz;

@Service("bugLeaveBiz")
public class BugLeaveBizImpl implements BugLeaveBiz{

	@Autowired
	private BugLeaveDao bugLeaveDao;
	/**
	 * 获取所有缺陷先级别
	 * @return
	 */
	public List<BugLeave> getAllBugLeave(){
		return bugLeaveDao.getAllBugLeave();
	}
}
