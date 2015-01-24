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

<title>系统配置</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="css/sysMgr/sysConfig.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">

	$(function() {
	var config_type=null; //类型
		getDataGrid(); //加載數據
		$("#add").click(function() {
			$("#addstruts").submit();
		});
		$("#update").click(function() {
			$("#updatestruts").submit();
		});
		/*制作弹窗*/
		$("#updateForshowDialog").dialog({
			width : 400,
			height : 280,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '添加系统配置',
			modal : true,
			left : 200,
			top : 100
		});
		$("#showDialog").dialog({
			width : 400,
			height : 280,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '添加系统配置',
			modal : true,
			left : 200,
			top : 100
		});
		$("#showDialog").dialog('close');
		$("#updateForshowDialog").dialog('close');
	});

	/*查询出配置类型，放入select*/
	function getConfigType() {
		$("#configType option").remove();
		$("#configType").append("<option>--请选择--</option>");
		$.get("getConfigType.action", function(data) {
			for ( var i = 0; i < data.length; i++) {
				$("#configType").append(
						"<option>" + data[i].config_type + "</option>");
			}
		});
	}
	function getConfigType1() {
		$("#configType1 option").remove();
		$("#configType1").append("<option>"+config_type+"</option>");
		$.get("getConfigType.action", function(data) {
			for ( var i = 0; i < data.length; i++) {
				$("#configType1").append(
						"<option>" + data[i].config_type + "</option>");
			}
		});
	}
	/* 显示数据 */
	function getDataGrid() {
		var status_id; //接收状态id
		var config_name; //名
		
		var des; //描述
		var use_status; //使用状态
		$("#datagrid")
				.datagrid(
						{
							url : 'getStatus.action',
							rownumbers : true,
							title : '字典管理',
							iconCls : 'icon-save',
							pagination : true,//显示底部分页栏
							pageSize : 8,//默认每页记录数，pagination参数为true时才有效
							pageList : [ 8 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
							fitColumns : true,//自适应宽度，防止水平滚动
							striped : true,//隔行变色
							singleSelect : true,
							selectOnCheck : false,
							rownumbers : true,
							checkOnSelect : false,
							queryParams : {

							},
							toolbar : [
									{
										text : '添加状态',
										iconCls : 'icon-add',
										handler : function() {

											$("#showDialog").dialog('open');
											getConfigType(); //加载配置类型
										}
									},
									'-',
									{
										text : '修改',
										iconCls : 'icon-save',
										handler : function() {
											if (status_id == null
													|| status_id == "") {
												alert("请选中行！");
											} else {
												$("#updateForshowDialog").dialog(
													'open');
												$("#status_id").val(status_id);
												$("#statusName").val(
														config_name);
												//$("#configType").val(config_type);
												$("#strutsDes").val(des);
												if (use_status == 1) { //如果启用
													$("#qi2").attr("checked",
															"checked");
												} else {
													$("#wei2").attr("checked",
															"checked");
												
												}
												getConfigType1(); //加载配置类型
											}

										}
									},
									'-',
									{
										text : '冻结',
										iconCls : 'icon-edit',
										handler : function() {
											if (status_id == null) {
												alert("请选择行！");
											} else {
												var con = confirm("确定冻结"
														+ config_name + "吗？");
												/*根据状态id，决定是否启用该状态*/
												if (con) {
													$
															.get(
																	"updateStatusById.action",
																	"statusComm.status_id="
																			+ status_id,
																	function(
																			data) {
																		alert(data);
																		getDataGrid();
																	});
												}

											}
										}
									} ],
							columns : [ [ {
								field : 'status_id',
								title : '配置类型编号',
								align : 'center',
								width : 10
							}, {
								field : 'config_type',
								title : '配置类型类型',
								align : 'center',
								width : 10
							}, {
								field : 'config_desc',
								title : '描述',
								align : 'center',
								width : 10
							}, {
								field : 'config_name',
								title : '配置名称',
								align : 'center',
								width : 10
							}, {
								field : 'useType',
								title : '使用状态',
								align : 'center',
								width : 10,
								formatter : function(value, row, index) { //方法
									if (row.useType == 1) {
										return "启用";
									} else {
										return "未启用";
									}
								}
							} ] ],
							loadMsg : "正在努力加载用户信息",
							onClickRow : function(rowIndex, rowData) {
								status_id = rowData['status_id'];
								config_name = rowData['config_name'];
								config_type = rowData['config_type'];
								des = rowData['config_desc'];
								use_status = rowData['useType'];
							}
						});
	};
</script>
</head>

<body>
	<div id="all">
		<table id="datagrid"></table>
	</div>
	<div id="showDialog">
		<form action="addStruts.action" method="post" id="addstruts">
			<input class="inText" name="statusComm.status_id" type="text"
				style="display:none;" /> <label>配置名称:</label><input type="text"
				name="statusComm.config_name" /><br /> <label>配置类型:</label> <select
				name="statusComm.config_type" id="configType" style="width:145px;">

			</select> <br /> <label>配置描述:</label><input type="text"
				name="statusComm.config_desc" /><br /> <label>配置状态:</label><input
				type="radio" name="statusComm.useType" value="1" checked="checked" />启用
			<input type="radio" name="statusComm.useType" value="0" />未启用<br />
			<a id="add" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">保存</a>
		</form>
	</div>

	<div id="updateForshowDialog">
		<form action="updateStruts.action" method="post" id="updatestruts">
			<input class="inText" name="statusComm.status_id" type="text"
				style="display:none;" id="status_id" /> <label>配置名称:</label><input
				type="text" name="statusComm.config_name" id="statusName" /><br />
			<label>配置类型:</label> <select name="statusComm.config_type"
				id="configType1" style="width:145px;">

			</select> <br /> <label>配置描述:</label><input type="text"
				name="statusComm.config_desc" id="strutsDes" /><br /> <label>配置状态:</label><input
				type="radio" name="statusComm.useType" id="qi2" value="1"
				checked="checked" />启用 <input type="radio"
				name="statusComm.useType" id="wei2" value="0" />未启用<br /> <a
				id="update" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">保存</a>
		</form>
	</div>
</body>
</html>
