<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>front/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
<link href="public/css/base.css" rel="stylesheet" type="text/css" />
<link href="public/css/user.css" rel="stylesheet" type="text/css" />

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
            	<p>嗨，欢迎来到XXX商城</p>
                <p><a href="javascript:;">请登录</a> | <a href="user.do?a=reg">免费注册</a></p>
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
        	<div class="title"><h2>会员登录<span>LOGIN</span></h2></div>
            <div class="form-group" >
            <form action="userCheckLogin" method="post">
            	${sessionScope.errMsg}
            	<div class="input-k">
                	<span>帐号：</span><input type="text" name="username"/>
                </div>
                <div class="input-k">
                	<span>密码：</span><input type="password" name="password"/><p class="prompt">请输入您的登录密码！</p>
                </div>
                <div class="input-k">
                	<span>验证码：</span><input type="text" name="verifyCode"/>
                	<p><img src="verifyCode" height="30px" onclick="this.src='verifyCode?'+Math.random()"/></p>
                </div>
                <div class="input-k">
                	<span></span><button type="submit" >立即登录</button>
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
            <a href="user.do?a=reg">十秒快速注册</a>
        </div>
        
    </div>
 <%@ include file="../common/footer.jsp"%>
