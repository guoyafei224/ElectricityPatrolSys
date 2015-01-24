package test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import team.ElectricityPatrolSys.entity.Circuit;
import team.ElectricityPatrolSys.service.CircuitService;

public class CircuitTest {
	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				"applicationContext.xml");
		CircuitService cs = (CircuitService) ac.getBean("circuitService");
		//System.out.println(cs.getAllCircuit());
		Circuit cc=new 	Circuit();
		cc.setCircuit_id("df");
		cc.setCircuit_name("花園路");
		
}
}
