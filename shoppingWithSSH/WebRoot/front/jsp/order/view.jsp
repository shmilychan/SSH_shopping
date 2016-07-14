<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
用户名:${user.username}<br/>
商品名称:${goods.goodsname}<br/>
收货地址:${user.address}<br/>
数量:${order.total}<br/>
订单状态:<c:if test="${order.status==0}">未处理</c:if>
<c:if test="${order.status==1}">已处理</c:if>
<br/>
<button onclick="javascript:location.href='order.do?a=status&id=${order.id}'">确认</button>
</body>
</html>