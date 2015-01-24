<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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

<title>查看消缺任务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/deElimTaskMgr/checkdeElimTask.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	$(function() {
		var task_id = $("#task_id").text();
		$.get("getBeheUser.action", "beHeTask.task_id=" + task_id, function(
				data) {
			$("#beHeUser").text(data[0].sysUser.user_name);
			for ( var i = 1; i < data.length; i++) {
				$("#beHeUser").append("," + data[i].sysUser.user_name);
			}
			;
		});
	});
</script>
</head>

<body>
	<div id="main">
		<div id="all">
			<span style="color:red;">${message}</span>
			<table class="tab_1">
				<tr>
					<td class="tdodd">任务编码</td>
					<td><span id="task_id">${beHeTask.task_id}</span>
					</td>
					<td class="tdodd">任务名称</td>
					<td>${beHeTask.task_name}</td>
				</tr>
				<tr>
					<td class="tdodd">任务状态</td>
					<td>${beHeTask.statusComm.config_name}</td>
					<td class="tdodd">是否取消</td>
					<td><s:if test="beHeTask.istrue==0">
							未取消
						</s:if> <s:if test="beHeTask.istrue==1">
							已取消
						</s:if></td>
				</tr>
				<tr>
					<td class="tdodd">任务下发人</td>
					<td>${ beHeTask.fromSysUser.user_name}</td>
					<td class="tdodd">任务下发时间</td>
					<td><s:date name="beHeTask.from_date" />
					</td>
				</tr>
				<tr>
					<td class="tdodd">任务负责人</td>
					<td>${ beHeTask.fromSysUser.user_name}</td>
					<td class="tdodd">任务描述</td>
					<td>${ beHeTask.des}</td>
				</tr>
				<tr>
					<td class="tdodd">消缺员</td>
					<td><span id="beHeUser"></span></td>
					<td class="tdodd">任务完成时间</td>
					<td><s:date name="beHeTask.ok_time" />
					</td>
				</tr>
				<tr>
					<td class="tdodd">负责人审查意见</td>
					<td class="big">${beHeTask.exam_idea}</td>
					<td class="tdodd">完成情况描述</td>
					<td>${beHeTask.ok_des}</td>
				</tr>
			</table>
			<script type="text/javascript">
				$(function() {
					$("#tab_2").datagrid({
						url : 'getBugById.action',
						width : 693,
						title : "缺陷信息列表",
						nowrap : false,
						singleSelect : true,
						iconCls : 'icon-save',
						columns : [ [ {
							field : 'bug_id',
							title : '缺陷ID',
							align : 'center',
							hidden : true
						}, {
							field : 'tower.circuit.circuit_name',
							title : '线路名称',
							align : 'center',
							width : 85
						}, {
							field : 'tower.tower_id',
							title : '杆塔编号',
							align : 'center',
							width : 88
						}, {
							field : 'bugLeave.bug_leave_name',
							title : '缺陷等级',
							align : 'center',
							width : 85
						}, {
							field : 'bugType.bug_type_name',
							title : '缺陷类型',
							align : 'center',
							width : 90
						}, {
							field : 'des',
							title : '缺陷描述',
							align : 'center',
							width : 120
						}, {
							field : 'sysUser.user_name',
							title : '发现人',
							align : 'center',
							width : 120
						}, {
							field : 'find_time',
							title : '发现时间',
							align : 'center',
							width : 95,
							formatter : function(data) {
								return data.substring(0, 10);
							}
						} ] ]
					});
				});
			</script>
			<div class="tab_2">
				<table id="tab_2"></table>
			</div>
			<p>工作间断延期记载</p>
			<div class="down">无</div>
			<p>工作终结报告</p>
			<div class="down">无</div>
		</div>
		<a id="back" class="easyui-linkbutton"
			onclick="location.href='jsp/deElimTaskMgr/enactAllot.jsp'"
			data-options="iconCls:'icon-back'" style="margin:20px 0 0 50px;">返回</a>
	</div>
</body>
</html>
