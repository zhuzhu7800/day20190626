<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>互动交流-后台管理</title>
<link href="/TGNews/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/TGNews/static/css/admin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/TGNews/static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/TGNews/static/css/font-awesome-ie7.min.css">
<script src="/TGNews/static/js/jquery-1.8.3.min.js"></script>
<script src="/TGNews/static/js/milo-min.js"></script>
</head>
<script type="text/javascript" src="/TGNews/static/js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		show();
	})
	
	
	function show(){
		$.ajax({
			"url":"/TGNews/interact/chaxun",
			"dataType":"json",
			"type":"post",
			"success":function(result){
				$(".main_t").html("");
				$(".main_t").append("<tr class=\"t_title\">"+
				         " <td class=\"width50\">序号</td>"+
				         " <td class=\"width350 a_title\">标题</td>"+
				         " <td class=\"width130\">咨询时间</td>"+
				         " <td class=\"width130\">回复状态</td>"+
				         " <td class=\"width191\">操作</td>"+
				         " </tr>");
				$(result).each(function(i){
					var huifu;
					if(this.reply!=null){
						huifu="已回复";
					}else{
						huifu="未回复";
					}
					$(".main_t").append("<tr>"+
					          "<td>"+(i+1)+"</td>"+
					          "<td class=\"a_title\">"+this.theme+"</td>"+
					          "<td>"+this.time+"</td>"+
					          "<td class=\"no_reply\">"+huifu+"</td>"+
					          "<td><a href=\"#\" class=\"t_nav\" onClick=\"TGDialogS('reply','"+this.id+"')\">回复</a><a href=\"#\" class=\"t_nav\">隐藏</a><a href=\"#\" class=\"t_nav\" onclick='del("+this.id+")'>删除</a></td>"+
					          
					        "</tr>")
				})
			},
		})
	}
	
	function del(id){
		var flag=confirm("你确定要删除嘛？");
			if(flag){
				$.ajax({
					"url":"/TGNews/interact/shanchu/"+id,
					"dataType":"json",
					"type":"post",
					"success":function(result){
						if(result>0){
							alert(1);
							show();
						}else{
							alert(2);
							show();
						}
					}
				})
		}
	}
	
	
</script>
<body>
<!----头部开始---->
<div id="header">
  <div class="header"> 
    <!--LOGO--> 
    <a href="#" class="logo fl"></a> 
    <!--头部菜单开始-->
    <ul class="top_menu fl">
      <li><a href="#" class="on">内容管理</a></li>
      <li><a href="zdxx.html">系统设置</a></li>
      <li><a href="#">用户管理</a></li>
      <li><a href="#">审核管理<span>25</span></a></li>
    </ul>
    <!--用户操作开始-->
    <div class="user_menu fr"><a href="#" class="user_role">管理员</a>
      <ul class="user_menu_c">
        <li><a href="#">修改密码</a></li>
        <li><a href="#">注销登录</a></li>
      </ul>
    </div>
  </div>
</div>
<!----头部结束----> 
<!--内容区开始-->
<div id="content"> 
  <!--左栏开始-->
  <div class="sidebar">
    <ul class="l_menu">
     <li><a href="../tiao/index"><i class="icon-edit"></i>教育新闻<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/jxyj"><i class="icon-beaker"></i>教学研究<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/xxzl"><i class="icon-building"></i>学校专栏<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/xxgk" ><i class="icon-bullhorn" ></i>信息公开<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/hdjl" class="on"><i class="icon-comments" ></i>互动交流<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/jgsz"><i class="icon-sitemap"></i>机构设置<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/ztlm"><i class="icon-flag"></i>专题栏目<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/tsjy"><i class="icon-leaf"></i>特色教育<i
						class="icon-angle-right"></i></a></li>
    </ul>
  </div>
  <!--左栏结束--> 
  <!--右边开始-->
  <div class="main">
    <div class="main_menu">
      <ul class="r_menu">
        <li><a href="#" class="on">咨询回复</a></li>
        <li><a href="#">投诉信访</a></li>
        <li><a href="#">局长邮箱</a></li>
        <li><a href="#">意见/建议</a></li>
        <li><a href="#">调查征集</a></li>
        <!--<input type="button" class="add_article" value="添加调查征集"  onClick="TGDialogS('add_article')">-->
      </ul>
    </div>
    <div class="main_c">
      <table width="831" border="1" class="main_t">
        
      </table>
      <!--分页开始--> 
      <!--分页结束--> 
    </div>
  </div>
  <!--右边结束--> 
</div>
<!--内容区结束--> 

<!-- 回复弹出层 Start-->
<div class="tcbox" id="reply" style="display:none">
  <div class="tc_title"><span>回复</span><a class="tc-close" href="javascript:showDialog.hide()" title="关闭"></a></div>
  <form class="tc_content" action="../interact/upd">
  	<input type="hidden" id="f" name="id">
    <p class="tc_p01" ><span class="tc_span01">姓名:</span><input type="text" id="a" >    </p>
    <p class="tc_p01" ><span class="tc_span01">联系方式:</span><input type="text" id="b" >  </p>
    <p class="tc_p01" ><span class="tc_span01">咨询时间:</span><input type="text" id="c" >  </p>
    <p class="tc_p01" ><span class="tc_span01">咨询主题:</span><input type="text" id="d" >  </p>
    <p class="tc_p01 la" ><span class="tc_span01">咨询内容:</span><span id="e" > </span> </p>
    <p class="tc_p01"><span class="tc_span01">受理部门:</span>
      <input type="datetime" class="input01 width200" value="太谷教育信息网">
    </p>
    <p class="tc_p01"><span class="tc_span01">回复内容:</span>
      <textarea class="textarea2" name="reply"></textarea>
    </p>
    <div class="tc_btn">
      <input type="submit" class="tc_submit" value="保存">
      <input type="button" value="取消" class="tc_submit2 left10" onClick="closeDialog('0')">
    </div>
  </form>
</div>
<!-- 回复弹出层 End--> 

<script>
function TGDialogS(e,id){
	need("biz.dialog-min",function(Dialog){
		Dialog.show({
			id:e,
			bgcolor:'#000', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
			opacity:50      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
		});
	});
	xiu(id);
}
function closeDialog(){
	need("biz.dialog-min",function(Dialog){
		Dialog.hide();
	});
}

function xiu(id){
	$.ajax({
		"url":"/TGNews/interact/selById/"+id,
		"dataType":"json",
		"type":"post",
		"success":function(result){
			$("#f").val(""+result.id+"");
			$("#a").val(""+result.name+"");
			$("#b").val(""+result.contact+"");
			$("#c").val(""+result.time+"");
			$("#d").val(""+result.theme+"");
			$("#e").text(""+result.content+"");
		},
	})
}
</script>
</body>
</html>
