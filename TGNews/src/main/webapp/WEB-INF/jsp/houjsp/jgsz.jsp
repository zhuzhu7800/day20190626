
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>机构设置-后台管理</title>
<link href="/TGNews/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/TGNews/static/css/admin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="/TGNews/static/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="/TGNews/static/css/font-awesome-ie7.min.css">
<script src="/TGNews/static/js/jquery-1.8.3.min.js"></script>
<script src="/TGNews/static/js/milo-min.js"></script>
<script src="/TGNews/static/js/jquery-1.12.4.js"></script>
<script>
$(function() {
	show()
});
function show() {
	$.ajax({
    	"url":"/TGNews/mc/getAll",
		"type":"post",
		"dataType":"json",
		"success":function(result){
			$("table[name=xia]").html("");
			$("table[name=xia]").append(""+
					"<tr class='t_title'>"+
					"<td class='width50'>序号</td>"+
					"<td class='width50'>照片</td>"+
					"<td class='width130'>姓名</td>"+
					"<td class='width130'>职位</td>"+
					"<td class='width191'>操作</td>"+
				"</tr>"+	
		"");
			$(result).each(function() {
				$("table[name=xia]").append(""+
						"<tr>"+
							"<td>"+this.id+"</td>"+
							"<td><img class='leader_img' src='"+this.photo+"' width='60' height='69'  alt=''/></td>"+
							"<td>"+this.name+"</td>"+
							"<td>"+this.position+"</td>"+
							"<td><a href='#' class='t_nav' onClick=TGDialogS('tcbox3','"+this.id+"')>编辑</a>"+
							"|<a href='javascript:void(0)' class='t_nav' onclick='del("+this.id+")'>删除</a></td>"+
						"</tr>"+		
				"");
			})
		}
    })
}
function del(id) {
	var flag = confirm("确定删除么?");
	if(!flag){
		return;
	}
	$.ajax({
		"url":"/TGNews/mc/del/"+id,
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
</head>

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
				<li><a href="../tiao/jxyj"><i class="icon-beaker"></i>教学研究<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/xxzl"><i class="icon-building"></i>学校专栏<i
						class="icon-angle-right"></i></a></li>
				<li><a href="../tiao/xxgk" class="on"><i class="icon-bullhorn"></i>信息公开<i
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
					<li><a href="../tiao/jgsz" class="on">领导班子</a></li>
					<li><a href="../tiao/jgsz2">股室列表</a></li>
					<input type="button" class="add_article" value="添加领导"
						onClick="TGDialogS('tcbox1')">
				</ul>
			</div>

			<!---局长致辞 S---->
			<div class="main_c">
				<table width="831" border="1" class="main_t">
					<tr class="t_title">
						<td class="width50">&nbsp;</td>
						<td class="width50">照片</td>
						<td class="width130">姓名</td>
						<td class="width130">致辞</td>
						<td class="width191">操作</td>
					</tr>
					<tr>
						<td>局长致辞</td>
						<td><img class="leader_img" src="/TGNews/static/images/404.jpg" width="60" height="69" alt="" /></td>
						<td>郭柱生</td>
						<td>欢迎您访问太谷教育信息网，感谢您对太谷县教育工作的关心、关注和支持。2015年全县教育工作的总体要求，即，全面落实立德树人，全面深化教育综合改革，全面推进依法治教，全面加强教育系统党风廉政建设，着力促进教育公平，着力优化教育结构，着力提高教育质量，着力提升治理能力，努力让全县人民享受到更优质更公平的教育。</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
				</table>
				<!--分页开始-->
				<!--分页结束-->
			</div>
			<!---局长致辞 E---->

			<div class="main_c">
				<table width="831" border="1" class="main_t" name="xia">
					
				</table>
				<!--分页开始-->
				<!--分页结束-->
			</div>
		</div>
		<!--右边结束-->
	</div>
	<!--内容区结束-->

	<!-- 添加领导弹出层 Start-->
	<div class="tcbox width500" id="tcbox1" style="display: none">
		<div class="tc_title">
			<span>添加领导</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content" action="/TGNews/mc/add" enctype="multipart/form-data" method="post" >
			<p class="tc_p01">
				<span class="tc_span02">姓名:</span> <input type="text"
					class="input01 width300" value="李克强" name="name">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">职位:</span> <input type="text"
					class="input01 width300" value="教育新闻" name="position">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">照片:</span> <input type="file"
					class="input01 width300" name="pictureFile" required="required" id="a_logoPicPath">
			</p>
			<p class="tc_p01 tips">
				<span class="tc_span02"></span>为保证前台展示效果，图片建议尺寸:140x160
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 添加领导弹出层 End-->

	<!-- 领导致辞弹出层 Start-->
	<div class="tcbox width500" id="tcbox2" style="display: none">
		<div class="tc_title">
			<span>编辑领导致辞</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content">
			<p class="tc_p01">
				<span class="tc_span02">局长姓名:</span> <input type="text"
					class="input01 width300" value="李克强">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">局长致辞:</span>
				<textarea class="textarea3"></textarea>
			</p>
			<p class="tc_p01">
				<span class="tc_span02">照片:</span> <input type="file"
					class="input01 width300" value="教育新闻">
			</p>
			<p class="tc_p01 tips">
				<span class="tc_span02"></span>为保证前台展示效果，图片建议尺寸:140x160
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 领导致辞弹出层 End-->

	<!-- 编辑领导弹出层 Start-->
	<div class="tcbox width500" id="tcbox3" style="display: none">
		<div class="tc_title">
			<span>编辑领导信息</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content" action="/TGNews/mc/upd" enctype="multipart/form-data" method="post">
		<input type="hidden" value="" name="id">
			<p class="tc_p01">
				<span class="tc_span02">姓名:</span> <input type="text"
					class="input01 width300" value="" name="name">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">职位:</span> <input type="text"
					class="input01 width300" value="" name="position">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">照片:</span> <input type="file"
					class="input01 width300" value="" >
			</p>
			<p class="tc_p01 tips">
				<span class="tc_span02"></span>为保证前台展示效果，图片建议尺寸:140x160
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 编辑领导弹出层 End-->

	<script>
function TGDialogS(e){
	need("biz.dialog-min",function(Dialog){
		Dialog.show({
			id:e,
			bgcolor:'#000', //弹出“遮罩”的颜色，格式为"#FF6600"，可修改，默认为"#fff"
			opacity:50      //弹出“遮罩”的透明度，格式为｛10-100｝，可选
		});
	});
}
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
				"url":"/TGNews/mc/updTo/"+id,
				"dataType":"json",
				"type":"post",
				"success":function(result){
					$("input[name=id]").val(result.id);
					$("input[name=name]").val(result.name);
					$("input[name=position]").val(result.position);
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
