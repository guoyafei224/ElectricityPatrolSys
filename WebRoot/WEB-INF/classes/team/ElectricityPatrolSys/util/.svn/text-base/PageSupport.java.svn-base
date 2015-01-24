package team.ElectricityPatrolSys.util;

import java.util.List;

public class PageSupport {

	// 当前页数
	private Integer pageIndex;
	// 总条数
	private Integer count;
	// 每页显示大小
	private Integer pageSize;
	// 总页数
	private Integer total;
	// 临时集合
	private List items;

	public Integer getPageIndex() {
		return pageIndex;
	}

	public PageSupport(){}
	
	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
		setTotal();
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal() {
		this.total = count / pageSize;
		int num = count % pageSize;
		if (num != 0) {
			this.total++;
		}
	}

	public List getItems() {
		return items;
	}

	public void setItems(List items) {
		this.items = items;
	}

}
