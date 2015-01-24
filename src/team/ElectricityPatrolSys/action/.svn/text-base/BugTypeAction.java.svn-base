package team.ElectricityPatrolSys.action;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.dao.BugTypeDao;
import team.ElectricityPatrolSys.entity.BugType;
import team.ElectricityPatrolSys.service.BugTypeService;

@Controller("bugTypeAction")
public class BugTypeAction extends ActionBase {
	@Autowired
	private BugTypeDao bugTypeDao;
	@Autowired
	private BugTypeService bugTypeService;
	private BugType bugType;
	private List<BugType> list;
	private Map map;
	private int num;

	/**
	 * 修改缺陷类型
	 * 
	 * @return
	 */
	public String Update() {
		bugTypeService.bugTypeUpdate(bugType);
		return "Update";
	}

	/**
	 * 删除缺陷类型
	 * 
	 * @return
	 */
	public String Delete() {
		bugTypeService.bugTypeDelete(bugType);
		return "delete";
	}

	/**
	 * 查询缺陷类型
	 * 
	 * @return
	 */
	public String Select() {
		list = bugTypeService.bugTypeSelect();
		return "select";
	}

	/**
	 * 添加缺陷类型
	 * 
	 * @return
	 */
	public String Add() {
		num = bugTypeService.bugTypedAdd(bugType);
		return "add";
	}

	public BugTypeDao getBugTypeDao() {
		return bugTypeDao;
	}

	public void setBugTypeDao(BugTypeDao bugTypeDao) {
		this.bugTypeDao = bugTypeDao;
	}

	public BugType getBugType() {
		return bugType;
	}

	public void setBugType(BugType bugType) {
		this.bugType = bugType;
	}

	public List<BugType> getList() {
		return list;
	}

	public void setList(List<BugType> list) {
		this.list = list;
	}

	public Map getMap() {
		return map;
	}

	public void setMap(Map map) {
		this.map = map;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

}
