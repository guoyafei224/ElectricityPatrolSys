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

<title>角色管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/sysMgr/roleMgr.css" type="text/css"></link>
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	function getRole(url) {
		var roleName=$("#role_name").val();     //参数
		var status_id=$("#roleSta").val();		//参数
		var role_name;             //修改前的角色名称
		var role_status;			//修改前的角色状态
		var role_id;
		$("#grid").datagrid({
			title : '角色管理',
			url : url,
			iconCls : 'icon-save',
			pagination : true,//显示底部分页栏
			pageSize : 8,//默认每页记录数，pagination参数为true时才有效
			pageList : [8], //显示列表记录数的下拉框选项，pagination参数为true时才有效
			fitColumns : true,//自适应宽度，防止水平滚动
			striped : true,//隔行变色
			singleSelect : true,
			selectOnCheck : false,
			rownumbers : true,
			checkOnSelect : false,
			queryParams:{
				role_name:roleName,
				status_id:status_id
			},
			toolbar : [ {
				text : '添加用户',
				iconCls : 'icon-add',
				handler : function() {
					$("#showdia1").dialog('open'); //打开弹框
					/*提交添加的方法*/
					 
					
				}
			}, '-', {
				text : '修改',
				iconCls : 'icon-edit',
				handler : function() {
					if(role_name==null||role_name==""){
						alert("请选中行！");
					}else{
						 $("#showdia2").dialog('open'); //打开弹框
						 $("#roleName2").val(role_name);
						 $("#role_id").val(role_id);
						 if(role_status=='启用'){
						 	$("#qi2").attr("checked","checked");
						 }
						 if(role_status=='未启用'){
						 	$("#wei2").attr("checked","checked");
						 };
					}
				}
			}, '-', {
				text : '冻结',
				iconCls : 'icon-remove',
				handler : function() {
					//删除选择项
					var con=confirm("确定冻结"+role_name+"吗？");        //选择是否删除
					if(con==true){                   //如果确定删除，就删除之
						$.get("freeRole.action","sysRole.role_id="+role_id,function(data){
							alert(data);       //提示信息
							getRole('getRoles.action');    //datagrid刷新
						});
					}
				}
			} ],
			columns : [ [ {
				field : 'role_id',
				title : '角色编号',
				align : 'center',
				width : 10
			}, {
				field : 'role_name',
				title : '角色名称',
				align : 'center',
				width : 10
			}, {
				field : 'sysUser.user_name',
				title : '创建人',
				align : 'center',
				width : 10
			}, {
				field : 'modifidate',
				title : '更新时间',
				align : 'center',
				width : 10,
				
			}, {
				field : 'statusComm.config_name',
				title : '状态(启用/未启用)',
				align : 'center',
				width : 10
			}, ] ],
				loadMsg:"正在努力加载角色信息",
			onClickRow : function(rowIndex,rowData) {
				role_name=rowData['role_name'];						//修改的名称
				role_status=rowData['statusComm'].config_name;      //状态
				role_id=rowData['role_id'];
				/* if (field == "opr") {
					var id = $(this).datagrid("getRows")[index].id;
					window.location.href = "getItem.action?sid=" + id;
				} */
			}
		});

		/* 弹窗 */
		$("#showdia1").dialog({
			width : 400,
			height : 220,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '添加角色',
			modal : true,
			left:200,
			top:150
		});
		
		/* 弹窗 */
		$("#showdia2").dialog({
			width : 400,
			height : 220,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '添加角色',
			modal : true,
			left:200,
			top:150
		});
		$("#showdia1").dialog('close'); //关闭弹框
		$("#showdia2").dialog('close'); //关闭弹框
		/*使用ajax查询状态表，查询出用户的状态*/
		
	};

	$(function() {
		getRole('getRoles.action'); //调用easyui显示角色方法
		$.get("getStatusByid.action", "statusComm.config_type=role_status_id",
				function(data) {
					for ( var i = 0; i < data.length; i++) {
						$("#roleSta").append(
								"<option value='"+data[i].status_id+"'>"
										+ data[i].config_name + "</option>");
					}
				});
		 $("#addRole2").click(function(){
							$("#addRole3").submit();
						});
		$("#addRole").click(function(){
						$("#addRole1").submit();
					});
				
	});
</script>
</head>

<body>

	<table>
		<tr>

			<td>角色名称：&nbsp;</td>
			<td><input class="inText" type="text" id="role_name" />&nbsp;&nbsp;</td>
			<td>使用状态：</td>
			<td><select id="roleSta" style="width:150px;">
					<option value="">--请选择--</option>
			</select>
			</td>
			<td><a id="search" class="easyui-linkbutton" onClick="getRole()"
				data-options="iconCls:'icon-search'" style="margin:0 10px 0 20px;">查询</a>
			</td>
		</tr>
	</table>

	<!-- 弹出框添加 -->
	<div id="showdia1">
		<form action="addRole.action" method="post" id="addRole1">
			<label>角色名称:</label><input type="text" name="sysRole.role_name" /><br />
			<label>角色状态:</label> <input type="radio"
				name="sysRole.statusComm.status_id" value="1003" checked="checked" />启用
			<input type="radio" name="sysRole.statusComm.status_id" value="1004" />未启用<br />
			<a id="addRole" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">保存</a>
		</form>
	</div>
	<!-- 弹出框修改 -->
	<div id="showdia2">
		<form action="updateRole.action" method="post" id="addRole3">
			<input class="inText" name="sysRole.role_id" type="text"
				style="display:none;" id="role_id" /> <label>角色名称:</label><input
				type="text" name="sysRole.role_name" id="roleName2" /><br /> <label>角色状态:</label>
			<input type="radio" name="sysRole.statusComm.status_id" id="qi2"
				value="1003" checked="checked" />启用 <input type="radio"
				name="sysRole.statusComm.status_id" id="wei2" value="1004" />未启用<br />
			<a id="addRole2" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">保存</a>
		</form>
	</div>
	<div class="empty"></div>
	<table id="grid"></table>
</body>
</html>
