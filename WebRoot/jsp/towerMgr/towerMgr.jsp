<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>杆塔管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="css/towerMgr/towerMgr.css" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />

<script type="text/javascript">
	var circuitId;
	var statusId;
	var option = {
		iconCls : 'icon-save',
		title : '杆塔管理',
		queryParams:{
			circuitId:circuitId,
			statusId:statusId
		},
		url : 'queryAllTower_Tower.action',
		singleSelect : true,
		striped : true,//隔行变色
		rownumbers : true,
		pagination : true,//显示底部分页栏
		pageSize : 5,
		pageList : [ 5,10,15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
		width : 800,
		fitColumns:true,//自适应宽度，防止水平滚动
		//scrollbarSize : '100',
		columns : [ [
				{
					field : 'tower_id',
					title : '杆塔编号',
					align : 'center',
					width : 2
				},
				{
					field : 'circuit.circuit_name',
					title : '所属路线',
					align : 'center',
					width : 3
				},
				{
					field : 'statusComm.config_name',
					title : '状态（开启/禁用）',
					align : 'center',
					width : 2
				},
				{
					field : 'q4',
					title : '操作',
					align : 'center',
					width : 3,
					formatter : function() {
						return "<a href='#'  style='color:blue;'>停用</a> | <a href='#' style='color:blue;'>修改</a> | <a href='#' style='color:blue;'>刪除</a>";
					}
				} ] ]
	}
	$(function() {
		$("#towerMgr").datagrid(option);
		$.get("Tower_queryCircuitName.action", function(data) {
			for ( var i = 0; i < data.length; i++) {
				$("#circuit").append(
						"<option value='"+data[i].circuit_id+"'>"
								+ data[i].circuit_name + "</option>");
			}
		});
		$.get("getStatusByid.action", "statusComm.config_type=tower_status_id",
				function(data) {
					for ( var i = 0; i < data.length; i++) {
						$("#status").append(
								"<option value='"+data[i].status_id+"'>"
										+ data[i].config_name + "</option");
					}
		});
		$("#search").click(function(){
			circuit=$("#circuit").val();
			$("#towerMgr").datagrid(option);
		})
	});
</script>

</head>

<body>
	<table class="up">
		<tr>
			<td>所属线路：</td>
			<td><select id="circuit" style="width:150px">
					<option value="-1">--请选择--</option>
			</select></td>
			<td>&nbsp;&nbsp;是否启用：</td>
			<td><select id="status">
					<option value="-1">--请选择--</option>
			</select>
			</td>
			<td><a id="search" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'" style="margin:0 10px 0 0;"
				href="#">查询</a></td>
			<td><a id="addTower" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'" style="margin:0 10px 0 0;"
				href="#">添加杆塔</a>
			</td>
		</tr>
	</table>
	<div class="empty"></div>
	<table id="towerMgr">

	</table>
	<script type="text/javascript">
		$(function() {
			$("#addTower").click(function() {
				$("#add").dialog('open');
				return false;
			})
			$("#back").click(function() {
				$("#add").dialog('close');
				return false;
			})
		})
	</script>
	<div id="add" class="easyui-dialog" title="添加杆塔"
		style="width:400px;height:200px;"
		data-options="iconCls:'icon-add',closed:true,resizable:true,modal:true">
		<div class="empty"></div>
		<table class="left">
			<tr>
				<td>杆塔编号：</td>
				<td><input type="text"></td>
			</tr>
			<tr>
				<td>启用状态：</td>
				<td><input type="radio" name="radio" checked="checked">启用&nbsp;&nbsp;
					<input type="radio" name="radio">不启用</td>
			</tr>
			<tr>
				<td></td>
				<td><a id="search" class="easyui-linkbutton"
					data-options="iconCls:'icon-ok'" href="#">确定</a>&nbsp; <a id="back"
					class="easyui-linkbutton" data-options="iconCls:'icon-back'"
					href="#">返回</a></td>
			</tr>
		</table>
	</div>
</body>
</html>
