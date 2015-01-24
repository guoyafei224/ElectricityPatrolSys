package team.ElectricityPatrolSys.dao;

import java.util.List;
import java.util.Map;

import team.ElectricityPatrolSys.entity.SysLog;

/**
 * log用户操作日志，dao层的接口
 * 
 * @author guo
 * 
 */
public interface SysLogDao {

	/**
	 * 查询所有的用户操作日志
	 * 
	 * @return
	 */
	public List<SysLog> getLogs(Map map);

	/**
	 * 查询总条数
	 * 
	 * @param map
	 * @return
	 */
	public int getLogCount(Map map);
	
	/**
	 * 添加日志
	 * @param log_type
	 * @return
	 */
	public int addSysLog(SysLog sysLog);
	
}
