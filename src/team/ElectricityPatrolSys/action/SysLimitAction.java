package team.ElectricityPatrolSys.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.SysLimit;
import team.ElectricityPatrolSys.service.SysLimitService;

@Controller("sysLimitAction")
public class SysLimitAction extends ActionBase {

	@Autowired
	private SysLimitService sysLimitService;

	private SysLimit sysLimit;

	/**
	 * 根据id查询权限信息 创建时间：2015-1-16 下午10:50:02 <br>
	 * 
	 * @return
	 */
	public String getLimitById() {
		try {
			sysLimit = sysLimitService.getLimitById(sysLimit.getLimit_id());
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}

	}

	/**
	 * 修改权限 创建时间：2015-1-16 下午10:31:16 <br>
	 * 
	 * @return
	 */
	public String updateLimit() {
		try {
			sysLimitService.updateLimit(sysLimit);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}

	}

	/**
	 * 添加权限 创建时间：2015-1-16 下午10:31:46 <br>
	 * 
	 * @return
	 */
	public String addLimit() {
		try {
			sysLimitService.addLimit(sysLimit);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	/**
	 * 删除权限 创建时间：2015-1-16 下午10:32:02 <br>
	 * 
	 * @return
	 */
	public String deleteLimit() {
		try {
			sysLimitService.deleteLimit(sysLimit.getLimit_id());
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	/**
	 * sysLimit的getter方法 创建时间：2015-1-16 下午10:31:09 <br>
	 * 
	 * @return the sysLimit
	 */

	public SysLimit getSysLimit() {
		return sysLimit;
	}

	/**
	 * sysLimit的setter方法 创建时间：2015-1-16 下午10:31:09 <br>
	 * 
	 * @param sysLimit
	 *            the sysLimit to set
	 */

	public void setSysLimit(SysLimit sysLimit) {
		this.sysLimit = sysLimit;
	}

}
