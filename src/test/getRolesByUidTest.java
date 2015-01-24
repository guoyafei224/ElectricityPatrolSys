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
import team.ElectricityPatrolSys.service.SysRoleService;

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

public class getRolesByUidTest {

	/**
	 * 创建时间：2014-12-24 下午11:40:24 <br>
	 * @param args
	 */

	public static void main(String[] args) {
		List<SysLimit> sysLimits=new ArrayList<SysLimit>();
		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		SysRoleService ss= (SysRoleService) ac.getBean("sysRoleService");
		List<SysRole> sr=ss.getRolesByUid("user1001");
		//List<SysRole> sysRoles=sysRoleService.getRolesByUid(uid);
		for (SysRole sysRole : sr) {
			int num=sysRole.getSysRoleLimits().size();           //获得该角色下拥有的权限记录（角色权限表）
			for (int i = 0; i < num; i++) {
				SysLimit sl=sysRole.getSysRoleLimits().get(i).getSysLimit();
				sysLimits.add(sl);           //添加进集合
			}
		}
		
		
		for (SysLimit sysLimit : sysLimits) {
			System.out.print(sysLimit.getLimit_id());
			System.out.print("\t"+sysLimit.getLimit_name());
			System.out.print("\t"+sysLimit.getLeave());
			System.out.print("\t"+sysLimit.getIsleaf()+"\n");
		}

	}

}
