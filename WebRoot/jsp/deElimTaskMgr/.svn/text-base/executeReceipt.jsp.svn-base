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

<title>消缺任务执行与回执</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/deElimTaskMgr/executeReceipt.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#grid").datagrid({
			title : '消缺任务执行与回执',
			url : 'json/dexecuteReceipt.json',
			rownumbers : true,
			iconCls : 'icon-save',
			singleSelect : true,
			pagination : true,//显示底部分页栏
			pageSize : 10,//默认每页记录数，pagination参数为true时才有效
			pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			//fitColumns : true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色
			width : 850,
			toolbar : [ {
				text : '查看',
				iconCls : 'icon-search',
				handler : function() {
					location.href = '';
				}
			}, '-', {
				text : '分配任务',
				iconCls : 'icon-save',
				handler : function() {

				}
			}, '-', {
				text : '修改',
				iconCls : 'icon-edit',
				handler : function() {
					location.href = '';
				}
			}, '-', {
				text : '取消',
				iconCls : 'icon-undo',
				handler : function() {
					alert("取消成功");
				}
			} ],
			columns : [ [ {
				field : 'q1',
				title : '任务编号',
				align : 'center',
				width : 100
			}, {
				field : 'q2',
				title : '任务名称',
				align : 'center',
				width : 135
			}, {
				field : 'q3',
				title : '工作单据',
				align : 'center',
				width : 110
			}, {
				field : 'q4',
				title : '下发人',
				align : 'center',
				width : 150
			}, {
				field : 'q5',
				title : '下发时间',
				align : 'center',
				width : 110
			}, {
				field : 'q6',
				title : '任务状态',
				align : 'center',
				width : 100
			}, {
				field : 'q7',
				title : '任务完成时间',
				align : 'center',
				width : 110
			} ] ]
		});
	});
</script>
</head>

<body>
	<table class="up">
		<tr>
			<td>任务编号：</td>
			<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
			<td>工作单据：&nbsp;</td>
			<td><select class="bigS">
					<option>请选择工作单据类型</option>
					<option>任务单</option>
					<option>第一种单据</option>
					<option>第二种单据</option>
			</select>&nbsp;&nbsp;</td>
		</tr>
		<tr>
			<td>下 发 人：&nbsp;</td>
			<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
			<td>下发时间：</td>
			<td><input class="time" type="text" onClick="WdatePicker()" />
				- <input class="time" type="text" onClick="WdatePicker()" />&nbsp;&nbsp;
			</td>
			<td><a id="search" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'" style="margin:0 10px 0 0;">查询</a>
			</td>
		</tr>
	</table>
	<div class="empty"></div>
	<table id="grid"></table>
</body>
</html>
