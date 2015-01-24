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

<title>巡检任务制定与分配</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/patrolTaskMgr/enactAllot.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	function loadData1() {
		var task_id = $("#task_id").val(); //编号
		var task_name = $("#task_name").val(); //任务名
		var status_id = $("#status_id").val(); //任务状态
		var user_name = $("#user_name").val();
		var startTime = $("#startTime").val(); //开始时间
		var endTime = $("#endTime").val(); //结束时间
		$("#grid")
				.datagrid(
						{
							url : 'getBeheTask.action',
							rownumbers : true,
							title : '消缺任务制定与分配',
							iconCls : 'icon-save',
							pagination : true,//显示底部分页栏
							pageSize : 7,//默认每页记录数，pagination参数为true时才有效
							pageList : [ 7 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
							fitColumns : true,//自适应宽度，防止水平滚动
							striped : true,//隔行变色
							singleSelect : true,
							selectOnCheck : false,
							rownumbers : true,
							checkOnSelect : false,
							queryParams : {
								task_id : task_id,
								task_name : task_name,
								status_id : status_id,
								user_name : user_name,
								startTime : startTime,
								endTime : endTime
							},
							onDblClickRow : function(rowIndex, rowData) {
								var row = $("#grid").datagrid('getSelected');
								location.href = 'getBeHeTaskById.action?beHeTask.task_id='
										+ row.task_id; //根据id，查询详细信息，进入查看消缺页面显示
							},
							onClickRow : function(rowIndex, rowData) {
								var row = $("#grid").datagrid('getSelected');
								//alert(row.statusComm.status_id)
								if (row.statusComm.status_id == 1010) {
									$("#btnDel").linkbutton('disable');
									$("#btnUpdate").linkbutton('disable');
									$("#btnShen").linkbutton('disable');
								} else if (row.statusComm.status_id == 1009){
									$("#btnDel").linkbutton('disable');
									$("#btnUpdate").linkbutton('disable');
									$("#btnShen").linkbutton('disable');
									//$("#btnShen").linkbutton('enable');
								}else if(row.statusComm.status_id == 1008){
									$("#btnDel").linkbutton('enable');
									$("#btnUpdate").linkbutton('enable');
									$("#btnShen").linkbutton('disable');
								}else if(row.statusComm.status_id == 1007){
									$("#btnDel").linkbutton('enable');
									$("#btnUpdate").linkbutton('enable');
									$("#btnShen").linkbutton('enable');
								}else if(row.statusComm.status_id == 1020){
									$("#btnDel").linkbutton('disable');
									$("#btnUpdate").linkbutton('disable');
									$("#btnShen").linkbutton('enable');
								}
							},
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
								field : 'fromSysUser.user_name',
								title : '下发人',
								align : 'center',
								width : 2
							}, {
								field : 'from_date',
								title : '下发日期',
								align : 'center',
								width : 2,
								formatter : function(data) {
									return data.substring(0, 10);
								}
							}, {
								field : 'statusComm.status_id',
								hidden : true
							}, {
								field : 'statusComm.config_name',
								title : '任务状态',
								align : 'center',
								width : 2
							}, {
								field : 'ok_time',
								title : '任务完成时间',
								align : 'center',
								width : 2,
								formatter : function(data) {
									if (data != '' && data != null) {
										return data.substring(0, 10);
									}
									return '';
								}
							}, {
								field : 'istrue',
								nowrap : false,
								title : '任务是否取消',
								align : 'center',
								width : 2,
								formatter : function(data) {
									if (data == 0) {
										return "未取消";
									} else {
										return "已取消";
									}
								}
							} ] ],
							toolbar : [
									{
										id : "btnZhi",
										text : '制定消缺任务',
										iconCls : 'icon-add',
										handler : function() {
											location.href = 'jsp/deElimTaskMgr/addDeElimTask.jsp';
										}
									},
									'-',
									{
										id : "btnCha",
										text : '查看',
										iconCls : 'icon-search',
										handler : function() {
											var row = $("#grid").datagrid(
													'getSelected');
											if (row == null) {
												alert("请选择要查看的对象");
											} else {
												location.href = 'getBeHeTaskById.action?beHeTask.task_id='
														+ row.task_id;
											}

										}
									},
									'-',
									{
										id : "btnShen",
										text : '审查消缺任务',
										iconCls : 'icon-edit',
										handler : function() {
											var row = $("#grid").datagrid(
													'getSelected');
											if (row == null) {
												alert("请选择要审查的对象");
											} else {
												location.href = 'getBeHeTaskByIdForShen.action?beHeTask.task_id='
														+ row.task_id;
											}

										}
									},
									'-',
									{
										id : "btnUpdate",
										text : '修改',
										iconCls : 'icon-save',
										handler : function() {
											var row = $("#grid").datagrid(
													'getSelected');
											if (row == null) {
												alert("请选择任务");
											} else {
												location.href = 'getBeHeTaskByIdForUpdate.action?beHeTask.task_id='
														+ row.task_id;
											}

										}
									},
									'-',
									{
										id : "btnDel",
										text : '取消任务',
										iconCls : 'icon-undo',
										handler : function() {

											var row = $("#grid").datagrid(
													'getSelected');
											var task_id = row.task_id;
											if (row == null) {
												alert("请选择要取消的任务");
												return false;
											}
											if (confirm("确定要取消任务？") == false) {
												return false;
											} else {
												$
														.get(
																'cancelTask.action',
																'task_id='
																		+ task_id,
																function(data) {
																	$("#grid")
																			.datagrid(
																					'reload');
																});
											}
										}
									} ],
						});

	}
	$(function() {
		loadData1();
		/*任务状态查询*/
		$.get("getStatusByid.action", "statusComm.config_type=task_status_id",
				function(data) {
					for ( var i = 0; i < data.length; i++) {
						$("#status_id").append(
								"<option value='"+data[i].status_id+"'>"
										+ data[i].config_name + "</option>");
					}
					;
				});
	});
</script>
</head>

<body>
	<table class="up">
		<tr>
			<td>任务编号：</td>
			<td><input class="inText" id="task_id" type="text"
				name="beHeTask.task_id" />&nbsp;&nbsp;</td>
			<td>任务名称：</td>
			<td><input class="inText" id="task_name" type="text"
				name="beHeTask.task_name" />&nbsp;&nbsp;</td>
			<td>任务状态：</td>
			<td><select id="status_id" name="beHeTask.statusComm.status_id"
				style="width:160px;">
					<option value="">--请选择--</option>
			</select></td>
		</tr>
		<tr>
			<td>下 发 人：&nbsp;</td>
			<td><input class="inText" id="user_name" value="" type="text"
				name="beHeTask.fromSysUser.user_name" />&nbsp;&nbsp;</td>
			<td>下发时间：</td>
			<td><input class="time" id="startTime" value="" name="startTime"
				type="text" onClick="WdatePicker()" /> - <input class="time"
				value="" name="endTime" id="endTime" type="text"
				onClick="WdatePicker()" />&nbsp;&nbsp;</td>
			<td><a id="search" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'" onclick="loadData1();"
				style="margin:0 10px 0 0;">查询</a>
		</tr>
	</table>
	<div class="empty"></div>
	<table id="grid">

	</table>
</body>