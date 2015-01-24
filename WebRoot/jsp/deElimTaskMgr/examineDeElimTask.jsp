<%@page import="java.text.SimpleDateFormat"%>
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

<title>审查消缺任务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/deElimTaskMgr/examineDeElimTask.css" />
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
		
		/*提交审核信息*/
		$("#save").click(function(){
			$("#updateShen").submit();   //提交
		});
	});
</script>
</head>

<body>
	<div id="all">
		<span style="color:red;">${message}</span>
		<form action="updateShen.action" method="post" id="updateShen">
			<input type="hidden" name="beHeTask.task_id" value="${beHeTask.task_id}"> 
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
					<td class="big"><textarea class="ta1"
							name="beHeTask.exam_idea"></textarea>
					</td>
					<td class="tdodd">完成情况描述</td>
					<td><textarea class="ta1" name="beHeTask.ok_des"></textarea>
					</td>
				</tr>
				<tr>
					<td class="tdodd">下发人审查意见</td>
					<td class="big"><textarea class="ta1"
							name="beHeTask.from_user_idea"></textarea>
					</td>
					<td class="tdodd">是否审核通过</td>
					<td><input type="radio" name="beHeTask.exam_status" value="1" checked="checked" />通过
						<input name="beHeTask.exam_status" type="radio" value="0" />不通过</td>
				</tr>
			</table>
		</form>
		<script type="text/javascript">
			$(function() {
				$("#tab_2").datagrid({
					url : 'getBugById.action',
					width : 720,
					rownumbers : true,
					singleSelect : true,
					title : "缺陷信息列表",
					iconCls : 'icon-save',
					nowrap : false,
					columns : [ [ {
						field : 'bug_id',
						title : '缺陷编号',
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
						width : 85
					}, {
						field : 'bugLeave.bug_leave_name',
						title : '缺陷等级',
						align : 'center',
						width : 85
					}, {
						field : 'bugType.bug_type_name',
						title : '缺陷类型',
						align : 'center',
						width : 85
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
						width : 90,
						formatter : function(data) {
							return data.substring(0, 10);
						}
					}, ] ]
				});
			});
		</script>
		<div class="tab_2">
			<table id="tab_2"></table>
		</div>
		<div class="down_div">
			<p>工作间断延期记载</p>
			<div class="down">
				报告事项: 2013-10-28日 灾难性暴风雨天气，无法进行，申请延期2天巡检截止日期。<br /> 负责人：
				线路管理员测试用户01<br /> 延期许可时间：截止日期截止由2013-1-24调至2013-12-28。
			</div>
			<p>工作终结报告</p>
			<div class="down">
				报告方式：报告文档<br /> 接收人：${ beHeTask.fromSysUser.user_name}<br /> 报告时间：<%
				out.print((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"))
						.format(new Date()));
			%>
			</div>
		</div>
	</div>
	<a id="save" class="easyui-linkbutton" data-options="iconCls:'icon-ok'"
		style="margin:20px 5px 0 50px;">保存</a>
</body>
</html>
