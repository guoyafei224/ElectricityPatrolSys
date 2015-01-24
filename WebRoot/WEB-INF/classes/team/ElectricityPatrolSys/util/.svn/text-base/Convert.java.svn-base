package team.ElectricityPatrolSys.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 钱文博
 * 日期 字符串转换
 */
public class Convert {
	
	private static Date dt=null;
	private static SimpleDateFormat sdf;
	
	/**
	 * 字符串转换日期类型
	 * yyyy-MM-dd
	 * @param str
	 * @return
	 */
	public static Date parseString(String str){
		if(str==null||"".equals(str)){
			return null;
		}
		sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date dt=null;
		try {
			dt = sdf.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dt;
	}
	
	/**
	 * 字符串转换日期类型
	 * yyyy-mm-dd hh:mm:ss
	 */
	public static Date parseString2(String str){
		if(str==null||"".equals(str)){
			return null;
		}
		sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		try {
			dt = sdf.parse(str);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return dt;
	}
	
	/**
	 * 日期转换成字符串
	 * @param date
	 * @return
	 */
	public static String formatDate(Date date){
		if(date==null){
			return null;
		}
		sdf=new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}
	
	/**
	 * 日期转换成字符串
	 * @param date
	 * @return
	 */
	public static String formatDate2(Date date){
		if(date==null){
			return null;
		}
		sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sdf.format(date);
	}
}
