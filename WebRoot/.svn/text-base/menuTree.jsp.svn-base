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

<title>电力管理系统-树状导航</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<jsp:include page="comm/comm_easyUI_js.jsp" />
<script src="js/sysMgr/prototype.lite.js" type="text/javascript"></script>
<script src="js/sysMgr/moo.fx.js" type="text/javascript"></script>
<script src="js/sysMgr/moo.fx.pack.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/menuTree.css" type="text/css"></link>
<script type="text/javascript">
						function skip(url,title){
								window.parent.createTab({
									hasUrl : url,
									title:title,
									content : '<iframe src="'
											+ url
											+ '" allowTransparency="true" style="border:0;width:100%;height:99%;" frameBorder="0"></iframe>'
								});
								return false;
							}
					</script>
</head>

<body>
	
	<table width="100%" height="280" border="0" cellpadding="0"
		cellspacing="0" bgcolor="#EEF2FB">
		<tr>
			<td width="182" valign="top"><div id="container">
					<h1 class="type">
						<a href="javascript:void(0)">我的工作平台</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="file/image/menu_topline.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="http://www.865171.cn" target="main">待办列表</a></li>
							<li><a href="" onclick="skip('')" target="main">个人资料修改</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">系统管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="file/image/menu_topline.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="http://www.865171.cn" target="main">角色管理</a></li>
							<li><a href="http://www.865171.cn" target="main">用户管理</a></li>
							<li><a href="http://www.865171.cn" target="main">角色权限配置</a>
							</li>
							<li><a href="http://www.865171.cn" target="main">系统配置</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">杆塔管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="file/image/menu_topline.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="http://www.865171.cn" target="main">杆塔管理</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">线路管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="file/image/menu_topline.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="http://www.865171.cn" target="main">线路管理</a></li>
						</ul>
					</div>
				</div>
				<h1 class="type">
					<a href="javascript:void(0)">缺陷管理</a>
				</h1>
				<div class="content">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="file/image/menu_topline.gif" width="182"
								height="5" /></td>
						</tr>
					</table>
					<ul class="MM">
						<li><a href="http://www.865171.cn" target="main">缺陷类型设置</a></li>
						<li><a href="http://www.865171.cn" target="main">缺陷等级确认</a></li>
					</ul>
				</div>
				<h1 class="type">
					<a href="javascript:void(0)">巡检任务管理</a>
				</h1>
				<div class="content">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="file/image/menu_topline.gif" width="182"
								height="5" /></td>
						</tr>
					</table>
					<ul class="MM">
						<li><a href='#'
							onclick="skip('jsp/patrolTaskMgr/enactAllot.jsp','巡检任务制定与分配');return false">巡检任务制定与分配</a>
						</li>
						<li><a href="#" target="main">巡检任务执行与回执</a></li>
						<li><a href="http://www.865171.cn" target="main">缺陷查询</a></li>
					</ul>
				</div>
				<h1 class="type">
					<a href="javascript:void(0)">消缺任务管理</a>
				</h1>
				<div class="content">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="file/image/menu_topline.gif" width="182"
								height="5" /></td>
						</tr>
					</table>
					<ul class="MM">
						<li><a href="http://www.865171.cn" target="main">消缺任务制定与分配</a>
						</li>
						<li><a href="http://www.865171.cn" target="main">消缺任务执行与回执</a>
						</li>
						<li><a href="http://www.865171.cn" target="main">消缺查询</a></li>
					</ul>
				</div>
				<h1 class="type">
					<a href="javascript:void(0)">信息统计</a>
				</h1>
				<div class="content">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="file/image/menu_topline.gif" width="182"
								height="5" /></td>
						</tr>
					</table>
					<ul class="MM">
						<li><a href="http://www.865171.cn" target="main">巡检记录统计</a></li>
						<li><a href="http://www.865171.cn" target="main">消缺记录统计</a></li>
					</ul>
				</div>
				</div> <script type="text/javascript">
					var contents = document.getElementsByClassName('content');
					var toggles = document.getElementsByClassName('type');

					var myAccordion = new fx.Accordion(toggles, contents, {
						opacity : true,
						duration : 400
					});
					myAccordion.showThisHideOpen(contents[0]);
				</script>
			</td>
		</tr>
	</table>

</body>
</html>
