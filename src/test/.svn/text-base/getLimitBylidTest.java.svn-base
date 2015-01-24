/**   
* 文件名：getRolesByUidTest.java
* 创建日期：2014-12-24   
* 创建人：郭亚飞
* Copyright (c) 2014 by SparkSoft.版权所有.
*/

package test;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.ElectricityPatrolSys.entity.SysLimit;
import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.service.SysLimitService;

/**
 * 项目名称：<br>
 * 类名称：getRolesByUidTest <br>  
 * 类描述：  TODO(请输入类的描述) <br>
 * 创建人：郭亚飞 
 * 创建时间：2014-12-24 下午11:40:24 <br> 
 * 修改人：   
 * 修改时间：                  <br>  
 * 修改备注：   
 * @version V1.0
 */

public class getLimitBylidTest {

	/**
	 * 创建时间：2014-12-24 下午11:40:24 <br>
	 * @param args
	 */

	public static void main(String[] args) {
		List<SysLimit> sysLimits=new ArrayList<SysLimit>();
		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		SysLimitService ss=(SysLimitService) ac.getBean("sysLimitService");
		sysLimits=ss.getChildLimit("1");
		
		//List<SysRole> sysRoles=sysRoleService.getRolesByUid(uid);
		
		
		
		for (SysLimit sysLimit : sysLimits) {
			System.out.print(sysLimit.getLimit_id());
			System.out.print("\t"+sysLimit.getLimit_name());
			System.out.print("\t"+sysLimit.getLeave());
			System.out.print("\t"+sysLimit.getIsleaf()+"\n");
		}

	}

}
