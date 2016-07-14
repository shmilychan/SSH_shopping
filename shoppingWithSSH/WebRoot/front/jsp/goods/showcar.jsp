<%@ page language="java" import="com.buaa.shopping.entity.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link href="front/public/css/base.css" rel="stylesheet" type="text/css" />
<link href="front/public/css/user.css" rel="stylesheet" type="text/css" />
<link href="front/public/css/cart_v1.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="front/public/js/jquery-1.7.1.min.js"></script>

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
	            	<p><a href="index.jsp">回到首页</a></p>
	            	<p>嗨，欢迎来到北航电子商城</p>
	            	<c:if test="${sessionScope.custom.username==null}">
					 <p><a href="user.do?a=login">请登录</a> | <a href="register">免费注册</a></p>
					</c:if>
	          		<p><a href="#">${sessionScope.custom.username}</a></p>
	                <p><a href="findOrder">我的订单</a> | <a href="javascript:;">服务中心</a> | <a href="userLogout">退出</a> </p>
	            </div>
	        </div>
	    </div>
	<!------------header---------------->
	<div class="header">
    	<div class="logo"><a href="goods.do"><img src="front/public/picture/logo.png" width="190" /></a></div>
    		<div class="flow-step">
			<ul class="flow-step-3">
				<li class="s1">加入购物车</li>
				<li class="s2">下订单</li>
				<li class="s3">去付款</li>
				<li class="s4">确认收货</li>
				<li class="s5">评价</li>
			</ul>
		</div>
    </div>
	<div class="clr2"></div>
    <!------------main---------------->
	
	<!-- cart -->
	<div class="wrapper">        
        
      <form action="addOrder" method="post">
        <input type="hidden" name="buyType" value="2">
		<div class="cart-state mt">
			<%
				List list = (List)request.getAttribute("cars");
			%>
			<p>购物车状态<em><%=list.size()%>/30</em></p>
		</div>            
		<div class="order-table mt20">
		<table width="100%">
			<tbody>
			<tr>
				<th class="th-1"><label><input name="checkAllCart" type="checkbox" value="1" checked="">全选</label></th>
				<th class="th-2">所选商品</th>
				<th class="th-3">单价（元）</th>
				<th class="th-4">数量</th>
				<th class="th-5">添加时间</th>
				<th class="th-6">小计（元）</th>
				<th class="th-7">操作</th>
			</tr>                              
                                       
			<tr id="merchant_191063">
				<td colspan="7" class=" store-infor clearfix">
					<div class="shopname">
						店铺：<a href="#" target="_blank">某东商城</a>
                    </div>
                    <div class="contact">
                        <a class="tag-security" style="margin: 0 -9px 0 0">&nbsp;</a>
                    </div>        
					<div class="contact">
                        <a target="_blank" href="#"><img border="0" src="http://wpa.qq.com/pa?p=2:834898877:52" alt="点击这里给我发消息" title="点击这里给我发消息"></a>
                    </div>
				</td>
			</tr>
			
			<c:forEach items="${cars}" var="c" varStatus="vs">	
							<tr rel="goods-order" id="cart_2224976" class="">
								<td colspan="2" class="s-infor">
									<input name="carIds" type="checkbox" value="${c.id}" item="item" rel="foritem" merchantid="191063" checked="">
									<a href="goods" class="pic" target="_blank"><img width="80" height="60" src="${c.goods.goodspic}"></a>
									<div class="inforbox">
										<h3 class="tit">
											<a href="showGoods&goods.id=${c.goods.id}" title="${c.goods.goodsname}" target="_blank">${c.goods.goodsname}</a>
										</h3>
									</div>
								</td>
								<td class="s-price ">
									<em class="s-old-price">${c.goods.price}</em>
								</td>
								<td class="s-amount ">
									<div class="buy-num">
										<input name="totals" type="text" value="1" size="1" >
									</div>
								</td>
								<td class="s-agio">
									<div class="agio-limit">
										${c.buytime}
									</div>
								</td>
								<td class="s-total"><em id="cartGoodsPcie_2224976"></em>
								</td>
								<td class="s-del">
									<div class="s-delbox">
										<a href="deleteCar?car.id=${c.id}">删除</a>
									</div>
								</td>
							</tr>		
				</c:forEach>				
			</tbody>
		</table>
		
		
		
		<div class="order-foot clearfix">                       			
			<a href="index.jsp" class="go-shopping">&lt;&lt;继续购物</a>
			<input type="submit" value="去结算" name="submitCart" class="accounting-btn" >			
		</div>		
	</div>    
   </form>    
</div>


<script type="text/javascript">
//选中购物车物品样式切换
$("input[name='cartId[]']").click(function(){
    $.changeBackColor();
});

// 套装
$(".info-con").mouseover(function(){
    $(this).addClass("info-con-hover");
}).mouseleave(function(){
    $(this).removeClass("info-con-hover");
});         

$("input[type=checkbox][name != 'checkAllCart']").click(function(){     
    var rel        = $(this).attr("rel");
    var merchantId = 0;
    if ($(this).is(":checked")){        
        $("input[name=submitCart]").attr("disabled", false);        
        if ('forshop' == rel){
            merchantId = $(this).val();
            $("input[rel=foritem]").each(function(){
                if (merchantId == $(this).attr('merchantId')){
                    $(this).get(0).checked = true;
                }
            });
        }
        
        if ('foritem' == rel){
            merchantId = $(this).attr('merchantId');
            var merchantflag = true;
            $("input[rel=foritem]").each(function(){
                if (merchantId == $(this).attr('merchantId')){
                    if (!$(this).is(":checked")){
                        merchantflag = false;
                    }
                }
            });
            
            if (merchantflag){                
                $("input[rel=forshop]").each(function(){
                    if (merchantId == $(this).val()){
                        $(this).get(0).checked = true;
                    }
                });
            }
        }       
        $.getCartInfo();
    }else{
        if ('forshop' == rel){
            merchantId = $(this).val();
            $("input[rel=foritem]").each(function(){
                if (merchantId == $(this).attr('merchantId')){
                    $(this).get(0).checked = false;
                }
            });
        }   
        if ('foritem' == rel){
            merchantId = $(this).attr('merchantId');            
            $("input[rel=forshop]").each(function(){                
                if (merchantId == $(this).val()){
                    $(this).get(0).checked = false;
                }
            });
        }    
        $.getCartInfo();
    }
    $.changeBackColor();
});
 
// 全选
$("input[name=checkAllCart]").click(function(){
    var cartIdArr = new Array();
    if ($(this).is(":checked")){
        $("input[type=checkbox]").each(function(){
            if (!$(this).is(":checked")){
                $(this).get(0).checked = true;
            }
            if ('item' == $(this).attr("item")){
                cartId = parseInt($(this).val());
                if (cartId){
                    cartIdArr.push(cartId);
                }
            }
        });        
        $.getCartInfo();
    }else{
        $("input[type=checkbox]").each(function(){
            if ($(this).is(":checked")){
                $(this).get(0).checked = false;
            }
        });  
        $(".total-cart-price").html("0");
        $("input[name=submitCart]").attr("disabled", "true");        
    }
    $.changeBackColor();
});
// 显示更多链接
$("#show_more_link").toggle(function(){
        $(".cbsi_zh > p").show();
        $(this).html("收起").attr("class", "more_hov");
}, function(){
        $(".cbsi_zh > p:gt(0)").hide();
        $(this).html("更多").attr("class", "more");		
});

$(".agio-limit").mouseover(function(){
    $(this).children("div").show();
}).mouseleave(function(){
    $(this).children("div").hide();
})
$(function($){
    //遍历处理商品的背景颜色
    $.extend({
        changeBackColor:function(){
            $("input[name='cartId[]']").each(function(){
                var isChecked   = $(this).is(":checked");
                var cartVal     = $(this).val();
                if(isChecked){
                    $("#cart_"+cartVal).removeClass("other");
                }else{
                    $("#cart_"+cartVal).addClass("other");
                } 
            });
        }
    });
    $.changeBackColor();
    
    //获得购物车信息
    $.extend({
        getCartInfo:function(){
            var cartIdArr = new Array();
            var cartIdStr = '';
            var cartId    = 0; 
            var rel       = '';
            $("input[type=checkbox]").each(function(){     
                rel = $(this).attr("rel");
                if (('foritem' == rel) && $(this).is(":checked")){
                    cartId = parseInt($(this).val());
                    if (cartId){
                        cartIdArr.push(cartId);
                    }                    
                }
            });  
            if (cartIdArr.length){
                 cartIdStr = cartIdArr.join(",");
            }
            //更新数量
            var url = "index.php?c=Ajax_ShopCart&a=UpdateCartNumber&callback=?&t="+Math.random();
             $.getJSON(
                url,
                {cartIdStr:cartIdStr, goodsNumber:0, operate:0},            
                function(data){
                    if (data.flag){
                        $(".total-cart-price").html(data.totalCartPrice);                    
                        $("input[name=submitCart]").attr("disabled", false);
                    }
                }
             );              
        }
    });   
</script>


 <%@ include file="../common/footer.jsp"%> 
