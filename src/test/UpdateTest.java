package test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.ElectricityPatrolSys.entity.BugType;
import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.service.BugTypeService;
import team.ElectricityPatrolSys.service.SysUserService;

public class UpdateTest {
	public static void main(String[] args) {
	/*	ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		SysUserService sd= (SysUserService) ac.getBean("sysUserService");
		SysUser sus=new SysUser();
		sus.setAccount("xiaoque");
		sus.setUser_id("user1004");
		sus.setAge(20);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		
		try {
			sus.setLeaveDate(sdf.parse("2014-12-29"));
			sus.setPassword("123456");
			sus.setPhone("12345687145");
			sd.sysUserUpdate(sus);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		*/
		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		BugTypeService bugTypeService=(BugTypeService)ac.getBean("bugTypeService");
		BugType bt=new BugType();
		bt.setBug_type_id("1001");
		bt.setBug_type_name("拦断裂");
		bugTypeService.bugTypeUpdate(bt);
	}

	
}
