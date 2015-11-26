(function($){
	$.fn.extend({
		"my_page":function(form){
			
			var $this=this;
			
			//定义分页结构体
		    var $pageInfo={
		    		url : $("form[name='searchForm']").attr("action"),//$this.context.baseURI,
		    		totalCount : $(this).attr("totalCount")*1,//总条数
		    		currentPage : $(this).attr("currentPage")*1, // 当前页码
		    		PageSize : $(this).attr('numPerPage')*1,//每页条数
		    		pageCount : (($(this).attr("totalCount")*1)/($(this).attr('numPerPage')*1))%2 == 0 ? 
		    				(($(this).attr("totalCount"))/($(this).attr('numPerPage')*1)) : parseInt((($(this).attr("totalCount")*1)/($(this).attr('numPerPage')*1))+1),//总页码
		             
		    };
		    
		    //定义分页样式结构体
		    var $pageStyle={
		    		styleLaquo_ : 'laquo',//首页样式
					styleRaquo_ : 'raquo',//尾页样式
					styleLt_ : 'lt',//上一页样式
					styleGt_ : 'gt'//下一页样式
		    }
		    
		    //初始起始页数、结束页数
		    var start=1,end=10;
		    
		    
		    if($pageInfo.pageCount <= start){//总页数  <= start
		    	start=1,end=1;
		    }else if($pageInfo.pageCount >= start && $pageInfo.pageCount <= end){// start <= 总页数    <= end   总页数：50    
		    	start=1,end=$pageInfo.pageCount;
		    }else if($pageInfo.pageCount > end){//总页数 > end
		    	start = $pageInfo.currentPage - 4 >=0 ? $pageInfo.currentPage - 4 : $pageInfo.currentPage - 0;
		    	end = $pageInfo.currentPage + 5 <=$pageInfo.pageCount ? $pageInfo.currentPage + 5 : $pageInfo.pageCount;
		    }
		    
		    if($pageInfo.currentPage == 0 || $pageInfo.currentPage == 1){
		    	$pageStyle.styleLaquo_='disabled';//首页样式
		    	$pageStyle.styleLt_ = 'disabled';//上一页样式
		    }else if($pageInfo.currentPage == $pageInfo.pageCount){
		    	$pageStyle.styleRaquo_='disabled';//尾页样式
		    	$pageStyle.styleGt_ = 'disabled'//下一页样式
		    }
		    
		    
		    var $html=[];
		    $html.push('<ul class="pagination">');
		    $html.push('<li class="'+$pageStyle.styleLaquo_+'"><a href="javascript:void(0)">&laquo;</a></li>');
		    $html.push('<li class="'+$pageStyle.styleLt_+'"><a href="javascript:void(0)">‹</a></li>');
		    for(var i = start ; i <= end ; i ++){
		    	styleButton_ = i == $pageInfo.currentPage || ($pageInfo.currentPage == 0 && i <=1)? 'active' : 'nomal' ;
		    	$html.push('<li class="'+styleButton_+'"><a href="javascript:void(0)">'+i+'</a></li>');
		    }
		    $html.push('<li class="'+$pageStyle.styleGt_+'"><a href="javascript:void(0)">›</a></li>');
		    $html.push('<li class="'+$pageStyle.styleRaquo_+'"><a href="javascript:void(0)">&raquo;</a></li>');
		    $html.push('</ul>');
			
		    $this.html($html.join(""));
		    
		    //绑定数据处理函数
		    $this.find("ul li[class=\'laquo\'] a").bind("click",function(){//首页
		    	alert('up');
		    	redirectTo(1);
		    });
		    $this.find("ul li[class=\'lt\'] a").bind("click",function(){//上一页
		    	alert('up');
		    	redirectTo($pageInfo.currentPage-1);
		    });
		    $this.find("ul li[class=\'nomal\'] a").bind("click",function(){
		    	redirectTo($(this).html());
		    });
		    $this.find("ul li[class=\'gt\'] a").bind("click",function(){//下一页
		    	alert('xia');
		    	redirectTo($pageInfo.currentPage+1);
		    });
		    $this.find("ul li[class=\'raquo\'] a").bind("click",function(){//尾页
		    	alert('xia');
		    	redirectTo($pageInfo.currentPage==0 ? $pageInfo.currentPage+2 : $pageInfo.currentPage+1);
		    });
		    
		    
		    //请求后台
		    function redirectTo(page){
//		    	$.post($pageInfo.url, {
//		    		pageSize : $pageInfo.PageSize,
//		    		pageNum : page
//		         }, function(){});
		    	var url=$pageInfo.url;
	            if(url.indexOf("?")==-1)
	                url+="?";
	            else
	                url+="&";
	            url+="pageNum="+page;
	            $("form[name='"+form+"']").attr("action",url);
	            $("form[name='"+form+"']").submit();
		    }
		    
		    
		    
			return $this;
		}
	});
})(jQuery);

$(function(){
    var obj = $(".panelBar").my_page("searchForm");
});