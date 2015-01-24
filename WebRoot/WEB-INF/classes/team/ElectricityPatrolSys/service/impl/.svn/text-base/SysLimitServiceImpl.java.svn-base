/**   
 * 文件名：SysLimitServiceImpl.java
 * 创建日期：2014-12-23   
 * 创建人：郭亚飞
 * Copyright (c) 2014 by SparkSoft.版权所有.
 */

package team.ElectricityPatrolSys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ElectricityPatrolSys.dao.SysLimitDao;
import team.ElectricityPatrolSys.entity.SysLimit;
import team.ElectricityPatrolSys.service.SysLimitService;

/**
 * 项目名称：<br>
 * 类名称：SysLimitServiceImpl <br>
 * 类描述： 权限的service层实现类 <br>
 * 创建人：郭亚飞 创建时间：2014-12-23 下午11:49:43 <br>
 * 修改人： 修改时间： <br>
 * 修改备注：
 * 
 * @version V1.0
 */
@Service("sysLimitService")
public class SysLimitServiceImpl implements SysLimitService {

	@Autowired
	private SysLimitDao sysLimitDao;

	/**
	 * 插入新节点
	 * @param sysLimit
	 * @return
	 */
	public int addLimit(SysLimit sysLimit){
		SysLimit limit=sysLimitDao.getMaxLimit_id(sysLimit.getParent_id());
		//查询出该节点下子节点中的最大节点
		sysLimit.setIsleaf(limit.getIsleaf());
		sysLimit.setLeave(limit.getLeave());
		int limit_id=Integer.valueOf((limit.getLimit_id()));     //最大子节点节点id
		sysLimit.setLimit_id(String.valueOf((limit_id+1)));      //为节点id赋值
		int num= sysLimitDao.addLimit(sysLimit);       //添加
		return num;
	}
	
	/**
	 * 根据id删除该节点，如果下面有子节点，先删除子节点 创建时间：2015-1-16 下午11:26:45 <br>
	 * 
	 * @param limit_id
	 * @return
	 */
	public int deleteLimit(String lid) {
		List<SysLimit> limits = sysLimitDao.getChildLimit(lid); // 获得当前节点的所有子节点
		boolean con = true;
		if (limits != null) {          //如果有子节点，先删除子节点
			for (int i = 0; i < limits.size(); i++) {
				List<SysLimit> lis = sysLimitDao.getChildLimit(limits.get(i)
						.getLimit_id()); // 查询孙节点
				if (lis != null) { // 如果下面还有子节点
					//有孙节点
					for (int j = 0; j < lis.size(); j++) {
						//先删除中间表中的对应信息
						sysLimitDao.deleteRoleLimitByLid(lis.get(j).getLimit_id());
						sysLimitDao.deleteLimit(lis.get(j).getLimit_id()); // 删除第三级
					}
				}
				//先删除中间表中的对应信息
				sysLimitDao.deleteRoleLimitByLid(limits.get(i).getLimit_id());
				sysLimitDao.deleteLimit(limits.get(i).getLimit_id()); // 删除第二级
			}
		}
		//先删除中间表中的对应信息
		int one=sysLimitDao.deleteRoleLimitByLid(lid);
		int two= sysLimitDao.deleteLimit(lid);           //删除第一级
		return two;
	}

	/**
	 * 根据id，查询权限信息 创建时间：2015-1-16 下午10:52:33 <br>
	 * 
	 * @param limit_id
	 * @return
	 */
	public SysLimit getLimitById(String limit_id) {
		return sysLimitDao.getLimitById(limit_id);
	}

	/**
	 * 修改权限 创建时间：2015-1-16 下午10:31:16 <br>
	 * 
	 * @return
	 */
	public int updateLimit(SysLimit sysLimit) {
		return sysLimitDao.updateLimit(sysLimit);
	}

	/**
	 * 根据权限id，查询子节点的id
	 * 
	 * @param lid
	 * @return
	 */
	@Override
	public List<SysLimit> getChildLimit(String lid) {

		return sysLimitDao.getChildLimit(lid);
	}

}
