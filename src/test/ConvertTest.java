package test;

import java.util.Date;

import team.ElectricityPatrolSys.util.Convert;

public class ConvertTest {

	public static void main(String[] args) {
		String str="2014-1-4";
		Date dt = Convert.parseString(str);
		System.out.println(dt);
		System.out.println(Convert.parseString2(str));
	}
}
