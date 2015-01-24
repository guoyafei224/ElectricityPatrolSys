<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>树形结构_____普通生成树的方式</title>
		<link rel="stylesheet" href="dtree.css" type="text/css"></link>
		<script type="text/javascript" src="dtree.js"></script>
		<script>
		       /*   
			 		tree.add(id,pid,name,url,title,target,icon,iconOpen,open);
				    id        ：节点自身的id
					pid       ：节点的父节点的id
					name      ：节点显示在页面上的名称
					url       ：节点的链接地址
					title     ：鼠标放在节点上所出现的提示信息
					target    ：节点链接所打开的目标frame（如框架目标mainFrame或是_blank,_self之类）
					icon      ：节点关闭时的显示图片的路径
					iconOpen  ：节点打开时的显示图片的路径
					open      ：布尔型，节点是否打开（默认为false）
				    ------------------------------------------------
				    东城区、西城区、崇文区、宣武区、朝阳区、丰台区、石景山区、
				    海淀区、门头沟区、房山区、通州区、顺义区、 昌平区、
				   大兴区、怀柔区、平谷区 、 密云县、延庆县
				   ------------------------------------------------
				*/
		</script>
				<script type="text/javascript">
				 tree = new dTree('tree');//创建一个对象.
				 tree.add("1","-1","中国","","","","","",false);
				 tree.add("11","1","北京","","","","","",false);
				 tree.add("110","11","东城区","连接地址可以从数据库里面动态查询出来..","东城区","打开目标位置");
				 tree.add("111","11","西城区","连接地址可以从数据库里面动态查询出来..","","链接在哪里显示");
				 tree.add("112","11","崇文区","连接地址可以从数据库里面动态查询出来..","","mainFrame");
				 tree.add("113","11","宣武区","","","_blank");
				 tree.add("114","11","朝阳区","/.jsp","","mainFrame");
				 tree.add("115","11","丰台区","/.jsp","","mainFrame");
				 tree.add("116","11","石景山区","/.jsp","","mainFrame");
				 tree.add("117","11","海淀区","/.jsp","","mainFrame");
				 tree.add("118","11","门头沟区","/.jsp","","mainFrame");
				 tree.add("119","11","房山区","/.jsp","","mainFrame");
				 tree.add("120","11","通州区","/.jsp","","mainFrame");
				 tree.add("121","11","顺义区","/.jsp","","mainFrame"); 
				 tree.add("122","11","昌平区","/.jsp","","mainFrame");
				 tree.add("123","11","大兴区","/.jsp","","mainFrame");
				 tree.add("124","11","怀柔区","/.jsp","","mainFrame");
				 tree.add("125","11","平谷区","/.jsp","","mainFrame");
				 tree.add("126","11","延庆县","/.jsp","","mainFrame");
				 tree.add("127","11","密云县","/.jsp","","mainFrame");
				 //==================================================
				 tree.add("12","1","湖南","","","","","",false);
				 tree.add("121","12","株洲","javascript:调用本页内的js函数","","mainFrame");
				 tree.add("122","12","长沙");
				//====================================================
				 tree.add("13","1","湖北","","","","","",false);
				 tree.add("131","13","武汉","javascript:void()","","mainFrame");
				 tree.add("132","13","宜昌","javascript:void()","","mainFrame");
				 tree.add("133","13","孝感","javascript:void()","","mainFrame");
				 //===================================================	 
				 tree.add("14","1","广东","","","","","",false);
				 tree.add("141","14","佛山","javascript:void()","","mainFrame");
				 document.write(tree);
			    </script>
	</head>
	<body>
	</body>
</html>
