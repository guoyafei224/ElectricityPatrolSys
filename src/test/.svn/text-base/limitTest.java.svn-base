package test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.ElectricityPatrolSys.entity.SysRole;
import team.ElectricityPatrolSys.service.SysRoleService;

public class limitTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		SysRoleService srs= (SysRoleService) ac.getBean("sysRoleService");
		List<SysRole> sr=srs.getRolesByUid("role1001");
		for (SysRole sysRole : sr) {
			System.out.println(sysRole.getRole_name());
		}
	}

}
