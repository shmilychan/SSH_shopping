<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goodsTypeList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<link rel="stylesheet" type="text/css" href="admin/css/general.css">
	

  </head>
  
  <body>
  	<div class="top">商品分类列表</div>
	<div class="main">
    <table border="1" cellpadding="3" cellspacing="0" width="100%">
    	<tr>
   			<th>id</th>
   			<th>pid</th>
   			<th>typename</th>
   			<th>note</th>
    	</tr>
    	<s:iterator value="goodsTypeList">
    		<tr class="trtd">
    			<td><s:property value="id"/></td>
    			<td><s:property value="pid"/></td>
    			<td><s:property value="typename"/></td>
    			<td><s:property value="note"/></td>
    		</tr>
    	</s:iterator>
    </table>
    </div>
	<div class="footer"><jsp:include page="/admin/copyright.inc"/></div> 
  </body>
</html>
