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

<title>制定巡检任务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/patrolTaskMgr/addPatrolTask.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	var Circuitdata;
	$(function() {
		$.get("Circuit_getAllCircuit.action", function(data) {
			Circuitdata=data;
			for ( var i = 0; i < data.length; i++) {
				$("select").append(
						"<option value='"+data[i].circuit_id+"'>"
								+ data[i].circuit_name + "</option>");
			}
		});
		$("select").change(function(){
			for(var i = 0; i < Circuitdata.length; i++){
				if(Circuitdata[i].circuit_id==$("select").val()){
					$("#start").val(Circuitdata[i].start_tower_id);
					$("#end").val(Circuitdata[i].end_tower_id);
					break;
				}
			}
		})
	})
</script>
</head>

<body>
	<form action="savePatrolTask_PatrolTask.action" method="post">
		<table class="tab">
			<tr>
				<td class="tdodd">任务名称：</td>
				<td><input type="text" name="pollTask.task_name" />
				</td>
			</tr>
			<tr>
				<td class="tdodd">巡检线路：</td>
				<td><select name="pollTask.circuit.circuit_id">
						<option value="-1">选择巡检线路</option>
				</select>
				</td>
			</tr>
			<tr>
				<td class="tdodd">巡 检 员：</td>
				<td><textarea id="ta1" class="ta1"></textarea><input
					type="image" id="serach" src="file/icons/search.png" />
				</td>
			</tr>
			<tr>
				<td class="tdodd">起始杆号：</td>
				<td><input type="text" id="start"/>
				</td>
			</tr>
			<tr>
				<td class="tdodd">终止杆号：</td>
				<td><input type="text" id="end"/>
				</td>
			</tr>
			<tr>
				<td class="tdodd">下 发 人：</td>
				<td class="label"><label>${sessionScope.loginUser.user_name}</label>
				</td>
			</tr>
			<tr>
				<td class="tdodd">下发日期：</td>
				<td class="label"><label> <%
 	out.print((new SimpleDateFormat("yyyy-MM-dd")).format(new Date()));
 %> </label>
				</td>
			</tr>
			<tr>
				<td class="tdodd">备&nbsp;&nbsp;&nbsp;&nbsp;注：</td>
				<td><textarea class="ta2" name="pollTask.des"></textarea>
				</td>
			</tr>
			<tr>
				<td><a onclick="save()" class="easyui-linkbutton"
					data-options="iconCls:'icon-ok'" style="margin:20px 10px 0 10px;">保存</a>
				</td>
				<td><a
					onclick="location.href='jsp/patrolTaskMgr/enactAllot.jsp'"
					class="easyui-linkbutton" data-options="iconCls:'icon-back'"
					style="margin:20px 0 0 0;">返回</a></td>
			</tr>
		</table>
		<input type="hidden" id="hid" name="message"/>
	</form>
	<div>
		<div id="dd" title="分配消缺任务"
			style="padding:5px;width:200px;height:240px;left:260;top:100">
			<ul id="tree_1"></ul>
		</div>
	</div>
</body>
</html>
<script type="text/javascript">
	$(function() {
		$("#tree_1").tree({
			url : "PatrolTask_getAllPatrolMember.action",
			checkbox : true,
			animate : true,
		});
		$("#serach").click(function() {
			$("#dd").dialog('open');
			return false;
		});
		$('#dd').dialog({
			closed : true,
			draggable : false,
			buttons : [ {
				text : '确定',
				iconCls : 'icon-ok',
				handler : function() {
					var nodes = $('#tree_1').tree('getChecked');
					$("#ta1").text('');
					$("#hid").val("");
					for ( var i = 0; i < nodes.length; i++) {
						if ($("#ta1").text() == '') {
							$("#hid").val($("#hid").val()+nodes[i].id);
							$("#ta1").append(nodes[i].text);
						} else {
							$("#hid").val($("#hid").val()+"," +nodes[i].id);
							$("#ta1").append("," + nodes[i].text);
						}
					}
					$("#dd").dialog('close');
				}
			}, {
				text : '取消',
				handler : function() {
					$('#dd,#dd1,#dd2').dialog('close');
				}
			} ]
		});
	})
	function save() {
		$("form").submit();
	}
</script>