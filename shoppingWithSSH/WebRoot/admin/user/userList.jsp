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
  	<div class="top">用户列表</div>
	<div class="main">
	<s:property value="errMsg"/> 
  	<table border="1" cellpadding="3" cellspacing="0" width="100%">
  		<tr>
  			<th>用户id</th>
  			<th>用户名</th>
  			<th>用户类型</th>
  			<th>真实姓名</th>
  			<th>电话</th>
  			<th>邮箱</th>
  			<th>地址</th>
  			<th width="70px">操作</th>
  		</tr>
	    <s:iterator value="userList" >    	
    		<tr class="trtd" height="80px">
    			<td><s:property value="id" /></td>
    			<td><s:property value="username"/></td>
    			<td><s:property value="role.roleName" /></td>
    			<td><s:property value="realname" /></td>
    			<td><s:property value="tel" /></td>
    			<td><s:property value="email" /></td>
    			<td><s:property value="address" /></td>
    			<td><a href="deleteUser?user.id=<s:property value='id' />">删除</a></td>
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
		           <a href="userList?pageNo=1">第一页</a>    
		           <a href="guserList?pageNo=<s:property value="%{currentPage-1}"/>">上一页</a>    
		        </s:else>    
        
		        <s:if test="%{currentPage != totalPage}">    
			         <a href="userList?pageNo=<s:property value="%{currentPage+1}"/>">下一页</a>    
			         <a href="userList?pageNo=<s:property value="totalPage"/>">最后一页</a>    
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
