<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>front/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>订单结算</title>
<link href="public/css/base.css" rel="stylesheet" type="text/css" />
<link href="public/css/user.css" rel="stylesheet" type="text/css" />

<link href="public/css/cart_v1.css" rel="stylesheet" type="text/css" />
<link href="public/css/order_v1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="front/public/js/jquery-1.7.1.min.js"></script>

<body>
	<!------------top---------------->
	<div class="top">
		<div class="top-c">
			<div class="top-left">
				<a href="javascript:;" class="collect">收藏</a> <a href="javascript:;"
					class="wechat">微信</a>
			</div>
			<div class="top-right">
				<p><a href="index">回到首页</a></p>
				<p>嗨，欢迎来到北航电子商城</p>
				<c:if test="${sessionScope.custom.username==null}">
					<p>
						<a href="userLogin">请登录</a> | <a href="user.do?a=register">免费注册</a>
					</p>
				</c:if>
				<p>
					<a href="#">${sessionScope.custom.username}</a>
				</p>
				<p>
					<a href="findOrder">我的订单</a> | <a href="javascript:;">服务中心</a> |
					<a href="userLogout">退出</a>
				</p>
			</div>
		</div>
	</div>
	<!------------header---------------->
	<div class="header">
		<div class="logo">
			<a href="goods.do"><img src="public/picture/logo.png" width="190" />
			</a>
		</div>
		<div class="flow-step">
			<ul class="flow-step-4">
				<li class="s1">加入购物车</li>
				<li class="s2">下订单</li>
				<li class="s3">去付款</li>
				<li class="s4">确认收货</li>
				<li class="s5">评价</li>
			</ul>
		</div>
	</div>
	<div class="clr2"></div>
	<hr />
	<center>
    <div style="width:800px;">
    	<table width="800px" style="margin:100px auto;border: 1px double #A9A9A9" >
    		<tr>
    			<th>订单编号</th>
    			<th>购买时间</th>
    			<th>订单状态</th>
    			<th>查看详情</th>
    			<th>发货时间</th>
    		</tr>
    	<s:iterator value="orderList">
    		<tr>
    			<td><s:property value="orderNum"/></td>
    			<td><s:property value="buytime"/></td>
    			<td>
    				<div style="font-size:18px;color:red">
					<strong>
						<c:if test="${status==0}">未处理</c:if>
						<c:if test="${status==1}">已处理</c:if>
						</strong>
					</div>
    			</td>
    			<td><a href="getOrderDetail?id=<s:property value="id"/>">订单详情</a></td>
    			<td>				
    					<s:property value="sendTime"/>		
    			</td> 		
    		</tr>	
    	</s:iterator>
    	</table>   
    </div>
	</center>
	<s:debug></s:debug>
  </body>
</html>
<%@ include file="../common/footer.jsp"%> 