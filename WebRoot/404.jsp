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

<title>出现错误</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style type=text/css>
body {
	font-size: 12px;
	font-family: tahoma
}

td {
	font-size: 12px;
	font-family: tahoma
}

a:link {
	color: #636363;
	text-decoration: none
}

a:visited {
	color: #838383;
	text-decoration: none
}

a:hover {
	color: #a3a3a3;
	text-decoration: underline
}

body {
	background-color: #cccccc
}
</style>

</head>

<body style="table-layout: fixed; word-break: break-all" topmargin=10
	marginwidth="10" marginheight="10">
	<h1 style="color:red;">${message}</h1>
	<table height="95%" cellspacing=0 cellpadding=0 width="100%"
		align=center border=0>
		
		<tbody>
			<tr valign=center align=middle>
				<td>
					<table cellspacing=0 cellpadding=0 width=468 bgcolor=#ffffff
						border=0>
						<tbody>
							<tr>
								<td width=20 background="404_10/rbox_1.gif" height=20></td>
								<td width=108 background="404_10/rbox_2.gif" height=20></td>
								<td width=56><img height=20 src="404_10/rbox_ring.gif"
									width=56></td>
								<td width=100 background="404_10/rbox_2.gif"></td>
								<td width=56><img height=20 src="404_10/rbox_ring.gif"
									width=56></td>
								<td width=108 background="404_10/rbox_2.gif"></td>
								<td width=20 background="404_10/rbox_3.gif" height=20></td>
							</tr>
							<tr>
								<td align=left background="404_10/rbox_4.gif" rowspan=2></td>
								<td align=middle bgcolor=#eeeeee colspan=5 height=50>
									<p>
										<strong>糟糕，该网页地址不知道被谁删除了&#8230;&#8230;<br> <br>
										</strong>
									</p></td>
								<td align=left background="404_10/rbox_6.gif" rowspan=2></td>
							</tr>
							<tr>
								<td align=left colspan=5 height=80>
									<p align=center>
										<br>
									<p id=lid2>请选择您要进行的下一步操作：</p>
									<ul>
										<li id=list1>等待，约8秒钟后跳转到首页。<br>
										<li id=list2>自己动手转到 <a href="index.jsp">有些不同电影</a>
											主页。
										<li id=list3>单击<a href="javascript:history.back(1)">后退</a>按钮，尝试其他链接。
										</li>
									</ul>
									<div align=right>
										<br>
									</div></td>
							</tr>
							<tr>
								<td align=left background="404_10/rbox_7.gif" height=20></td>
								<td align=left background="404_10/rbox_8.gif" colspan=5
									height=20></td>
								<td align=left background="404_10/rbox_9.gif" height=20></td>
							</tr>
						</tbody>
					</table></td>
			</tr>
		</tbody>
	</table>
</body>
</html>
