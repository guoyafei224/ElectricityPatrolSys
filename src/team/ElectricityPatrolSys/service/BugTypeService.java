package team.ElectricityPatrolSys.service;

import java.util.List;

import team.ElectricityPatrolSys.entity.BugType;
import team.ElectricityPatrolSys.entity.SysUser;

/**
 * 项目名称：<br>
 * 类名称：BugTypeDao <br>  
 * 类描述： 用户表service接口 <br>
 * 创建人：杨洋洋 
 * 创建时间：2014-12-23 下午6:00:18 <br> 
 * 修改人：   
 * 修改时间：                  <br>  
 * 修改备注：   
 * @version V1.0
 */
public interface BugTypeService {
	/**
	 * 修改缺陷类型
	 * @author 杨洋
	 * 创建时间：2014-12-25 下午3:00:56 <br>
	 * @param bugType
	 * @return
	 */
	 public void bugTypeUpdate(BugType bugType);
	 /**
		 * 删除缺陷类型
		 * @author 杨洋
		 * 创建时间：2014-12-25 下午3:00:56 <br>
		 * @param bugType
		 * @return
		 */
	 public void bugTypeDelete(BugType bugType);
	 /**
		 * 查询缺陷类型
		 * @author 杨洋
		 * 创建时间：2015-01-04 下午3:00:56 <br>
		 * @param bugType
		 * @return
		 */
	 public List<BugType> bugTypeSelect();
	 /**
	  * 添加缺陷类型
	  * @author 杨洋
	  * 创建时间：2015-01-14 上午10:00:56 <br>
	  * @param bugType
	  * @return
	  */
	 public int bugTypedAdd(BugType bugType);
}
