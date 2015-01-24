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
	$(function() {
		$("#grid").datagrid({
			toolbar : [ {
				text : '制定巡检任务',
				iconCls : 'icon-add',
				handler : function() {
					location.href = 'jsp/patrolTaskMgr/addPatrolTask.jsp';
				}
			}, '-', {
				text : '查看',
				iconCls : 'icon-search',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					location.href = 'queryPollTaskInfoToCheck_PatrolTask.action?pollTask.task_id='+row.task_id;
				}
			}, '-', {
				id:"btnUpdate",
				text : '修改',
				iconCls : 'icon-save',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					if(row==null){
						alert("请选择任务");
						return false;
					}
					location.href = 'queryPollTaskInfo_PatrolTask.action?pollTask.task_id='+row.task_id;
				}
			}, '-', {
				id:"btnDel",
				text : '取消',
				iconCls : 'icon-undo',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					if(row==null){
						alert("请选择任务");
						return false;
					}
					if(confirm("确定要取消任务？")==false){
						return false;
					}else{
						$.get('PatrolTask_alterStatus.action','pollTask.task_id='+row.task_id,function(data){
							if(data==1){
								$("#grid").datagrid('reload');
							}
						});
					}
				}
			} ],
			iconCls : 'icon-save',
			title : '巡检任务制定与分配',
			url : 'PatrolTask_getPollTaskByPage.action',
			singleSelect : true,
			queryParams:{message:null},
			pagination : true,//显示底部分页栏
			pageSize : 5,//默认每页记录数，pagination参数为true时才有效
			pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			fitColumns : true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色
			rownumbers : true,
			onDblClickRow:function(rowIndex, rowData){
				var row = $("#grid").datagrid('getSelected');
				location.href = 'queryPollTaskInfoToCheck_PatrolTask.action?pollTask.task_id='+row.task_id;
			},
			onClickRow:function(rowIndex, rowData){
				var row = $("#grid").datagrid('getSelected');
				if(row.statusComm.status_id==1010||row.istrue==1){
					$("#btnDel").linkbutton('disable');
					$("#btnUpdate").linkbutton('disable');
				}else{
					$("#btnDel").linkbutton('enable');
					$("#btnUpdate").linkbutton('enable');
				}
			},
			columns : [ [ {
				field : 'task_id',
				title : '任务编号',
				align : 'center',
				width:2
			}, {
				field : 'task_name',
				title : '任务名称',
				align : 'center',
				width:3
			}, {
				field : 'circuit.circuit_name',
				title : '巡检线路',
				align : 'center',
				width:2
			}, {
				field : 'circuit.start_tower_id',
				title : '起始杆号',
				align : 'center',
				width:2
			}, {
				field : 'circuit.end_tower_id',
				title : '终止杆号',
				align : 'center',
				width:2
			}, {
				field : 'fromSysUser.user_name',
				title : '下发人',
				align : 'center',
				width:3
			}, {
				field : 'from_date',
				title : '下发时间',
				align : 'center',
				width:2,
				formatter : function(data) {
					return data.substring(0,10);
				}
			}, {
				field : 'statusComm.status_id',
				hidden:	true
			}, {
				field : 'statusComm.config_name',
				title : '任务状态',
				align : 'center',
				width:2
			}, {
				field : 'ok_time',
				title : '任务完成时间',
				align : 'center',
				width:2,
				formatter : function(data) {
					if(data!=''&&data!=null){
						return data.substring(0,10);
					}
					return '';
				}
			}, {
				field : 'istrue',
				nowrap : false,
				title : '任务是否取消',
				align : 'center',
				width:2,
				formatter : function(data) {
						if(data==0){
							return "否";
						}else{
							return "是";
						}
				}
			} ] ]
		});
		$("#search").click(function(){
			var ok_time=$("input[name='ok_time']").val();
			var from_date=$("input[name='from_date']").val();
			if(from_date!=''||ok_time!=''){
				if(ok_time==''||from_date==''){
					alert('请完整填写开始或结束日期');
					return false;
				}
			}
			if(from_date==''){
				from_date=" ";
			}
			if(ok_time==''){
				ok_time=" ";
			}
			var task_id=$("input[name='task_id']").val();
			if(task_id==''||task_id==null){
				task_id=' ';
			}
			var circuit_id=$("input[name='circuit_id']").val();
			if(circuit_id==''||circuit_id==null){
				circuit_id=" ";
			}
			var status_id=$("select").val();
			if(status_id==""||status_id==null){
				status_id=' ';
			}
			var user_id=$("input[name='user_id']").val();
			if(user_id==''||user_id==null){
				user_id=" ";
			}
			var parameter=task_id+","
					+circuit_id+","+status_id+","+user_id+","+from_date+","
					+ok_time;
			$("#grid").datagrid('reload',{message:parameter});
		});
		var Circuitdata;
		$.get("PatrolTask_getAllStatus.action", function(data) {
			Circuitdata=data;
			for ( var i = 0; i < data.length; i++) {
				$("#statusComm").append(
						"<option value='"+data[i].status_id+"'>"
								+ data[i].config_name + "</option>");
			}
		});
	});
</script>
</head>

<body>
	<table class="up">
		<tr>
			<td>任务编号：</td>
			<td><input class="inText" value="" type="text" name="task_id" />&nbsp;&nbsp;</td>
			<td>线路编号：</td>
			<td><input class="inText" value="" type="text" name="circuit_id" />&nbsp;&nbsp;</td>
			<td>任务状态：</td>
			<td><select name="status_id" id="statusComm">
					<option value="">--请选择--</option>
			</select>
			</td>
		</tr>
		<tr>
			<td>下 发 人：&nbsp;</td>
			<td><input class="inText" value="" type="text" name="user_id"/>&nbsp;&nbsp;</td>
			<td>下发时间：</td>
			<td><input class="time" value="" name="from_date" type="text" onClick="WdatePicker()" />
				- <input class="time" value="" name="ok_time" type="text" onClick="WdatePicker()" />&nbsp;&nbsp;
			</td>
			<td><a id="search" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'" style="margin:0 10px 0 0;">查询</a>
		</tr>
	</table>
	<div class="empty"></div>
	<table id="grid">

	</table>
	<!-- 分配任务取消 -->
	<!-- <div style="width:430px;height:300px;">
		<div id="dd" title="分配消缺任务"
			style="padding:5px;width:430px;height:300px;left:150;top:80;">
			<div id="dd1" title="待选消缺员"
				style="padding:5px;width:170px;height:200px;left:170;top:120">
				<ul id="tree_1"></ul>
			</div>
			<div class="tree_img">
				<img class="butimg_1" src="file/icons/u448.png" width="30px"
					height="30px" /><br /> <img class="butimg_2"
					src="file/icons/u450.png" width="30px" height="30px" />
			</div>
			<div id="dd2" title="已选消缺员"
				style="padding:5px;width:170px;height:200px;left:380;top:120">
				<ul id="tree_2"></ul>
			</div>
		</div>
	</div> -->
</body>
</html>
<!-- 分配任务取消 -->
<!-- <script type="text/javascript">
	$(function() {
		$(function() {
			$("#tree_1").tree({
				url : "json/etree1or2.json",
				animate : true,
				onDblClick : function(node) {
					$(this).tree("toggle", node.target);
				},
				onClick : function(node) {
				}
			})
		})
		$('#dd').dialog({
			closed : true,
			draggable : false,
			onBeforeClose : function() {
				$('#dd1,#dd2').dialog('close');
				return true;
			},
			buttons : [ {
				text : '确定',
				iconCls : 'icon-ok',
				handler : function() {
					alert('ok');
				}
			}, {
				text : '取消',
				handler : function() {
					$('#dd,#dd1,#dd2').dialog('close');
				}
			} ]
		});
		$('#dd1,#dd2').dialog({
			closed : true,
			closable : false,
			draggable : false
		});
	})
</script> -->