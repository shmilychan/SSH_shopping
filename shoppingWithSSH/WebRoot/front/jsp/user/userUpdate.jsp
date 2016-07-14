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
<title>用户注册</title>
<link href="public/css/base.css" rel="stylesheet" type="text/css" />
<link href="public/css/user.css" rel="stylesheet" type="text/css" />

</head>
<script type="text/javascript">
	function checkPassword() {
		var p1 = document.getElementById("p1");
		var p2 = document.getElementById("p2");
		if(p1 != p2){
			return false;
		}else{
			return true;
		}
	}
</script>
<body>
	<!------------top---------------->
	<div class="top">
    	<div class="top-c">
        	<div class="top-left">
            	<a href="javascript:;" class="collect">收藏</a>
                <a href="javascript:;" class="wechat">微信</a>
            </div>
            <div class="top-right">
            	<p>嗨，欢迎来到XXX商城</p>
                <p><a href="javascript:;">请登录</a> | <a href="javascript:;">免费注册</a></p>
                <p><a href="javascript:;">我的订单</a> | <a href="javascript:;">服务中心</a></p>
            </div>
        </div>
    </div>

	<!------------header---------------->
	<div class="header">
    	<div class="logo"><a href="index.html"><img src="public/picture/logo.png" width="190" /></a></div>
    </div>
	<div class="clr2"></div>
    <!------------main---------------->
	<div class="main">
    	<div class="login-left">
        	<div class="title"><h2>会员信息更新<span>LOGIN</span></h2></div>
            <div class="form-group" >
            <form action="userUpdate" method="post" onsubmit="checkPassword()">
            	${sessionScope.errMsg}
				<input type="hidden" name="id" value="${user.id}"/>
            	<div class="input-k">
                	<span>用户名：</span><input type="text" name="username" value="${user.username}"/>
                </div>
                <div class="input-k">
                	<span>密码：</span><input type="password" name="password" id="p1" value="${user.password}"/>
                </div>
                <div class="input-k">
                	<span>确认密码：</span><input type="password" id="p2"/>
                </div>
                <div class="input-k">
                	<span>真实姓名：</span><input type="text" name="realname" value="${user.realname}"/>
                </div>
                <div class="input-k">
                	<span>地址：</span><input type="text" name="address" value="${user.address}"/>
                </div>
                <div class="input-k">
                	<span>电话：</span><input type="text" name="tel" value="${user.tel}"/>
                </div>
                <div class="input-k">
                	<span>邮箱：</span><input type="text" name="email" value="${user.email}"/>
                </div>
                <div class="input-k">
                	<span></span><button type="submit" >立即更新</button>
                </div>
            </form>
            </div>
            
            <div class="fast-login">
            	<p>使用合作网站帐号登录：</p>
                <div class="fast-logo">
                	<a href="#"><img src="public/picture/fast-qq.jpg" /><span>QQ</span></a>
                    <a href="#"><img src="public/picture/fast-xl.jpg" /><span>新浪微博</span></a>
                    <a href="#"><img src="public/picture/fast-d.jpg" /><span>豆瓣</span></a>
                    <a href="#"><img src="public/picture/fast-zfb.jpg" /><span>支付宝</span></a>
                    <a href="#"><img src="public/picture/fast-rr.jpg" /><span>人人网</span></a>
                </div>
            </div>
        </div>
        
        <div class="login-right">
        	<p>还不是我们的会员？</p>
            <a href="register.html">十秒快速注册</a>
        </div>
        
    </div>
 <%@ include file="../common/footer.jsp"%>
