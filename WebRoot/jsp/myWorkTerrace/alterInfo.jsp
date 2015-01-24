<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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

<title>个人资料修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/myWorkTerrace/alterInfo.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
</head>
<script type="text/javascript">
	
	$(function(){
		
		$("#save").click(function(){
			if($("#pwd1").val()!=$("#pwd2").val()){
				alert("两次密码输入不一致");
				return false;
			}
			var pwd = $("#pwd").val();
			$.get("queryPwdIsTrue","sysUser.password="+pwd,function(data){
				if(data!='ok'){
					alert("旧密码输入有误");
					return false;
				}
			});
			$("form").submit();
			/* var tab=$("[name=mainTabs]").tabs('selected');
			var opt=function(){
				
			}; */
			$("[name=mainTabs]").tabs('close','个人资料修改');
		});
	});
	
</script>
<body>
<form action="UserUpdate.action" method="post">
	<table class="tab" border="0">
		<tr>
	 		<td style="text-align: right;">用户名：</td>
			<td><label>${sessionScope.loginUser.account}</label>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">用户名称：</td>
			<td><label>${sessionScope.loginUser.user_name}</label>
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">请输入旧密码：</td>
			<td><input id="pwd" type="password">*您本次登录时的密码</td>
		</tr>
		<tr>
			<td style="text-align: right;">请输入新密码：</td>
			<td><input id="pwd1" type="password" name="sysUser.password">*新密码不少于6个字符</td>
		</tr>
		<tr>
			<td style="text-align: right;">请确认新密码：</td>
			<td><input id="pwd2" type="password">*新密码不少于6个字符</td>
		</tr>

		<tr>
			<td style="text-align: right;">性&nbsp;&nbsp;别：</td>
			<td><input type="radio" <s:if test="loginUser.sex==1">checked="checked"</s:if> name="sysUser.sex" value="1">男<input
				type="radio" <s:if test="loginUser.sex==0">checked="checked"</s:if> name="sysUser.sex" value="0">女</td>
		</tr>
		<tr>
			<td style="text-align: right;">年&nbsp;&nbsp;龄：</td>
			<td><input type="text" name="sysUser.age" value="${sessionScope.loginUser.age}" />
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">联系电话：</td>
			<td><input type="text" name="sysUser.phone" value="${sessionScope.loginUser.phone}" />
			</td>
		</tr>
		<tr>
			<td style="text-align: right;">电子邮箱：</td>
			<td><input type="text" name="sysUser.email" value="${sessionScope.loginUser.email}" />
			</td>
		</tr>

		<tr>
			<td></td>
			<td ><a id="save"  class="easyui-linkbutton"
				data-options="iconCls:'icon-ok'"  style="margin:20px 10px 0 10px;">保存修改</a>
			</td>
		</tr>
	</table>
	</form>
</body>
</html>
