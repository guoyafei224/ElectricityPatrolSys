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

<title>修改消缺任务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link type="text/css" rel="stylesheet"
	href="css/deElimTaskMgr/adddeElimTask.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	$(function() {

		/*点击保存按钮*/
		$("#save").click(function() {
			var rows = $("#tab_2").datagrid('getSelections'); //获取缺陷bug
			var bug_ids=rows[0].bug_id;
			for(var i=1;i<rows.length;i++){
				bug_ids=bug_ids+","+rows[i].bug_id;
			}
			$("#bug_ids").val(bug_ids);
			//处理事情太多，必须返回在一个事务中处理
			$("#addTask").submit(); //提交表单
		});
		/*显示弹窗*/
		$("#showXiaoQue").dialog({
			title : '选择未被占用的消缺员',
			width : 200,
			height : 250,
			closed : false,
			cache : false,
			modal : true,
			top : 100,
			left : 500,
			buttons : [ {
				text : '确定',
				iconCls : 'icon-ok',
				handler : function() {
					var nodes = $('#tree').tree('getChecked');      //获得选择节点
					var con=nodes[0].text;
					var con_id=nodes[0].id;
					for(var i=1;i<nodes.length;i++){
						con_id=con_id+","+nodes[i].id;
						con=con+","+nodes[i].text;
					}
					$("#xiao_id").val(con_id);
					$("#xiao").val(con);        //添加内容
					$("#showXiaoQue").dialog('close');
				}
			}, {
				text : '取消',
				handler : function() {
					$("#showXiaoQue").dialog('close');
				}
			} ]
		});
		$("#showXiaoQue").dialog('close'); //初始關閉
		/*点击放大镜，查询所有未分配任务的消缺员*/
		$("#serach").click(function() {
			$("#showXiaoQue").dialog('open');
		});

		/*生成树形*/
		$("#tree").tree({
			url : 'getAllXiao.action',
			checkbox : true,
			animate : true,
		});
	});
</script>
</head>

<body>
	<form action="addBeHeTask.action" method="post" id="addTask">
		<table class="tab_1">
			<tr>
				<td class="tdodd">任务名称：</td>
				<td><input class="inText" type="text" name="beHeTask.task_name" />
				</td>
				<td class="tdodd" style="padding-left:55px;">下发人：</td>
				<td class="label" style="width:160px;"><label>${sessionScope.loginUser.user_name
						}</label></td>
				<td class="tdodd">下发日期：</td>
				<td class="label"><input type="text" name="beHeTask.from_date"
					value="<%out.print((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"))
					.format(new Date()));%>" />
					</td>
			</tr>
			<tr>
				<td class="tdodd">任务描述：</td>
				<td><textarea name="beHeTask.des"></textarea></td>
				<td><input type="text" id="xiao_id" name="seleUsers" style="display:none;"/></td>
				<td><input type="text" id="bug_ids" name="bug_ids"style="display:none;"/></td>
				<td class="tdodd">消 缺 员：</td>
				<td><textarea id="xiao"></textarea> <img
					id="serach" src="file/icons/search.png" style="cursor: pointer;" />
				</td>
			</tr>
		</table>
	</form>
	<div id="showXiaoQue">
		<ul id="tree"></ul>
	</div>
	<div class="sentre">
		<p>待分配缺陷列表：</p>
		<script type="text/javascript">
			$(function() {
				$("#tab_2").datagrid({
					url : 'getBeHeTaskWei.action',
					width : 840,
					nowrap : false,
					pagination : true,//显示底部分页栏
					pageList : [ 5 ],
					pageSize : 5,//默认每页记录数，pagination参数为true时才有效
					frozenColumns : [ [ {
						field : 'ck',
						checkbox : true
					}, ] ],
					columns : [ [ 
					{
						field : 'bug_id',
						title : '缺陷ID',
						align : 'center',
						hidden:true
					}, {
						field : 'tower.circuit.circuit_name',
						title : '线路名称',
						align : 'center',
						width : 85
					}, {
						field : 'tower.tower_id',
						title : '杆塔编号',
						align : 'center',
						width : 88
					}, {
						field : 'bugLeave.bug_leave_name',
						title : '缺陷等级',
						align : 'center',
						width : 85
					}, {
						field : 'bugType.bug_type_name',
						title : '缺陷类型',
						align : 'center',
						width : 120
					}, {
						field : 'des',
						title : '缺陷描述',
						align : 'center',
						width : 180
					}, {
						field : 'sysUser.user_name',
						title : '发现人',
						align : 'center',
						width : 120
					}, {
						field : 'find_time',
						title : '发现时间',
						align : 'center',
						width : 120,
						formatter : function(data) {
							return data.substring(0, 10);
						}
					} ] ]
				});
			});
		</script>
		<div>
			<table id="tab_2"></table>
		</div>
		<div class="buts">
			<a id="save" class="easyui-linkbutton"
				data-options="iconCls:'icon-ok'" style="margin:0px 5px 0 0px;">保存</a>
		</div>
	</div>
	
</body>
</html>
