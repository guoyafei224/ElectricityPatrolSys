/* 更换主题 */
function changeThemeFun(themeName) {
	var $eiTheme = $('#themeLink');
	var url = $eiTheme.attr('href');
	var href = url.substring(0, url.indexOf('themes')) + 'themes/' + themeName + '/easyui.css'; //重置 link标签中的href的值
	$eiTheme.attr('href', href);

	var $iframe = $('iframe');
	if ($iframe.length > 0) {
		for ( var i = 0; i < $iframe.length; i++) {
			var ifr = $iframe[i];
			$(ifr).contents().find('#themeLink').attr('href', href);//jquery里面的contents()函数获取所有的内容，包括iframe
		}
	}

	$.cookie('easyuiThemeName', themeName, {
		expires : 7  //expires 设置cookie的过期时间，这里单位为  天 
	});
};
if ($.cookie('easyuiThemeName')) {  // 判断是否设置了cookie ，设置了cookie则获取cookie里的皮肤的值，传到 changeThemeFun 中调用 
	changeThemeFun($.cookie('easyuiThemeName'));
}
