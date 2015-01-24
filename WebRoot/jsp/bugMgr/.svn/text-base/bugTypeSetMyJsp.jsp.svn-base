<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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

<title>缺陷类型设置</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/bugMgr/bugTypeSetMyJsp.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />

<script type="text/javascript">
	var name;
	var statusCommName;
	var id;
	var status_id;
	var selectIndex;
	$(function() {
		
		$("#grid").datagrid({
							url : 'bugTypeSelect.action',
							rownumbers : true,
							title : '用户管理',
							iconCls : 'icon-save',
							pagination : true,//显示底部分页栏
							pageSize : 10,//默认每页记录数，pagination参数为true时才有效
							pageList : [ 5, 10, 15 ], //显示列表记录数的下拉框选项，pagination参数为true时才有效
							fitColumns : true,//自适应宽度，防止水平滚动
							striped : true,//隔行变色
							singleSelect : true,
							selectOnCheck : false,
							checkOnSelect : false,
							width : 750,
							columns : [ [{
									field : 'bug_type_id',
										title : '编号',
										align : 'left',
										hidden:true
									},
									{
										field : 'bug_type_name',
										title : '缺陷类型名称',
										align : 'left',
										width:5
									},
									{
										field : 'statusComm.config_name',
										title : '状态（启用/未启用）',
										align : 'center',
										width:3
									},
									{
										field : 'statusComm.status_id',
										hidden:true
									},
									
									{
										field : 'q3',
										title : '操作',
										align : 'center',
										formatter : function(value,rowData,rowIndex) {
											return "<a  onclick='showdia1("+rowIndex+");'>修改</a> ";
											/* | <a onclick='showdia2("+rowIndex+");'>删除</a> */
										},
										width:2
									} ] ],
							onSelect : function(rowIndex, rowData) {
								
								id=rowData['bug_type_id'];
								//alert(id);
								name=rowData['bug_type_name'];
								statusCommName=rowData['statusComm'].config_name;
								status_id=rowData['statusComm'].status_id;
							}
						});

		/* 弹窗 */
		$("#showdia1").dialog({
			closed : true,
			width : 410,
			height : 230,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '修改缺陷类型',
			modal : true
		});
	});
	function showdia1(rowIndex) {
		$("#grid").datagrid('selectRow',rowIndex);
		$("#showdia1").dialog('open'); //打开弹框
		$("#bug_name").val(name);
		$("#bug_id").val(id);
		if(statusCommName=='启用')
		{
			$("#config_name").attr("checked","checked");
		}if (statusCommName=='不启用'){
			$("#config_name1").attr("checked","checked");
		}
	};
	function showdia2() {
	//alert(id);
	  var s=confirm("确认删除？");
		if (s==true) {
			$.ajax({
			url:"bugTypeDelete.action?bugType.bug_type_id="+id,
			type:"post",
			success:function(){
			  alert("删除成功");
			  $("#grid").datagrid('reload');
			}
			});
		}
	}
</script>
</head>

<body>
<script type="text/javascript">
		$(function() {
			$("#addTower").click(function() {
				$("#add").dialog('open');
				return false;
			})
			$("#search").click(function(){
				$("#add_1").submit();
			})
			$("#back").click(function() {
				$("#add").dialog('close');
				return false;
			})
		})
		
	</script>
	<div id="add" class="easyui-dialog" title="添加缺陷类型"
		style="width:400px;height:200px;"
		data-options="iconCls:'icon-add',closed:true,resizable:true,modal:true">
		<div class="empty"></div>
		<form id="add_1" action="bugTypeAdd.action" method="post">
		<table class="left">
			<!-- <tr>
				<td><input type="hidden" id="bug_id"
				name="bugType.bug_type_id">
				</td>
			</tr> -->
			<tr>
				<td>缺陷类型名称:</td>
				<td><input type="text" name="bugType.bug_type_name"></td>
			</tr>
			<tr>
				<td>启用状态：</td>
				<td><input type="radio" name="bugType.statusComm.status_id" value="1018" checked="checked">启用&nbsp;&nbsp;
					<input type="radio" name="bugType.statusComm.status_id" value="1019">不启用</td>
			</tr>
			<tr>
				<td></td>
				<td><a id="search" class="easyui-linkbutton"
					data-options="iconCls:'icon-ok'" >确定</a>&nbsp; <a id="back"
					class="easyui-linkbutton" data-options="iconCls:'icon-back'"
					href="#">返回</a></td>
			</tr>
		</table>
		</form>
	</div>
	<div id="main">
		<table style="margin-left: 600px">
			<tr>
				<td><a id="addTower" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'" style="margin:0 10px 0 0;"
				href="#">添加缺陷类型</a>
				</td>
			</tr>
		</table>
		<div id="showdia1">
			<form action="bugTypeUpdate.action" method="post">
				<table class="tab_1" style="line-height:40px; ">
					<tr>
						<td><input type="hidden" id="bug_id"
							name="bugType.bug_type_id">
						</td>
					</tr>
					<tr>
						<td>缺陷类型名称:</td>
						<td><input type="text" id="bug_name"
							name="bugType.bug_type_name">
						</td>
					</tr>
					<tr>
						<td>启用状态:</td>
						<td><input id="config_name" type="radio" value="1018"
							name="bugType.statusComm.status_id">启用<input
							id="config_name1" type="radio" value="1019"
							name="bugType.statusComm.status_id">不启用</td>
					</tr>
				</table>
				<p class="p_1">
					<input type="submit" value="保存"> <!-- <input type="submit"
						value="返回"> -->
				</p>

			</form>
		</div>
		<table id="grid"></table>
	</div>
</body>
</html>
