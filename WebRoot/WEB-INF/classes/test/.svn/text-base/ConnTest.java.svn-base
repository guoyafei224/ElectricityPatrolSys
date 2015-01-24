package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.ElectricityPatrolSys.dao.SysUserDao;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.service.SysUserService;




public class ConnTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		SysUserService sd= (SysUserService) ac.getBean("sysUserService");
		SysUser sus=new SysUser();
		sus.setAccount("guo");
		sus.setPassword("123456");
		SysUser su=sd.login(sus);
		System.out.println(su.getAccount());
	}

}
