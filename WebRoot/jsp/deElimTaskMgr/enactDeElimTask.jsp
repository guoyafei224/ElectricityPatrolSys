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
	href="css/deElimTaskMgr/alterdeElimTask.css" />
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<script type="text/javascript">
	$(function() {
		$("#addBUG").click(function() {
			$("#dd").dialog('open');
		});
	})
</script>
</head>

<body>
	<table class="tab_1">
		<tr>
			<td class="tdodd">任务编码：</td>
			<td><input class="inText" type="text" value="" /></td>
			<td class="tdodd">任务名称：</td>
			<td><input class="inText" type="text" value="" /></td>
			<td class="tdodd">工作单据：</td>
			<td><select>
					<option>请选择工作单据类型</option>
					<option>任务单</option>
					<option>第一种单据</option>
					<option>第二种单据</option>
			</select></td>
		</tr>
		<tr>
			<td class="tdodd">任务负责人：</td>
			<td><select>
					<option>请选人物负责人</option>
					<option>线路管理员测试用户01</option>
					<option>线路管理员测试用户02</option>
					<option>线路管理员测试用户03</option>
			</select></td>
			<td class="tdodd">下 发 人：</td>
			<td class="label"><label>admin</label></td>
			<td class="tdodd">下发日期：</td>
			<td class="label"><label> <%
 	out.print((new SimpleDateFormat("yyyy-MM-dd")).format(new Date()));
 %> </label></td>
		</tr>
		<tr>
			<td class="tdodd">任务描述：</td>
			<td><textarea></textarea></td>
			<td class="tdodd">备&nbsp;&nbsp;注：</td>
			<td><textarea></textarea></td>
			<td class="tdodd">消 缺 员：</td>
			<td><textarea></textarea></td>
		</tr>
	</table>
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
									url : '',
									width : 800,
									nowrap : false,
									singleSelect : true,
									onLoadSuccess : function(data) {
										/* alert(11)
										if(data.length==0){
											$("#tab_2").datagrid('insertRow',{"q8":"没有缺陷数据，请<a href='#'>选择</a>"});
										} */
									},
									rownumbers : true,
									columns : [ [
											{
												field : 'q1',
												title : '线路编号',
												align : 'center',
												width : 85
											},
											{
												field : 'q2',
												title : '杆塔编号',
												align : 'center',
												width : 90
											},
											{
												field : 'q3',
												title : '缺陷等级',
												align : 'center',
												width : 85
											},
											{
												field : 'q4',
												title : '缺陷类型',
												align : 'center',
												width : 85
											},
											{
												field : 'q5',
												title : '缺陷描述',
												align : 'center',
												width : 110
											},
											{
												field : 'q6',
												title : '发现人',
												align : 'center',
												width : 110
											},
											{
												field : 'q7',
												title : '发现时间',
												align : 'center',
												width : 90
											},
											{
												field : 'q8',
												title : '操作',
												align : 'center',
												width : 90,
												formatter : function(val, row,
														index) {
													return '<a href="#" mce_href="#" onclick="del(\''
															+ index
															+ '\');return false">移除</a>';
												}
											} ] ]
								});
			})
			function del(index) {
				$('#tab_2').datagrid('deleteRow', index);
			}
		</script>
		<div>
			<table id="tab_2" class="tab_2"></table>
		</div>
		<div style="margin-top:20px;">
			<a id="save" class="easyui-linkbutton"
				data-options="iconCls:'icon-ok'" style="margin:10px 5px 0 0;">保存</a>
			<a id="back" class="easyui-linkbutton"
				data-options="iconCls:'icon-back'" style="margin:10px 0px;">返回</a>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			$('#dd').dialog({
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
				url : 'json/alterdeElimTask_2.json',
				width : 600,
				nowrap : false,
				pagination : true,//显示底部分页栏
				pageList : [ 5, 10 ],
				pageSize : 5,//默认每页记录数，pagination参数为true时才有效
				frozenColumns : [ [ {
					field : 'ck',
					checkbox : true
				}, ] ],
				columns : [ [ {
					field : 'q1',
					title : '线路编号',
					align : 'center',
					width : 65
				}, {
					field : 'q2',
					title : '杆塔编号',
					align : 'center',
					width : 65
				}, {
					field : 'q3',
					title : '缺陷等级',
					align : 'center',
					width : 63
				}, {
					field : 'q4',
					title : '缺陷类型',
					align : 'center',
					width : 65
				}, {
					field : 'q5',
					title : '缺陷描述',
					align : 'center',
					width : 110
				}, {
					field : 'q6',
					title : '发现人',
					align : 'center',
					width : 108
				}, {
					field : 'q7',
					title : '发现时间',
					align : 'center',
					width : 70
				} ] ]
			})
		})
	</script>
	<div id="dd" data-options="iconCls:'icon-save'" closed="true"
		title="选择缺陷" style="padding:5px;width:650px;height:350px;">
		<div class="div_tab">
			<table id="div_tab">
			</table>
		</div>
	</div>
</body>
</html>
