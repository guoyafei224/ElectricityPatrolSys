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

<title>缺陷等级确认</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/bugMgr/bugLevelAffirm.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#grid").datagrid({
			iconCls : 'icon-save',
			title : '缺陷等级确认',
			url : 'json/bugLevelAffirm.json',
			width:820,
			singleSelect : true,
			pagination : true,//显示底部分页栏
			pageSize : 5,//默认每页记录数，pagination参数为true时才有效
			pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			//fitColumns : true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色
			rownumbers : true,
			columns : [ [ {
				field : 'q1',
				title : '任务编号',
				align : 'center',
				width : 80
			}, {
				field : 'q2',
				title : '线路编号',
				align : 'center',
				width : 115
			}, {
				field : 'q3',
				title : '缺陷类型',
				align : 'center',
				width : 97
			}, {
				field : 'q4',
				title : '完好率',
				align : 'center',
				width : 80
			}, {
				field : 'q5',
				title : '缺陷描述',
				align : 'center',
				width : 80
			}, {
				field : 'q6',
				title : '发现时间',
				align : 'center',
				width : 140
			}, {
				field : 'q7',
				title : '发现人员',
				align : 'center',
				width : 90
			}, {
				field : 'q8',
				title : '缺陷级别',
				align : 'center',
				formatter : function() {
					return "<select id='op' onclick='addop()' ><option>请选择</option></select>";
				},
				width : 102
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
				<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
				<td>线路编号：</td>
				<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
				<td>杆塔编号：</td>
				<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
				<td>下 发 人：</td>
				<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
			</tr>
			<tr>
				<td>缺陷类型：</td>
				<td><select>
						<option>--请选择--</option>
						<option>叉梁断裂</option>
						<option>叉梁断裂</option>
						<option>叉梁断裂</option>
						<option>叉梁断裂</option>
				</select></td>
				<td>缺陷级别：</td>
				<td><select>
						<option>--请选择--</option>
						<option>一般</option>
						<option>严重</option>
						<option>紧急</option>
				</select></td>
				
				<td>下发时间：</td>
				<td><input class="time" type="text" onClick="WdatePicker()" />
					- <input class="time" type="text" onClick="WdatePicker()" />
				</td>
				<td><a id="search" class="easyui-linkbutton"
		data-options="iconCls:'icon-search'" style="margin:0 10px 0 0;">查询</a>
			</tr>
		</table>
		<div class="empty"></div>
		<table id="grid">

		</table>
	</div>
	
	</div>
</body>
</html>
