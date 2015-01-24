package test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.ElectricityPatrolSys.entity.BugType;
import team.ElectricityPatrolSys.entity.StatusComm;
import team.ElectricityPatrolSys.service.BugTypeService;

public class BugTypeTest {
	public static void main(String[] args) {
		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		BugTypeService bugTypeService=(BugTypeService)ac.getBean("bugTypeService");
		/*List<BugType> bugtype=bugTypeService.bugTypeSelect();
		for (int i = 0; i < args.length; i++) {
			System.out.println(bugtype.getStatusComm().getConfig_name());
		}
		for (BugType bugType2 : bugtype) {
			System.out.println(bugType2.getBug_type_name());
			//System.out.println(bugType2.getStatusComm().getConfig_name());
		}*/
		//StatusComm statusComm=new StatusComm();
		BugType bugType=new BugType();
		bugType.setBug_type_id("1014");
		//bugType.setBug_type_name("河栏断裂");
		//statusComm.setStatus_id(1006);
		//bugType.setStatusComm(statusComm);
		bugTypeService.bugTypeDelete(bugType);
		//System.out.println(num);
	}
}
