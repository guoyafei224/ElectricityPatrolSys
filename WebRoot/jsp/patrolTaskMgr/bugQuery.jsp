<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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

<title>缺陷查询</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/patrolTaskMgr/bugQuery.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#grid").datagrid({
			title : '缺陷查询',
			rownumbers : true,
			nowrap : false,
			iconCls : 'icon-search',
			singleSelect : true,
			url : 'json/bugQuery.json',
			pagination : true,//显示底部分页栏
			pageSize : 10,//默认每页记录数，pagination参数为true时才有效
			pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			//fitColumns : true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色
			columns : [ [ {
				field : 'q1',
				title : '任务编号',
				align : 'center',
				width : 70
			}, {
				field : 'q2',
				title : '线路编号',
				align : 'center',
				width : 70
			}, {
				field : 'q3',
				title : '杆塔编号',
				align : 'center',
				width : 70
			}, {
				field : 'q4',
				title : '缺陷级别',
				align : 'center',
				width : 70
			}, {
				field : 'q5',
				title : '缺陷类型',
				align : 'center',
				width : 90
			}, {
				field : 'q6',
				title : '发现人',
				align : 'center',
				width : 110
			}, {
				field : 'q7',
				title : '发现时间',
				align : 'center',
				width : 80
			}, {
				field : 'q8',
				title : '下发人',
				align : 'center',
				width : 110
			}, {
				field : 'q9',
				title : '下发时间',
				align : 'center',
				width : 80
			}, {
				field : 'q10',
				title : '完好率',
				align : 'center',
				width : 70
			}, {
				field : 'q11',
				title : '缺陷描述',
				align : 'center',
				width : 120
			} ] ]
		});
	});
</script>
</head>

<body>
	<table class="up">
		<tr>
			<td>任务编号：&nbsp;</td>
			<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
			<td>线路编号：</td>
			<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
			<td>缺陷类型：</td>
			<td><select>
					<option>--请选择--</option>
					<option>叉梁断裂</option>
					<option>拦河线断裂</option>
					<option>绝缘子爆破</option>
					<option>杆塔倾斜</option>
					<option>吊杆变形</option>
					<option>其他</option>
			</select></td>
			<td>缺陷级别： <select>
					<option>--请选择--</option>
					<option>一般</option>
					<option>严重</option>
					<option>紧急</option>
			</select>
		</tr>
		<tr>
			<td>发现时间：&nbsp;</td>
			<td><input class="time" type="text" onClick="WdatePicker()" />
				- <input class="time" onClick="WdatePicker()" type="text" />&nbsp;&nbsp;</td>
			<td>下发时间：</td>
			<td><input class="time" type="text" onClick="WdatePicker()" />
				- <input class="time" type="text" onClick="WdatePicker()" />&nbsp;&nbsp;
			</td>
			<td><a id="search" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'" style="margin:0 10px 0 0;">查询</a>
			</td>
			<td><a id="print" class="easyui-linkbutton"
				data-options="iconCls:'icon-save'">打印</a></td>
			<td><a id="save" class="easyui-linkbutton"
				data-options="iconCls:'icon-edit'" style="margin:0 0 0 30px;">导出EXCEL</a>
			</td>
		</tr>
	</table>
	<div class="empty"></div>
	<table id="grid"></table>
</body>
</html>
