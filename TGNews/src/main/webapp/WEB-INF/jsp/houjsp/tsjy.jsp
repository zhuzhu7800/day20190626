<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>特色教育-后台管理</title>
<link href="/TGNews/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/TGNews/static/css/admin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/TGNews/static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/TGNews/static/css/font-awesome-ie7.min.css">
<script src="/TGNews/static/js/jquery-1.8.3.min.js"></script>
<script src="/TGNews/static/js/milo-min.js"></script>
</head>
<script src="/TGNews/static/js/jquery-1.12.4.js"></script>
<script>
	$(function() {
		show();
	});
	function show() {
		$.ajax({
			"url":"/TGNews/characteristic/getAll",
			"dataType":"json",
			"type":"post",
			"success":function(result){
				$("table").html("");
				$("table").append(""+
						"<tr class='t_title'>"+
							"<td class='width50'>序号</td>"+
							"<td class='width350 a_title'>秧歌曲目</td>"+
							"<td class='width130'>创建时间</td>"+
							"<td class='width130'>视频地址</td>"+
							"<td class='width191'>操作</td>"+
						"</tr>"+	
				"");
				$(result).each(function() {
					$("table").append(""+
							"<tr>"+
								"<td>"+this.id+"</td>"+
								"<td class='a_title'>"+this.repertoire+"</td>"+
								"<td>"+this.creationTime+"</td>"+
								"<td>"+this.videoAddress+"</td>"+
								"<td><a href='#' class='t_nav' onClick=TGDialogS('tcbox2','"+this.id+"')>编辑</a>"+
								"|<a href='javascript:void(0)' class='t_nav' onclick='del("+this.id+")'>删除</a></td>"+
							"</tr>"+		
					"");
				});
			}
		});
	}
	function del(id) {
		var flag = confirm("确定删除么?");
		if(!flag){
			return;
		}
		$.ajax({
			"url":"/TGNews/characteristic/del/"+id,
			"dataType":"json",
			"type":"post",
			"success":function(result){
				if(result>0){
					alert("删除成功!");
				}else{
					alert("删除失败!");
				}
				show();
			},
		});
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
				<li><a href="/TGNews/tiao/zdxx">系统设置</a></li>
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
				<li><a href="/TGNews/tiao/index"><i class="icon-edit"></i>教育新闻<i class="icon-angle-right"></i></a></li>
				<li><a href="/TGNews/tiao/jxyj"><i class="icon-beaker"></i>教学研究<i class="icon-angle-right"></i></a></li>
				<li><a href="/TGNews/tiao/xxzl"><i class="icon-building"></i>学校专栏<i class="icon-angle-right"></i></a></li>
				<li><a href="/TGNews/tiao/xxgk"><i class="icon-bullhorn"></i>信息公开<i class="icon-angle-right"></i></a></li>
				<li><a href="/TGNews/tiao/hdjl"><i class="icon-comments"></i>互动交流<i class="icon-angle-right"></i></a></li>
				<li><a href="/TGNews/tiao/jgsz"><i class="icon-sitemap"></i>机构设置<i class="icon-angle-right"></i></a></li>
				<li><a href="/TGNews/tiao/ztlm"><i class="icon-flag"></i>专题栏目<i class="icon-angle-right"></i></a></li>
				<li><a href="/TGNews/tiao/tsjy" class="on"><i class="icon-leaf"></i>特色教育<i class="icon-angle-right"></i></a></li>
			</ul>
		</div>
		<!--左栏结束-->
		<!--右边开始-->
		<div class="main">
			<div class="main_menu">
				<ul class="r_menu">
					<li><a href="#" class="on">太谷秧歌</a></li>
					<input type="button" class="add_article" value="添加秧歌曲目"
						onClick="TGDialogS('tcbox1')">
				</ul>
			</div>
			<div class="main_c">
				<table width="831" border="1" class="main_t">
					<!-- <tr class="t_title">
						<td class="width50">序号</td>
						<td class="width350 a_title">秧歌曲目</td>
						<td class="width130">创建时间</td>
						<td class="width130">视频地址</td>
						<td class="width191">操作</td>
					</tr> -->
					<!-- <tr>
						<td>1</td>
						<td class="a_title">打冻漓</td>
						<td>2015-09-19 20:26</td>
						<td>http://www.sxtgedu.net/yg/yangge/ddl.asf</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">打冻漓</td>
						<td>2015-09-19 20:26</td>
						<td>http://www.sxtgedu.net/yg/yangge/ddl.asf</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">打冻漓</td>
						<td>2015-09-19 20:26</td>
						<td>http://www.sxtgedu.net/yg/yangge/ddl.asf</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">打冻漓</td>
						<td>2015-09-19 20:26</td>
						<td>http://www.sxtgedu.net/yg/yangge/ddl.asf</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">打冻漓</td>
						<td>2015-09-19 20:26</td>
						<td>http://www.sxtgedu.net/yg/yangge/ddl.asf</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">打冻漓</td>
						<td>2015-09-19 20:26</td>
						<td>http://www.sxtgedu.net/yg/yangge/ddl.asf</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr> -->
				</table>
				<!--分页开始-->
				<!--分页结束-->
			</div>
		</div>
		<!--右边结束-->
	</div>
	<!--内容区结束-->

	<!-- 添加秧歌曲目弹出层 Start-->
	<div class="tcbox width500" id="tcbox1" style="display: none">
		<div class="tc_title">
			<span>添加秧歌曲目</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content" action="/TGNews/characteristic/add" method="post">
			<p class="tc_p01">
				<span class="tc_span02">曲目名称:</span> <input type="text"
					class="input01 width300" value="" name="repertoire">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">视频地址:</span> <input type="text"
					class="input01 width300" value="" name="videoAddress">
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 添加秧歌曲目弹出层 End-->

	<!-- 编辑秧歌曲目弹出层 Start-->
	<div class="tcbox width500" id="tcbox2" style="display: none">
		<div class="tc_title">
			<span>编辑秧歌曲目</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content" action="/TGNews/characteristic/upd" method="post">
			<input type="hidden" value="" name="id">
			<p class="tc_p01">
				<span class="tc_span02">曲目名称:</span> <input type="text"
					class="input01 width300" value="" name="repertoire">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">视频地址:</span> <input type="text"
					class="input01 width300"
					value="" name="videoAddress">
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 编辑秧歌曲目弹出层 End-->

	<script>
function TGDialogS(e,id){
	need("biz.dialog-min",function(Dialog){
		Dialog.show({
			id:e,
			bgcolor:'#000', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
			opacity:50      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
		});
		toUpd(id);
	});
		function toUpd(id) {
			$.ajax({
				"url":"/TGNews/characteristic/updTo/"+id,
				"dataType":"json",
				"type":"post",
				"success":function(result){
					$("input[name=id]").val(result.id);
					$("input[name=repertoire]").val(result.repertoire);
					$("input[name=videoAddress]").val(result.videoAddress);
			},
		});
	}
}
function closeDialog(){
	need("biz.dialog-min",function(Dialog){
		Dialog.hide();
	});
}
</script>
</body>
</html>
