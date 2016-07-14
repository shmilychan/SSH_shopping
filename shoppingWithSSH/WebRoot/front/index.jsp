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
    <!------------header-wrap---------------->
    <div class="header-wrap">
        <div class="navwrap">
            <div id="nav">
                <div class="navbar clearfix">
                    <a class="current" href="goods.do">首页</a>
                    <s:iterator value="#session.goodsTypes">
                    	<a href="childGoodsList?pid=<s:property value='id'/>"><s:property value="typename"/></a>
                    </s:iterator>
                    <a href="showAllgoods">全部商品</a>
                    <a href="admin/login.jsp">后台管理<em class="sale"></em></a>
                </div>
                                                            
                <div class="pros subpage">
                    <h2>全部商品分类</h2>
                    <ul class="prosul clearfix" id="proinfo" style="display:block">
                        <li>
                            <h3>电子产品</h3>
                            <a href="#">品牌电脑</a>
                            <a href="#">智能手机</a>
                            <a href="#">智能硬件</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">品牌电脑</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">智能手机</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">智能硬件</a></em></span>
                                <span><em><a href="#">耗材</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>生活用品</h3>
                            <a href="#">卫生清洁</a>
                            <a href="#">工具</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">家庭背景音乐</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">家庭影院</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">厨卫电视系统</a></em></span>
                                <span><em><a href="#">智能视频共享</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>食品</h3>
                            <a href="#">零食</a>
                            <a href="#">水果</a>
                            <a href="#">牛奶饮料</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">视频监控</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">防盗报警</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">电锁门禁</a></em></span>
                                <span><em><a href="#">宠物照看与动物管制</a></em></span>
                                <span><em><a href="#">追踪定位</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>图书</h3>
                            <a href="#">科技</a>
                            <a href="#">人文</a>
                            <a href="#">工具书</a>
                            <div class="prosmore hide">
                                <span><em><a href="#">可视对讲</a></em></span>
                                <span><em><a href="#">家居布线</a></em></span>
                                <span><em class="morehot"><a class="morehot" href="#">智能软件</a></em></span>
                                <span><em><a href="#">手机、网络远程控制</a></em></span>
                                <span><em><a href="#">家庭网络</a></em></span>
                            </div>
                        </li>
                        <li>
                            <h3>娱乐</h3>
                            <a href="#">电影</a>
                            <a href="#">音乐</a>
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

	<!------------banner---------------->
	<div id="banner">
        <div class="fullSlide">
            <div class="bd">
                <ul>
                    <li _src="url(front/public/images/bg9.jpg)" style="background:#000 center 0 no-repeat;"><a href="#"></a></li>
                    <li _src="url(front/public/images/bg7.png)" style="background:#DED5A1 center 0 no-repeat;"><a href="#"></a></li>
                    <li _src="url(front/public/images/bg10.jpg)" style="background:#FEFF19 center 0 no-repeat;"><a href="#"></a></li>
                </ul>
            </div>
            <div class="hd"><ul></ul></div>
            <span class="prev"></span>
            <span class="next"></span>
        </div>
    </div>
	
    <!------------main---------------->
	<div class="main">
    	<!------热门推荐-------->
    	<div class="recommend">
        	<div class="title"><img src="front/public/picture/rt.png" /><p>热门商品</p></div>
        	<div class="clr20"></div>
            <div class="left">
            	<div class="img"><a href="#"><img src="front/public/images/datu1.jpg" width="619" height="309" /></a></div>
                <div class="img img_309"><p><strong><a href="#">小米平板冰淇淋软胶保护套1</a></strong><span>59元</span></p><a href="#"><img src="front/public/picture/502.jpg" width="220" height="220"/></a></div>
                <div class="img img_309"><p><strong><a href="#">小米平板冰淇淋软胶保护套2</a></strong><span>59元</span></p><a href="#"><img src="front/public/picture/502.jpg" width="220" height="220"/></a></div>
                <div class="img img_309"><p><strong><a href="#">小米平板冰淇淋软胶保护套3</a></strong><span>59元</span></p><a href="#"><img src="front/public/picture/502.jpg" width="220" height="220"/></a></div>
                <div class="img img_309"><p><strong><a href="#">小米平板冰淇淋软胶保护套4</a></strong><span>59元</span></p><a href="#"><img src="front/public/picture/502.jpg" width="220" height="220"/></a></div>
            </div>
            <div class="right">
            	<h2><span>TOP 5</span>热销商品</h2>
                <ul class="board-list">
               
                	<li>
                    	<span class="item-num top3">1</span>
                        <span class="item-info">
                        	<span class="item-title"><a href="#">小米活塞耳机简装版1</a></span>
                            <span class="item-price">29元 </span>
                        </span>
                        <span class="item-thumb"><a href="#"><img src="front/public/picture/01.jpg" width="70" height="70" /></a></span>
                    </li>
                
                    <li>
                    	<span class="item-num top3">2</span>
                        <span class="item-info">
                        	<span class="item-title"><a href="#">小米活塞耳机简装版2</a></span>
                            <span class="item-price">49元 </span>
                        </span>
                        <span class="item-thumb"><a href="#"><img src="front/public/picture/02.jpg" width="70" height="70" /></a></span>
                    </li>
                    <li>
                    	<span class="item-num top3">3</span>
                        <span class="item-info">
                        	<span class="item-title"><a href="#">小米活塞耳机简装版3</a></span>
                            <span class="item-price">49元 </span>
                        </span>
                        <span class="item-thumb"><a href="#"><img src="front/public/picture/502.jpg" width="70" height="70" /></a></span>
                    </li>
                    <li>
                    	<span class="item-num">4</span>
                        <span class="item-info">
                        	<span class="item-title"><a href="#">小米活塞耳机简装版4</a></span>
                            <span class="item-price">49元 </span>
                        </span>
                        <span class="item-thumb"><a href="#"><img src="front/public/picture/04.jpg" width="70" height="70" /></a></span>
                    </li>
                    <li>
                    	<span class="item-num">5</span>
                        <span class="item-info">
                        	<span class="item-title"><a href="#">小米活塞耳机简装版</a></span>
                            <span class="item-price">49元 </span>
                        </span>
                        <span class="item-thumb"><a href="#"><img src="front/public/picture/05.jpg" width="70" height="70" /></a></span>
                    </li>
                </ul>
            </div>
        </div>
        <s:iterator value="#session.allGoods" var="partGoods">
        <!------电子产品-------->
        <div class="list-title">
        	<p><strong style="border-bottom:solid 2px #00c3d5;">电子产品</strong></p><a href="#">More</a>
        </div>
        <div class="list-div">
        	<ul>
        	<s:iterator value="partGoods" var="v">
            	<li>
                    <a href="showGoods?id=${v.id}" target="_blank"><img src="${v.goodspic}" width="220" height="220" /></a>
                    <p><a href="showGoods?id=${v.id}" target="_blank">${v.goodsname}</a></p>
                    <p class="price"> <span class="num">${v.price }</span>元  </p>
                </li>
            </s:iterator> 
            </ul>
        </div>
        </s:iterator>
        <!------视听娱乐--------><%--
        <div class="list-title">
        	<p><strong style="border-bottom:solid 2px #54cb00;">生活用品</strong></p><a href="#">More</a>
        </div>
        <div class="list-div">
        	<ul>
            	<c:forEach items="${list1}" var="v">
            	<li>
                    <a href="goods.do?a=show&id=${v.id}"><img src="${v.goodspic}" width="220" height="220" /></a>
                    <p><a href="goods.do?a=show&id=${v.id}">${v.goodsname}</a></p>
                    <pre>${v.goodstitle }</pre>
                    <p class="price"> <span class="num">${v.price }</span>元  </p>
                </li>
            </c:forEach> 
            </ul>
        </div>
        
        <!------安全防护-------->
        <div class="list-title">
        	<p><strong style="border-bottom:solid 2px #1d7ad9;">食品</strong></p><a href="#">More</a>
        </div>
        <div class="list-div">
        	<ul>
            	<c:forEach items="${list2}" var="v">
            	<li>
                    <a href="goods.do?a=show&id=${v.id}"><img src="${v.goodspic}" width="220" height="220" /></a>
                    <p><a href="goods.do?a=show&id=${v.id}">${v.goodsname}</a></p>
                    <pre>${v.goodstitle }</pre>
                    <p class="price"> <span class="num">${v.price }</span>元  </p>
                </li>
            </c:forEach> 
            </ul>
        </div>
        
        <!------信息通讯-------->
        <div class="list-title">
        	<p><strong style="border-bottom:solid 2px #f26d7e;">图书</strong></p><a href="#">More</a>
        </div>
        <div class="list-div">
        	<ul>
            	<c:forEach items="${list3}" var="v">
            	<li>
                    <a href="goods.do?a=show&id=${v.id}"><img src="${v.goodspic}" width="220" height="220" /></a>
                    <p><a href="goods.do?a=show&id=${v.id}">${v.goodsname}</a></p>
                    <pre>${v.goodstitle }</pre>
                    <p class="price"> <span class="num">${v.price }</span>元  </p>
                </li>
            </c:forEach> 
            </ul>
        </div>
        
        <!------娱乐-------->
        <div class="list-title">
        	<p><strong style="border-bottom:solid 2px #f9ee30;">娱乐</strong></p><a href="#">More</a>
        </div>
        <div class="list-div">
        	<ul>
            	<c:forEach items="${list4}" var="v">
            	<li>
                    <a href="goods.do?a=show&id=${v.id}"><img src="${v.goodspic}" width="220" height="220" /></a>
                    <p><a href="goods.do?a=show&id=${v.id}">${v.goodsname}</a></p>
                    <pre>${v.goodstitle }</pre>
                    <p class="price"> <span class="num">${v.price }</span>元  </p>
                </li>
            </c:forEach> 
            </ul>
        </div>
        
        
        --%><!------示例部分-------->
      <!--    <div class="list-title">
        	<p><strong style="border-bottom:solid 2px #f9ee30;">示例</strong></p><a href="#">More</a>
        </div>
        <div class="list-div">
        	<ul>
            	<li>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                    <p><a href="#">趣味防尘塞 MI标</a></p>
                    <pre>适用于小米平板, 所有手机适用于小米平板, 所有手机</pre>
                </li>
                <li>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                    <p><a href="#">趣味防尘塞 MI标</a></p>
                    <pre>适用于小米平板, 所有手机适用于小米平板, 所有手机</pre>
                </li>
                <li>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                    <p><a href="#">趣味防尘塞 MI标</a></p>
                    <pre>适用于小米平板, 所有手机适用于小米平板, 所有手机</pre>
                </li>
                <li>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                    <p><a href="#">趣味防尘塞 MI标</a></p>
                    <pre>适用于小米平板, 所有手机适用于小米平板, 所有手机</pre>
                </li>
            </ul>
        </div> -->
        
        
        
        
        <!------特价商品 -------->
        <!-- <div class="list-title">
        	<p><strong style="border-bottom:solid 2px #dfdfdf;">特价商品</strong></p><a href="#">More</a>
        </div>
        <div class="list-div">
        	<ul>
            	<li>
                	<label><a href="#">趣味防尘塞 MI标</a></label>
                    <cite>89元<del>109元</del></cite>
                    <dfn>省20元</dfn>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                </li>
                <li>
                	<label><a href="#">趣味防尘塞 MI标</a></label>
                    <cite>89元<del>109元</del></cite>
                    <dfn>省20元</dfn>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                </li>
                <li>
                	<label><a href="#">趣味防尘塞 MI标</a></label>
                    <cite>89元<del>109元</del></cite>
                    <dfn>省2元</dfn>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                </li>
                <li>
                	<label><a href="#">趣味防尘塞 MI标</a></label>
                    <cite>89元<del>109元</del></cite>
                    <dfn>省20元</dfn>
                    <a href="#"><img src="public/picture/401.jpg" width="220" height="220" /></a>
                </li>
            </ul>
        </div>
        
    </div> -->
	
     <!------底部-------->
	<div class="footer">
    	<div class="footer-c">
        	<dl>
            	<dt>购买指南</dt>
                <dd><a href="#">第一次购物体验</a></dd>
                <dd><a href="#">品质保证原则</a></dd>
                <dd><a href="#">会员申请条件</a></dd>
            </dl>
            <dl>
            	<dt>支付方式</dt>
                <dd><a href="#">网银在线支付</a></dd>
                <dd><a href="#">支付宝支付</a></dd>
                <dd><a href="#">银联在线支付</a></dd>
            </dl>
            <dl>
            	<dt>配送方式</dt>
                <dd><a href="#">配送方式</a></dd>
            </dl>
            <dl>
            	<dt>售后服务</dt>
                <dd><a href="#">联系客服</a></dd>
                <dd><a href="#">订单查询</a></dd>
                <dd><a href="#">退换货流程及原则</a></dd>
            </dl>
            
            <div class="col-contact">
                <p class="phone">400-100-5678</p>
                <p>周一至周日 8:00-18:00<br />（仅收市话费）</p>
                <input type="button" value="在线客户" />
            </div>
            <div class="clr20"></div>
            <div class="footer-b">
                <p><a href="#">关于我们</a>  |  <a href="#">手机商城</a>  |  <a href="#">联系我们</a></p>
                <p>2013 © BUAA.com,All Rights Reserver. BUAA科技 版权所有　　网站备案号：京ICP备0000号-1</p>
            </div>
        </div>
    </div>


</body>
<script type="text/javascript" src="front/public/js/jquery-1.7.1.min.js"></script>

<!--------banner特效--------------->
<script type="text/javascript" src="front/public/js/index.js"></script>
<script type="text/javascript">
$(function(){
	/*------------------------------购物车效果-----------------------------------*/	   
	$(".cart-section").hover(function(){
		$(".hidden-cart").css("display","block");
		$(".hidden-cart-c").css("display","block");
	},function(){
		$(".hidden-cart").css("display","none");
		$(".hidden-cart-c").css("display","none");
		})	
	
	$(".hidden-cart-c ul li ins").click(function(){
		$(this).parents('li').remove();
	})

})

/*------------------------------banner特效-----------------------------------*/
	$(".fullSlide").hover(function(){
		$(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
	},
	function(){
		$(this).find(".prev,.next").fadeOut()
	});
	$(".fullSlide").slide({
		titCell: ".hd ul",
		mainCell: ".bd ul",
		effect: "fold",
		autoPlay: true,
		autoPage: true,
		trigger: "click",
		startFun: function(i) {
			var curLi = jQuery(".fullSlide .bd li").eq(i);
			if ( !! curLi.attr("_src")) {
				curLi.css("background-image", curLi.attr("_src")).removeAttr("_src");
			}
		}
});
</script>
</html>
