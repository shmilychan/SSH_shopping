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
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<link rel="stylesheet" type="text/css" href="admin/css/general.css" />
</head>

<body>
<div class="top">管理中心首页</div>
<div class="main">
<table width="100%" border="0" cellpadding="2" cellspacing="2">
<tr>
	<td width="110"><img src="admin/images/admin_p.gif"/></td>
	<td align="left">
		当前时间：<%=new Date()%><br/> <br/>
		<span style="color:#000000;font-size:20px;font-weight:900">${sessionscope.user.username}</span><br /><br />
		欢迎进入网站管理中心！	</td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>服务器配置信息</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>主机地址：{php}echo 'http://'.$_SERVER['HTTP_HOST']{/php}&nbsp;IP地址：{php}echo $_SERVER['REMOTE_ADDR']{/php}</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>主机目录：{php}echo $_SERVER['DOCUMENT_ROOT']{/php}</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>操作系统：{php}echo $_ENV["OS"]{/php}</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>WEB服务器：{php}echo $_SERVER["SERVER_SOFTWARE"]{/php}</td>
</tr>
<tr>
  <td>&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>程序相关信息</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>程序名称：XFCMS内容管理系统</td>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>当前版本号：1.0.0</td>
</tr>
</table>
</div>
<div class="footer">
onlyone版权所有
</div>
</body>
</html>
