<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>资源分类-后台管理</title>
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
				<li><a href="index.html">内容管理</a></li>
				<li><a href="zdxx.html" class="on">系统设置</a></li>
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
				<li><a href="#"><i class="icon-link"></i>学校管理<i
						class="icon-angle-right"></i></a></li>
				<li><a href="zyfl2.html" class="on"><i class="icon-link"></i>资源分类<i
						class="icon-angle-right"></i></a></li>
			</ul>
		</div>
		<!--左栏结束-->
		<!--右边开始-->
		<div class="main">
			<div class="main_menu">
				<ul class="r_menu">
					<li><a href="zyfl.html">学段</a></li>
					<li><a href="zyfl2.html" class="on">年级</a></li>
					<li><a href="zyfl3.html">科目</a></li>
					<input type="button" class="add_article" value="添加年级"
						onClick="TGDialogS('tcbox1')">
				</ul>
			</div>
			<div class="main_c">
				<p class="tc_p02">
					<span class="tc_span02">分类检索:</span> <select name="link_type"
						class="select01">
						<option value="全部">全部</option>
						<option value="小学">小学</option>
						<option value="初中">初中</option>
						<option value="高中">高中</option>
					</select> <input type="button" class="search01" value="搜索">
				</p>
			</div>
			<div class="main_c">
				<table width="831" border="1" class="main_t">
					<tr class="t_title">
						<td class="width50">序号</td>
						<td class="width130">年级名称</td>
						<td class="width130">所属学段</td>
						<td class="width191">操作</td>
					</tr>
					<tr>
						<td>1</td>
						<td>一年级</td>
						<td>小学</td>
						<td><a href="zyfl3.html" class="t_nav">科目管理</a><a href="#"
							class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a href="#"
							class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td>二年级</td>
						<td>小学</td>
						<td><a href="zyfl3.html" class="t_nav">科目管理</a><a href="#"
							class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a href="#"
							class="t_nav">删除</a></td>
					</tr>
					<tr>
						<td>1</td>
						<td>三年级</td>
						<td>小学</td>
						<td><a href="zyfl3.html" class="t_nav">科目管理</a><a href="#"
							class="t_nav" onClick="TGDialogS('tcbox2')">编辑</a><a href="#"
							class="t_nav">删除</a></td>
					</tr>
				</table>
				<!--分页开始-->
				<!--分页结束-->
			</div>
		</div>
		<!--右边结束-->
	</div>
	<!--内容区结束-->

	<!-- 添加年级弹出层 Start-->
	<div class="tcbox width500" id="tcbox1" style="display: none">
		<div class="tc_title">
			<span>添加年级</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content">
			<p class="tc_p01">
				<span class="tc_span02">年级名称:</span> <input type="text"
					class="input01 width300" value="">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">所属学段:</span> <select name="link_type"
					class="select01">
					<option value="小学">小学</option>
					<option value="初中">初中</option>
					<option value="高中">高中</option>
				</select>
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 添加年级弹出层 End-->

	<!-- 编辑年级弹出层 Start-->
	<div class="tcbox width500" id="tcbox2" style="display: none">
		<div class="tc_title">
			<span>编辑年级</span><a class="tc-close"
				href="javascript:showDialog.hide()" title="关闭"></a>
		</div>
		<form class="tc_content">
			<p class="tc_p01">
				<span class="tc_span02">年级名称:</span> <input type="text"
					class="input01 width300" value="一年级">
			</p>
			<p class="tc_p01">
				<span class="tc_span02">所属学段:</span> <select name="link_type"
					class="select01">
					<option value="小学">小学</option>
					<option value="初中">初中</option>
					<option value="高中">高中</option>
				</select>
			</p>
			<div class="tc_btn">
				<input type="submit" class="tc_submit" value="保存"> <input
					type="button" value="取消" class="tc_submit2 left10"
					onClick="closeDialog('0')">
			</div>
		</form>
	</div>
	<!-- 编辑年级弹出层 End-->

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
