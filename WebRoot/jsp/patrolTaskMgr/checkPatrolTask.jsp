<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
	href="css/patrolTaskMgr/checkPatrolTask.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	$(function() {
		var cid = $("#cid").val();
		$("#div_2_tree").tree(
				{
					url : "Tower_getTowerByCricuitId?message=" + cid,
					animate : true,
					onDblClick : function(node) {
						$(this).tree("toggle", node.target);
					},
					onSelect : function(node) {
						if (node.id == "1") {
							return false;
						}
						$("#t_id").html(node.text);
						$.get("bug_queryBugByTowerIdAndTaskId", "towerId="
								+ node.text + "&taskId=" + $("#taskId").text(),
								function(data) {
									if (data == null) {
										  $.get("Tower_queryTowerInfoById",
												"tower.tower_id=" + node.text,
												function(result) {
													$("#isOk").html("无");
													$("#bug_type").text("");
													$("#bug_leave").text("");
													$("#bug_des").text("");
													$("#poll_time").text("");
													$("#bug_find_user").text("");
													$("#tdodd").text("");
													$("#good_proc").text(result.good_proc+"%");
												});
												return;  
									}
									$("#isOk").html("有");
									$("#good_proc").html(data.tower.good_proc+"%");
									$("#bug_type").html(data.bugType.bug_type_name);
									$("#bug_leave").html(data.bugLeave.bug_leave_name);
									$("#bug_des").html(data.des);
									$("#poll_time").html(data.pollTask.ok_time);
									$("#bug_find_user").html(data.sysUser.user_name);
									$("#tdodd").html(data.pollTask.ok_time);
								});
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
				<td id="taskId"><s:property value="pollTask.task_id" />
				</td>
				<td class="tdodd">任务名称：</td>
				<td><s:property value="pollTask.task_name" />
				</td>
				<td class="tdodd">巡检线路：</td>
				<td id="circuit_id"><s:property value="pollTask.circuit.circuit_name" />
				</td>
				<td class="tdodd">起始杆号：</td>
				<td><s:property value="pollTask.circuit.start_tower_id" />
				</td>
			</tr>
			<tr>
				<td class="tdodd">终止 杆号：</td>
				<td><s:property value="pollTask.circuit.end_tower_id" />
				</td>
				<td class="tdodd">下 发 人：</td>
				<td><s:property value="pollTask.fromSysUser.user_name" />
				</td>
				<td class="tdodd">下发时间：</td>
				<td><s:property value="pollTask.from_date" />
				</td>
				<td class="tdodd">任务状态：</td>
				<td><s:property value="pollTask.statusComm.config_name" />
				</td>
			</tr>
			<tr>
				<td class="tdodd">任务完成时间：</td>
				<td><s:property value="pollTask.ok_time" />
				</td>
				<td class="tdodd">备注信息：</td>
				<td><s:property value="pollTask.des" />
				</td>
				<td class="tdodd">巡 检 员：</td>
				<td colspan="3"><s:property value="message" />
				</td>
			</tr>
		</table>
		<input type="hidden" id="cid"
			value="<s:property value="pollTask.circuit.circuit_id"/>" />
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
				<td id="c_id"><s:property value="pollTask.circuit.circuit_id" />
				</td>
				<td class="tdodd">杆塔编码：</td>
				<td><label id="t_id"></label>
				</td>
			</tr>
			<tr>
				<td class="tdodd">有无故障：</td>
				<td id="isOk"></td>
				<td class="tdodd">完 好 率：</td>
				<td id="good_proc"></td>
			</tr>
			<tr>
				<td class="tdodd">缺陷类型：</td>
				<td id="bug_type"></td>
				<td class="tdodd">缺陷级别：</td>
				<td id="bug_leave"></td>
			</tr>
			<tr>
				<td class="tdodd">缺陷描述：</td>
				<td id="bug_des"></td>
				<td class="tdodd">巡检时间：</td>
				<td id="poll_time"></td>
			</tr>
			<tr>
				<td class="tdodd">缺陷发现人：</td>
				<td id="bug_find_user"></td>
				<td class="tdodd">发现时间：</td>
				<td id="find_time"></td>
			</tr>
		</table>
	</div>
</body>
</html>
