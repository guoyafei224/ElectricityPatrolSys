<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
	href="css/deElimTaskMgr/alterdeElimTask.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#addBUG").click(function() {
			$("#dd").dialog('open');
		});
	});

	$(function() {
		//根据选择任务id，显示到指定位置
		var task_id = $("#task_id").val();
		$.get("getBeheUser.action", "beHeTask.task_id=" + task_id, function(
				data) {
			$("#beHeUser").text(data[0].sysUser.user_name);
			for ( var i = 1; i < data.length; i++) {
				$("#beHeUser").append("," + data[i].sysUser.user_name);
			}
			;
		});
		/*点击保存按钮*/
		$("#save").click(function() {
			var rows = $("#tab_2").datagrid('getRows'); //获取缺陷bugasdf
			var bug_ids = rows[0].bug_id;
			for ( var i = 1; i < rows.length; i++) {
				bug_ids = bug_ids + "," + rows[i].bug_id;
			}
			$("#bug_ids").val(bug_ids);
			//处理事情太多，必须返回在一个事务中处理
			$("#updateTask").submit(); //提交表单
		});
		/*弹窗*/
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
					var nodes = $('#tree').tree('getChecked'); //获得选择节点
					var con = nodes[0].text;
					var con_id = nodes[0].id;
					for ( var i = 1; i < nodes.length; i++) {
						con_id = con_id + "," + nodes[i].id;
						con = con + "," + nodes[i].text;
					}
					$("#xiao_ids").val(con_id);
					$("#beHeUser").val(con); //添加内容
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

		/*查询原来拥有的缺陷，并让他们处于选中状态*/
		$.get("getBugById.action", "beHeTask.task_id=" + task_id,
				function(data) {
					for ( var i = 0; i < data.length; i++) {
						var con = $("#tab_2").datagrid('getData');
						for ( var j = 0; j < con.length; j++) { //
							if (con[j].bug_id = data[i].bug_id) {
								//如果一样，选中
								$("#tab_2").datagrid('selectRow', j);
							}
						}
						;
						/* var con=$("#tab_2").datagrid().getValue(bug_id);
						alert(con);
						alert(data[i].bug_id); */
					}
					;
				});
	});
</script>
</head>

<body>
	<form action="updateBeHeTaskByIdForUpdate.action" method="post" id="updateTask">
		<table class="tab_1">
			<tr>
				<td class="tdodd">任务编码：</td>
				<td><input type="text" id="task_id" value="${beHeTask.task_id}"
					disabled="disabled" name="beHeTask.task_id" />
				</td>
				<td class="tdodd">任务名称：</td>
				<td><input class="inText" type="text"
					value="${beHeTask.task_name}" name="beHeTask.task_name" />
				</td>
				<td class="tdodd">下 发 人：</td>
				<td class="label"><label>${
						beHeTask.fromSysUser.user_name}</label>
				</td>
			</tr>
			<tr>
				<td><input type="text" id="xiao_ids" name="seleUsers"style="display:none;" />
				</td>
				<td><input type="text" id="bug_ids" name="bug_ids" style="display:none;"/>
				</td>
			</tr>
			<tr>
				<td class="tdodd">任务描述：</td>
				<td class="label"><textarea name="beHeTask.des">${ beHeTask.des}</textarea>
				</td>
				<td class="tdodd">消 缺 员：</td>
				<td class="label"><textarea id="beHeUser"></textarea> <img
					id="serach" src="file/icons/search.png" style="cursor: pointer;" />
				</td>
				<td class="tdodd">是否取消：</td>
				<td>
				 是<input type="radio" name="beHeTask.istrue"
					value="1" />
					否<input type="radio" name="beHeTask.istrue"
					value="0" checked="checked"/>
				</td>
			</tr>
		</table>
	</form>
	<div id="showXiaoQue">
		<ul id="tree"></ul>
	</div>
	<div class="sentre">
		<p>
			缺陷列表： <a id="addBUG" class="easyui-linkbutton"
				data-options="iconCls:'icon-add'" style="margin:10px 5px 0 0;">添加缺陷</a>
		</p>
		<script type="text/javascript">
			$(function() {
				$("#tab_2")
						.datagrid(
								{
									url : 'getBugById.action',
									width : 800,
									nowrap : false,
									singleSelect : true,
									rownumbers : true,
									columns : [ [
											{
												field : 'bug_id',
												title : '缺陷编号',
												align : 'center',
												hidden : true
											},
											{
												field : 'tower.circuit.circuit_name',
												title : '线路名称',
												align : 'center',
												width : 85
											},
											{
												field : 'tower.tower_id',
												title : '杆塔编号',
												align : 'center',
												width : 85
											},
											{
												field : 'bugLeave.bug_leave_name',
												title : '缺陷等级',
												align : 'center',
												width : 85
											},
											{
												field : 'bugType.bug_type_name',
												title : '缺陷类型',
												align : 'center',
												width : 85
											},
											{
												field : 'des',
												title : '缺陷描述',
												align : 'center',
												width : 120
											},
											{
												field : 'sysUser.user_name',
												title : '发现人',
												align : 'center',
												width : 120
											},
											{
												field : 'find_time',
												title : '发现时间',
												align : 'center',
												width : 90,
												formatter : function(data) {
													return data
															.substring(0, 10);
												}
											},
											{
												field : 'q8',
												title : '操作',
												align : 'center',
												width : 74,
												formatter : function(val, row,
														index) {
													return '<a href="#" mce_href="#" onclick="del(\''
															+ index
															+ '\');return false">移除</a>';
												}
											} ] ]
								});
			});
			function del(index) {
				$('#tab_2').datagrid('deleteRow', index);
			}
		</script>
		<div>
			<table id="tab_2"></table>
		</div>
		<div class="buts">
			<a id="save" class="easyui-linkbutton"
				data-options="iconCls:'icon-ok'" style="margin:10px 5px 0 0;">保存</a>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('#dd').dialog({
				left:200,
				top:30,
				buttons : [ {
					text : '确定',
					iconCls : 'icon-ok',
					handler : function() {
						var rows = $("#div_tab").datagrid('getSelections');
						for ( var i = 0; i < rows.length; i++) {
							var row = rows[i];
							$("#tab_2").datagrid('appendRow', row);
						}
						$('#dd').dialog('close');
					}
				}, {
					text : '取消',
					handler : function() {
						$('#dd').dialog('close');
					}
				} ]
			});
			$("#div_tab").datagrid({
				url : 'getBeHeTaskWei.action',
				width : 840,
				nowrap : false,
				pagination : true,//显示底部分页栏
				pageList : [ 5, 10 ],
				pageSize : 5,//默认每页记录数，pagination参数为true时才有效
				frozenColumns : [ [ {
					field : 'ck',
					checkbox : true,
				}, ] ],
				columns : [ [ {
					field : 'bug_id',
					title : '缺陷ID',
					align : 'center',
					hidden : true
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
	<div id="dd" data-options="iconCls:'icon-save'" closed="true"
		title="选择缺陷" style="padding:5px;width:880px;height:350px;">
		<div class="div_tab">
			<table id="div_tab">
			</table>
		</div>
	</div>
</body>
</html>
