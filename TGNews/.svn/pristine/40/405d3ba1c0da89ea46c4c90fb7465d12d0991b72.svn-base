$(function(){
	 $(".search_select").mouseover(function(){
		   $('.search_select').show(); 
		   $('#choose').addClass("search_choose_hover");
		 })
		 $("#choose").mouseover(function(){
		    $('.search_select').show(); 
			 $('#choose').addClass("search_choose_hover");
		 })
    $("#choose").mouseout( function(){
          $('.search_select').hide(); 
		  $('#choose').removeClass("search_choose_hover");
     });
	 $(".search_select").mouseout( function(){
          $('.search_select').hide(); 
		  $('#choose').removeClass("search_choose_hover");
     })
	})
	
	
$(function(){	
	
	
	//首页 帮帮忙 切换
	TabSwitch("#part4_school_nav","#part4_school_cnt","cur",1,"li","div");
})



// 函数 Tab切换 通用
// 参数tab：选项的id或class，参数格式#id，.class
// 参数cnt：内容的id或class，参数格式#id，.class
// 参数curclass：当前项的样式
// 参数action：鼠标行为，0表示鼠标移上，1代表鼠标点击
// 参数tabItemLabel：选项中各项的标签，默认是"li"
// 参数cntItemLabel：内容中各项的标签，默认是"div
function TabSwitch(tab,cnt,curclass,action,tabItemLabel,cntItemLabel){
	if(!tabItemLabel){
		tabItemLabel="li";	
	}
	if(!cntItemLabel){
		cntItemLabel="div";	
	}
	switch(action)
	{
		case 0:	
		$(tab).find(tabItemLabel).mouseover(function(){
			$(this).siblings().removeClass(curclass);
			$(this).addClass(curclass);
			var $cntItems=$(cnt+">"+cntItemLabel);
			$cntItems.hide();
			$cntItems.eq($(this).index()).show();
		})		
		break;
		
		case 1:	
		$(tab).find(tabItemLabel).click(function(){
			$(this).siblings().removeClass(curclass);
			$(this).addClass(curclass);
			var $cntItems=$(cnt+">"+cntItemLabel);
			$cntItems.hide();
			$cntItems.eq($(this).index()).show();
		})		
		break;
	}
}
	
	