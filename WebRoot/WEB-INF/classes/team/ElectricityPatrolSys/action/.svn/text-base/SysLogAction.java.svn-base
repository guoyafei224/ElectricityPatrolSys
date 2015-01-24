package team.ElectricityPatrolSys.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;

import team.ElectricityPatrolSys.entity.SysLog;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.service.SysLogService;

/**
 * 项目名称：<br>
 * 类名称：SysLogAction <br>
 * 类描述： TODO(请输入类的描述) <br>
 * 创建人：郭亚飞 创建时间：2014-12-25 上午11:06:22 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */
@Controller("sysLogAction")
public class SysLogAction extends ActionBase {

	@Autowired
	private SysLogService sysLogService;

	private Date startTime; // 开始时间

	private Date endTime; // 结束时间

	private String u_id; // 用户id

	private Map map;
	
	private String log_type;    //接受日志类型
	
	private String message;

	
	
	/**
	 * 添加日志
	 * @return
	 */
	public String addLog(){
		SysLog sysLog=new SysLog();
		try {
			
			String u_id = ((SysUser) ActionContext.getContext().getSession()
					.get("loginUser")).getUser_id();
			sysLog.setUser_id(u_id);
			sysLog.setOperate_type(log_type);
			sysLog.setOperate_date(new Date());       //信息存入对象
			sysLogService.addSysLog(sysLog);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			
			return "input";
		}
	}
	
	/**
	 * 获取所有的log，进行分页，和按条件查询
	 * 
	 * @return
	 */
	public String getLogs() {
		try {
			List<SysLog> logs = sysLogService.getLogs((page - 1) * rows,
					(page * rows), startTime, endTime, u_id);
			int num = sysLogService.getLogCount(u_id, startTime, endTime); // 查询总条数
			map = new HashMap();
			map.put("total", num);
			map.put("rows", logs);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

	public String getLog_type() {
		return log_type;
	}

	public void setLog_type(String log_type) {
		this.log_type = log_type;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	
}
