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

<title>巡检任务执行与回执</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/patrolTaskMgr/executeReceipt.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#grid").datagrid({
			title : '巡检任务执行与回执',
			url : 'PatrolTask_getPollTaskByPage.action',
			rownumbers : true,
			iconCls : 'icon-save',
			singleSelect : true,
			pagination : true,//显示底部分页栏
			pageSize : 5,//默认每页记录数，pagination参数为true时才有效
			pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			fitColumns : true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色
			queryParams:{message:null},
			toolbar : [ {
				text : '查看',
				iconCls : 'icon-search',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					location.href = 'queryPollTaskInfoToCheck_PatrolTask.action?pollTask.task_id='+row.task_id;
				}
			}, '-', {
				id:"receiptEntering",
				text : '回执录入',
				iconCls : 'icon-add',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					location.href = "jsp/patrolTaskMgr/receiptEntering.jsp?task_id="+row.task_id+"&cir_id="+row.circuit.circuit_id;
				}
			}, '-', {
				id:"execute",
				text : '执行',
				iconCls : 'icon-save',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					$.get('PatrolTask_alterPollTaskInfo.action?message='+row.task_id,function(data){
						if(data=='ok'){
							$.get('PatrolTask_executePollTaskByTaskId.action?message='+row.task_id,function(){
								$("#grid").datagrid('reload');
							});
						}else{
							alert("任务分配没有你！");
						}
					})
				}
			}],
			columns : [ [ {
				field : 'task_id',
				title : '任务编号',
				align : 'center',
				width : 2
			}, {
				field : 'task_name',
				title : '任务名称',
				align : 'center',
				width : 3
			}, {
				field : 'circuit.circuit_id',
				hidden:true
			}, {
				field : 'circuit.circuit_name',
				title : '巡检线路',
				align : 'center',
				width : 2
			}, {
				field : 'circuit.start_tower_id',
				title : '起始杆号',
				align : 'center',
				width : 2
			}, {
				field : 'circuit.end_tower_id',
				title : '终止杆号',
				align : 'center',
				width : 2
			}, {
				field : 'fromSysUser.user_name',
				title : '下发人',
				align : 'center',
				width : 3
			}, {
				field : 'from_date',
				title : '下发时间',
				align : 'center',
				width : 2,
				formatter : function(data) {
					return data.substring(0,10);
				}
			}, {
				field : 'statusComm.status_id',
				hidden:	true
			}, {
				field : 'statusComm.config_name',
				title : '任务状态',
				align : 'center',
				width : 2
			}, {
				field : 'ok_time',
				title : '任务完成时间',
				align : 'center',
				formatter : function(data) {
					if(data!=''&&data!=null){
						return data.substring(0,10);
					}
					return '';
				},
				width:2
			} ] ],
			onDblClickRow:function(rowIndex, rowData){
				var row = $("#grid").datagrid('getSelected');
				location.href = 'queryPollTaskInfoToCheck_PatrolTask.action?pollTask.task_id='+row.task_id;
			},
			onClickRow:function(rowIndex, rowData){
				var row = $("#grid").datagrid('getSelected');
				if(row.ok_time!=''&row.ok_time!=null){
					$("#receiptEntering").linkbutton('disable');
					$("#update").linkbutton('disable');
					$("#execute").linkbutton('disable');
				}else{
					$("#receiptEntering").linkbutton('enable');
					$("#update").linkbutton('enable');
					$("#execute").linkbutton('enable');
					if(row.statusComm.status_id==1009){
						$("#execute").linkbutton('disable');
					}
				}
			}
		});
	});
</script>
</head>

<body>
	<table class="up">
		<tr>
			<td>任务编号：</td>
			<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
			<td>线路编号：</td>
			<td><input class="inText" type="text" />&nbsp;&nbsp;</td>
			<td>任务状态：</td>
			<td><select>
					<option>--请选择--</option>
					<option>待分配</option>
					<option>已分配</option>
					<option>执行中</option>
					<option>已完成</option>
			</select></td>
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
