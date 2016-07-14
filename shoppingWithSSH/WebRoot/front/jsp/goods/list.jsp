<%@ include file="../common/header.jsp"%>
    <!------------main---------------->
	<div class="main">
    	<div class="current-position"><h2><a href="#">首页</a> > <a href="#">环境控制</a></h2></div>
        <div class="big-class"><h1>环境控制</h1></div>
        <div class="small-class">
        	<p>分类：  <a href="#" class="active">全部</a>|<a href="#">中控主机</a>|<a href="#">智能照明</a>|<a href="#">电器控制</a>|<a href="#">电动窗帘</a>|<a href="#">暖通空调</a>|<a href="#">太阳能与节能设备</a>|<a href="#">花草自动浇灌</a></p>
            <p>分类：  <a href="#" class="active">全部</a>|<a href="#">中控主机</a>|<a href="#">智能照明</a>|<a href="#">电器控制</a>|<a href="#">电动窗帘</a>|<a href="#">暖通空调</a>|<a href="#">太阳能与节能设备</a>|<a href="#">花草自动浇灌</a></p>
        </div>
        <div class="box-hd">
            <div class="filter-lists">
                <ul>
                    <li class="current"><a href="#" rel="nofollow">推荐</a>|</li>
                    <li ><a href="#" rel="nofollow">最新</a>|</li>
                    <li ><a href="#" rel="nofollow">价格从高到低</a>|</li>
                    <li ><a href="#" rel="nofollow">价格从低到高</a>|</li>
                    <li ><a href="#" rel="nofollow">关注度</a></li>
                </ul>
            </div>
            
            <div class="more">
                <a href="javascript:;"><i class="icon-check"></i><p>仅显示特惠商品</p></a>
                <a href="javascript:;"><i class="icon-check"></i><p>仅显示有货商品</p></a>
            </div>
        </div>
        
        <div class="products-list" id="products-list">
        	<ul>
        		<c:forEach items="${goods}" var="g">
					<li>
                	<div class="img" style="background:url(${g.goodspic}) no-repeat center center"><a href="goods.do?a=show&id=${g.id}"></a></div>
                    <div class="w">
                    	<div class="left"><p><a href="goods.do?a=show&id=${g.id}">${g.goodsname}</a></p><span class="price">￥${g.price}<del>${g.price+20.0}</del></span></div>
                        <div class="right"><i class="star5"></i><p>22264人评价</p></div>
                        <c:if test="${sessionScope.custom.role == 1 }">
                        	<div><a href="goods.do?a=delete&id=${g.id}" class="btn1">删除</a></div>
                        </c:if>
                    </div>
                    <div class="btn">
                    	<a href="goods.do?a=show&id=${g.id}" class="btn1">立即购买</a>
                        <a href="#" class="btn2">加入购物车</a>
                    </div>
                </li>
	
				</c:forEach>
        	
                <li>
                	<div class="img"><a href="products-detailed.html"><img src="public/picture/4-2li.jpg" width="220" height="220" /></a></div>
                    <div class="w">
                    	<div class="left"><p><a href="products-detailed.html">小米手环 石墨黑石墨黑石墨黑石墨黑石墨黑</a></p><span>79元</span></div>
                        <div class="right"><i class="star5"></i><p>22264人评价</p></div>
                    </div>
                    <div class="btn">
                    	<a href="products-detailed.html" class="btn1">立即购买</a>
                        <a href="products-detailed.html" class="btn2">加入购物车</a>
                    </div>
                </li>
            </ul>
            <div class="clr10"></div>
            <div class="fy">
            	<div class="fy-c">
                	<a href="#" class="active">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <span>...</span>
                    <a href="#">94</a>
                    <a href="#">></a>
                    <span>共94页</span>
                    <span>到第</span>
                    <input type="text" value="1" />
                    <span>页</span>
                    <a href="#">确定</a>
                </div>
            </div>
        </div>
        
    </div>
<%@ include file="../common/footer.jsp"%>
