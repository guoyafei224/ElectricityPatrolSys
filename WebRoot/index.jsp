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

<title>电力管理系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet" href="css/reset.css" />
<link type="text/css" rel="stylesheet" href="css/common.css" />
<script type="text/javascript" charset="UTF-8" src="js/jquery.cookie.js"></script>
<script type="text/javascript" charset="UTF-8" src="js/easyuiTheme.js"></script>
<jsp:include page="comm/comm_easyUI_js.jsp" />
<link rel="stylesheet" href="js/dtree/dtree.css" type="text/css"></link>
<script type="text/javascript" src="js/dtree/dtree.js"></script>
<script type="text/javascript">
	//创建一个tab函数
	function createTab(options) {
		var Mtabs = $("#mainTabs");
		var defaults = {
			fit : true,
			border : false,
			closable : true,
			selected : true,
			content : "",
			title : "new tabs",
			tools : [ {
				iconCls : 'icon-mini-refresh', //刷新
				handler : function() {
					var tab = Mtabs.tabs('getSelected');
					Mtabs.tabs('update', {
						tab : tab,
						options : {
							href : ops.href
						}
					})
				}
			} ]
		};
		var ops = $.extend({}, defaults, options);//扩展参数  jQuery 中的extend 方法 扩展第一个 {} 参数，即defaults 和 options 合并到第一个参数 {} 中
		if (ops.hasUrl == "") {
			$.messager.alert("提示", "请为该菜单绑定url", "error");
			return;
		}
		if (Mtabs.tabs("exists", ops.title)) {
			Mtabs.tabs("select", ops.title)
		} else {
			$("#mainTabs").tabs('add', ops);
		}
	}

	/* 点击树型触发事件 */
	function onClickTreeNode(url, title) {
							createTab({
									title : title,
									hasUrl : url,
									content : '<iframe src="'
									+ 'jsp/'
									+ url
									+ '" allowTransparency="true" style="border:0;width:100%;height:99%;" frameBorder="0"></iframe>'
						});
		
	}
	/*退出系统，并添加记录*/
	$(function(){
		var str="exit";
		$("#exit").click(function(){
			$.get("addLog.action","log_type="+str,function(data){
				window.location.href="login.jsp";
			});
			
		});
	});
</script>
<style type="text/css">
</style>

</head>

<body>

	<div class="easyui-layout" fit="true">
		<div data-options="region:'north',split:false" style="height:110px;">
			<h3 style="line-height:100px;float:left;padding-left:20px;">
				<img src="file/image/logo.jpg" title="国家电网电力巡检系统" alt="电力巡检系统"
					height=100 />
			</h3>
			<a href="javascript:;" style="float:right;" class="easyui-menubutton"
				data-options="menu:'#smenus',iconCls:'icon-ok'">控制面板</a>
			<div id="smenus" style="width:100px;">
				
				<div data-options="iconCls:'icon-cancel'" id="exit">退出系统</div>
			</div>
			<div class="fr mr10">
				<a href="javascript:void(0)" class="easyui-menubutton"
					data-options="menu:'#themes',iconCls:'icon-tip'">更换皮肤</a>
				<div id="themes" style="width:100px;">
					<div onclick="changeThemeFun('black');" title="black"
						class="menu-item" style="height: 20px;">black</div>
					<div onclick="changeThemeFun('gray');" title="gray"
						class="menu-item" style="height: 20px;">gray</div>
					<div onclick="changeThemeFun('default');" title="default"
						class="menu-item" style="height: 20px;">default</div>
					<div onclick="changeThemeFun('metro');" title="metro"
						class="menu-item" style="height: 20px;">metro</div>
					<div onclick="changeThemeFun('bootstrap');" title="bootstrap"
						class="menu-item" style="height: 20px;">bootstrap</div>
				</div>
			</div>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<br/>
			<a style="margin-left: 460px">欢迎${sessionScope.loginUser.account}登陆</a>
		</div>
		<div data-options="region:'south',title:'',split:true"
			style="height:30px;text-align:center">copyRright</div>
		<div data-options="region:'west',title:'导航',split:true"
			style="width:194px;padding-top:20px;" id="test">
			<!--加载树形菜单 -->
			<!-- <ul id="links"> 
			</ul>-->

			<!-- <iframe src="menuTree.jsp" width="100%" height="99%" frameborder="0"></iframe> -->
			<script type="text/javascript">
				tree = new dTree('tree');//创建一个对象.
				tree.add("0", "-1", "国家电网电力巡检系统", "", "", "", "", "", false);
			</script>
			<s:iterator value="Limits">
				<script type="text/javascript">
					tree.add(
									"<s:property value="limit_id"/>",
									"<s:property value="parent_id"/>",
									"<s:property value="limit_name"/>",
									"javaScript:onClickTreeNode('<s:property value="url"/>','<s:property value="limit_name"/>');",
									"", "_self", "", "", false);
				</script>
			</s:iterator>
			<script type="text/javascript">
				//document.write(tree);
				$("#test").html(tree.toString());
			</script>
		</div>
		<div data-options="region:'center',title:'',fit:true,border:false"
			style="padding:0px;background:#eee;">
			<div id="mainTabs" class="easyui-tabs"
				data-options="fit:true,border:false" name="mainTabs">
				<div title="我的工作面板">
					<iframe name="iframe" src="jsp/myWorkTerrace/waitList.jsp" allowTransparency="true"
						style="border: 0; width: 100%; height: 99%;" frameBorder="0"></iframe>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
