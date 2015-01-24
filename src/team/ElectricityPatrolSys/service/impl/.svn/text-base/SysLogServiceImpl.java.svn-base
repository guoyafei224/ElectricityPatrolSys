package team.ElectricityPatrolSys.service.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.SysLogDao;
import team.ElectricityPatrolSys.entity.SysLog;
import team.ElectricityPatrolSys.service.SysLogService;

/**
 * 项目名称：<br>
 * 类名称：SysLogServiceImpl <br>  
 * 类描述：  用户操作日志的service层实现类  <br>
 * 创建人：郭亚飞 
 * 创建时间：2014-12-23 下午11:49:01 <br> 
 * 修改人：   
 * 修改时间：                  <br>  
 * 修改备注：   
 * @version V1.0
 */
@Service("sysLogService")
public class SysLogServiceImpl implements SysLogService {

	@Autowired
	private SysLogDao sysLogDao;
	
	
	/**
	 * 添加日志文件
	 * @param sysLog
	 * @return
	 */
	public int addSysLog(SysLog sysLog){
		return sysLogDao.addSysLog(sysLog);
	}
	
	
	/**
	 * 查询日志并进行分页
	 */
	@Override
	public List<SysLog> getLogs(int start, int end,Date startTime,Date endTime,String u_id) {
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		map.put("u_id", u_id);
		List<SysLog> logs=sysLogDao.getLogs(map);
		return logs;
	}
	
	/**
	 * 查询总条数
	 */
	@Override
	public int getLogCount(String u_id, Date startTime, Date endTime) {
		Map map=new HashMap();
		map.put("u_id", u_id);
		map.put("startTime", startTime);
		map.put("endTime", endTime);
		return sysLogDao.getLogCount(map);
	}

	
}
