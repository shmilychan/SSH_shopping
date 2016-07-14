<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<link href="admin/css/top.css" type="text/css" rel="stylesheet" />
</head>

<body>
<div class="main">
<div class="top_left"><img src="admin/images/header_left.jpg"/></div>
<div class="center">
<span style="color:#FFFFFF;">
当前管理员：${sessionScope.custom.username}</span>&nbsp;&nbsp;
<a href="admin.php?do=menu_system" target="leftFrame">系统设置</a>&nbsp;&nbsp;
<a href="admin.php?do=menu_content" target="leftFrame">内容管理</a>&nbsp;&nbsp;
<a href="admin.php?do=menu_category" target="leftFrame">栏目管理</a>&nbsp;&nbsp;
<a href="admin.php?do=menu_template" target="leftFrame">模板管理</a>&nbsp;&nbsp;
<a href="admin.php?do=reflash" target="mainFrame">更新管理</a>&nbsp;&nbsp;
<a href="admin.php?do=ext" target="mainFrame">插件管理</a>&nbsp;&nbsp;
<a href="admin.php?do=main" target="mainFrame">管理首页</a>&nbsp;&nbsp;

<a href="index" target="_blank">网站预览</a>&nbsp;&nbsp;

<a href="javascript:if(confirm('确定退出吗？')){location.href='logout'}" target="_parent">退出系统</a>	 
</div>
<div class="top_right"><img src="admin/images/header_right.jpg"/></div>
</div>
</body>
</html>
