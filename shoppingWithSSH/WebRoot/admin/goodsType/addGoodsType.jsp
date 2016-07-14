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
    
    <title>My JSP 'addGoodsType.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="admin/css/general.css">
	

  </head>
  
  <body>
  	<div class="top">添加商品分类</div>
	<div class="main">
    <form action="addGoodsType" method="post">
  		<table width="100%">
  			<tr>
  				<th colspan="2" >添加商品类型</th>
  			</tr>
  			<tr class="trtd">
  				<td>商品类型名称</td>
  				<td><input name="typename"/></td>
  			</tr>
  			<tr class="trtd">
  				<td>父类型</td>
  				<td><select name="pid">
  					<option value="0">无父类型</option>
			  		<s:iterator value="goodsTypeList">
			  			<option value="<s:property value='id'/>"><s:property value="typename"/></option>
			  		</s:iterator>
  				</select></td>
  			</tr>
  			<tr class="trtd">
  				<td>备注</td>
  				<td><input name="note"/></td>
  			</tr>
  			<tr class="trtd">
  				<td colspan="2" align="right"><input type="submit" value="添加"/></td>
  			</tr> 		
  		</table>
  	</form>
  	</div>
	<div class="footer"><jsp:include page="/admin/copyright.inc"/></div> 
  </body>
</html>
