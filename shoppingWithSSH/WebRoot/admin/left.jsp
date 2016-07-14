<%@ page language="java" import="java.util.*,com.buaa.shopping.entity.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />

<link href="admin/css/left.css" type="text/css" rel="stylesheet" />
<script src="admin/js/jquery-1.4.2.min.js"></script>
<script src="admin/js/left.js"></script>
<title></title>
</head>
<body>
<div class="all"><img src="admin/images/menu_plus.gif" id="allmenu" /></div>
<div class="main">
<div class="menus">
<ul id="menu">
	<li class="title"><a href="javascript:void(0);"><b>网站设置</b></a>
	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />
		&nbsp;<a href="javascript:void(0)" target="mainFrame">系统设置</a></li>
		<li><img src="admin/images/menu_arrow.gif" />
		&nbsp;<a href="__URL__/user" target="mainFrame">管理员设置</a></li>
	</ul>
	</li>
	<li class="title"><a href="javascript:void(0)"><b>首页设置</b></a>
	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/photo" target="mainFrame">滚动图片</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/flink" target="mainFrame">友情链接</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/hzqy" target="mainFrame">合作企业</a></li>
	</ul>
	</li>

	<li class="title"><a href="javascript:;" target="mainFrame"><b>商品管理</b></a>
	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="goodsList" target="mainFrame">商品列表</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="preAddGoods" target="mainFrame">添加商品</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="goodsTypeList" target="mainFrame">产品分类列表</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="preAddGoodsType" target="mainFrame">添加产品分类</a></li>
	</ul>
	</li>

	<li class="title"><a href="userList" target="mainFrame"><b>用户管理</b></a>
	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="userList" target="mainFrame">查看用户</a></li>
	</ul>
	</li>
	<li class="title"><a href="javascript:;" target="mainFrame"><b>订单管理</b></a>
	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="orderList" target="mainFrame">订单处理</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="newList" target="mainFrame">添加新闻</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/article_type" target="mainFrame">新闻分类列表</a></li>
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/article_type_add" target="mainFrame">添加新闻分类</a></li>
	</ul>
	</li>
	<li class="title"><a href="javascript:;" target="mainFrame"><b>图片管理</b></a>

	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/pic" target="mainFrame">图片列表</a></li>
	</ul>
	<li class="title"><a href="javascript:;" target="mainFrame"><b>技术支持</b></a>
	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/gbook" target="mainFrame">留言列表</a></li>
	</ul>
	</li>

	<li class="title"><a href="javascript:;" target="mainFrame"><b>在线订购</b></a>
	<ul class="menuhide">
		<li><img src="admin/images/menu_arrow.gif" />&nbsp;<a
			href="__URL__/gbook" target="mainFrame">订购列表</a></li>
	</ul>
	</li>
	<li class="title"><a href="javascript:void(0);"><b>关于XFCMS</b></a></li>
</ul>
</div>
</div>
</body>
</html>
