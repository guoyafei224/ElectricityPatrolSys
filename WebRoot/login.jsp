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

<title>电力管理系统-登录页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link type="text/css" rel="stylesheet" href="css/login.css" />

 <script type="text/javascript" charset="UTF-8" src="js/jquery.cookie.js"></script>
<script type="text/javascript" charset="UTF-8" src="js/easyuiTheme.js"></script>
<!-- <script type="text/javascript" charset="UTF-8" src="js/easyloader.js"></script> --> 
<jsp:include page="comm/comm_easyUI_js.jsp" />


<script type="text/javascript">
	$(function() {
		$("#loginBox").dialog({
			title : '登录系统',
			width : 480,
			height : 233,
			closed : false,
			closable : false,
			iconCls : "icon-ok",
			buttons : [ {
				text : '登录',
				iconCls : 'icon-ok',
				handler : function() {
					//表单的提交和验证
					$("#myform").form('submit', {
						
						onSubmit : function() {
							$.messager.progress({
								text : '正在登录系统',
								
							});
						},
						success : function() {
							window.location.href='Userlogin.action';
							$.messager.progress('close'); // 如果提交成功则隐藏进度条
						}
					});

				}
			}, {
				text : '重置',
				iconCls : 'icon-no',
				handler : function() {
					$("#myform").form("reset");
				}
			} ]
		});
	});
</script>

</head>

<body>
<%
	session.removeAttribute("loginUser");
	session.removeAttribute("roleLimit");
 %>
	<div id="loginBox">
		<form action="Userlogin.action" method="post" id="myform">
			<div id="top">
				<label for="name">用户名：</label> <input type="text" name="sysUser.account"
					class="easyui-validatebox" placeholder="请输入账号" data-options="required:true" />
			</div>
			<div id="top">
				<label for="password">密 &nbsp; &nbsp;码：</label> <input
					type="password" name="sysUser.password" placeholder="请输入密码" class="easyui-validatebox"
					data-options="required:true" />
			</div>
			<div id="top">
				<p style="color:red;">${message}</p>
			</div>
		</form>
		
	</div>

</body>
</html>
