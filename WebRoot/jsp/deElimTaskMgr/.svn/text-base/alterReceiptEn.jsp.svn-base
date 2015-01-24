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
	href="css/deElimTaskMgr/alterReceiptEn.css" />
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
					<td><textarea class="ta1">任务已完成</textarea></td>
				</tr>
				<tr>
					<td class="tdodd">下发人审查意见</td>
					<td class="big"></td>
					<td class="tdodd">是否审核通过</td>
					<td></td>
				</tr>
			</table>
			<script type="text/javascript">
				$(function() {
					$("#tab_2").datagrid({
						url : 'json/alterReceiptEn.json',
						width : 693,
						rownumbers : true,
						iconCls : 'icon-save',
						singleSelect : true,
						title : "缺陷信息列表",
						nowrap : false,
						columns : [ [ {
							field : 'q1',
							title : '线路编号',
							align : 'center',
							width : 80
						}, {
							field : 'q2',
							title : '杆塔编号',
							align : 'center',
							width : 82
						}, {
							field : 'q3',
							title : '缺陷等级',
							align : 'center',
							width : 80
						}, {
							field : 'q4',
							title : '缺陷类型',
							align : 'center',
							width : 85
						}, {
							field : 'q5',
							title : '缺陷描述',
							align : 'center',
							width : 130
						}, {
							field : 'q6',
							title : '发现人',
							align : 'center',
							width : 120
						}, {
							field : 'q7',
							title : '发现时间',
							align : 'center',
							width : 80
						} ] ]
					})
				})
			</script>
			<div class="tab_2">
				<table id="tab_2"></table>
			</div>
			<div class="down_div">
				<p>工作间断延期记载</p>
				<div class="down">
					<textarea class="ta2">报告事项: 2013-10-28日 灾难性暴风雨天气，无法进行，申请延期2天巡检截止日期。
负责人： 线路管理员测试用户01
延期许可时间：截止日期截止由2013-12-20调至2013-12-22。</textarea>
				</div>
				<p>工作终结报告</p>
				<div class="down">
					<textarea class="ta2">报告方式：报告文档
接收人：线路管理员测试用户01
证明人线路管理员测试用户012
报告时间：2013-12-14</textarea>
				</div>
			</div>
		</div>
	</div>
	<a id="save" class="easyui-linkbutton"
					data-options="iconCls:'icon-ok'"
					style="margin:20px 5px 0 50px;">保存</a>
	<a id="back" class="easyui-linkbutton"
		data-options="iconCls:'icon-back'" style="margin:20px 0 0 0;">返回</a>
</body>
</html>
