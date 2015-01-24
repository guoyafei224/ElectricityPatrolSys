package team.ElectricityPatrolSys.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.BeHeTask;
import team.ElectricityPatrolSys.entity.BeheTaskUser;
import team.ElectricityPatrolSys.entity.Bug;
import team.ElectricityPatrolSys.service.DoDeElimTaskService;

/**
 * 
* 项目名称：<br>
* 类名称：DoDeElimTaskAction <br>  
* 类描述：  消缺任务的制定与分配<br>
* 创建人：郭亚飞 
* 创建时间：2015-1-20 上午11:19:39 <br> 
* 修改人：   
* 修改时间：                  <br>  
* 修改备注：   
* @version V1.0
 */
@Controller("doDeElimTaskAction")
public class DoDeElimTaskAction extends ActionBase {
	
	@Autowired
	private DoDeElimTaskService DoDeElimTaskService;
	
	private BeHeTask beHeTask;         //消缺任务
	
	private Map map;          //返回结果
	
	private String message;
	
	private Date startTime;		//开始时间，用于查询传参
	
	private Date endTime;     //结束时间
	
	private String task_id; //编号
	
	private String task_name;//任务名
	
	private String status_id;//任务状态
	
	private String user_name;
	
	private List<Bug> bugs;       //传参
	
	private List<BeheTaskUser> beHeUsers;       //用于传参
	
	private List<BeHeTask> beHeTasks;         //消缺任务集合
	
	private String seleUsers;			//	接收选中的用户id
	
	private String bug_ids;            //接收选中的消缺任务id
	
	
	/**
	 * 审核消缺任务,状态改为已完成
	 * 创建时间：2015-1-23 下午3:32:36 <br>
	 * @return
	 */
	public String updateShen(){
		try {
			if(beHeTask.getExam_status()==1){
				int num=DoDeElimTaskService.updateShen(beHeTask);
			}
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			message="审核失败，请联系管理员";
			return "input";
		}
	}
	
	/**
	 * 修改消缺任务
	 * 创建时间：2015-1-23 上午11:16:38 <br>
	 * @return
	 */
	public String updateBeHeTaskByIdForUpdate(){
		try {
			boolean con=DoDeElimTaskService.updateBeHeTaskByIdForUpdate(beHeTask, seleUsers, bug_ids);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}
	
	/**
	 * 点击取消，处理，取消任务
	 * 创建时间：2015-1-21 下午9:55:37 <br>
	 * @return
	 */
	public String cancelTask(){
		try {
			DoDeElimTaskService.updateCancelTask(task_id); //修改
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			message="修改失败！";
			return "input";
		}
	}
	
	/**
	 * 获得未分配的缺陷，和该任务下的缺陷单号
	 * @return
	 */
	public String getWeiAndYiBeHeTask(){
		try {
			bugs=DoDeElimTaskService.getBeHeTaskWei();          //查询所有未分配的消缺任务
			int count=DoDeElimTaskService.getBeHeTaskWeiCoung();     //条数
			List<Bug> listBug=DoDeElimTaskService.getBugById(beHeTask.getTask_id());    //查询当前id下所有的缺陷
			for (int i = 0; i < listBug.size(); i++) {
				bugs.add(listBug.get(i));       //并入一个
			}
			int num=count+listBug.size();      //总条数
			map=new HashMap();
			map.put("total", num);
			map.put("rows",bugs);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}
	
	/**
	 * 添加消缺任务
	 * 创建时间：2015-1-21 下午6:28:38 <br>
	 * @return
	 */
	public String addBeHeTask(){
		try {
			DoDeElimTaskService.addBeHeTaskInfo(beHeTask, bug_ids, seleUsers);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}
	
	/**
	 * 查询所有未分配的缺陷
	 * @return
	 */
	public String getBeHeTaskWei(){
		try {
			bugs=DoDeElimTaskService.getBeHeTaskWei();
			int count=DoDeElimTaskService.getBeHeTaskWeiCoung();
			map=new HashMap();
			map.put("total", count);
			map.put("rows", bugs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	/**
	 * 根据任务id，查询执行该任务的所有消缺员
	 * @return
	 */
	public String getBeheUser(){
		try {
			beHeUsers=DoDeElimTaskService.getBeheUser(beHeTask.getTask_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	/**
	 * 根据任务id，查询下属的缺陷信息
	 * 创建时间：2015-1-20 下午7:16:38 <br>
	 * @return
	 */
	public String getBugById(){
		try {
			 bugs=DoDeElimTaskService.getBugById(beHeTask.getTask_id());
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return "success";
	}
	
	/**
	 * 根据任务id，查询消缺任务的详细信息
	 * 创建时间：2015-1-20 下午5:29:42 <br>
	 * @return
	 */
	public String getBeHeTaskById(){
		try {
			beHeTask=DoDeElimTaskService.getBeHeTaskById(beHeTask.getTask_id());        //获得对象信息
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			message="查询失败";
			return "input";
		}
	}
	
	/**
	 * 查询消缺任务，进行分页和按条件查询
	 * 创建时间：2015-1-20 上午11:17:10 <br>
	 * @return
	 */
	public String getBeheTask(){
		
		try {
			beHeTask=new BeHeTask();
			beHeTask.setTask_id(task_id);
			beHeTask.setTask_name(task_name);
			if(!"".equals(status_id)&&status_id!=null){           //如果传的有值
				beHeTask.setTask_status_id(Integer.valueOf(status_id));
			}
			List<BeHeTask> behes=DoDeElimTaskService.getBeheTask((page-1)*rows, page*rows,beHeTask,user_name,endTime,startTime);     //获得结果
			int count=DoDeElimTaskService.getBeheTaskCount(beHeTask,user_name,endTime,startTime);            //条数
			map=new HashMap();
			map.put("total",count);
			map.put("rows",behes);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "input";
		}
	}


	/**
	 * beHeTask的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the beHeTask
	 */
	
	public BeHeTask getBeHeTask() {
		return beHeTask;
	}


	/**
	 * beHeTask的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param beHeTask the beHeTask to set
	 */
	
	public void setBeHeTask(BeHeTask beHeTask) {
		this.beHeTask = beHeTask;
	}


	/**
	 * map的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the map
	 */
	
	public Map getMap() {
		return map;
	}


	/**
	 * map的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param map the map to set
	 */
	
	public void setMap(Map map) {
		this.map = map;
	}


	/**
	 * message的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the message
	 */
	
	public String getMessage() {
		return message;
	}


	/**
	 * message的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param message the message to set
	 */
	
	public void setMessage(String message) {
		this.message = message;
	}


	/**
	 * startTime的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the startTime
	 */
	
	public Date getStartTime() {
		return startTime;
	}


	/**
	 * startTime的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param startTime the startTime to set
	 */
	
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}


	/**
	 * endTime的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the endTime
	 */
	
	public Date getEndTime() {
		return endTime;
	}


	/**
	 * endTime的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param endTime the endTime to set
	 */
	
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}


	/**
	 * task_id的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the task_id
	 */
	
	public String getTask_id() {
		return task_id;
	}


	/**
	 * task_id的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param task_id the task_id to set
	 */
	
	public void setTask_id(String task_id) {
		this.task_id = task_id;
	}


	/**
	 * task_name的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the task_name
	 */
	
	public String getTask_name() {
		return task_name;
	}


	/**
	 * task_name的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param task_name the task_name to set
	 */
	
	public void setTask_name(String task_name) {
		this.task_name = task_name;
	}


	

	/**
	 * status_id的getter方法
	 * 创建时间：2015-1-20 下午1:53:19 <br>
	 * @return the status_id
	 */
	
	public String getStatus_id() {
		return status_id;
	}


	/**
	 * status_id的setter方法
	 * 创建时间：2015-1-20 下午1:53:19 <br>
	 * @param status_id the status_id to set
	 */
	
	public void setStatus_id(String status_id) {
		this.status_id = status_id;
	}


	/**
	 * user_name的getter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @return the user_name
	 */
	
	public String getUser_name() {
		return user_name;
	}


	/**
	 * user_name的setter方法
	 * 创建时间：2015-1-20 下午1:49:56 <br>
	 * @param user_name the user_name to set
	 */
	
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public List<Bug> getBugs() {
		return bugs;
	}

	public void setBugs(List<Bug> bugs) {
		this.bugs = bugs;
	}

	public List<BeheTaskUser> getBeHeUsers() {
		return beHeUsers;
	}

	public void setBeHeUsers(List<BeheTaskUser> beHeUsers) {
		this.beHeUsers = beHeUsers;
	}

	/**
	 * beHeTasks的getter方法
	 * 创建时间：2015-1-21 下午6:30:22 <br>
	 * @return the beHeTasks
	 */
	
	public List<BeHeTask> getBeHeTasks() {
		return beHeTasks;
	}

	/**
	 * beHeTasks的setter方法
	 * 创建时间：2015-1-21 下午6:30:22 <br>
	 * @param beHeTasks the beHeTasks to set
	 */
	
	public void setBeHeTasks(List<BeHeTask> beHeTasks) {
		this.beHeTasks = beHeTasks;
	}

	/**
	 * seleUsers的getter方法
	 * 创建时间：2015-1-21 下午6:43:50 <br>
	 * @return the seleUsers
	 */
	
	public String getSeleUsers() {
		return seleUsers;
	}

	/**
	 * seleUsers的setter方法
	 * 创建时间：2015-1-21 下午6:43:50 <br>
	 * @param seleUsers the seleUsers to set
	 */
	
	public void setSeleUsers(String seleUsers) {
		this.seleUsers = seleUsers;
	}

	/**
	 * bug_ids的getter方法
	 * 创建时间：2015-1-21 下午6:43:50 <br>
	 * @return the bug_ids
	 */
	
	public String getBug_ids() {
		return bug_ids;
	}

	/**
	 * bug_ids的setter方法
	 * 创建时间：2015-1-21 下午6:43:50 <br>
	 * @param bug_ids the bug_ids to set
	 */
	
	public void setBug_ids(String bug_ids) {
		this.bug_ids = bug_ids;
	}

	
	
}
