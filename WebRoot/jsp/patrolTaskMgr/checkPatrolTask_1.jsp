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

<title>查看巡检任务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/patrolTaskMgr/checkPatrolTask_1.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#div_2_tree").tree({
			url : "json/checkPatrolTask.json",
			animate : true,
			onDblClick : function(node) {
				$(this).tree("toggle", node.target);
			},
			onClick : function(node) {

			}
		})
	})
</script>
</head>

<body>
	<div class="div_1">
		<table class="tab">
			<tr>
				<td class="tdodd">任务 编号：</td>
				<td>RW0245</td>
				<td class="tdodd">任务名称：</td>
				<td>西临1号线巡检</td>
				<td class="tdodd">巡检线路：</td>
				<td>西临1号</td>
				<td class="tdodd">起始杆号：</td>
				<td>xw0001</td>
			</tr>
			<tr>
				<td class="tdodd">终止 杆号：</td>
				<td>xw00256</td>
				<td class="tdodd">下 发 人：</td>
				<td>线路管理员测试账号01</td>
				<td class="tdodd">下发时间：</td>
				<td>2013-12-11</td>
				<td class="tdodd">任务状态：</td>
				<td>已完成</td>
			</tr>
			<tr>
				<td class="tdodd">任务完成时间：</td>
				<td>2013-12-19</td>
			</tr>
		</table>
	</div>
	<div class="div_2">
		<div class="div_tree">
			<ul id="div_2_tree"></ul>
		</div>
	</div>
	<div>
		<img src="file/image/u34.png" />
	</div>
	<div class="div_3">
		<table class="tab2">
			<tr>
				<td class="tdodd">线路编码：</td>
				<td>XL0001</td>
				<td class="tdodd">杆塔编码：</td>
				<td>xw001</td>
			</tr>
			<tr>
				<td class="tdodd">有无故障：</td>
				<td>有</td>
				<td class="tdodd">完 好 率：</td>
				<td>80%</td>
			</tr>
			<tr>
				<td class="tdodd">缺陷类型：</td>
				<td>拦河线断裂</td>
				<td class="tdodd">缺陷级别：</td>
				<td>一般</td>
			</tr>
			<tr>
				<td class="tdodd">缺陷描述：</td>
				<td colspan="3">拦河线断裂裂痕不太明显，但需尽快维修。</td>
			</tr>
			<tr>
				<td class="tdodd">巡检时间：</td>
				<td colspan="3">2013-12-12</td>
			</tr>
			<tr>
				<td class="tdodd">巡 检 员：</td>
				<td colspan="3">巡检员测试用户01、巡检员测试用户02、巡检员测试用户03</td>
			</tr>
			<tr>
				<td class="tdodd">缺陷发现人：</td>
				<td>巡检员测试用户02</td>
				<td class="tdodd">发现时间：</td>
				<td>2013-12-11</td>
			</tr>
			<tr>
				<td class="tdodd">下发人员：</td>
				<td>线路管理员测试用户01</td>
				<td class="tdodd">下发时间：</td>
				<td>2013-12-11</td>
			</tr>
		</table>
	</div>
</body>
</html>
