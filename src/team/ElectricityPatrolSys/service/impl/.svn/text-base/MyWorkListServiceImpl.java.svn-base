/**   
 * 文件名：MyWorkListServiceImpl.java
 * 创建日期：2015-1-16   
 * 创建人：郭亚飞
 * Copyright (c) 2015 by SparkSoft.版权所有.
 */

package team.ElectricityPatrolSys.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.MyWorkListDao;
import team.ElectricityPatrolSys.entity.MyWorkList;
import team.ElectricityPatrolSys.service.MyWorkListService;

/**
 * 项目名称：<br>
 * 类名称：MyWorkListServiceImpl <br>
 * 类描述： TODO(请输入类的描述) <br>
 * 创建人：郭亚飞 创建时间：2015-1-16 下午3:47:18 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */

@Service("MyWorkListService")
public class MyWorkListServiceImpl implements MyWorkListService {

	@Autowired
	private MyWorkListDao myWorkListDao; //

	/**
	 * 查询消缺员代办数 创建时间：2015-1-16 下午4:41:51 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public int byXiaoCount(String u_id) {
		return myWorkListDao.byXiaoCount(u_id);
	}

	/**
	 * 消缺员，根据个人id，查询自己代办事项 创建时间：2015-1-16 下午3:43:02 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public List<MyWorkList> byXiao(String u_id) {
		return myWorkListDao.byXiao(u_id);
	}

	/**
	 * 查询巡检员代办数 创建时间：2015-1-16 下午4:41:51 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public int byXunCount(String u_id) {
		return myWorkListDao.byXunCount(u_id);
	}

	/**
	 * 巡检员，根据个人id，查看自己代办事项 创建时间：2015-1-16 下午3:43:50 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public List<MyWorkList> byXun(String u_id) {
		return myWorkListDao.byXun(u_id);
	}

	/**
	 * 查询线路管理员待处理任务条数 创建时间：2015-1-17 下午9:08:05 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public int byXianCountBehe(String u_id){
		return myWorkListDao.byXianCountBehe(u_id);
	}

	/**
	 * 查询线路管理员待处理巡检任务条数 创建时间：2015-1-17 下午9:08:05 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public int byXianCountPoll(String u_id){
		return myWorkListDao.byXianCountPoll(u_id);
	}

	/**
	 * 线路管理员，根据个人id查询自己代办事项 创建时间：2015-1-16 下午3:44:24 <br>
	 * 消缺
	 * 
	 * @param u_id
	 * @return
	 */
	public List<MyWorkList> byXianBehe(String u_id){
		return myWorkListDao.byXianBehe(u_id);
	}

	
	
	/**
	 * 线路管理员，根据个人id查询自己代办事项 创建时间：2015-1-16 下午3:44:24 <br>
	 * 巡检
	 * 
	 * @param u_id
	 * @return
	 */
	public List<MyWorkList> byXianPoll(String u_id){
		return myWorkListDao.byXianPoll(u_id);
	}

	/**
	 * 查询线路管理员待处理任务条数 创建时间：2015-1-17 下午9:08:05 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public int byGuanCountBehe() {
		return myWorkListDao.byGuanCountBehe();
	}

	/**
	 * 查询线路管理员待处理巡检任务条数 创建时间：2015-1-17 下午9:08:05 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public int byGuanCountPoll(){
		return myWorkListDao.byGuanCountPoll();
	}
	
	/**
	 * 系统管理员，查看自己代办事项 创建时间：2015-1-16 下午3:44:24 <br>
	 * 
	 * @param u_id
	 * @return
	 */
	public List<MyWorkList> byGuan() {
		List<MyWorkList> beheList=null;      //消缺
		List<MyWorkList> pollList=null;      //巡检
		beheList=myWorkListDao.byGuanBehe();
		pollList=myWorkListDao.byGuanPoll();     
		for (MyWorkList myWorkList : pollList) {
			beheList.add(myWorkList);       //添加进总集合
		}
		return beheList;
	}


}
