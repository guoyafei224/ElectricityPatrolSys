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

<title>用户管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="css/sysMgr/userMgr.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />

<script type="text/javascript">
	var user_id=null;      //用于修改
	var role_id=null;
	var role_name=null;
	
	function getUserData() {
		var userName = $("#user_name").val(); //用户名
		var userSta = $("#userSta").val();    //状态
		
		var user_name;
		$("#grid").datagrid({
			url : 'getSysUsers.action',
			rownumbers : true,
			title : '用户管理',
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
				user_name : userName,
				status_id : userSta
			},
			toolbar : [ {
				text : '添加用户',
				iconCls : 'icon-add',
				handler : function() {
					$("#showdia1").dialog('open'); //打开弹框
					getRoles();
				}
			},'-', {
				text : '修改',
				iconCls : 'icon-save',
				handler : function() {
					if(user_id==null||user_id==""){
						//为选中行
						alert("请选择您要修改的对象!");
					}else{
						$("#showdia2").dialog('open'); //打开弹框
						/* 根据id,查询该用户信息 */
						$.get("getUserById.action","u_id="+user_id,function(data){     //根据id，查询信息
							$("#account").val(data['account']);
							$("#u_name").val(data['user_name']);
							$("#password").val(data['password']);
							$("#enterDate1").val(data['enertDate']);
							
							var user_status=data['user_status_id'];
							if(user_status=='1001'){
						 		$("#status_id1").attr("checked","checked");
						 	}
							 if(user_status=='1002'){
						 		$("#status_id2").attr("checked","checked");
						 	};
							getRoles1();
						});
						//选中行
					};
				}
			}, '-', {
				text : '冻结',
				iconCls : 'icon-edit',
				handler : function() {
					/*未完成*/
					//根据用户id删除用户
					if(user_name==null||user_name==""){
						//为选中行
						alert("请选择您要冻结的对象!");
					}else{
						//选中行
						var con=confirm("确定冻结用户"+user_name+"吗？");
						if(con==true){    //同意删除，就删除该用户
							$.get("freeUser.action","u_id="+user_id,function(data){
								alert(data);       //弹出提示
								getUserData();      //刷新datagrid
							});
						}
					};
				}
			}, '-', {
				text : 'log日志',
				iconCls : 'icon-undo',
				handler : function() {
					logData();    //显示datagrid中数据
					$("#log").dialog('open'); //打开弹框
				}
			} ],
			columns : [ [ {
				field : 'user_id',
				title : '用户编号',
				align : 'center',
				width : 10
			}, {
				field : 'user_name',
				title : '用户名称',
				align : 'center',
				width : 10
			}, {
				field : 'sysUserRole.sysRole.role_id',
				title : '角色',
				align : 'center',
				hidden:true
			}, {
				field : 'sysUserRole.sysRole.role_name',
				title : '角色',
				align : 'center',
				width : 10
			}, {
				field : 'email',
				title : '邮箱',
				align : 'center',
				width : 10
			}, {
				field : 'lastlogindate',
				title : '最后登录时间',
				align : 'center',
				width : 10,
				
			}, {
				field : 'statusComm.config_name',
				title : '状态(正常/冻结)',
				align : 'center',
			}, ] ],
				loadMsg:"正在努力加载用户信息",
			onClickRow : function(rowIndex,rowData) {
				user_id=rowData['user_id'];       //获取用户id
				user_name=rowData['user_name'];   //用户名
				role_id=rowData['sysUserRole'].sysRole.role_id;
				role_name=rowData['sysUserRole'].sysRole.role_name;
			}
		});
		/* 弹出框 */
		$("#showdia1").dialog({
			width : 480,
			height : 390,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '添加用户',
			modal : true,
			top : 50,
			left : 300

		});
		$("#showdia2").dialog({
			width : 480,
			height : 390,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '添加用户',
			modal : true,
			top : 50,
			left : 300

		});
		/* 用户日志弹出框 */
		$("#log").dialog({
			width : 680,
			height : 450,
			collapsible : false,
			minimizable : false,
			maximizable : false,
			title : '查看用户操作日志',
			modal : true,
			top : 20,
			left : 300

		});
		$("#log").dialog('close'); //关闭弹框
		$("#showdia1").dialog('close'); //关闭弹框
		$("#showdia2").dialog('close'); //关闭弹框
	};

	/*使用ajax查询状态表，查询出用户的状态*/
	$(function() {
		getUserData(); //加载数据
		$.get("getStatusByid.action", "statusComm.config_type=user_status_id",
				function(data) {
					for ( var i = 0; i < data.length; i++) {
						$("#userSta").append(
								"<option value='"+data[i].status_id+"'>"
										+ data[i].config_name + "</option>");
					}
				});

		/*点击保存，提交添加用户*/
		$("#saveUser").click(function() {
			$("#addUser").submit();
		});
		/*点击查询，根据条件查询日志*/
		$("#searchLog").click(function(){
			//$("#slog").submit();
			logData();    //提交方法
		});
		/*点击后提交修改*/
		$("#updateUser").click(function(){
			$("#updateUser1").submit();
			getUserData();
			   //提交方法
		});
	});
	/*添加用户信息窗体中的查询所有角色*/
	function getRoles() {
	$("#allRole1 option").remove();
		$.get("getAllRole.action", function(data) {
			$("#allRole1").append("<option value=''>--请选择--</option>");
			for ( var i = 0; i < data.length; i++) {
				$("#allRole1").append(
						"<option value='"+data[i].role_id+"'>"
								+ data[i].role_name + "</option>");
			}
		});
	}
	function getRoles1() {
	$("#allRole2 option").remove();
		$.get("getAllRole.action", function(data) {
			$("#allRole2").append("<option value="+role_id+">"+role_name+"</option>");
			for ( var i = 0; i < data.length; i++) {
				$("#allRole2").append(
						"<option value='"+data[i].role_id+"'>"
								+ data[i].role_name + "</option>");
			}
		});
	}
	
	/*用户log日志的窗口，下datagrid*/
	function logData(){
		var startTime=$("#startTime").val();
		var endTime=$("#endTime1").val();
		var u_id=user_id;
		$("#logGrid").datagrid({
			url : 'getLogs.action',
			rownumbers : true,
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
				startTime : startTime,
				endTime : endTime,
				u_id:u_id
			},columns : [ [ {
				field : 'log_id',
				title : '日志编号',
				align : 'center',
				width : 10
			}, {
				field : 'sysUser.user_name',
				title : '用户名称',
				align : 'center',
				width : 10
			}, {
				field : 'operate_type',
				title : '操作信息',
				align : 'center',
				width : 10
			}, {
				field : 'operate_date',
				title : '操作时间',
				align : 'center',
				width : 10
			},] ],
				loadMsg:"正在努力加载用户信息",
		});
	}
</script>
</head>

<body>
	<table class="up">
		<tr>

			<td>用户名称：&nbsp;</td>
			<td><input class="inText" type="text" id="user_name" />&nbsp;&nbsp;</td>
			<td>使用状态：</td>
			<td><select name="" id="userSta">
					<option value=''>--请选择--</option>
			</select></td>
			<td><a id="search" class="easyui-linkbutton"
				onClick="getUserData()" data-options="iconCls:'icon-search'"
				style="margin:0 10px 0 20px;">查询</a></td>
		</tr>
	</table>
	<div id="showdia1">
		<form action="addUser.action" method="post" id="addUser">
			<label>登陆账号:</label><input type="text" name="sysUser.account" /><br />
			<label>用户名称:</label><input type="text" name="sysUser.user_name" /><br />
			<label>密&nbsp;&nbsp;&nbsp;&nbsp;码:</label><input type="text"
				name="sysUser.password" /> 默认初始密码为<span style="color:#f00;">123456</span><br />
			<label>角&nbsp;&nbsp;&nbsp;&nbsp;色:</label> <select id="allRole1"
				name="role_id">
				
				<!-- 默认消缺员 -->
			</select> <br /> <label>入职时间:</label><input type="text" class="Wdate"
				 name="sysUser.enertDate"
				onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" size="21"
				value="" /><br /> <label>使用状态:</label> <input type="radio"
				name="sysUser.statusComm.status_id" value="1001" checked="checked" />
			正常 <input type="radio" name="sysUser.statusComm.status_id"
				value="1002" />冻结<br /> <a id="saveUser" class="easyui-linkbutton"
				data-options="iconCls:'icon-search'">保存</a>
		</form>
	</div>
	<!-- 修改的方法 -->
	<div id="showdia2">
		<form action="updateUserById.action" method="post" id="updateUser1">
			<label>登陆账号:</label><input type="text" name="sysUser.account" id="account"/><br />
			<label>用户名称:</label><input type="text" name="sysUser.user_name" id="u_name"/><br />
			<label>密&nbsp;&nbsp;&nbsp;&nbsp;码:</label><input type="text"
				name="sysUser.password" id="password"/> 默认初始密码为<span style="color:#f00;">123456</span><br />
			<label>角&nbsp;&nbsp;&nbsp;&nbsp;色:</label> <select id="allRole2"
				name="sysUserRole.sysRole.role_id">
					
				<!-- 默认消缺员 -->
			</select>  <br /> <label>入职时间:</label><input type="text" class="Wdate"
				name="sysUser.enertDate" id="enterDate1"
				onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" size="21"
				value="aaa" /><br /> <label>使用状态:</label> <input type="radio"
				name="sysUser.user_status_id" value="1001" checked="checked"  id="status_id1"/>
			正常 <input type="radio" name="sysUser.user_status_id" id="status_id2"
				value="1002" />冻结<br /> <a id="updateUser" class="easyui-linkbutton" 
				data-options="iconCls:'icon-search'">修改</a>
		</form>
	</div>
	<div class="empty"></div>
	<table id="grid"></table>
	<div id="log">
		<div style="padding:10px 5px;">
			<!-- <form action="getLogs.action" method="post" id="slog"> -->
				<label>开始时间：</label><input type="text" class="Wdate"
						id="startTime" name="startTime"
						onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" size="16"
						value="" />&nbsp;&nbsp;&nbsp;
				<label>截止时间：</label><input type="text" class="Wdate"
						id="endTime1" name="endTime"
						onClick="WdatePicker({dateFmt:'yyyy-MM-dd'})" size="16"
						value="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a id="searchLog" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查 询</a>  
			<!-- </form> -->
		</div>
		<table id="logGrid"></table>
	</div>
</body>
</html>
