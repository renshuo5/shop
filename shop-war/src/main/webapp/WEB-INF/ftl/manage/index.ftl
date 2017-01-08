<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>商城</title>
    <link rel="stylesheet" href="${rc.contextPath}/s/css/reset.css"/>
    <link rel="stylesheet" href="${rc.contextPath}/s/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${rc.contextPath}/s/css/style.css"/>
</head>
<body>
    <!--scroll-head-->
    <div class="scroll-head"></div>
    <@component.header />
    <!--content-top-->
    <div class="content-top">
        <!--sidebar-->
        <div class="sidebar">
            <h3>商品服务分类</h3>
            <!--sidebar-info-->
            <div class="sidebar-info">
                <ul class="side-li">
                	<#list cataList as em>
                    	<li class="s_${em_index+1}"><h3>${em.name}<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    </#list>
                    <#--
                    <li class="s_2"><h3>鞋包配饰<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_3"><h3>运动户外<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_4"><h3>珠宝手表<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_5"><h3>手机数码<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_6"><h3>家电办公<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_7"><h3>护肤彩妆<span class="fa fa-angle-right fa-loc"></span></h3>v</li>
                    <li class="s_8"><h3>母婴用品<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_9"><h3>家纺居家<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_10"><h3>家具建材<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_11"><h3>美食特产<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_12"><h3>日用百货<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_13"><h3>汽车摩托<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_14"><h3>文化娱乐<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_15"><h3>本地生活<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    <li class="s_16"><h3>虚拟服务<span class="fa fa-angle-right fa-loc"></span></h3></li>
                    -->
                </ul>
                <!--hidden-li-box-->
                <ul class="hiden-box">
                <#list cataList as em>
                    <li data-hidden="li" id="hiden-${em_index+1}">
                        <div class="hidden-title">
                            <a href="#">淘宝女人</a><span class="right-box"><i class="fa fa-angle-right"></i></span>
                            <a href="#">最in女装</a><span class="right-box"><i class="fa fa-angle-right"></i></span>
                            <a href="#">淘宝男人</a><span class="right-box"><i class="fa fa-angle-right"></i></span>
                            <a href="#">女人搭配</a><span class="right-box"><i class="fa fa-angle-right"></i></span>
                        </div>
                    	<div class="sub-nav-right">
	                		<#list em.children as child>
	                        	<#if em.id=child.parentId> 
	                            <div class="cell-box">
	                                <h1>${child.name}</h1>
	                                <div class="a-box">
	                                <#list child.children as detail>
	                                	<#if detail.parentId == child.id >
	                                    <a href="${rc.contextPath}/product/catalog/${detail.id}">${detail.name}</a><span>|</span>
	                                    </#if>
	                                </#list>
	                                </div>
	                            </div>
	                            </#if>
	                        </#list>
                        </div>
                        <#--
                        <div class="sub-nav-left">
                            <div class="cell-box">
                                <h1>印记女装</h1>
                                <div class="a-box">
                                    <a href="#">连衣裙</a><span>|</span>
                                    <a href="#">裤子</a><span>|</span>
                                    <a href="#">小西装</a><span>|</span>
                                    <a href="#">长袖村上</a><span>|</span>
                                    <a href="#" class="orange">春季外套</a>
                                    <a href="#">郑志山</a><span>|</span>
                                    <a href="#">毛衣</a><span>|</span>
                                    <a href="#">长袖T恤</a><span>|</span>
                                    <a href="#">唯一</a><span>|</span>
                                    <a href="#">雪绒钱</a><span>|</span>
                                    <a href="#">大地亏</a>
                                    <a href="#">半身全</a><span>|</span>
                                    <a href="#">风衣</a><span>|</span>
                                    <a href="#">类似雪纺</a><span>|</span>
                                    <a href="#">毛衣外套</a><span>|</span>
                                    <a href="#">棒球服</a>
                                    <a href="#">牛仔装</a><span>|</span>
                                    <a href="#">礼服</a><span>|</span>
                                    <a href="#">婚纱</a><span>|</span>
                                    <a href="#">大妈</a><span>|</span>
                                    <a href="#">Zara</a><span>|</span>
                                    <a href="#">挨个</a>
                                </div>
                            </div>
                        </div>
                        -->
                    </li>
                    </#list>
                </ul>
            </div>
        </div>
        <!--right-con-->
        <div class="right-con">
            <div class="nav">
                <a id="spe-a1" href="#">天猫</a>
                <a id="spe-a2" href="#">聚划算</a>
                <a id="spe-a3" href="#">二手</a>
                <span class="line-a">|</span>
                <a href="#">拍卖</a>
                <a href="#">一淘</a>
                <a href="#">电器城</a>
                <a href="#">Hitao粉妆</a>
                <a href="#">旅行</a>
                <a href="#">云手机</a>
                <a href="#">特色中国</a>
                <img style="cursor: pointer" src="${rc.contextPath}/s/img/ad.gif" />
                <span class="keep-a" href="#"><a href="#">消费者保障</a></span>
            </div>
            <!--show-box-->
            <div class="show-box">
                <!--content-->
                <div class="content">
                    <ul class="imgBox">
                        <li><a href="#"><img src="${rc.contextPath}/s/img/1.jpg"></a></li>
                        <li><a href="#"><img src="${rc.contextPath}/s/img/2.jpg"></a></li>
                        <li><a href="#"><img src="${rc.contextPath}/s/img/3.jpg"></a></li>
                        <li><a href="#"><img src="${rc.contextPath}/s/img/4.jpg"></a></li>
                        <li><a href="#"><img src="${rc.contextPath}/s/img/5.jpg"></a></li>
                    </ul>
                    <div class="currentNum">
                        <span class="imgNum mark-color"></span>
                        <span class="imgNum"></span>
                        <span class="imgNum"></span>
                        <span class="imgNum"></span>
                        <span class="imgNum"></span>
                    </div>
                    <div class="control to-left"><i class="fa fa-angle-left"></i></div>
                    <div class="control to-right"><i class="fa fa-angle-right"></i></div>
                </div>
               <a style="float: left" href="#"><img src="${rc.contextPath}/s/img/6.6.jpg" /></a>
                <!--content-down-->
                <div class="content-down">
                    <ul class="imgBox1">
                        <li>
                            <a href="#"><img src="${rc.contextPath}/s/img/01.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/02.jpg" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/03.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/04.png" /></a>
                        </li>
                        <li>
                            <a href="#"><img src="${rc.contextPath}/s/img/01.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/02.jpg" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/03.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/04.png" /></a>
                        </li>
                        <li>
                            <a href="#"><img src="${rc.contextPath}/s/img/01.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/02.jpg" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/03.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/04.png" /></a>
                        </li>
                        <li>
                            <a href="#"><img src="${rc.contextPath}/s/img/01.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/02.jpg" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/03.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/04.png" /></a>
                        </li>
                        <li>
                            <a href="#"><img src="${rc.contextPath}/s/img/01.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/02.jpg" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/03.png" /></a>
                            <a href="#"><img src="${rc.contextPath}/s/img/04.png" /></a>
                        </li>
                    </ul>
                    <div class="currentNum-down">
                        <span class="imgNum1 mark-color"></span>
                        <span class="imgNum1"></span>
                        <span class="imgNum1"></span>
                        <span class="imgNum1"></span>
                        <span class="imgNum1"></span>
                    </div>
                    <div class="control1 to-left1"><i class="fa fa-angle-left"></i></div>
                    <div class="control1 to-right1"><i class="fa fa-angle-right"></i></div>
                </div>
                <a style="float: left" href="#"><img src="${rc.contextPath}/s/img/15.jpg" /></a>
            </div>
            <!--right-sidbar-->
            <div class="right-sidebar">
                <div class="info-box">
                    <ul class="tab-nav">
                        <li id="li-1" class="li-nav li-nav-hover li-border">公告</li>
                        <li id="li-2" class="li-nav">规则</li>
                        <li id="li-3" class="li-nav">论坛</li>
                        <li id="li-4" class="li-nav">安全</li>
                        <li style="border-right: none" id="li-5" class="li-nav">公益</li>
                    </ul>
                    <div id="box-1" style="display: block" class="hiddenBox">

                        <a href="#">淘宝2014:开放多样性</a>
                        <a href="#">舌尖中国二季 天猫首尝</a>
                        <a href="#">阿里通信自建计费系统</a>
                        <a href="#">来往首届419宇宙节</a>
                    </div>
                    <div id="box-2" class="hiddenBox">

                        <a href="#">[重要] 淘点点规范</a>
                        <a href="#">[重要] 虚假交易新规&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
                        <a href="#">[重要] 新增认证规则</a>
                        <a href="#">[重要] 购买刀具实名</a>
                    </div>
                    <div id="box-3" class="hiddenBox">
                        <a href="#">[优化] 称谓滥用将整改</a>
                        <a href="#">[热点] 如何赢取新商机</a>
                        <a href="#">[话题] 同城交易避处罚</a>
                        <a href="#">[聚焦] 新消保法全解析</a>
                    </div>
                    <div id="box-4" class="hiddenBox">

                        <a href="#">个人重要信息要管牢！</a>
                        <a href="#">卖家防范红包欺诈提醒</a>
                        <a href="#">更换收货地址的陷阱！</a>
                        <a href="#">注意骗子的技术升级了</a>
                    </div>
                    <div id="box-5" class="hiddenBox">
                        <a href="#">[优化] 称谓滥用将整改</a>
                        <a href="#">[热点] 如何赢取新商机</a>
                        <a href="#">[话题] 同城交易避处罚</a>
                        <a href="#">[聚焦] 新消保法全解析</a>
                    </div>
                </div>
                <!--user-info-->
                <div class="user-info">
                    <div class="gold-top">
                        <img width="62px" height="62px" src="${rc.contextPath}/s/img/user-head.jpg" />
                        <div class="inner-user">
                            <h3>Hi 天之狼2011</h3>
                            <a class="get-gold" href="#"><span class="glods"></span><span class="get-money">领淘金币抵钱</span></a>
                            <a class="vip-home" href="#">会员俱乐部</a>
                        </div>
                    </div>
                    <!--login-->
                    <div class="login">
                        <a class="login-btn" href="#"><i class="fa fa-user fa-user-loc"></i>登陆</a>
                        <a class="login-btn free" href="#">免费注册</a>
                        <a class="login-btn free" href="#">免费开店</a>
                    </div>
                </div>
                <!--service-->
                <div class="service">
                    <h3>便民服务</h3>
                    <div id="service-1" class="service-cell service-z">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/phone.png" /></h5>
                        <h6>话费</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div id="service-2" class="service-cell service-z">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/game.png" /></h5>
                        <h6>游戏</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div id="service-3" class="service-cell service-z">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/plane.png" /></h5>
                        <h6>旅行</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div id="service-4" class="service-cell service-z">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/save.png" /></h5>
                        <h6>保险</h6>
                        <i class="fa fa-angle-down"></i>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/18.png" /></h5>
                        <h6>彩票</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/move.png" /></h5>
                        <h6>电影</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/eat.png" /></h5>
                        <h6>点外卖</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/money.png" /></h5>
                        <h6>理财</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/book.png" /></h5>
                        <h6>电子书</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/miusc.png" /></h5>
                        <h6>音乐</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/bag.png" /></h5>
                        <h6>水电煤</h6>
                    </div>
                    <div class="service-cell">
                        <h5 class="service-i"><img src="${rc.contextPath}/s/img/....png" /></h5>
                        <h6>请期待</h6>
                    </div>
                </div>
                <!--service-box-->
                <div id="service-box-1" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                        <input class="tell-num" type="text"  placeholder="手机号、固话号"/>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <input class="money-in" type="text" value="50" />
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
                <div id="service-box-2" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                        <input class="tell-num" type="text"  placeholder="手机号、固话号"/>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <input class="money-in" type="text" value="50" />
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
                <div id="service-box-3" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                        <input class="tell-num" type="text"  placeholder="手机号、固话号"/>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <input class="money-in" type="text" value="50" />
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
                <div id="service-box-4" class="service-box">
                    <div class="service-head">
                        <a href="#">话费充值</a>
                        <a href="#">流量充值</a>
                        <span class="fa fa-times"></span>
                    </div>
                    <div class="feihua-in">
                        <span>号码</span>
                        <input class="tell-num" type="text"  placeholder="手机号、固话号"/>
                    </div>
                    <div class="feihua-in">
                        <span>面值</span>
                        <input class="money-in" type="text" value="50" />
                        <span class="fa fa-angle-down sel-money"></span>
                    </div>
                    <div class="gary-text"><span>售价&nbsp;￥&nbsp;</span><span class="orange">49-49.8</span></div>
                    <div style="margin-top: 10px">
                        <a href="#" class="now-chongzhi">立即充值</a>
                        <a href="#" class="now-chongzhi dingqi">定期充值</a>
                        <a href="#">3G急速上网卡</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--main-->
    <div class="sub-nav">
        <input type="button" class="more-btn" value="更多"/>
        <!--sub-nav-cell-->
        <div class="sub-nav-cell">
            <h3 class="orange">主题市场</h3>
            <ul class="sub-nav-box">
                <li><a href="#">爱美女人</a></li>
                <li><a href="#">品质男人</a></li>
                <li><a href="#">淘宝二手</a></li>
                <li><a href="#">全球购</a></li>
                <li><a href="#">品牌街</a></li>
                <li><a href="#">汽车生活</a></li>
                <li><a href="#">花嫁新娘</a></li>
                <li><a href="#">孕婴童</a></li>
                <li><a href="#">同城便民</a></li>
                <li><a href="#">爱么装</a></li>
                <li><a href="#">运动户外</a></li>
                <li><a href="#">家用电器</a></li>
                <li><a href="#">狠爱</a></li>
                <li><a href="#">网络游戏</a></li>
                <li><a href="#">潮流设计</a></li>
                <li><a href="#">淘宝星愿</a></li>
            </ul>
        </div>
        <div class="sub-nav-cell">
            <h3 class="green-sp">特色购物</h3>
            <ul class="sub-nav-box sp">
                <li><a href="#">爱美女人</a></li>
                <li><a href="#">品质男人</a></li>
                <li><a href="#">淘宝二手</a></li>
                <li><a href="#">全球购</a></li>
                <li><a href="#">品牌街</a></li>
                <li><a href="#">汽车生活</a></li>
                <li><a href="#">花嫁新娘</a></li>
                <li><a href="#">孕婴童</a></li>
                <li><a href="#">同城便民</a></li>
                <li><a href="#">爱么装</a></li>
                <li><a href="#">运动户外</a></li>
                <li><a href="#">家用电器</a></li>
                <li><a href="#">狠爱</a></li>
                <li><a href="#">网络游戏</a></li>
                <li><a href="#">潮流设计</a></li>
                <li><a href="#">淘宝星愿</a></li>

            </ul>
        </div>
        <div class="sub-nav-cell">
            <h3 class="red-now">当前热点</h3>
            <ul class="sub-nav-box now">
                <li><a href="#">爱美女人</a></li>
                <li><a href="#">品质男人</a></li>
                <li><a href="#">淘宝二手</a></li>
                <li><a href="#">全球购</a></li>
                <li><a href="#">品牌街</a></li>
                <li><a href="#">汽车生活</a></li>
                <li><a href="#">花嫁新娘</a></li>
                <li><a href="#">孕婴童</a></li>
                <li><a href="#">同城便民</a></li>
                <li><a href="#">爱么装</a></li>
                <li><a href="#">运动户外</a></li>
                <li><a href="#">家用电器</a></li>
                <li><a href="#">狠爱</a></li>
                <li><a href="#">网络游戏</a></li>
                <li><a href="#">潮流设计</a></li>
                <li><a href="#">淘宝星愿</a></li>

            </ul>
        </div>
        <div class="sub-nav-cell">
            <h3 class="blue-more">更多精彩</h3>
            <ul class="sub-nav-box more">
                <li><a href="#">爱美女人</a></li>
                <li><a href="#">品质男人</a></li>
                <li><a href="#">淘宝二手</a></li>
                <li><a href="#">全球购</a></li>
                <li><a href="#">品牌街</a></li>
                <li><a href="#">汽车生活</a></li>
                <li><a href="#">花嫁新娘</a></li>
                <li><a href="#">孕婴童</a></li>
                <li><a href="#">同城便民</a></li>
                <li><a href="#">爱么装</a></li>
                <li><a href="#">运动户外</a></li>
                <li><a href="#">家用电器</a></li>
                <li><a href="#">狠爱</a></li>
                <li><a href="#">网络游戏</a></li>
                <li><a href="#">潮流设计</a></li>
                <li><a href="#">淘宝星愿</a></li>
            </ul>
        </div>
    </div>
    <!--main-->
    <div class="main">
        <div class="main-left">
            <div class="main-title">
                <h1>万能的淘宝<span class="show-title">下面有30个特色市场等你来逛哦！</span></h1>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="product-box">
                <div class="inner-info">
                    <div>
                        <span class="line-f40">|</span>
                        <span class="text-title">女人爱搭配</span>
                        <span class="share-weitao">
                            <span class="line-f40">+</span>
                            <a href="#">关注到微淘</a>
                        </span>
                    </div>
                    <div class="inner-left">
                        <img src="${rc.contextPath}/s/img/show1.png" />
                        <h1><a href="#">有到一年雪绒坊</a></h1>
                        <span>优雅的温柔</span>
                    </div>
                    <div class="inner-right">
                        <div>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/shooes.jpg" />
                                <p>春夏美鞋</p>
                            </a>
                            <a href="#">
                                <img src="${rc.contextPath}/s/img/c.gif" />
                                <p>春季亮色搭</p>
                            </a>
                        </div>
                        <table class="tab-inner">
                            <tr><td><a href="#">潮流女装</a></td>
                                <td><a href="#">小个子美搭</a></td>
                            </tr>
                            <tr><td><a href="#">胖MM显廋</a></td>
                                <td><a href="#">复古多包袋</a></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-right">
            <div class="time-go">
                <div class="time-cell">
                    <h1><a href="#" class="text_shadow">我收藏的店铺上新</a><span class="now-news">更新<span class="">3</span></span></h1>
                    <div class="inner-show">
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner1.png">
                            <p class="price-info">￥118.00</p>
                        </a>
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner2.png">
                            <p>￥118.00</p>
                        </a>
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner3.png">
                            <p>￥118.00</p>
                        </a>
                        <h3><a href="$">更多店铺上新</a><i class="fa fa-angle-right"></i></h3>
                    </div>
                </div>
                <div class="time-cell">
                    <h1><a href="#" class="text_shadow">你可能新欢的店铺推荐</a></h1>
                    <div class="inner-show">
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner1.png">
                            <p class="price-info">￥118.00</p>
                        </a>
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner2.png">
                            <p>￥118.00</p>
                        </a>
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner3.png">
                            <p>￥118.00</p>
                        </a>
                        <h3><a href="$">更多店铺上新</a><i class="fa fa-angle-right"></i></h3>
                    </div>
                </div>
                <div class="time-cell">
                    <h1><a href="#" class="text_shadow">我的足迹</a></h1>
                    <div class="inner-show">
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner1.png">
                            <p class="price-info">￥118.00</p>
                        </a>
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner2.png">
                            <p>￥118.00</p>
                        </a>
                        <a href="#">
                            <img src="${rc.contextPath}/s/img/inner3.png">
                            <p>￥118.00</p>
                        </a>
                        <h3><a href="#">更多店铺上新</a><i class="fa fa-angle-right"></i></h3>
                    </div>
                </div>
                <!--goto-see-->
                <h1 class="goto-see text_shadow">微淘动态<a href="#">去广场看看</a></h1>
                <!--dynamic动态-->
                <div class="dynamic">
                    <h3 class="text_shadow">天猫美妆<span>04-19 10:00</span><span class="follow">√&nbsp;<a href="#">已关注</a>&nbsp;|&nbsp;<a href="#">取消</a></span></h3>
                    <p>【美妆课堂】“羽”你相约步步惊情 若曦四爷再续... <a href="#" style="color: #5684bc;">查看全文</a></p>
                    <a href="#"><img width="80px" height="80px" src="${rc.contextPath}/s/img/dynamic1.jpg"></a>
                    <a href="#"><img width="80px" height="80px" src="${rc.contextPath}/s/img/dynamic2.jpg"></a>
                    <a href="#"><img width="80px" height="80px" src="${rc.contextPath}/s/img/dynamic3.jpg"></a>
                    <h6><a href="#">评论(26)</a></h6>
                    <h4><a href="#">更多动态&nbsp;</a><i class="fa fa-angle-right"></i></h4>
                    <div class="arrow"></div>
                </div>
                <div class="dynamic">
                    <h3 class="text_shadow">天猫美妆<span>04-19 10:00</span><span class="follow">√&nbsp;<a href="#">已关注</a>&nbsp;|&nbsp;<a href="#">取消</a></span></h3>
                    <p>【美妆课堂】“羽”你相约步步惊情 若曦四爷再续... <a href="#" style="color: #5684bc;">查看全文</a></p>
                    <a href="#"><img width="80px" height="80px" src="${rc.contextPath}/s/img/dynamic1.jpg"></a>
                    <a href="#"><img width="80px" height="80px" src="${rc.contextPath}/s/img/dynamic2.jpg"></a>
                    <a href="#"><img width="80px" height="80px" src="${rc.contextPath}/s/img/dynamic3.jpg"></a>
                    <h6><a href="#">评论(26)</a></h6>
                    <h4><a href="#">更多动态&nbsp;</a><i class="fa fa-angle-right"></i></h4>
                    <div class="arrow"></div>
                </div>
                <!--circle-big-->
                <div class="circle-new">新</div>
                <div class="circle-go">逛</div>
                <!--time-circle-->
                <div class="time-circle"></div>
                <div class="time-circle bottom-circle"></div>
            </div>
            <!--fix-right-->
            <div class="fix-right-sub">
                <!--gogo-choose-->
                <div class="gogo-choose">
                    <h1 class="text_shadow">逛逛-精选</h1>
                    <div class="sub-show">
                        <div class="content-sub">
                            <ul class="imgBox2">
                                <li><a href="#"><img src="${rc.contextPath}/s/img/sub1.jpg"></a></li>
                                <li><a href="#"><img src="${rc.contextPath}/s/img/sub2.jpg"></a></li>
                                <li><a href="#"><img src="${rc.contextPath}/s/img/sub3.jpg"></a></li>
                            </ul>
                            <div class="currentNum-sub">
                                <span class="imgNum2 mark-color"></span>
                                <span class="imgNum2"></span>
                                <span class="imgNum2"></span>
                            </div>

                            <div class="control2 to-left2"><i class="fa fa-angle-left"></i></div>
                            <div class="control2 to-right2"><i class="fa fa-angle-right"></i></div>

                        </div>
                        <div class="sub-right">
                            <img src="${rc.contextPath}/s/img/hand.jpg" />
                            <img src="${rc.contextPath}/s/img/aaaaa.jpg" />
                        </div>

                    </div>
                    <p class="text-show">
                        <span><span class="orange">[雪纺]&nbsp;</span><a href="#">无袖雪纺背心 巧减龄</a></span>
                        <span>[配饰]&nbsp;<a href="#">萌！美妙星空配饰</a></span>
                        <span>[家装]&nbsp;<a href="#">29平小户竟啥都有！</a></span>
                        <span><span class="orange">[包包]&nbsp;</span><a href="#">浪漫蕾丝包 淑女范</a></span>
                    </p>
                    <!--just-look-->
                    <div class="just-look">
                        <a href="#"><img src="${rc.contextPath}/s/img/female.png"><h6>超美公主装搭配</h6></a>
                        <a href="#"><img src="${rc.contextPath}/s/img/home.jpg"><h6>小户型这样装</h6></a>
                        <a href="#"><img src="${rc.contextPath}/s/img/shoes.jpg"><h6>闪耀水钻凉鞋</h6></a>
                    </div>
                    <p class="text-show">
                        <span>[雪纺]&nbsp;<a href="#">无袖雪纺背心 巧减龄</a></span>
                        <span><span class="orange">[配饰]</span>&nbsp;<a href="#">萌！美妙星空配饰</a></span>
                        <span><span class="orange">[家装]</span>&nbsp;<a href="#">29平小户竟啥都有！</a></span>
                        <span>[包包]&nbsp;<a href="#">浪漫蕾丝包 淑女范</a></span>
                    </p>
                    <div class="just-look">
                        <a href="#"><img src="${rc.contextPath}/s/img/female.png"><h6>超美公主装搭配</h6></a>
                        <a href="#"><img src="${rc.contextPath}/s/img/home.jpg"><h6>小户型这样装</h6></a>
                        <a href="#"><img src="${rc.contextPath}/s/img/shoes.jpg"><h6>闪耀水钻凉鞋</h6></a>
                    </div>
                    <!--just-text-->
                    <ul class="jst-text">
                        <li><em class="orange">1</em><a href="">85后小夫妻！3室2厅温馨窝</a><span>jjwwlove99</span></li>
                        <li><em class="orange">2</em><a href="">糖果色豆豆鞋 甜美减龄</a><span>qh100330</span></li>
                        <li><em class="orange">3</em><a href="">小美妞可爱装扮 吸睛百分百</a><span>琉光易彩</span></li>
                        <li><em>4</em><a href="">显瘦小脚休闲裤 瘦腿利器</a><span>vnc9999</span></li>
                    </ul>
                </div>
                <!--last-->
                <div class="last-box">
                    <img src="${rc.contextPath}/s/img/last1.png" />
                    <img src="${rc.contextPath}/s/img/last2.jpg" />
                </div>
            </div>

        </div>
    </div>
    <!--main-bottom-->
    <div class="main-bottom">
        <div class="sub-bottom-nav">
            <h1>热卖单品</h1>
           <div class="sub-nav-info">
               <a href="#">s5皮套</a>|
               <a href="#">Bose</a>|
               <a href="#">春秋</a>|
               <a href="#">定制</a>|
               <a href="#">高腰裤</a>|
               <a href="#">打底裙</a>|
               <a href="#">文胸</a>|
               <a href="#">春装</a>|
               <a href="#">男鞋</a>|
               <a href="#">iphone</a>|
               <a href="#">婚纱</a>|
               <a href="#">男牛仔</a>|
               <a href="#">女T恤</a>|
               <a href="#">针织衫</a>|
               <a href="#">客厅灯</a>|
               <a href="#">巧克力</a>|
               <a href="#">更多</a>
           </div>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
        <div class="single-sale">
            <a href="#">
                <img src="${rc.contextPath}/s/img/sing1.jpg" />
                <h3>褶皱立领雪纺衫</h3>
            </a>
            <p><span class="orange">￥&nbsp;</span><span class="orange">129.00</span><span class="send-free">包邮</span></p>
            <p class="gary-text"><span>￥&nbsp;</span><span><del>399.00</del></span>&nbsp;|&nbsp;<span>月消29件</span></p>
        </div>
    </div>
    <!--ad-->
    <div class="ad">
        <img src="${rc.contextPath}/s/img/ad.jpg" />
        <img src="${rc.contextPath}/s/img/ad1.jpg" />
    </div>
    <!--help-->
    <div class="help">
        <div class="help-info">
            <h1><img src="${rc.contextPath}/s/img/help4.png"><span class="help-text">消费者保障</span></h1>
            <a class="help-a" href="#">保障范围</a>
            <a class="help-a" href="#">退货退款流程</a>
            <a class="help-a" href="#">服务中心</a>
            <a class="help-a" href="#">更多特色服务</a>
        </div>
        <div class="help-info">
            <h1><img src="${rc.contextPath}/s/img/help1.png"><span class="help-text">新手上路</span></h1>
            <a class="help-a" href="#">新手专区</a>
            <a class="help-a"v href="#">消费警示</a>
            <a class="help-a" href="#">交易安全</a>
            <a class="help-a margin-r" href="#">24小时在线帮助</a>
        </div>
        <div class="help-info">
            <h1><img src="${rc.contextPath}/s/img/help2.png"><span class="help-text">付款方式</span></h1>
            <a class="help-a-litter" href="#">支付宝快捷支付</a>
            <a class="help-a-litter" href="#">支付宝卡（现金）付款</a>
            <a class="help-a-litter" href="#">支付宝余额付款</a>
            <a class="help-a" href="#">货到付款</a>
        </div>
        <div class="help-info">
            <h1><img src="${rc.contextPath}/s/img/help3.png"><span class="help-text">淘宝特色</span></h1>
            <a class="help-a" href="#">淘宝指数</a>
            <a class="help-a" href="#">淘公仔</a>
            <a class="help-a" href="#">手机淘宝</a>
            <a class="help-a" href="#">旺信</a>
        </div>
    </div>
    <!--footer-->
    <div class="footer">
        <div class="footer-right">
            <div class="footer-nav">
                <a href="#">阿里巴巴集团</a>|
                <a href="#">阿里巴巴国际站</a>|
                <a href="#">阿里巴巴中国站</a>|
                <a href="#">全球速卖通</a>|
                <a href="#">淘宝网</a>|
                <a href="#">天猫</a>|
                <a href="#">聚划算</a>|
                <a href="#">一淘</a>|
                <a href="#">阿里妈妈</a>|
                <a href="#">阿里云计算</a>|
                <a href="#">云OS</a>|
                <a href="#">万网</a>|
                <a href="#">支付宝</a>|
                <a href="#">来往</a>
            </div>
            <div class="about-tao">
                <a href="#">关于淘宝</a>
                <a href="#">合作伙伴</a>
                <a href="#">营销中心</a>
                <a href="#">廉正举报</a>
                <a href="#">联系客服</a>
                <a href="#">开放平台</a>
                <a href="#">诚征英才</a>
                <a href="#">联系我们</a>
                <a href="#">网站地图</a>
                <a href="#">法律声明</a>
                <span class="gary-text">&copy; 2014 Taobao.com 版权所有</span>
            </div>
            <p class="gary-text"><span>网络文化经营许可证：文网文[2010]040号</span>|<span>增值电信业务经营许可证：浙B2-20080224-1</span>|<span>信息网络传播视听节目许可证：1109364号</span></p>
            <div class="some-info">
                <img src="${rc.contextPath}/s/img/some.png" />
            </div>
        </div>
        <div class="tao-man">
            <img src="${rc.contextPath}/s/img/tao-man.png" />
        </div>
    </div>

    <!--backtoTop1-->
    <!--兼容所有现代浏览器同时包括 ie6/7/8/9 （ie6会有一点点抖动）-->
    <div class="backtoTop" id="backToTop1">
        <div id="backToTop-up" class="up-back"><i class="fa fa-angle-up"></i></div>
        <div id="backToTop-down" class="down-back"><i class="fa fa-angle-down"></i></div>
    </div>


    <script src="${rc.contextPath}/s/js/jquery_1.9.js"></script>
    <script src="${rc.contextPath}/s/js/main.js"></script>
    <script src="${rc.contextPath}/s/js/img-show.js"></script>
</body>
</html>