<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<title>商品详细页面</title>
<link rel="stylesheet" href="${rc.contextPath}/s/css/base.css" type="text/css" />
<link rel="stylesheet" href="${rc.contextPath}/s/css/shop_common.css" type="text/css" />
<link rel="stylesheet" href="${rc.contextPath}/s/css/shop_list.css" type="text/css" />
<link rel="stylesheet" href="${rc.contextPath}/s/css/shop_goods.css" type="text/css" />
<script type="text/javascript" src="${rc.contextPath}/s/js/jquery_1.9.js"></script>
<script type="text/javascript" src="${rc.contextPath}/s/js/shop_goods.js"></script>
<script type="text/javascript" src="${rc.contextPath}/s/js/shop_goods_tab.js"></script>
	<link rel="stylesheet" href="${rc.contextPath}/s/css/style.css"/>
	<!-- 京东商品展示 -->
	<link rel="stylesheet" href="${rc.contextPath}/s/css/shop_goodPic.css" type="text/css" />
	<script type="text/javascript" src="${rc.contextPath}/s/js/shop_goodPic_base.js"></script>
	<script type="text/javascript" src="${rc.contextPath}/s/js/lib.js"></script>
	<script type="text/javascript" src="${rc.contextPath}/s/js/163css.js"></script>
</head>
<body>
	<div class="scroll-head"></div>
	<@component.header />
	<div class="clear"></div>
	<!-- 面包屑 注意首页没有 -->
	<div class="shop_hd_breadcrumb">
		<strong>当前位置：</strong> <span> <a href="">首页</a>&nbsp;›&nbsp; <a
			href="">商品分类</a>&nbsp;›&nbsp; <a href="">男装女装</a>&nbsp;›&nbsp; <a
			href="">男装</a>
		</span>
	</div>
	<div class="clear"></div>
	<!-- 面包屑 End -->
	<!-- Goods Body -->
	<div class="shop_goods_bd clear">

		<!-- 商品展示 -->
		<div class="shop_goods_show">
			<div class="shop_goods_show_left">
				<!-- 京东商品展示 -->
				<div id="preview">
					<div class=jqzoom id="spec-n1" onClick="window.open('/')">
						<IMG height="350" src="${rc.contextPath}/s/images/img04.jpg" jqimg="${rc.contextPath}/s/images/img04.jpg"
							width="350">
					</div>
					<div id="spec-n5">
						<div class=control id="spec-left">
							<img src="${rc.contextPath}/s/images/left.gif" />
						</div>
						<div id="spec-list">
							<ul class="list-h">
								<li><img src="${rc.contextPath}/s/images/img01.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img02.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img03.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img04.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img01.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img02.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img03.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img04.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img01.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img02.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img03.jpg"></li>
								<li><img src="${rc.contextPath}/s/images/img04.jpg"></li>
							</ul>
						</div>
						<div class=control id="spec-right">
							<img src="${rc.contextPath}/s/images/right.gif" />
						</div>
					</div>
				</div>

				<SCRIPT type=text/javascript>
					$(function() {
						$(".jqzoom").jqueryzoom({
							xzoom : 400,
							yzoom : 400,
							offset : 10,
							position : "right",
							preload : 1,
							lens : 1
						});
						$("#spec-list").jdMarquee({
							deriction : "left",
							width : 350,
							height : 56,
							step : 2,
							speed : 4,
							delay : 10,
							control : true,
							_front : "#spec-right",
							_back : "#spec-left"
						});
						$("#spec-list img").bind("mouseover", function() {
							var src = $(this).attr("src");
							$("#spec-n1 img").eq(0).attr({
								src : src.replace("\/n5\/", "\/n1\/"),
								jqimg : src.replace("\/n5\/", "\/n0\/")
							});
							$(this).css({
								"border" : "2px solid #ff6600",
								"padding" : "1px"
							});
						}).bind("mouseout", function() {
							$(this).css({
								"border" : "1px solid #ccc",
								"padding" : "2px"
							});
						});
					})
				</SCRIPT>
				<!-- 京东商品展示 End -->

			</div>
			<div class="shop_goods_show_right">
				<ul>
					<li><strong style="font-size: 14px; font-weight: bold;">${entity.name}</strong></li>
					<li><label>价格：</label> <span><strong>${entity.price}<input type="hidden" value="${entity.price}" id="good_price" class="good_price" /></strong>元</span></li>
					<li><label>卖点：</label> <span>${entity.sellPoint}</span></li>
					<li><label>运费：</label> <span>卖家承担运费</span></li>
					<li><label>累计售出：</label> <span>99件</span></li>
					<li><label>评价：</label> <span>0条评论</span></li>
					<li class="goods_num">
					<label>购买数量：</label> <span>
					<a class="good_num_jian"  id="good_num_jian" href="javascript:void(0);"></a>
					<input type="text" value="1" id="good_nums" class="good_nums" />
					<a href="javascript:void(0);" onclick="totalPrice();" id="good_num_jia" class="good_num_jia"></a>(当前库存${entity.num}件)</span></li>
					<li class="goods_num"><label>商品总价：</label> &yen;<span id="good_count"></span></li>
					<li style="padding: 20px 0;">
					<label>&nbsp;</label> <span>
					<a href="" class="goods_sub goods_sub_gou">加入购物车</a></span>
					</li>
				</ul>
			</div>
		</div>
		<!-- 商品展示 End -->

		<div class="clear mt15"></div>
		<!-- Goods Left -->
		<div class="shop_bd_list_left clearfix">
			<!-- 左边商品分类 -->
			<div class="shop_bd_list_bk clearfix">
				<div class="title">商品分类</div>
				<div class="contents clearfix">
					<dl class="shop_bd_list_type_links clearfix">
						<dt>
							<strong>女装</strong>
						</dt>
						<dd>
							<span><a href="">风衣</a></span> <span><a href="">长袖连衣裙</a></span>
							<span><a href="">毛呢连衣裙</a></span> <span><a href="">半身裙</a></span>
							<span><a href="">小脚裤</a></span> <span><a href="">加绒打底裤</a></span>
							<span><a href="">牛仔裤</a></span> <span><a href="">打底衫</a></span> <span><a
								href="">情侣装</a></span> <span><a href="">棉衣</a></span> <span><a
								href="">毛呢大衣</a></span> <span><a href="">毛呢短裤</a></span>
						</dd>
					</dl>
				</div>
			</div>
			<!-- 左边商品分类 End -->

			<!-- 热卖推荐商品 -->
			<div class="shop_bd_list_bk clearfix">
				<div class="title">热卖推荐商品</div>
				<div class="contents clearfix">
					<ul class="clearfix">
						<li class="clearfix">
							<div class="goods_name">
								<a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a>
							</div>
							<div class="goods_pic">
								<span class="goods_price">¥ 279.00 </span><a href=""><img
									src="${rc.contextPath}/s/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a>
							</div>
							<div class="goods_xiaoliang">
								<span class="goods_xiaoliang_link"><a href="">去看看</a></span> <span
									class="goods_xiaoliang_nums">已销售<strong>99</strong>笔
								</span>
							</div>
						</li>

						<li class="clearfix">
							<div class="goods_name">
								<a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a>
							</div>
							<div class="goods_pic">
								<span class="goods_price">¥ 279.00 </span><a href=""><img
									src="${rc.contextPath}/s/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a>
							</div>
							<div class="goods_xiaoliang">
								<span class="goods_xiaoliang_link"><a href="">去看看</a></span> <span
									class="goods_xiaoliang_nums">已销售<strong>99</strong>笔
								</span>
							</div>
						</li>

						<li class="clearfix">
							<div class="goods_name">
								<a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a>
							</div>
							<div class="goods_pic">
								<span class="goods_price">¥ 279.00 </span><a href=""><img
									src="${rc.contextPath}/s/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a>
							</div>
							<div class="goods_xiaoliang">
								<span class="goods_xiaoliang_link"><a href="">去看看</a></span> <span
									class="goods_xiaoliang_nums">已销售<strong>99</strong>笔
								</span>
							</div>
						</li>

					</ul>
				</div>
			</div>
			<!-- 热卖推荐商品 -->
			<div class="clear"></div>

			<!-- 浏览过的商品 -->
			<div class="shop_bd_list_bk clearfix">
				<div class="title">浏览过的商品</div>
				<div class="contents clearfix">
					<ul class="clearfix">

						<li class="clearfix">
							<div class="goods_name">
								<a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a>
							</div>
							<div class="goods_pic">
								<span class="goods_price">¥ 279.00 </span><a href=""><img
									src="${rc.contextPath}/s/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a>
							</div>
							<div class="goods_xiaoliang">
								<span class="goods_xiaoliang_link"><a href="">去看看</a></span> <span
									class="goods_xiaoliang_nums">已销售<strong>99</strong>笔
								</span>
							</div>
						</li>

						<li class="clearfix">
							<div class="goods_name">
								<a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a>
							</div>
							<div class="goods_pic">
								<span class="goods_price">¥ 279.00 </span><a href=""><img
									src="${rc.contextPath}/s/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a>
							</div>
							<div class="goods_xiaoliang">
								<span class="goods_xiaoliang_link"><a href="">去看看</a></span> <span
									class="goods_xiaoliang_nums">已销售<strong>99</strong>笔
								</span>
							</div>
						</li>

						<li class="clearfix">
							<div class="goods_name">
								<a href="">Gap经典弹力纯色长袖T恤|000891347|原价149元</a>
							</div>
							<div class="goods_pic">
								<span class="goods_price">¥ 279.00 </span><a href=""><img
									src="${rc.contextPath}/s/images/89a6d6466b00ae32d3c826b9ec639084.jpg_small.jpg" /></a>
							</div>
							<div class="goods_xiaoliang">
								<span class="goods_xiaoliang_link"><a href="">去看看</a></span> <span
									class="goods_xiaoliang_nums">已销售<strong>99</strong>笔
								</span>
							</div>
						</li>

					</ul>
				</div>
			</div>
			<!-- 浏览过的商品 -->

		</div>
		<!-- Goods Left End -->

		<!-- 商品详情 -->
		<div class="shop_goods_bd_xiangqing clearfix">
			<div class="shop_goods_bd_xiangqing_tab">
				<ul>
					<li id="xiangqing_tab_1"
						onmouseover="shop_goods_easytabs('1', '1');"
						onfocus="shop_goods_easytabs('1', '1');" onclick="return false;"><a
						href=""><span>商品详情</span></a></li>
					<li id="xiangqing_tab_2"
						onmouseover="shop_goods_easytabs('1', '2');"
						onfocus="shop_goods_easytabs('1', '2');" onclick="return false;"><a
						href=""><span>商品评论</span></a></li>
					<li id="xiangqing_tab_3"
						onmouseover="shop_goods_easytabs('1', '3');"
						onfocus="shop_goods_easytabs('1', '3');" onclick="return false;"><a
						href=""><span>商品咨询</span></a></li>
				</ul>
			</div>
			<style type="text/css">
.comment_list {
	width: 100%;
	height: auto;
	clear: both;
	margin-bottom: 20px;
	float: left;
	border-bottom: 1px dotted #cccccc;
	padding-bottom: 10px;
}

.comment_list .avatar {
	width: 50px;
	height: auto;
	margin-right: 10px;
	float: left;
}

.comment_list .avatar img {
	width: 50px;
	height: 50px;
	overflow: hidden;
}

.comment_list .avatar span {
	height: 24px;
	line-height: 24px;
	display: inline-block;
}

.comment_list_content {
	width: 700px;
	height: auto;
	float: right;
}

.comment_list_content .comment_list_content_l {
	width: 500px;
	float: left;
}

.comment_list_content_l p.tit {
	width: 100%;
	height: 24px;
	line-height: 24px;
}

.comment_list_content_l p.tit span {
	margin-right: 10px;
}

.comment_list_content_l .star i {
	width: 13px;
	height: 13px;
	display: inline-block;
	background: url(${rc.contextPath}/s/images/star0.jpg);
}

.comment_list_content_l .star i.cur {
	background: url(${rc.contextPath}/s/images/star1.jpg);
}

.comment_list_content_l p.con {
	line-height: 150%;
}

.comment_list_content .comment_list_content_r {
	width: 200px;
	float: right;
	text-align: right;
}

.comment_list_content_r a {
	height: 24px;
	line-height: 24px;
	padding: 0 8px;
	display: inline-block;
	border: 1px solid #dfdfdf;
	border-radius: 3px;
	margin-top: 30px;
	color: #333333;
}

.comment_list_content_r a:hover {
	color: #cc0000;
	text-decoration: none;
}

.comment_list_content_r a i {
	font-style: normal;
	padding: 0 5px;
	color: #cc0000;
	font-weight: bold;
}
</style>
			<div class="shop_goods_bd_xiangqing_content clearfix">
				<div id="xiangqing_content_1" class="xiangqing_contents clearfix">
					<p>商品详情----11111</p>
				</div>
				<div id="xiangqing_content_2" class="xiangqing_contents clearfix">
					<!--一条评论 开始-->
					<div class="comment_list">
						<div class="avatar">
							<img src="${rc.contextPath}/s/images/user.gif"> <span>zhang***</span>
						</div>
						<div class="comment_list_content">
							<div class="comment_list_content_l">
								<p class="tit">
									<span class="time">2015-07-24</span> <span class="star">
										<i class="cur"></i> <i></i> <i></i> <i></i> <i></i>
									</span>
								</p>
								<p class="con">裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快
									裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快
									裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快
									裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快</p>
							</div>
							<div class="comment_list_content_r">
								<a href="javascript:">有用 (<i>1</i>)
								</a> <a href="javascript:">没用 (<i>2</i>)
								</a>
							</div>
						</div>
					</div>
					<!--一条评论 结束-->

					<!--一条评论 开始-->
					<div class="comment_list">
						<div class="avatar">
							<img src="${rc.contextPath}/s/images/user.gif"> <span>zhang***</span>
						</div>
						<div class="comment_list_content">
							<div class="comment_list_content_l">
								<p class="tit">
									<span class="time">2015-07-24</span> <span class="star">
										<i class="cur"></i> <i></i> <i></i> <i></i> <i></i>
									</span>
								</p>
								<p class="con">裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快
									裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快
									裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快
									裤子很漂亮，质量也很好，穿着很合身，性价比很高的意见宝贝。值得购买，发货速度很快</p>
							</div>
							<div class="comment_list_content_r">
								<a href="javascript:">有用 (<i>1</i>)
								</a> <a href="javascript:">没用 (<i>2</i>)
								</a>
							</div>
						</div>
					</div>
					<!--一条评论 结束-->


				</div>

				<div id="xiangqing_content_3" class="xiangqing_contents clearfix">
					<p>商品自诩---3333</p>
				</div>
			</div>
		</div>
		<!-- 商品详情 End -->

	</div>
	<!-- Goods Body End -->

	<!-- Footer - wll - 2013/3/24 -->
	<div class="clear"></div>
	<div class="shop_footer">
		<div class="shop_footer_link">
			<p>
				<a href="">首页</a>| <a href="">招聘英才</a>| <a href="">广告合作</a>| <a
					href="">关于ShopCZ</a>| <a href="">关于我们</a>
			</p>
		</div>
		<div class="shop_footer_copy">
			<p>Copyright 2004-2013 itcast Inc.,All rights reserved.</p>
		</div>
	</div>
	<!-- Footer End -->

</body>
</html>