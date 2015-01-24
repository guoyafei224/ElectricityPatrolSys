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

<title>巡检任务回执录入</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="js/dtree/dtree.css" type="text/css"></link>
<script type="text/javascript" src="js/dtree/configdtree.js"></script>
<link type="text/css" rel="stylesheet"
	href="css/sysMgr/roleJuriConfigs.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	/*查询所有的角色*/
	$(function() {

		/*点击保存配置，提交*/
		$("#savepei").click(function() {
			$("#getLimit").submit();
		});

		$.get("getAllRole.action", function(data) {
			$("#role").append("<option>--请选择--</option>");
			for ( var i = 0; i < data.length; i++) {
				$("#role").append(
						"<option value='"+data[i].role_id+"'>"
								+ data[i].role_name + "</option>");
			}
		});

		/*当角色下拉框改变时，将查询出的数据在多选框打钩*/
		$("#role").change(
				function() {
					var r_id = $(this).val(); //获得角色id

					$.get("getLimitByR_id.action", "sysRole.role_id=" + r_id,
							function(data) { //根据角色id，查询所有的权限id

								/*遍历取消*/
								for ( var i = 0; i < data.length; i++) {
									$("input:checked").prop("checked", false);
								}
								/*便历选中*/
								for ( var i = 0; i < data.length; i++) {
									$("#ctree" + data[i].limit_id).prop(
											"checked", true);
								}
							});

				});
	});

	var tree;
	/*加载树形菜单*/
	$(function() {
		tree = new dTree('tree');//创建一个对象.
		tree.add("0", "-1", "国家电网电力巡检系统", "", "", "", "", "", true);
		$.getJSON("UserGetRoleLimit.action", function(data) {
			$.each(data, function(entryIndex, entry) {
				tree.add(entry['limit_id'], entry['parent_id'],
						entry['limit_name'], "javaScript:showMenu1("
								+ entry['limit_id'] + "," + entry + ");",
						entry['limit_name'], "_self", "", "", true);
			});
			//document.write(tree);

			$("#dtree").html(tree.toString());
		});
		/* 给多个下拉框进行赋值 */
		$.get("UserGetRoleLimit.action", function(data) {
			$.each(data, function(entryIndex, entry) {
				$("#limit_1").append("<option value="+entry['limit_id']+">"+entry['limit_name']+"</option>");
				$("#limit_2").append("<option value="+entry['limit_id']+">"+entry['limit_name']+"</option>");
				$("#limit_3").append("<option value="+entry['limit_id']+">"+entry['limit_name']+"</option>");
			});
		});
		
		/*修改时，当选中某一行，将数据加载进框中*/
		$("#limit_2").change(function(){
			var limit_id=$(this).val();         //获得当前id
			$.get("getLimitById.action","sysLimit.limit_id="+limit_id,function(data){
				$("#l_name").val(data['limit_name']);
				$("#l_url").val(data['url']);
				var status_id=data['limit_status_id'];
				if(status_id=='1005'){
					$("#l_sta").attr("checked","checked");
				}else{
					$("#l_tus").attr("checked","checked");
				}
				
			});
		});
		/*点击按钮提交表单*/
		$("#addLimit").click(function(){
			$("#add").submit();
		});
		$("#updateLimit").click(function(){
			$("#update").submit();
		});
		$("#deleteLimit").click(function(){
		    var limit_name=$("#limit_3").find("option:selected").text();         //获得当前id
			var con=confirm("确定删除"+limit_name+"节点-及以下子节点吗？");
			if(con){
				$("#delete").submit();       //提交删除
			}
			
		});
	});
</script>
</head>

<body>

	<div id="left">
		<form action="disTriLimit.action" method="post" id="getLimit">
			<div class="div_left">
				<div id="top">
					<h3>&nbsp;&nbsp;系统功能菜单树</h3>
					<select id="role" name="sysRole.role_id"
						style="width:160px; height:22px;">

					</select>
				</div>
				<div id="dtree"></div>
			</div>
		</form>
		<!-- 右侧窗体 -->
		<div class="div_right">
			<h5>&nbsp;&nbsp;&nbsp;&nbsp;操作菜单节点</h5>
			<hr />
			<div id="tt" class="easyui-tabs" style="width:550px;height:380px;">
				<div title="新增节点"
					data-options="iconCls:'icon-reload',closable:false"
					style="overflow:auto;padding:20px;display:display;">
					<!-- 第一个节点 -->
					<h4 style="padding:10px 40px; color:red;border:1px solid #ccc;">添加节点</h4>
					<form action="addLimit.action" method="post" id="add">
						<table border="0" width="400" height="200"
							style="padding-left:30px;">
							<tr>
								<td><label>父 节 点:</label></td>
								<td><select id="limit_1" name="sysLimit.parent_id" style="width:155px; height:22px;">
										<option>--请选择--</option>
								</select>
								</td>
							</tr>
							<tr>
								<td><label>功能名称:</label></td>
								<td><input type="text"name="sysLimit.limit_name" /></td>
							</tr>
							<tr>
								<td><label>功能 URL:</label></td>
								<td><input type="text" name="sysLimit.url" /></td>
							</tr>
							<tr>
								<td><label>状&nbsp;&nbsp;&nbsp; 态:</label></td>
								<td><input type="radio" checked="checked" name="sysLimit.limit_status_id" value="1005"/>启用 <input
									type="radio"  name="sysLimit.limit_status_id" value="1006" />停用</td>
							</tr>
						</table>
						<a id="addLimit" style="padding-left:30px;" class="easyui-linkbutton"
							data-options="iconCls:'icon-search'">提 交</a>
					</form>
				</div>
				<div title="修改节点"
					data-options="iconCls:'icon-reload',closable:false"
					style="overflow:auto;padding:20px;display:display;">
					<!-- 第二个节点 -->
					<h4 style="padding:10px 40px; color:red;border:1px solid #ccc;">修改节点</h4>
					<form action="updateLimit.action" method="post" id="update">
						<table border="0" width="400" height="200"
							style="padding-left:30px;">
							<tr>
								<td><label>选择节点:</label></td>
								<td><select id="limit_2" name="sysLimit.limit_id" style="width:155px; height:22px;">
										<option>--请选择--</option>
								</select>
								</td>
							</tr>
							<tr>
								<td><label>功能名称:</label></td>
								<td><input type="text" id="l_name" name="sysLimit.limit_name" /></td>
							</tr>
							<tr>
								<td><label>功能 URL:</label></td>
								<td><input type="text" id="l_url" name="sysLimit.url" /></td>
							</tr>
							<tr>
								<td><label>状&nbsp;&nbsp;&nbsp; 态:</label></td>
								<td><input type="radio" value="1005" id="l_sta" checked="checked" name="sysLimit.limit_status_id" />启用 <input
									type="radio" value="1006"  id="l_tus" name="sysLimit.limit_status_id" />停用</td>
							</tr>
						</table>
						<a id="updateLimit" style="padding-left:30px;" class="easyui-linkbutton"
							data-options="iconCls:'icon-search'">修 改</a>
					</form>
				</div>
				<div title="删除节点"
					data-options="iconCls:'icon-reload',closable:false"
					style="padding:20px;display:display;">
					<!-- 第一个节点 -->
					<h4 style="padding:10px 40px; color:red;border:1px solid #ccc;">删除节点</h4>
					<form action="deleteLimit.action" method="post" id="delete">
						<table border="0" width="400" height="200"
							style="padding-left:30px;">
							<tr>
								<td><label>选择节点:</label></td>
								<td><select id="limit_3" name="sysLimit.limit_id" style="width:155px; height:22px;">
										<option>--请选择--</option>
								</select>
								</td>
							</tr>
							<tr>

							</tr>
							<tr>

							</tr>
						</table>
						<a id="deleteLimit" style="padding-left:30px;" class="easyui-linkbutton"
							data-options="iconCls:'icon-search'">删 除</a>
					</form>

				</div>
			</div>


		</div>
	</div>
	<div>
		<a id="savepei" style="margin:8px 50px;" class="easyui-linkbutton"
			data-options="iconCls:'icon-search'">保 存 配 置</a>
	</div>
</body>
</html>
