package test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.ElectricityPatrolSys.entity.PollTask;
import team.ElectricityPatrolSys.service.PollTaskService;

public class PollTaskTest {

	@Test
	public void getAllPollTask(){
		ApplicationContext ac= new ClassPathXmlApplicationContext("applicationContext.xml");
		PollTaskService pt = (PollTaskService)ac.getBean("pollTaskService");
		List<PollTask> pollTasks;
		PollTask pollTask=new PollTask();
		pollTasks = pt.getPollTaskByPage(1,5,pollTask);
		for(PollTask p:pollTasks){
			//System.out.println(p.getToSysUser().getUser_name());
		}
	}
}
