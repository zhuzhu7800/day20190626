<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>资源类目-后台管理</title>
<link href="css/reset.css" rel="stylesheet" type="text/css">
<link href="css/admin.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="css/font-awesome-ie7.min.css">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/milo-min.js"></script>
</head>

<body>
	<!----头部开始---->
	<div id="header">
		<div class="header">
			<!--LOGO-->
			<a href="#" class="logo fl"></a>
			<!--头部菜单开始-->
			<ul class="top_menu fl">
				<li><a href="#">内容管理</a></li>
				<li><a href="#" class="on">系统设置</a></li>
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
				<li><a href="zdxx.html"><i class="icon-info-sign"></i>站点信息<i
						class="icon-angle-right"></i></a></li>
				<li><a href="yqlj.html"><i class="icon-link"></i>友情链接<i
						class="icon-angle-right"></i></a></li>
				<li><a href="yqlj.html" class="on"><i class="icon-sitemap"></i>资源类目<i
						class="icon-angle-right"></i></a></li>
			</ul>
		</div>
		<!--左栏结束-->
		<!--右边开始-->
		<div class="main">
			<div class="main_menu">

				<ul class="r_menu">
					<li><a href="#">小学</a></li>
					<li><a href="#" class="on">初中</a></li>
					<li><a href="#">高中</a></li>
					<input type="button" class="add_article" value="添加类目"
						onClick="TGDialogS('add_article')">
				</ul>
			</div>
			<div class="main_c">
				<table width="831" border="1" class="main_t">
					<tr class="t_title">
						<td class="width50">序号</td>
						<td class="width350 a_title">类目名称</td>
						<td class="width130">父级类目</td>
						<td class="width191">操作</td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">语文</td>
						<td>初一</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">数学</td>
						<td>初一</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">英语</td>
						<td>初一</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">语文</td>
						<td>初二</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">数学</td>
						<td>初二</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td class="a_title">英语</td>
						<td>初二</td>
						<td><a href="#" class="t_nav" onClick="TGDialogS('a_edit')">编辑</a><a
							href="#" class="t_nav">删除</a></td>
					</tr>
				</table>
				<!--分页开始-->
				<!--分页结束-->
			</div>
		</div>
		<!--右边结束-->
	</div>
	<!--内容区结束-->
	<!-- 站点信息编辑弹出层 Start-->
	<div class="tcbox width500" id="add_article" style="display: none">
		<div class="tc_title">
			<span>编辑站点信息</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content">
			<p class="tc_p01">
				<span class="tc_span02">邮编:</span><input type="text"
					class="input01 width300" value="030800">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">地址:</span><input type="text"
					class="input01 width300" value="山西省晋中市太谷县">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">邮箱:</span><input type="text"
					class="input01 width300" value="tgxjyxx@163.com">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">备案号:</span><input type="text"
					class="input01 width300" value="(晋)ICP备07000139号">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">咨询电话:</span><input type="text"
					class="input01 width300" value="0354-6223447">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">版权所有:</span><input type="text"
					class="input01 width300" value="太谷教育信息网">
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 站点信息编辑弹出层 End-->
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
function closeDialog(){
	need("biz.dialog-min",function(Dialog){
		Dialog.hide();
	});
}
</script>
</body>
</html>
