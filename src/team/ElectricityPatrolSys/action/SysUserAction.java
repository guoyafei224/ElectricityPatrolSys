package team.ElectricityPatrolSys.action;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import team.ElectricityPatrolSys.base.Tree;

import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team.ElectricityPatrolSys.entity.SysUser;
import team.ElectricityPatrolSys.entity.SysUserRole;
import team.ElectricityPatrolSys.service.SysUserService;

import com.opensymphony.xwork2.ActionContext;

@Controller("sysUserAction")
public class SysUserAction extends ActionBase {

	@Autowired
	private SysUserService sysUserService;

	private SysUser sysUser; // 用户表

	private SysUserRole sysUserRole;

	private String message;

	private List<SysUser> sysUsers; // 查询出的多个用户

	private Integer page = 1;

	private Integer rows = 3; // 每页行数，和内容

	private JSONObject jsonObject;

	private Map userMap;

	private String user_name; // 用户名

	private String status_id; // 状态id

	private String role_id; // 角色id

	private String u_id; // 用户id
	
	private List<Tree> trees;

	/**
	 * 查询所有消缺员
	 * @return
	 */
	public String getAllXiao(){
		try {
			sysUsers=sysUserService.getAllXiao();
			Tree tree=null;
			trees = new ArrayList<Tree>();
			for (int i = 0; i < sysUsers.size(); i++) {
				tree = new Tree();
				tree.setId(sysUsers.get(i).getUser_id());
				tree.setText(sysUsers.get(i).getUser_name());
				trees.add(tree);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	/**
	 * 修改用户信息
	 * 
	 * @return
	 */
	public String updateUserById() {
		sysUserRole.setSysUser(sysUser);
		try {
			int num = sysUserService.updateUserRole(sysUserRole);
			int num1 = sysUserService.updateUserById(sysUser);
			message = "修改成功";
		} catch (Exception e) {
			e.printStackTrace();
			message = "修改失败，请联系管理员";
		}
		return "success";
	}

	/**
	 * 修改前，获取该用户信息
	 * 
	 * @return
	 */
	public String getUserById() {
		sysUser = sysUserService.getUserById(u_id);
		return "success";
	}

	/**
	 * 删除指定用户信息
	 * 
	 * @return
	 */
	public String freeUser() {
		boolean con;
		try {
			con = sysUserService.freeUser(u_id);
			if (con) {
				message = "冻结成功!";
			} else {
				message = "冻结失败!";
			}
		} catch (Exception e) {
			e.printStackTrace();
			message = "系统异常，请联系管理员";
		}
		return "success";

	}

	/**
	 * 添加用户 创建时间：2015-1-6 下午4:47:13 <br>
	 * 
	 * @return
	 */
	public String addUser() {
		boolean con = false;
		try {
			con = sysUserService.addUser(sysUser, role_id);
		} catch (Exception e) {
			con = false;
			e.printStackTrace();
		}
		if (con) {
			return "success";
		} else {
			message = "添加用户失败";
			return "input";
		}
	}

	/**
	 * 查询所有的用户 创建时间：2014-12-28 下午12:39:39 <br>
	 * 
	 * @return
	 */
	public String getSysUsers() {
		sysUsers = sysUserService.getSysUsers((page - 1) * rows, page * rows,
				user_name, status_id);
		int num = sysUserService.getUserCount(user_name, status_id);
		userMap = new HashMap();
		userMap.put("total", num);
		userMap.put("rows", sysUsers);
		return "getSysUsers";
	}

	public String queryPwdIsTrue() {
		SysUser su = (SysUser) ActionContext.getContext().getSession()
				.get("loginUser");
		if (su.getPassword().equals(sysUser.getPassword())) {
			message = "ok";
		}
		return "queryPwdIsTrue";
	}

	/**
	 * 登陆的方法
	 * 
	 * @return
	 */
	public String login() {
		SysUser sysUser1 = sysUserService.login(sysUser);
		if (sysUser1 != null) { // 判断是否为空
			ActionContext.getContext().getSession().put("loginUser", sysUser1);// 将登陆用户保存进session
			if (sysUser1.getUser_status_id() == 1002) {
				message = "该用户已经被冻结!";
				return "loginInput"; // 用户存在，但是已经冻结
			} else {
				return "loginSuccess"; // 成功
			}
		} else {
			message = "用户名或密码错误!";
			return "loginInput";
		}
	}

	public String Update() {
		sysUserService.sysUserUpdate(sysUser);
		return "Update";

	}

	public SysUser getSysUser() {
		return sysUser;
	}

	public void setSysUser(SysUser sysUser) {
		this.sysUser = sysUser;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public JSONObject getJsonObject() {
		return jsonObject;
	}

	public void setJsonObject(JSONObject jsonObject) {
		this.jsonObject = jsonObject;
	}

	public void setSysUsers(List<SysUser> sysUsers) {
		this.sysUsers = sysUsers;
	}

	public Map getUserMap() {
		return userMap;
	}

	public void setUserMap(Map userMap) {
		this.userMap = userMap;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getStatus_id() {
		return status_id;
	}

	public void setStatus_id(String status_id) {
		this.status_id = status_id;
	}

	/**
	 * role_id的getter方法 创建时间：2015-1-6 下午5:46:31 <br>
	 * 
	 * @return the role_id
	 */

	public String getRole_id() {
		return role_id;
	}

	/**
	 * role_id的setter方法 创建时间：2015-1-6 下午5:46:31 <br>
	 * 
	 * @param role_id
	 *            the role_id to set
	 */

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	/**
	 * sysUserRole的getter方法 创建时间：2015-1-12 下午10:53:10 <br>
	 * 
	 * @return the sysUserRole
	 */

	public SysUserRole getSysUserRole() {
		return sysUserRole;
	}

	/**
	 * sysUserRole的setter方法 创建时间：2015-1-12 下午10:53:10 <br>
	 * 
	 * @param sysUserRole
	 *            the sysUserRole to set
	 */

	public void setSysUserRole(SysUserRole sysUserRole) {
		this.sysUserRole = sysUserRole;
	}

	/**
	 * trees的getter方法
	 * 创建时间：2015-1-21 下午3:18:28 <br>
	 * @return the trees
	 */
	
	public List<Tree> getTrees() {
		return trees;
	}

	/**
	 * trees的setter方法
	 * 创建时间：2015-1-21 下午3:18:28 <br>
	 * @param trees the trees to set
	 */
	
	public void setTrees(List<Tree> trees) {
		this.trees = trees;
	}

	
}
