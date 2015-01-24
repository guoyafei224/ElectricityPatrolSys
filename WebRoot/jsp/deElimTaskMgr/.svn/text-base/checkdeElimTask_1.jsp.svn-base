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

<title>查看消缺任务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/deElimTaskMgr/checkdeElimTask.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
</head>

<body>
	<div id="main">
		<div id="all">
			<table class="tab_1">
				<tr>
					<td class="tdodd">任务编码</td>
					<td>RW0248</td>
					<td class="tdodd">任务名称</td>
					<td>线路管理员测试用户01</td>
				</tr>
				<tr>
					<td class="tdodd">任务状态</td>
					<td>已完成</td>
					<td class="tdodd">工作单据</td>
					<td>任务单</td>
				</tr>
				<tr>
					<td class="tdodd">任务下发人</td>
					<td>线路管理员测试用户01</td>
					<td class="tdodd">任务下发时间</td>
					<td>2013-12-12</td>
				</tr>
				<tr>
					<td class="tdodd">任务负责人</td>
					<td>线路管理员测试用户01</td>
					<td class="tdodd">任务描述</td>
					<td>完成西临3号线路消缺任务。</td>
				</tr>
				<tr>
					<td class="tdodd">消缺员</td>
					<td>消缺员测试用户01</td>
					<td class="tdodd">任务完成时间</td>
					<td>2013-12-22</td>
				</tr>
				<tr>
					<td class="tdodd">负责人审查意见</td>
					<td class="big"></td>
					<td class="tdodd">完成情况描述</td>
					<td>无</td>
				</tr>
				<tr>
					<td class="tdodd">下发人审查意见</td>
					<td class="big"></td>
					<td class="tdodd">是否审核通过</td>
					<td>通过</td>
				</tr>
			</table>
			<script type="text/javascript">
				$(function() {
					$("#tab_2").datagrid({
						url : 'json/alterReceiptEn.json',
						width : 693,
						title : "缺陷信息列表",
						nowrap : false,
						singleSelect : true,
						iconCls : 'icon-save',
						columns : [ [ {
							field : 'q1',
							title : '线路编号',
							align : 'center',
							width : 85
						}, {
							field : 'q2',
							title : '杆塔编号',
							align : 'center',
							width : 88
						}, {
							field : 'q3',
							title : '缺陷等级',
							align : 'center',
							width : 85
						}, {
							field : 'q4',
							title : '缺陷类型',
							align : 'center',
							width : 90
						}, {
							field : 'q5',
							title : '缺陷描述',
							align : 'center',
							width : 120
						}, {
							field : 'q6',
							title : '发现人',
							align : 'center',
							width : 120
						}, {
							field : 'q7',
							title : '发现时间',
							align : 'center',
							width : 95
						} ] ]
					})
				})
			</script>
			<div class="tab_2">
				<table id="tab_2"></table>
			</div>
			<p>工作间断延期记载</p>
			<div class="down">无</div>
			<p>工作终结报告</p>
			<div class="down">无</div>
		</div>
		<a id="back" class="easyui-linkbutton" onclick="location.href='jsp/deElimTaskMgr/enactAllot.jsp'"
		data-options="iconCls:'icon-back'" style="margin:20px 0 0 50px;">返回</a>
	</div>
</body>
</html>
