<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addCircuit.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<jsp:include page="../../comm/comm_easyUI_js.jsp" />
<link type="text/css" rel="stylesheet"
	href="css/circuitMgr/addCircuit.css" />
<jsp:include page="../../comm/comm_WdatePicker.js_js.jsp" />
<script type="text/javascript">
	var num;
	$(function() {
		$("#serach").click(function() {
			num = 1;
			$("#div_1").dialog('open');
			return false;
		});
		$("#serach1").click(function() {
			num = 2;
			$("#div_1").dialog('open')
			return false;
		});
		$("#back").click(function(){
		      location.href='jsp/circuitMgr/circuitMgr.jsp';
		})
		$("#save").click(function(){
		    var circuit_name=$("input[name='circuit.circuit_name']").val();
		    if(circuit_name==""){
		    alert('线路名称不为空');
		    return false;
		    }
		    var circuit_length=$("input[name='circuit.circuit_length']").val();
		    if(circuit_length==""){
		    alert('线路长度不为空');
		    return false;
		    }
		     var hui_length=$("input[name='circuit.hui_length']").val();
		    if(circuit_length==""){
		    alert('回路长度不为空');
		    return false;
		    }
		    $("#fa").submit();
		})
		$("#div_1").dialog({
			closed : true,
			height : 260,
			title : '选择杆塔',
			width : 210,
			buttons : [ {
				text : '确定',
				iconCls : 'icon-ok',
				handler : function() {
					var node = $("#div_ul").tree('getSelected');
					if (num == 1) {
						$("#begin").val(node.text);
					} else {
						$("#end").val(node.text);
					}
					$("#div_1").dialog('close')
				}
			}, {
				text : '返回',
				handler : function() {
					$("#div_1").dialog('close')
				}
			} ]
		});
		$("#div_ul").tree({
			url : 'Circuit_getAllTowers',
			animate : true,
		});
	});
</script>
</head>

<body>
	<div>
	<form method="post" action="addCircuit_Circuit" id="fa">
		<table>
			<tr>
				<td class="td_odd">线路编码：</td>
				<td><input type="text" class="inText" value="<s:property value='circuit.circuit_id' />" readonly="readonly" />
				</td>
				<td class="td_odd">线路名称：</td>
				<td><input type="text" class="inText" value="<s:property value='circuit.circuit_name' />" name="circuit.circuit_name" />
				</td>
			</tr>
			<tr>
				<td class="td_odd">线路长度：</td>
				<td><input type="text" class="inText" value="<s:property value='circuit.circuit_length' />" name="circuit.circuit_length" />
				</td>
				<td class="td_odd">回路长度：</td>
				<td><input type="text" class="inText" value="<s:property value='circuit.hui_length' />" name="circuit.hui_length" />
				</td>
			</tr>
			<tr>
				<td class="td_odd">起始杆号：</td>
				<td><input type="text" id="begin" name="circuit.start_tower_id" class="inText" value="<s:property value='circuit.start_tower_id' />"><input
					type="image" id="serach" src="file/icons/u77.png" height="15"
					style="margin:10px 0 0 10px;" />
				</td>
				<td class="td_odd">终止杆号：</td>
				<td><input type="text" id="end"  name="circuit.end_tower_id" class="inText" value="<s:property value='circuit.end_tower_id' />" ><input
					type="image" id="serach1" src="file/icons/u77.png" height="15"
					style="margin:10px 0 0 10px;" />
				</td>
			</tr>
			<tr>
				<td class="td_odd">塔基数：</td>
				<td><input type="text" class="inText" name="circuit.fund_num" value="<s:property value='circuit.fund_num' />">
				</td>
				<td class="td_odd">备注：</td>
				<td><textarea name="circuit.des" ><s:property value='circuit.des' /></textarea>
				</td>
			</tr>
			<tr>
				<td class="td_odd">是否启用：</td>
				<td><input type="radio" <s:if test="circuit.usestatusComm.status_id==1014"> checked='checked'</s:if> value="1014" name="circuit.usestatusComm.status_id" >启用
					&nbsp;&nbsp;<input type="radio" name="circuit.usestatusComm.status_id" <s:if test="circuit.usestatusComm.status_id==1013"> checked='checked'</s:if> value="1015">停用</td>
				<td class="td_odd"></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="2" class="td_odd"><a id="save"
					class="easyui-linkbutton" data-options="iconCls:'icon-ok'"
					style="margin:10px 5px 0 0;">保存</a> <a id="back"
					class="easyui-linkbutton" data-options="iconCls:'icon-back'"
					style="margin:10px 0px;">返回</a></td>
			</tr>
		</table>
		</form>
	</div>
	<div id="div_1" class="div_1">
		<ul id="div_ul">
		</ul>
	</div>
</body>
</html>
