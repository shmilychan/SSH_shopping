<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品列表</title>
<link href="public/css/base.css" rel="stylesheet" type="text/css" />
<link href="public/css/pro-list.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
<script type="text/javascript" src="public/js/dd_belatedpng.js"></script>
<script>DD_belatedPNG.fix('*')</script>
<![endif]-->
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
                <p><a href="javascript:;">请登录</a> | <a href="javascript:;">免费注册</a></p>
                <p><a href="orderList">我的订单</a> | <a href="javascript:;">服务中心</a></p>
            </div>
        </div>
    </div>

	<!------------header---------------->
	<div class="header">
    	<div class="logo"><a href="index.html"><img src="public/picture/logo.png" width="190" /></a></div>
    	<div class="header-right">
        	<div class="search-section">
            	<div class="keyword"><input name="keyword"  type="text"  value="请输入关键字" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}"/></div>
                <div class="btn"></div>
            </div>
            
            <div class="cart-section">
                <p>购物车(1)</p>
                <div class="hidden-cart" style="height:">
                	<p>购物车(1)</p>
                </div>
                <div class="hidden-cart-c">
                	<ul>
                    	<li>
                        	<a href="#"><img src="public/picture/00.jpg" width="60" height="60" /></a>
                            <p><a href="#">小米盒子增强版 1G 黑色</a></p>
                            <pre>299元 x 1</pre>
                            <ins>x</ins>
						</li>
                        <li>
                        	<a href="#"><img src="public/picture/00.jpg" width="60" height="60" /></a>
                            <p><a href="#">小米盒子增强版 1G 黑色</a></p>
                            <pre>299元 x 1</pre>
                            <ins>x</ins>
						</li>
                    </ul>
                    <div class="cart-btn">
                    	<p>共计 2 件商品<span>合计：<strong>928.90元</strong></span></p>
                        <input type="button" value="去结算" />
                    </div>
                    <!--------购物车暂无产品--------------->
                    <div class="cart-not hidden">购物车中还没有商品，赶紧选购吧！</div>
                </div>
            </div>
        </div>
    </div>
	
    <!------------header-wrap---------------->
    <div class="header-wrap">
        <div class="navwrap">
            <div id="nav">
                <div class="navbar clearfix">
                    <a href="index.html">首页</a>
                    <a class="current" href="products-list.html">环境控制</a>
                    <a href="products-list.html">视听娱乐</a>
                    <a href="products-list.html">安全防护</a>
                    <a href="products-list.html">信息通讯</a>
                    <a href="products-list.html">智能设备</a>
                    <a href="#">品牌一览</a>
                    <a href="#">折扣区<em class="sale"></em></a>
                </div>
                                                            
                <div class="pros subpage">
                    <h2>全部商品分类</h2>
                    <ul class="prosul clearfix" id="proinfo" style="display:none">
                        <li>
                            <h3>环境控制</h3>
                            <a href="#">中控主机</a>
                            <a href="#">智能照明</a>
                            <a href="#">电器控制</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">中控主机</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">智能照明</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">电器控制</a></em></span>
                                <span><em><a href="#">电动窗帘</a></em></span>
                                <span><em><a href="#">暖通空调</a></em></span>
                                <span><em><a href="#">太阳能与节能设备</a></em></span>
                                <span><em><a href="#">花草自动浇灌</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>视听娱乐</h3>
                            <a href="#">家庭背景音乐</a>
                            <a href="#">家庭影院</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">家庭背景音乐</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">家庭影院</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">厨卫电视系统</a></em></span>
                                <span><em><a href="#">智能视频共享</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>安全防护</h3>
                            <a href="#">视频监控</a>
                            <a href="#">防盗报警</a>
                            <a href="#">电锁门禁</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">视频监控</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">防盗报警</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">电锁门禁</a></em></span>
                                <span><em><a href="#">宠物照看与动物管制</a></em></span>
                                <span><em><a href="#">追踪定位</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>信息通讯</h3>
                            <a href="#">可视对讲</a>
                            <a href="#">家居布线</a>
                            <a href="#">智能软件</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">可视对讲</a></em></span>
                                <span><em><a href="#">家居布线</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">智能软件</a></em></span>
                                <span><em><a href="#">手机、网络远程控制</a></em></span>
                                <span><em><a href="#">家庭网络</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>智能设备</h3>
                            <a href="#">智能穿戴</a>
                            <a href="#">运动器材与健康监测</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">智能穿戴</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">运动器材与健康监测</a></em></span>
                                <span><em><a href="#">智能手机与外设</a></em></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
