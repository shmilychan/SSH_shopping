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
    
    <title>My JSP 'goodsList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="admin/css/general.css" />

  </head>
 
  <body>
  	<div class="top">商品列表</div>
	<div class="main">
  	<table border="1" cellpadding="3" cellspacing="0" width="100%">
  		<tr>
  			<th>id</th>
  			<th>商品名称</th>
  			<th>商品类型</th>
  			<th>数量</th>
  			<th>价格</th>
  			<th>图片</th>
  			<th width="70px">操作</th>
  		</tr>
	    <s:iterator value="goodsList" >    	
    		<tr class="trtd" height="80px">
    			<td><s:property value="id" /></td>
    			<td><a href="showGoods?goods.id=<s:property value="id"/>" target="_blank"><s:property value="goodsname" /></a></td>
    			<td><s:property value="goodstype" /></td>
    			<td><s:property value="count" /></td>
    			<td><s:property value="price" /></td>
    			<td><img src="<s:property value="goodspic" />"/></td>
    			<td><a href="deleteGoods?id=<s:property value='id' />">删除</a>&nbsp;&nbsp;&nbsp;<a href="preUpdateGoods?id=<s:property value='id' />">更新</a></td>
    		</tr>	
	    </s:iterator>
    	<s:iterator value="page">    
        <tr height="80px">    
         	<td colspan="8" align="center" bgcolor="#ccc">    
	         	共<s:property value="allRow"/>条记录        
	         	共<s:property value="totalPage"/>页        
	         	当前第<s:property value="currentPage"/>页
         		<s:if test="%{currentPage == 1}">    
          			第一页  上一页    
         		</s:if>    
         		<!-- currentPage为当前页 -->    
		        <s:else>    
		           <a href="goodsList?pageNo=1">第一页</a>    
		           <a href="goodsList?pageNo=<s:property value="%{currentPage-1}"/>">上一页</a>    
		        </s:else>    
        
		        <s:if test="%{currentPage != totalPage}">    
			         <a href="goodsList?pageNo=<s:property value="%{currentPage+1}"/>">下一页</a>    
			         <a href="goodsList?pageNo=<s:property value="totalPage"/>">最后一页</a>    
		        </s:if>    
        
		        <s:else>    
		         	下一页  最后一页    
		        </s:else>    
         	</td>    
        </tr>    
	</s:iterator>
	</table>
	</div>
	<div class="footer"><jsp:include page="/admin/copyright.inc"/></div>    
  </body>
</html>
