package team.ElectricityPatrolSys.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.StatusComm;
import team.ElectricityPatrolSys.service.StatusCommService;

/**
 * 公共状态表的查询
 * 
 * @author guo
 * 
 */
@Controller("statusCommAction")
public class StatusCommAction extends ActionBase {

	@Autowired
	private StatusCommService statusCommService;

	private List<StatusComm> statusComms;

	private StatusComm statusComm; // 接受数据

	Map map;

	/**
	 * 修改状态 创建时间：2015-1-14 下午10:58:46 <br>
	 * 
	 * @return
	 */
	public String updateStruts() {
		try {
			statusCommService.updateStruts(statusComm);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			message = "修改失败！";
			return "input";
		}

	}

	/**
	 * 添加状态 创建时间：2015-1-14 下午10:58:46 <br>
	 * 
	 * @return
	 */
	public String addStruts() {
		try {
			statusCommService.addStruts(statusComm);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			message = "添加失败！";
			return "input";
		}

	}

	/**
	 * 查询不重复的配置类型 创建时间：2015-1-14 下午3:42:24 <br>
	 * 
	 * @return
	 */
	public String getConfigType() {
		try {
			statusComms = statusCommService.getConfigType();
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}

	}

	/**
	 * 根据状态id，将该状态冻结
	 * 
	 * @return
	 */
	public String updateStatusById() {
		try {
			int num = statusCommService.updateStrutsById(statusComm
					.getStatus_id()); // 返回受影响行数
			message = "状态冻结成功!";
		} catch (Exception e) {
			e.printStackTrace();
			message = "状态冻结失败!";
		}
		return "success";
	}

	/**
	 * 查询所有状态
	 * 
	 * @return
	 */
	public String getStatus() {
		try {
			statusComms = statusCommService.getStatus((page - 1) * rows, page
					* rows); // 查詢并分頁
			int num = statusCommService.getCount(); // 查询出总条数
			map = new HashMap();
			map.put("total", num);
			map.put("rows", statusComms);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	/**
	 * 根据传入的配置类型 查询所拥有的状态
	 * 
	 * @return
	 */
	public String getStatusByid() {
		statusComms = statusCommService.getStatusByid(statusComm
				.getConfig_type());
		return "success";
	}

	public List<StatusComm> getStatusComms() {
		return statusComms;
	}

	public void setStatusComms(List<StatusComm> statusComms) {
		this.statusComms = statusComms;
	}

	public StatusComm getStatusComm() {
		return statusComm;
	}

	public void setStatusComm(StatusComm statusComm) {
		this.statusComm = statusComm;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

}
