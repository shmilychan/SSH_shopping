<%@ include file="../common/header.jsp"%>
    <!------------main---------------->
	<div class="main">
    	<div class="current-position"><h2><a href="#">首页</a> > <a href="#">环境控制</a></h2></div>
		<div class="goods-detail-info">
        	<div class="left">
                <div id="play">
                    <ul class="img_ul">
                        <li style="display:block;"><a class="img_a"><img src="public/picture/big-pro1.jpg" width="430px" height="430px"></a></li>
                        <li><a class="img_a"><img src="public/picture/big-pro2.jpg" width="430px" height="430px"></a></li>
                        <li><a class="img_a"><img src="public/picture/big-pro3.jpg" width="430px" height="430px"></a></li>
                    </ul>
<!--                    <a href="javascript:void(0)" class="prev_a change_a" title="上一张"><span></span></a>
                    <a href="javascript:void(0)" class="next_a change_a" title="下一张"><span style="display:block;"></span></a>-->
                </div>
                
                <div class="img_hd">
                    <ul class="clearfix">
                        <li class="on"><a class="img_a"><div class="pro-small-pic" style="background:url(public/images/pro-small-pic.jpg)"></div></a></li>
                        <li><a class="img_a"><div class="pro-small-pic" style="background:url(public/images/pro-small-pic.jpg)"></div></a></li>
						<li><a class="img_a"><div class="pro-small-pic" style="background:url(public/images/pro-small-pic.jpg)"></div></a></li>
                        <li><a class="img_a"><div class="pro-small-pic" style="background:url(public/images/pro-small-pic.jpg)"></div></a></li>
                  </ul>
              </div>
          </div>
        	<div class="right">
            	<h1>${goods.goodsname}</h1>
                <p class="money">¥<span>${goods.price}</span></p>
                <p class="comment"><img src="public/picture/x5.gif" /><span>3266人评价<ins>|</ins>0个提问</span></p>
                <p class="fit"><strong>适配</strong><span>仅适配偏震式屏幕</span></p>
                <div class="styles">
                	<h2>颜色：</h2>
                    
                    
                    
                    <ul class="style-simg">
                    	<li class="active"><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                        <li ><a href="#"><div class="style-img" style="background:url(public/images/pro-minsmall-pic.jpg)"></div><i></i></a></li>
                    </ul>
                    <h2>尺寸：</h2>
                    <ul class="style-simg">
                    	<li class="active"><a href="#"><div class="style-title">165/M</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">170/L</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">175/XL</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">180/XXL</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">175/XL</div></a><i></i></li>
                        <li><a href="#"><div class="style-title">180/XXL</div></a><i></i></li>
                    </ul>
                    
                    
                    <h2>数量：</h2>
                    <div class="tb-amount-widget">
                    	<input type="text"  value="1" class="input-count"/>
                        <div class="tb-amount-btn">
                            <a href="javascript:;" class="add_btn"></a>
                            <a href="javascript:;" class="min_btn"></a>
                        </div>
                        <span>库存 ${goods.count}件</span>
                    </div>
                </div>
                <div class="pro-detai-cart">
                	<a href="#" class="cart"><p>加入购物车</p></a>
                    <a href="#" class="collection"></a>
                </div>
                <div class="service">
                	<dl>
                    	<dt>享受服务</dt>
                        <dd class="fqfk"><a href="#">分期付款</a></dd>
                    </dl>
                    <dl style="margin-left:50px">
                    	<dt>享受保障</dt>
                        <dd class="th"><a href="#">15天退货</a></dd>
                        <dd class="bx"><a href="#">一年保修</a></dd>
                    </dl>
                </div>
            </div>
      </div>
      
      <div class="pro-detailed">
      
          <div class="pro-detailed-left">
			<ul class="pro-detailed-left-title">
            	<li class="active"><a href="#goodsDesc">详细信息</a></li>
                <li><a href="#goodsParam">规格参数</a></li>
                <li><a href="#goodsComment">评价晒单</a></li>
                <li><a href="#goodsFaq">商品提问</a></li>
                <li><a href="#serQue">售后服务</a></li>
            </ul>
            <div class="pro-detailed-left-c">
            	<!--------详细信息---------->
            	<div id="goodsDesc">
                	<img src="public/picture/pro-goodsdesc.jpg" />
                </div>
                <!--------规格参数---------->
                <div id="goodsParam">
                	<div class="title">规格参数</div>
                    <ul>
                    	<li><p><span>品牌 ： </span>MIUI/小米</p></li>
                        <li><p><span>型号 ： </span>国产</p></li>
                        <li><p><span>尺寸 ： </span>20厘米-29厘米</p></li>
                        <li><p><span>编号 ： </span></p></li>
                        <li><p><span>颜色分类 ： </span>红色</p></li>
                        <li><p style="white-space:normal;"><span>适用对象 ： </span>仅适配偏震式屏幕</p></li>
                    </ul>
                </div>
                <!--------评价晒单---------->
                <div id="goodsComment">
                	<div class="title"><strong>用户评价</strong><p><a href="#" class="active">很有用</a>|<a href="#">最新</a></p></div>
                    <div class="goodsComment-zj">
                    	<div class="left"><p>96.1<span>%</span></p><pre>五星评价率</pre></div>
                        <div class="right">
                        	<ul class="star">
                            	<li><i class="star5"></i><bdo>1696人</bdo></li>
                                <li><i class="star4"></i><bdo>90人</bdo></li>
                                <li><i class="star3"></i><bdo>5人</bdo></li>
                                <li><i class="star2"></i><bdo>1人</bdo></li>
                                <li><i class="star1"></i><bdo>0人</bdo></li>
                            </ul>
                            <ul class="Impression">
                            	<li>支持国产机</li>
                                <li>性价比高</li>
                                <li>系统流畅</li>
                                <li>功能齐全</li>
                                <li>屏幕大</li>
                                <li>反应快</li>
                                <li>外观漂亮</li>
                            </ul>
                        </div>
                    </div>
                    <div class="goodsComment-c">
                    	<ul>
                        	<li>
                            	<div class="tou-x"><img src="public/picture/hy.gif" width="78" height="78" /><p>行云流水SAGA</p></div>
                                <div class="pl-c">
                                	<div class="pl-c-1"><i class="star5"></i><span>2014-12-1</span></div>
                                    <div class="pl-c-2"><p>产品质量我是说可以 但是我还是给差评 你们不知接不接纳 这个物流速度太慢了整整4天 刚刚才拿到卡 盼到我脖子长了</p></div>
                                    <div class="pl-c-3">
                                    	<p><span>此评价是否有用？</span> <a href="javascript:;">有用(169)</a> <a href="javascript:;">没用(67)</a></p>
                                        <strong>来自于小米网 | <a href="#">回复 (2)</a></strong>
                                    </div>
                                </div>
                            </li>
                            
                           <li>
                            	<div class="tou-x"><img src="public/picture/hy.gif" width="78" height="78" /><p>行云流水SAGA</p></div>
                                <div class="pl-c">
                                	<div class="pl-c-1"><i class="star5"></i><span>2014-12-1</span></div>
                                    <div class="pl-c-2"><p>产品质量我是说可以 但是我还是给差评 你们不知接不接纳 这个物流速度太慢了整整4天 刚刚才拿到卡 盼到我脖子长了</p></div>
                                    <div class="pl-c-3">
                                    	<p><span>此评价是否有用？</span> <a href="javascript:;">有用(169)</a> <a href="javascript:;">没用(67)</a></p>
                                        <strong>来自于小米网 | <a href="#">回复 (2)</a></strong>
                                    </div>
                                </div>
                            </li>
                            
                            <li>
                            	<div class="tou-x"><img src="public/picture/hy.gif" width="78" height="78" /><p>行云流水SAGA</p></div>
                                <div class="pl-c">
                                	<div class="pl-c-1"><i class="star5"></i><span>2014-12-1</span></div>
                                    <div class="pl-c-2"><p>产品质量我是说可以 但是我还是给差评 你们不知接不接纳 这个物流速度太慢了整整4天 刚刚才拿到卡 盼到我脖子长了</p></div>
                                    <div class="pl-c-3">
                                    	<p><span>此评价是否有用？</span> <a href="javascript:;">有用(169)</a> <a href="javascript:;">没用(67)</a></p>
                                        <strong>来自于小米网 | <a href="#">回复 (2)</a></strong>
                                    </div>
                                    <div class="pl-c-4">
                                    	<p><span>官方回复：</span>亲~ 内存卡的换算和计算机上的换算方式是不同的呢 计算机上是按1G=1024M进制算的 而厂家在做的时候是按1G＝1000M做的 所以此类容量的一个大约的计算公式为：标称容量×0.931(单位为G)，得出的数值为一个大约量，只要差的不多均为正常。</p>
                                    </div>
                                </div>
                            </li>
                            
                            <li>
                            	<div class="tou-x"><img src="public/picture/hy.gif" width="78" height="78" /><p>行云流水SAGA</p></div>
                                <div class="pl-c">
                                	<div class="pl-c-1"><i class="star5"></i><span>2014-12-1</span></div>
                                    <div class="pl-c-2"><p>产品质量我是说可以 但是我还是给差评 你们不知接不接纳 这个物流速度太慢了整整4天 刚刚才拿到卡 盼到我脖子长了</p></div>
                                    <div class="pl-c-3">
                                    	<p><span>此评价是否有用？</span> <a href="javascript:;">有用(169)</a> <a href="javascript:;">没用(67)</a></p>
                                        <strong>来自于小米网 | <a href="#">回复 (2)</a></strong>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    
                    <div class="goodsComment-more"><a href="goodsComment-more.html">查看全部评价 ></a></div>
                </div>
                <!--------商品提问---------->
                <div id="goodsFaq">
                	<div class="title"><strong>产品提问</strong><p><a href="#">查看全部 ></a></p></div>
                    <div class="goodsFaq-c">
                    	<ul>
                        	<li>
                            	<div class="question"><i>Q</i><h3>包邮吗</h3></div>
                                <div class="answer"><i>A</i><p>您好，现在是满150元包邮哦~不满150元需要10元邮费哦~</p></div>
                                <div class="use-time"><p>134494448</p><span>2014年09月16日</span></div>
                            </li>
                            <li>
                            	<div class="question"><i>Q</i><h3>有客服在吗 现在是8.29了，现在买还包邮吗？我现在买了其他的东西有200多了，我想再买个抱枕但邮寄的地址不是一个？</h3></div>
                                <div class="answer"><i>A</i><p>您好，暂时没有活动了哦，需要订单满150元才包邮的哦，感谢您对小米的支持。</p></div>
                                <div class="use-time"><p>134494448</p><span>2014年09月16日</span></div>
                            </li>
                            <li>
                            	<div class="question"><i>Q</i><h3>包邮吗</h3></div>
                                <div class="answer"><i>A</i><p>您好，现在是满150元包邮哦~不满150元需要10元邮费哦~</p></div>
                                <div class="use-time"><p>134494448</p><span>2014年09月16日</span></div>
                            </li>
                            <li>
                            	<div class="question"><i>Q</i><h3>有客服在吗 现在是8.29了，现在买还包邮吗？我现在买了其他的东西有200多了，我想再买个抱枕但邮寄的地址不是一个？</h3></div>
                                <div class="answer"><i>A</i><p>您好，暂时没有活动了哦，需要订单满150元才包邮的哦，感谢您对小米的支持。</p></div>
                                <div class="use-time"><p>134494448</p><span>2014年09月16日</span></div>
                            </li>
                        </ul>
                    </div>
                    <div class="faq-input">
                    	<span>我要提问</span>
                        <input type="text" value="输入你的提问" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}">
                        <button type="button">提交</button>
                    </div>
                </div>
                <!--------售后服务---------->
                <div id="serQue">
                	<div class="nTab3">
                        <!-- 标题开始 -->
                        <div class="TabTitle">
                          <ul id="myTab0">                     
                            <li class="active" onclick="nTabs(this,0);">常见问题</li>
                            <li class="normal" onclick="nTabs(this,1);">售后服务</li>
                          </ul>
                        </div>
                        <!-- 内容开始 -->
                        <div class="TabContent">
                          		<!--常见问题-->
                              <div id="myTab0_Content0" class="intro">
                                 	<h2>如何挑选商品？</h2>
                                    <p>点击页面上方“加入购物车”按钮或页面下拉时顶部导航上的“加入购物车”按钮将商品加入购物车，再点击页面右上角的“购物车”前往购物车页面进行结算。</p>
                                    
                                    <h2>收藏商品功能</h2>
                                    <p>点击“收藏按钮”后，按钮中的白心亮起,背景由黑色变为黄色代表收藏成功，再次点击取消收藏。您可在“个人中心”中的我的收藏查看所有收藏商品。</p>
                                    
                                    <h2>维修网点销售配件吗？</h2>
                                    <p>所有授权维修网点具备维修手机标配里配件的功能，部分指定授权维修网点可销售标配及部分官网配件，具体销售的产品及价格请以修网点信息为准。</p>
                                    
                                    <h2>退换货办理流程</h2>
                                    <p>您可拨打小米客服中心400-100-5678与客服人员沟通，或登录小米网“我的订单” ->“订单详情”下方点击“申请售后服务”并填写相应信息，小米看到您的申请，会安排工作人员与您进行退换货质量确认并办理相关事宜.</p>
                              </div>
                              <!--售后服务-->
                              <div id="myTab0_Content1" class="intro" style="display:none;">
                                    <p>1.自签收之日起，如商品及包装保持小米出售时原状且配件齐全，七天退货，十五天换货。</p>
                                    <p> 2.退换凭证：用户提供相关订单号。</p>
                                    <p>3.非质量问题的退换，需要产品包装完好、不影响二次销售，且需用户承担退换运费；非质量问题退换次数仅限一次。</p>
                                    <p>4.因质量问题办理退换服务，在邮寄商品时，用户须将快递发票一并寄回，此过程中产生的相关运费凭快递发票最高可报销15元/单。质量问题的退换，用户在线咨询，上传凭证，经确认后寄回检测，然后进入相关流程。</p>
                                    <p>1.自签收之日起，如商品及包装保持小米出售时原状且配件齐全，七天退货，十五天换货。</p>
                                    <p> 2.退换凭证：用户提供相关订单号。</p>
                                    <p>3.非质量问题的退换，需要产品包装完好、不影响二次销售，且需用户承担退换运费；非质量问题退换次数仅限一次。</p>
                                    <p>4.因质量问题办理退换服务，在邮寄商品时，用户须将快递发票一并寄回，此过程中产生的相关运费凭快递发票最高可报销15元/单。质量问题的退换，用户在线咨询，上传凭证，经确认后寄回检测，然后进入相关流程。</p>
                              </div>
                        </div>
      			   </div>
                </div>
            </div>
          </div>
          
          
          <div class="pro-detailed-right">
          	<div class="pro-detailed-right-title"><h3>可能感兴趣</h3></div>
            <div class="pro-detailed-right-c">
            	<ul class="browse-list">
                	<li><a href="#"><img src="public/picture/g01.jpg" width="80" height="80" /></a></li>
                    <li><a href="#"><img src="public/picture/01.jpg" width="80" height="80" /></a></li>
                    <li><a href="#"><img src="public/picture/00.jpg" width="80" height="80" /></a></li>
                    <li><a href="#"><img src="public/picture/4li.jpg" width="80" height="80" /></a></li>
                </ul>
            	<h3>买过的人还买了</h3>
            	<ul class="buy-list">
                	<li><a href="#"><img src="public/picture/g01.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/01.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/00.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/big-pro2.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                    <li><a href="#"><img src="public/picture/4li.jpg" width="80" height="80" /></a><p><strong><a href="#">小米120cm USB数据线</a></strong><i>15元</i></p></li>
                </ul>
            </div>
          </div>
      </div>
    </div>
 <%@ include file="../common/footer.jsp"%>   
