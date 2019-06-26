<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>教学研究-后台管理</title>
<link href="/TGNews/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/TGNews/static/css/admin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/TGNews/static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/TGNews/static/css/font-awesome-ie7.min.css">
<script src="/TGNews/static/js/jquery-1.8.3.min.js"></script>
<script src="/TGNews/static/js/milo-min.js"></script>
</head>
<script type="text/javascript" src="/TGNews/static/js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		show();
		c();
	})
	
	function show(){
		$.ajax({
			"url":"/TGNews/newsw/getAll",
			"dataType":"json",
			"type":"post",
			"success":function(result){
				$(".main_t").html("");
				$(".main_t").append("<tr class=\"t_title\">"+
				         " <td class=\"width50\">序号</td>"+
				         " <td class=\"width350 a_title\">文章标题</td>"+
				         " <td class=\"width130\">创建时间</td>"+
				         " <td class=\"width130\">所属栏目</td>"+
				         " <td class=\"width130\">作者</td>"+
				         " <td class=\"width191\">操作</td>"+
				         " </tr>");
				$(result).each(function(i){
					$(".main_t").append("<tr>"+
					          "<td>"+(i+1)+"</td>"+
					          "<td class=\"a_title\">"+this.title+"</td>"+
					          "<td>"+this.createDate+"</td>"+
					          "<td>"+this.categoryName+"</td>"+
					          "<td>"+this.author+"</td>"+
					          "<td><a href='#' class=\"t_nav\" onClick=\"TGDialogS('a_edit','"+this.id+"')\">编辑</a><a href=\"#\" class=\"t_nav\">置顶</a><a href='#' onclick='del("+this.id+")' class=\"t_nav\">删除</a></td>"+
					          "</tr>")
				})
			},
		})
	}
	
	function del(id){
		var flag=confirm("你确定要删除嘛？");
			if(flag){
				$.ajax({
					"url":"/TGNews/newsw/shanchu/"+id,
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
	
	function b(){
		$.ajax({
			"url":"/TGNews/newsw/tiaojian/"+$(".select01").val(),
			"dataType":"json",
			"type":"post",
			"success":function(result){
				$(".main_t").html("");
				$(".main_t").append("<tr class=\"t_title\">"+
				         " <td class=\"width50\">序号</td>"+
				         " <td class=\"width350 a_title\">文章标题</td>"+
				         " <td class=\"width130\">创建时间</td>"+
				         " <td class=\"width130\">所属栏目</td>"+
				         " <td class=\"width130\">作者</td>"+
				         " <td class=\"width191\">操作</td>"+
				         " </tr>");
				$(result).each(function(i){
					$(".main_t").append("<tr>"+
					          "<td>"+(i+1)+"</td>"+
					          "<td class=\"a_title\">"+this.title+"</td>"+
					          "<td>"+this.createDate+"</td>"+
					          "<td>"+this.categoryName+"</td>"+
					          "<td>"+this.author+"</td>"+
					          "<td><a href='#' class=\"t_nav\" onClick=\"TGDialogS('a_edit')\">编辑</a><a href=\"#\" class=\"t_nav\">置顶</a><a href='#' onclick='del("+this.id+")' class=\"t_nav\">删除</a></td>"+
					          "</tr>")
				})
			}
		})
	}
	
	function c(){
		  $.ajax({
    		  "url":"/TGNews/newsw/getSelect",
    		  "dataType":"json",
    		  "type":"post",
    		  "success":function(result){
    			  $(".select01").html("");
    			$(".select01").append("<option value=\"0\">全部</option>");
    			 $(result).each(function(i){
    			  $(".select01").append("<option value='"+this.id+"'>"+this.categoryName+"</option>");
    			 })
    		  },
    	  })
    	  
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
			<div class="user_menu fr">
				<a href="#" class="user_role">管理员</a>
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
				<li><a href="../tiao/jxyj"  class="on"><i class="icon-beaker"></i>教学研究<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/xxzl"><i class="icon-building"></i>学校专栏<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/xxgk"><i class="icon-bullhorn"></i>信息公开<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/hdjl"><i class="icon-comments"></i>互动交流<i
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
					<div class="position_t">教学研究</div>
					<input type="button" class="add_article" value="添加文章" onClick="TGDialogS('add_article')">
					<input type="button" class="add_article right15" value="栏目管理" onclick="location.href='../tiao/jxyj2'">
				</ul>
			</div>
			<div class="main_c">
				<p class="tc_p02">
					<span class="tc_span02">分类检索:</span> 
					<select name="link_type" class="select01">
						
					</select> 
				<input type="button" class="search01" value="搜索" onclick="b()">
				</p>
			</div>
			<div class="main_c">
				<table width="831" border="1" class="main_t">
					<!-- <tr class="t_title">
						<td class="width50">序号</td>
						<td class="width350 a_title">文章标题</td>
						<td class="width130">创建时间</td>
						<td class="width130">所属栏目</td>
						<td class="width130">作者</td>
						<td class="width191">操作</td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">市关工委在太师附小检查指导工作</td>
						<td>2015-09-19 20:26</td>
						<td>教育动态</td>
						<td>太谷教育信息网</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">置顶</a><a href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">市关工委在太师附小检查指导工作</td>
						<td>2015-09-19 20:26</td>
						<td>教育动态</td>
						<td>太谷教育信息网</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">置顶</a><a href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">市关工委在太师附小检查指导工作</td>
						<td>2015-09-19 20:26</td>
						<td>教育动态</td>
						<td>太谷教育信息网</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">置顶</a><a href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">市关工委在太师附小检查指导工作</td>
						<td>2015-09-19 20:26</td>
						<td>教育动态</td>
						<td>太谷教育信息网</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">置顶</a><a href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">市关工委在太师附小检查指导工作</td>
						<td>2015-09-19 20:26</td>
						<td>教育动态</td>
						<td>太谷教育信息网</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">置顶</a><a href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">市关工委在太师附小检查指导工作</td>
						<td>2015-09-19 20:26</td>
						<td>教育动态</td>
						<td>太谷教育信息网</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">置顶</a><a href="#" class="t_nav">删除</a></td>
					</tr> -->
				</table>
				<!--分页开始-->
				<!--分页结束-->
			</div>
		</div>
		<!--右边结束-->
	</div>
	<!--内容区结束-->
	<!-- 添加文章弹出层 Start-->
	<div class="tcbox" id="add_article" style="display: none">
		<div class="tc_title">
			<span>添加文章</span>
			<a class="tc-close" href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content" action="../newsw/add" method="post">
			<p class="tc_p01">
				<span class="tc_span01">文章标题:</span>
			 <input type="text" class="input01 width300" name="title">
			   <span class="tc_span01 left60">文章分类:</span> 
		         <select name="news_type_id" class="select01 select02">
		         
		        </select>
			</p>
			<!--编辑器 Start-->
			<p class="tc_p01">
			<div class="editor" name="context"></div>
			<p class="tc_p01">
				<span class="tc_span01">发布时间:</span> 
				<input type="datetime" class="input01 width200" name="createDate">
			    <span class="tc_span01 left100">作者:</span>
				<input type="datetime" class="input01 width200" value="太谷教育信息网" name="author">
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 添加文章弹出层 End-->

	<!-- 文章编辑弹出层 Start-->
	<div class="tcbox" id="a_edit" style="display: none">
		<div class="tc_title">
			<span>文章编辑</span>
			<a class="tc-close"href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content" action="../newsw/updss">
		
			<p class="tc_p01">
				<input type ="hidden" name="id" id="a">
				<span class="tc_span01">文章标题:</span> 
				<input type="text" class="input01 width300" id="b" name="title"> 
			</p>
			<!--编辑器 Start-->
			<p class="tc_p01">
			<div class="editor" id="c"></div>
			</p>
			<p class="tc_p01">
				<span class="tc_span01">发布时间:</span> 
				<input type="datetime"class="input01 width200" id="d"  name="createDate"> 
				 <span class="tc_span01 left100">作者:</span>
				<input type="datetime" class="input01 width200"  id="e" name="author">
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 文章编辑弹出层 End-->

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
		"url":"/TGNews/newsw/selById/"+id,
		"dataType":"json",
		"type":"post",
		"success":function(result){
			$("#a").val(""+result.id+"");
			$("#b").val(""+result.title+"");
			$("#c").text(""+result.context+"");
			$("#d").val(""+result.createDate+"");
			$("#e").val(""+result.author+"");
		},
	})
}
</script>
</body>
</html>
