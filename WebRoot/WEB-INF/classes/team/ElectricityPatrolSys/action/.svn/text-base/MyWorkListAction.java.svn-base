/**   
 * 文件名：MyWorkListAction.java
 * 创建日期：2015-1-16   
 * 创建人：郭亚飞
 * Copyright (c) 2015 by SparkSoft.版权所有.
 */

package team.ElectricityPatrolSys.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.MyWorkList;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.service.MyWorkListService;

import com.opensymphony.xwork2.ActionContext;

/**
 * 项目名称：<br>
 * 类名称：MyWorkListAction <br>
 * 类描述： TODO(请输入类的描述) <br>
 * 创建人：郭亚飞 创建时间：2015-1-16 下午3:58:24 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */

@Controller("myWorkListAction")
public class MyWorkListAction extends ActionBase {

	@Autowired
	private MyWorkListService myWorkListService;

	private List<MyWorkList> works; // 代办列表

	Map map; // 用于返回

	/**
	 * 消缺员de待办事项 创建时间：2015-1-16 下午4:04:19 <br>
	 * 
	 * @return
	 */
	public String byXiao() {
		try {
			String u_id = ((SysUser) ActionContext.getContext().getSession()
					.get("loginUser")).getUser_id();
			works = myWorkListService.byXiao(u_id);
			int count = myWorkListService.byXiaoCount(u_id);
			map = new HashMap();
			map.put("total", count);
			map.put("rows", works);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	/**
	 * 巡检员de待办事项 创建时间：2015-1-16 下午4:04:19 <br>
	 * 
	 * @return
	 */
	public String byXun() {
		try {
			String u_id = ((SysUser) ActionContext.getContext().getSession()
					.get("loginUser")).getUser_id();
			works = myWorkListService.byXun(u_id);
			int count = myWorkListService.byXunCount(u_id);
			map = new HashMap();
			map.put("total", count);
			map.put("rows", works);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	/**
	 * 线路管理员de待办事项 创建时间：2015-1-16 下午4:04:19 <br>
	 * 
	 * @return
	 */
	public String byXian() {
		try {
			String u_id = ((SysUser) ActionContext.getContext().getSession()
					.get("loginUser")).getUser_id();
			List<MyWorkList> lists=new ArrayList<MyWorkList>();          //声明list
			works=myWorkListService.byXianBehe(u_id);          //结果
			lists=myWorkListService.byXianPoll(u_id);
			for (MyWorkList myWorkList : lists) {
				works.add(myWorkList);      //添加进works
			}
			int num1=myWorkListService.byXianCountBehe(u_id);     //结果
			int num2=myWorkListService.byXianCountPoll(u_id);    //巡检条数
			int count=num1+num2;
			
			map = new HashMap();
			map.put("total", count);
			map.put("rows", works);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
		
	}

	/**
	 * 系统管理员de待办事项 创建时间：2015-1-16 下午4:04:19 <br>
	 * 
	 * @return
	 */
	public String byGuan() {
		try {
			works=myWorkListService.byGuan();      //结果
			int num2=myWorkListService.byGuanCountPoll();    //巡检条数
			int num1=myWorkListService.byGuanCountBehe();     //结果
			int count=num1+num2;     //总条数
			
			map=new HashMap();
			map.put("total", count);
			map.put("rows", works);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}

	/**
	 * works的getter方法 创建时间：2015-1-16 下午4:09:53 <br>
	 * 
	 * @return the works
	 */

	public List<MyWorkList> getWorks() {
		return works;
	}

	/**
	 * works的setter方法 创建时间：2015-1-16 下午4:09:53 <br>
	 * 
	 * @param works
	 *            the works to set
	 */

	public void setWorks(List<MyWorkList> works) {
		this.works = works;
	}

	/**
	 * map的getter方法 创建时间：2015-1-16 下午4:10:55 <br>
	 * 
	 * @return the map
	 */

	public Map getMap() {
		return map;
	}

	/**
	 * map的setter方法 创建时间：2015-1-16 下午4:10:55 <br>
	 * 
	 * @param map
	 *            the map to set
	 */

	public void setMap(Map map) {
		this.map = map;
	}

}
