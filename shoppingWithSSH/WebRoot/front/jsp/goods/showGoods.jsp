<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电子商城-首页</title>
<link href="front/public/css/base.css" rel="stylesheet" type="text/css" /> 
<link href="front/public/css/index.css" rel="stylesheet" type="text/css" />
<link href="front/public/css/pro-list.css" rel="stylesheet" type="text/css" />
<link href="front/public/css/pro-detailed.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	td{ text-align:center;}
</style>
<script type="text/javascript" src="front/public/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="front/public/js/jquery.jqzoom.js"></script>
<script type="text/javascript" src="front/public/js/base.js"></script>
<script type="text/javascript" src="front/public/js/public.js"></script>

</head>

<body>
	<!------------top---------------->
	<div class="top">
    	<div class="top-c">
        	<div class="top-left">
            	<a href="javascript:;" class="collect">收藏</a>
                <a href="javascript:;" class="wechat">微信</a>
            </div>
            <div class="top-right">
            	<p>嗨，欢迎来到北航电子商城</p>
            	<c:if test="${sessionScope.custom.username==null}">
				 <p><a href="userLogin">请登录</a> | <a href="user.do?a=reg">免费注册</a></p>
				</c:if>
          		<p><a href="#">${sessionScope.custom.username}</a></p>
                <p><a href="findOrder">我的订单</a> | <a href="javascript:;">服务中心</a> | <a href="userLogout">退出</a> </p>
            </div>
        </div>
    </div>
    
	<center>
    <div style="width:800px;">
    	<table>
    		<tr>
    			<td>商品展示</td>   		
    		</tr>
    		<tr>
    			<td><img src="${goods.goodspic}"/></td>   		
    		</tr>
    		<tr>
    			<td>${goods.goodsname}</td>   		
    		</tr>
    		<tr>
    			<td><s:property value="goods.goodsdesc" escape='0'/></td>  		
    		</tr>
    		<tr>
    			<td><a href="addCar?gid=${goods.id}">加入购物车</a></td>		
    		</tr>
    	</table>   
    </div>
	</center>
	<s:debug></s:debug>
  </body>
</html>
<%@ include file="../common/footer.jsp"%> 