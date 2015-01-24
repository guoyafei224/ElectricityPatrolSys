<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'deElimRecord.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet"
	href="css/patrolTaskMgr/enactAllot.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#deElimRecord").datagrid({
			iconCls : 'icon-save',
			title : '消缺记录统计',
			url : 'getAllBeHeTask_Bug.action',
			singleSelect : true,
			fitColumns : true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色
			rownumbers : true,
			pagination : true,//显示底部分页栏
			pageSize : 5,//默认每页记录数，pagination参数为true时才有效
			pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			columns : [ [ {
				field : 'beHeTask.task_id',
				title : '任务编号',
				align : 'center',
				width : 3
			}, {
				field : 'beHeTask.task_name',
				title : '任务名称',
				align : 'center',
				width : 5
			}, {
				field : 'cir_tower',
				title : '线路编号(起始杆号-终止杆号)',
				align : 'center',
				width : 8
			}, {
				field : 'tower.tower_id',
				title : '杆塔编号',
				align : 'center',
				width : 3
			}, {
				field : 'bugLeave.bug_leave_name',
				title : '缺陷级别',
				align : 'center',
				width : 4
			}, {
				field : 'bugType.bug_type_name',
				title : '缺陷类型',
				align : 'center',
				width : 4
			}, {
				field : 'beHeTask.ok_time',
				title : '消缺时间',
				align : 'center',
				width : 4,
				formatter : function(data) {
					if (data != null) {
						return data.substring(0, 10);
					}
					return "";
				}
			}, {
				field : 'find_time',
				title : '发现时间',
				align : 'center',
				width : 4,
				formatter : function(data) {
					return data.substring(0, 10);
				}

			}, {
				field : 'des',
				title : '缺陷描述',
				align : 'center',
				width : 5
			} ] ]
		});
	});
</script>
</head>

<body>
	<div id="main">
		<table class="up">
			<tr>
				<td>任务编号：</td>
				<td><input type="text" class="intext" />
				</td>
				<td>路线编号：</td>
				<td><input type="text" class="intext" />
				</td>
				<td colspan="2">&nbsp;&nbsp;有无故障：&nbsp;<select>
						<option>--请选择--</option>
						<option>有</option>
						<option>无</option>
				</select></td>
			</tr>
			<tr>
				<td>消缺时间:</td>
				<td><input class="time" type="text" onClick="WdatePicker()" />
					- <input class="time" type="text" onClick="WdatePicker()" />&nbsp;&nbsp;
				</td>
				<td colspan="2"><a id="search" class="easyui-linkbutton"
					data-options="iconCls:'icon-search'" style="margin:0 10px 0 0;"
					href="#">查询</a>
				</td>
				<td><a id="search" class="easyui-linkbutton"
					data-options="iconCls:'icon-save'" style="margin:0 10px 0 0;"
					href="#">导出EXCEL</a></td>
			</tr>
		</table>
		<div class="empty"></div>
		<table id="deElimRecord">
		</table>
	</div>

</body>
</html>
