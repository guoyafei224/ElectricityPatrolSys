<%@page import="java.text.SimpleDateFormat"%>
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

<title>巡检任务回执录入</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/patrolTaskMgr/receiptEntering.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#cir_idtd").text($("#cir_id").val());
		$("#tree").tree(
				{
					url : "Tower_getTowerByCricuitId?message="
							+ $("#cir_idtd").text(),
					animate : true,
					onDblClick : function(node) {
						$(this).tree("toggle", node.target);
					},
					onClick : function(node) {
						$.get("Tower_queryTowerInfoById", "tower.tower_id="
								+ node.text, function(data) {
							$("#good_proc").val(data.good_proc);
							$("#tower_id").text(node.text);
							$("textarea").val('');
							$("input[name='bug.tower.tower_id']").val(node.text);
						});
						$.get("bug_queryBugByTowerIdAndTaskId", "towerId="+node.text+"&taskId="+$("#task_id").val(), function(data) {
							if(data!=null){
								$("#bugType").val(data.bugType.bug_type_id);
								$("#bugLeave").val(data.bugLeave.bug_leave_id);
								$("textarea").val(data.des);
							}else{
								$("#bugType").val("-1");
								$("#bugLeave").val("-1");
							}
						});
					}
				})
		$.get("bugTypeSelect.action", function(data) {
			for ( var i = 0; i < data.length; i++) {
				$("#bugType").append(
						"<option value='"+data[i].bug_type_id+"'>"
								+ data[i].bug_type_name + "</option>");
			}
		});
		$.get("bugLeave_getAllBugLeave.action", function(data) {
			for ( var i = 0; i < data.length; i++) {
				$("#bugLeave").append(
						"<option value='"+data[i].bug_leave_id+"'>"
								+ data[i].bug_leave_name + "</option>");
			}
		});
		$("#save").click(function(){
			var tower_id = $("#tower_id").text();
			if(tower_id==null||tower_id==''){
				alert("请选择一个杆塔");
				return false;
			}
			if($("#bugType").val()=="-1"&&$("#bugLeave").val()=="-1"){
				if(confirm("删除该杆塔缺陷信息")){
					$.get("bug_delBug","towerId="+tower_id+"&taskId="+$("#task_id").val(),function(data){
						if(data==0){
							alert("该杆塔没有缺陷信息");
							return false;
						}
						alert("删除成功");
					});
				}
				return false;
			}
			if($("#bugType").val()==-1){
				alert("请选择缺陷类型");
				return false;
			}
			if($("#bugLeave").val()==-1){
				alert("请选择缺陷级别");
				return false;
			}
			$.post("bug_saveBug",$("form").serialize());
			alert("保存成功！");
		});
		$("#Ok").click(function(){
			if(confirm("上传回执？不可更改！")){
			alert($("#task_id").val())
				$.get("PatrolTask_alterStatusIsOk","taskId="+$("#task_id").val(),function(){
					location.href="jsp/patrolTaskMgr/executeReceipt .jsp";
				});
			}
		});
	});
</script>
</head>

<body>
	<div id="down">
		<div class="div_left">
			<ul id="tree"></ul>
		</div>
		<div>
			<img src="file/image/u34.png" />
		</div>
		<div class="div_right">
			<form>
			<input id="task_id" type="hidden" name="bug.pollTask.task_id"
			value="<%=request.getParameter("task_id")%>">
			<input type="hidden" name="bug.tower.tower_id">
			<input name="bug.pollTask.circuit.circuit_id"
			id="cir_id" type="hidden"  value="<%=request.getParameter("cir_id")%>">
			<table class="tab">
				<tr>
					<td>线路编号：</td>
					<td id="cir_idtd"></td>
				</tr>
				<tr>
					<td>杆塔编号：</td>
					<td id="tower_id"></td>
				</tr>
				<tr>
					<td>缺陷类型：</td>
					<td><select name="bug.bugType.bug_type_id" id="bugType">
							<option value='-1'>--请选择--</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>缺陷级别：</td>
					<td><select id="bugLeave" name="bug.bugLeave.bug_leave_id">
							<option value="-1">--请选择--</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>完好率：</td>
					<td><input id="good_proc" name="bug.tower.good_proc" type="text" />
					</td>
				</tr>
				<tr>
					<td>发现时间：</td>
					<td><%
 	out.print((new SimpleDateFormat("yyyy-MM-dd")).format(new Date()));
 %></td>
				</tr>
				<tr>
					<td>发现人员：</td>
					<td>${sessionScope.loginUser.user_name}</td>
				</tr>
				<tr>
					<td>缺陷描述：</td>
					<td><textarea class="ta2" name="bug.des"></textarea>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
	<div>
		<a id="Ok" class="easyui-linkbutton"
			data-options="iconCls:'icon-save'" style="margin:20px 10px 0 100px;">上传回执</a>
		<a id="save" class="easyui-linkbutton"
			data-options="iconCls:'icon-ok'" style="margin:20px 5px 0 100px;">保存</a>
		<a onclick="location.href='jsp/patrolTaskMgr/executeReceipt.jsp'"
			class="easyui-linkbutton" data-options="iconCls:'icon-back'"
			style="margin:20px 0px 0px 20px;">返回</a>
	</div>
</body>
</html>
