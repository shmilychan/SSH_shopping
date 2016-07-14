<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>电子商城-首页</title>
<link href="front/public/css/base.css" rel="stylesheet" type="text/css" />
<link href="front/public/css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="front/public/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn").click(function(){
		     $("#qform").submit();
		});
	});
</script>
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
				 <p><a href="front/jsp/user/login.jsp">请登录</a> | <a href="front/jsp/user/reg.jsp">免费注册</a></p>
				</c:if>
          		<p><a href="preUpdate?user.id=${sessionScope.custom.id}">${sessionScope.custom.username}</a></p>
                <p><a href="findOrder">我的订单</a> | <a href="javascript:;">服务中心</a> | <a href="userLogout">退出</a></p>
            </div>
        </div>
    </div>

	<!------------header---------------->
	<div class="header">
    	<div class="logo"><a href="goods.do"><img src="front/public/picture/logo.png" width="190" /></a></div>

    	<div class="header-right">
        	<div class="search-section">
            	<form action="queryGoodsByName" method="post" id="qform" target="_blank">
	            	<div class="keyword">	            		
	            		<input name="keyword"  type="text"  value="请输入关键字" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"/>	            		
	            	</div>
	                <div class="btn" id="btn"></div>
                </form>
            </div>
            
            <div class="cart-section">
                <p><a href="showCar">&nbsp;查看购物车</a></p>
            </div>
        </div>
    </div>
	<div class="clr2"></div>
	<div class="list-div">
        	<ul>
        	<s:iterator value="goodsList">
            	<li>
                    <a href="showGoods?id=${id}" target="_blank"><img src="${goodspic}" width="220" height="220" /></a>
                    <p><a href="showGoods?id=${id}" target="_blank">${goodsname}</a></p>
                    <p class="price"> <span class="num">${price}</span>元  </p>
                </li>
            </s:iterator> 
            </ul>
        </div>
	<hr />
  </body>
</html>
