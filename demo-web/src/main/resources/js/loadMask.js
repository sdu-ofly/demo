var loadMask = (function(){
	var _this = this;
	var _imgWidth = 28;
	var _imgHeight = 28;
	var loading = function(id) {
		var loading = $('<span class="maskImg"><span>');
		var html = $('<div id="maskDiv" class="mask"></div>');
		html.append(loading);
		$('#'+id).append(html);
		
		// 遮罩层位置
		html.css("height",$('#'+id).height());
		html.css("width",$('#'+id).width());
		html.css("top",$('#'+id).offset().top);
		html.css("left",$('#'+id).offset().left);
		var z_index = $('#'+id).css('z-index');
		if(isNaN(z_index)) {//自动auto
			z_index = 0;
		}
		html.css('z-index', z_index+1);
		// 遮罩层图表位置
		loading.css("margin-top",($('#'+id).height()-_imgHeight)/2);
		loading.css("margin-left",($('#'+id).width()-_imgWidth)/2);
	}
	var remove = function(id) {
		$('#'+id).find('#maskDiv').remove();
	}
	
	_this.loading = loading;
	_this.remove = remove;
	return _this;
})();