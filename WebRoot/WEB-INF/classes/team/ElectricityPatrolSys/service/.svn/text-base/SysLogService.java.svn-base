package team.ElectricityPatrolSys.service;

import java.util.Date;
import java.util.List;

import team.ElectricityPatrolSys.entity.SysLog;

/**
 * 项目名称：<br>
 * 类名称：SysLogDao <br>  
 * 类描述：  角色service接口 <br>
 * 创建人：郭亚飞 
 * 创建时间：2014-12-23 下午6:03:01 <br> 
 * 修改人：   
 * 修改时间：                  <br>  
 * 修改备注：   
 * @version V1.0
 */
public interface SysLogService {

	/**
	 * 添加日志文件
	 * @param sysLog
	 * @return
	 */
	public int addSysLog(SysLog sysLog);
	
	/**
	 * 查询日志
	 * @param start
	 * @param end
	 * @param startTime
	 * @param endTime
	 * @return
	 */
	public List<SysLog> getLogs(int start,int end,Date startTime,Date endTime,String u_id);
	
	/**
	 * 查询总条数
	 * @param u_id
	 * @param startTime
	 * @param endTime
	 * @return
	 */
	public int getLogCount(String u_id,Date startTime,Date endTime);
}
