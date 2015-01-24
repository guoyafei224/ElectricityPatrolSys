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

<title>My JSP 'circuitMgr.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/circuitMgr/circuitMgr.css">
    <jsp:include page="../../comm/comm_easyUI_js.jsp" />

<script type="text/javascript">
	$(function() {
		$("#grid").datagrid({
			title : '线路管理',
			url : 'Circuit_queryallCircuit.action',
			rownumbers : true,
			nowrap : false,
			iconCls : 'icon-search',
			singleSelect : true,
			pagination : true,//显示底部分页栏
			pageSize : 2,//默认每页记录数，pagination参数为true时才有效
			pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			fitColumns:true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色 
			width : 800,
			toolbar : [{
					text : '添加线路',
					iconCls : 'icon-add',
					handler : function() {
						location.href='jsp/circuitMgr/addCircuit.jsp';
					}
				}, '-', {
				text : '修改状态',
				iconCls : 'icon-save',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					if(row==null){
						alert("请选择线路");
						return false;
					}
					if(row.usestatusComm.config_name=='启用'){
						if(confirm("修改状态为停用？")){
							$.get("Circuit_alterStatus","circuit.usestatusComm.status_id="+1015+"&circuit.circuit_id="+row.circuit_id,function(){
								$("#grid").datagrid('reload')
							})
						}
					}else{
						if(confirm("修改状态为启用？")){
							$.get("Circuit_alterStatus","circuit.usestatusComm.status_id="+1014+"&circuit.circuit_id="+row.circuit_id,function(){
								$("#grid").datagrid('reload')
							})
						}
					}
				}
			}, '-', {
				text : '修改',
				iconCls : 'icon-edit',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					if(row==null){
						alert("请选择线路");
						return false;
					}
					location.href = 'getCircuitById_Circuit?circuit.circuit_id='+row.circuit_id;
				}
			}],
			/* , '-', {
				text : '删除',
				iconCls : 'icon-remove',
				handler : function() {
					var row = $("#grid").datagrid('getSelected');
					if(row==null){
						alert("请选择线路");
						return false;
					}
				location.href='delCircuit_Circuit?circuit.circuit_id='+row.circuit_id;
			} } */
			columns : [ [ {
				field : 'circuit_id',
				title : '线路编号',
				align : 'center',
				width : 2
			}, {
				field : 'circuit_name',
				title : '线路名称',
				align : 'center',
				width : 3
			}, {
				field : 'start_tower_id',
				title : '起始杆号',
				align : 'center',
				width : 2
			}, {
				field : 'end_tower_id',
				title : '终止编号',
				align : 'center',
				width : 3
			}, {
				field : 'fund_num',
				title : '塔基数',
				align : 'center',
				width : 2
			}, {
				field : 'runstatusComm.config_name',
				title : '运行状态',
				align : 'center',
				width : 3,
			}, {
				field : 'usestatusComm.config_name',
				title : '启用状态',
				align : 'center',
				width : 2
			}
			] ]
		});
		$.get("Circuit_queryCircuitSC.action", function(data) {
			Circuitdata=data;
			for ( var i = 0; i < data.length; i++) {
				$("#options").append(
						"<option value='"+data[i].status_id+"'>"
								+ data[i].config_name + "</option>");
			}
		})
		$("#search").click(function(){
		var circuit_id=$("#circuit_id").val();
		var circuitType=$("select").val();
		 $("#grid").datagrid('reload',{
				circuit_id:circuit_id,
				status_id:circuitType
				});
		});
	});
</script>

</head>

<body>

	<div>
		<table>
			<tr>
				<td class="td_odd">线路编号：</td>
				<td><input type="text" class="inText" id="circuit_id" /></td>
				<td class="td_odd2">线路状态：</td>
				<td><select id="options" name=circuitType>
						<option value="">--请选择--</option>
				</select>
				</td>
				<td style="padding-left:20px;"><a id="search" class="easyui-linkbutton"
					data-options="iconCls:'icon-search'" style="margin:0 10px 0 0;">查询</a>
				</td>
			</tr>
		</table>
		<div class="empty"></div>
		<table id="grid"></table>
	</div>
</body>
</html>
