  <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<!--------banner特效--------------->
<script type="text/javascript" src="public/js/index.js"></script>
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