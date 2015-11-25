(function($){
	var Page = function(){
		
		var $pageElement = $('div[class=\'panelBar\']');
		var $totalCount = $pageElement.attr('totalCount')*1;//总条数
		var $PageSize = $pageElement.attr('numPerPage')*1;//每页条数
		var $currentPage = 9;//$pageElement.attr("currentPage")*1; // 当前页码
		var $pageCount = 20;//(($totalCount*1)/($PageSize*1))%2 == 0 ? (($totalCount*1)/($PageSize*1)) : parseInt((($totalCount*1)/($PageSize*1))+1);//总页码
		var $styleLaquo_ = 'laquo';//上一页样式
		var $styleRaquo_ = 'raquo';//下一页样式
		
		//创建页面分页按钮
		Page.prototype.CreatPageButton = function(){
			
			//分页数字按钮
			var buttonPageNumber = createButtonNumber();
			if(buttonPageNumber.length == 1){//只有一页时    首页  尾页都禁用
				$styleLaquo_ = 'disabled';
				$styleRaquo_ = 'disabled';
			}
			if($currentPage == 1)//第一页  禁用《
				$styleLaquo_ = 'disabled';
			
			if($currentPage == $pageCount) //最后一页  禁用 》
				$styleRaquo_ = 'disabled';
			
			var $html = new Array();
			$html.push('<ul class="pagination">');
			$html.push('<li class="'+$styleLaquo_+'"><a href="javascript:void(0)">&laquo;</a></li>');
			
			$html.push(buttonPageNumber.join(""));
			
			$html.push('<li class="'+$styleRaquo_+'"><a href="javascript:void(0)">&raquo;</a></li>');
			$html.push('</ul>');
			
			return $html;
		};
		
		//构建分页数字按钮
		var createButtonNumber = function(){
			
			var $buttonNumber = new Array();
			
			//总条数  <= 每页个数      ||  总条数 ==0
			if($totalCount <= $PageSize || $totalCount==0 ){
				$buttonNumber.push('<li class="active"><a href="javascript:void(0)">'+1+'</a></li>')
				return $buttonNumber;
			}
			
			var $styleButtonNmuber_ = '';//数字页码样式
			var page10 = $pageCount;// 总页码：30  当前页：8
			var n = 1;
			if(page10 > 10){
				n = $currentPage <= 5 ? n :  $currentPage - 5;//前五
				page10 = $pageCount >= $currentPage + 5 ? $currentPage + 5 : $pageCount;//后五
			}
			
			for(var i = n; i <= page10 ; i++){
				$styleButtonNmuber_ = $currentPage == i ? ' class="active"':' class="nomal"';
				$buttonNumber.push('<li'+$styleButtonNmuber_+'><a href="javascript:void(0)">'+i+'</a></li>');
			}
			return $buttonNumber;
		};
	};
	
	//构建分页按钮事件
	var PageButtonOnclik = function(){
		
		var url = $("form[name='myForm']").attr("action",url);
//		alert(url);
		
		//上一页
		$(".panelBar ul li[class=\'laquo\'] a").bind("click",function(){
			alert('up');
		});
		//数字按钮
		$(".panelBar ul li[class=\'nomal\'] a").bind("click",function(){
			alert($(this).html());
		});
		
		//下一页
		$(".panelBar ul li[class=\'raquo\'] a").bind("click",function(){
			alert('xia');
		});
	};
	
//	var P = new Page().CreatPageButton();
	//var s = P.CreatPageButton();
	$(".panelBar").html(new Page().CreatPageButton().join(""));
	//注册分页按钮
	new PageButtonOnclik();
	
	
	
	
	
	
	
	
})(jQuery);