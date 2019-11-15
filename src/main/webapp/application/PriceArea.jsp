<%--
  Created by IntelliJ IDEA.
  User: 20244
  Date: 2019/10/10
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()+"/"%>">
    <title>深圳市方胜包装制品有限公司</title>
    <link rel="stylesheet" type="text/css" href="css/css_whir.css"/>
    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="scripts/html5shiv.v3.72.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var navID = "6";
        var menuID = "1";
    </script>
    <style type="text/css">
        .Banner{ background:url(uploadfiles/image/banner/Banner_other.jpg) no-repeat center;}
    </style>
</head>

<body>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/application/head.jsp" %>
<nav class="Nav">
    <nav class="MainNav">
        <ul>
            <li id="nav1"><a class="navA" href="application/index.jsp">网站首页</a></li>
            <li id="nav2"><a class="navA" href="application/product2.jsp">保护膜</a>
                <div class="subnav">
                    <div class="subnavLeft"><a href="#">
                        <img src="uploadfiles/image/img35.jpg" width="172" height="182" />
                        <p>土豪金Iphone6 plus塑胶手机套</p>
                    </a></div>
                    <dl>
                        <dt><a href="#">钢化玻璃膜</a><em>|</em><a href="#">高透膜</a><em>|</em><a href="#">防窥膜</a><em>|</em><a href="#">磨砂膜</a><em>|</em><a href="#">镜子膜</a></dt>
                        <dt><a href="#">丝印膜</a><em>|</em><a href="#">减蓝光膜</a><em>|</em><a href="#">自动修复膜</a><em>|</em><a href="#">防指纹膜</a><em>|</em><a href="#">抗冲击膜</a></dt>
                        <dt><a href="#">背贴</a><em>|</em><a href="#">3D膜</a><em>|</em><a href="#">彩色膜</a><em>|</em><a href="#">导光膜</a><em>|</em><a href="#">柔性玻璃膜</a></dt>
                        <dd class="more"><a href="#">更多产品 》》</a></dd>
                    </dl>
                    <div class="cleaar"></div>
                </div>
            </li>
            <li id="nav3"><a class="navA" href="application/product3.jsp">保护套</a>
                <div class="subnav">
                    <div class="subnavLeft"><a href="#">
                        <img src="uploadfiles/image/img35.jpg" width="172" height="182" />
                        <p>土豪金Iphone6 plus塑胶手机套</p>
                    </a></div>
                    <dl>
                        <dt><a href="#">钢化玻璃膜</a><em>|</em><a href="#">高透膜</a><em>|</em><a href="#">防窥膜</a><em>|</em><a href="#">磨砂膜</a><em>|</em><a href="#">镜子膜</a></dt>
                        <dt><a href="#">丝印膜</a><em>|</em><a href="#">减蓝光膜</a><em>|</em><a href="#">自动修复膜</a><em>|</em><a href="#">防指纹膜</a><em>|</em><a href="#">抗冲击膜</a></dt>
                        <dt><a href="#">背贴</a><em>|</em><a href="#">3D膜</a><em>|</em><a href="#">彩色膜</a><em>|</em><a href="#">导光膜</a><em>|</em><a href="#">柔性玻璃膜</a></dt>
                        <dd class="more"><a href="#">更多产品 》》</a></dd>
                    </dl>
                    <div class="cleaar"></div>
                </div>
            </li>
            <li id="nav4"><a class="navA" href="application/product1.jsp">精密模切</a>
                <div class="subnav">
                    <div class="subnavLeft"><a href="#">
                        <img src="uploadfiles/image/img35.jpg" width="172" height="182" />
                        <p>土豪金Iphone6 plus塑胶手机套</p>
                    </a></div>
                    <dl>
                        <dt><a href="#">钢化玻璃膜</a><em>|</em><a href="#">高透膜</a><em>|</em><a href="#">防窥膜</a><em>|</em><a href="#">磨砂膜</a><em>|</em><a href="#">镜子膜</a></dt>
                        <dt><a href="#">丝印膜</a><em>|</em><a href="#">减蓝光膜</a><em>|</em><a href="#">自动修复膜</a><em>|</em><a href="#">防指纹膜</a><em>|</em><a href="#">抗冲击膜</a></dt>
                        <dt><a href="#">背贴</a><em>|</em><a href="#">3D膜</a><em>|</em><a href="#">彩色膜</a><em>|</em><a href="#">导光膜</a><em>|</em><a href="#">柔性玻璃膜</a></dt>
                        <dd class="more"><a href="#">更多产品 》》</a></dd>
                    </dl>
                    <div class="cleaar"></div>
                </div>
            </li>
            <li id="nav5"><a class="navA" href="application/brand.jsp">品牌专区</a></li>
            <li id="nav6"><a class="navA" href="application/service.jsp">服务与支持</a></li>
            <li id="nav7"><a class="navA" href="application/about.jsp">关于方胜</a></li>
            <li id="nav8"><a class="navS" href="application/shopcart.jsp">购物车<strong id="J_MiniCartNum" class="h">${cart.list.size()}</strong></a></li>
        </ul>
        <div class="clear"></div>
    </nav>
</nav>
<script type="text/javascript">
    //头部导航
    $(".TopNav a:first").css("padding-left","32px");
    $(".TopNav a:first").css("background","url(images/bg1.jpg) no-repeat 11px center");

</script>
<script type="text/javascript">
    //导航选中
    $("#nav" + navID).addClass("onnav");
    $(".MainNav ul li").each(function(){
        $(this).hover(function(){
            $(this).addClass("onnav1");
            $(this).find("a:first").addClass("onnav1A");
        },function(){
            $(this).removeClass("onnav1");
            $(this).find("a:first").removeClass("onnav1A");
        });
    });

</script>

<!--top End-->

<aside class="Banner">
</aside>

<section class="Contain">
    <div class="Inside">
        <section class="MainContent MainContent1">
            <div class="MainContentBox">
                <div class="Column">
                    <div class="ColName">
                        <span>特价专区</span>
                    </div>
                    <div class="Current"><dl>您所在位置：<a href="application/index.jsp">首页</a> > <a href="#">辅助栏目</a> > <span>特价专区</span></dl></div>
                    <div class="clear"></div>
                </div>
                <div class="Content">
                    <div class="PriceArea">
                        <p style="font-size:1.17em; color:#e60012; font-weight:bold; padding-bottom:15px;">手机整机保护膜是最基础的业务</p>
                        <p>很多人买了新机后，都知道在屏幕贴上保护膜，但这种保护只是局部的，手机外壳机身是最易磨损的，更应该保护，这时整机保护膜就用上了。知道在屏幕贴上保护膜，但这种保护只是局部的，手机外壳机身是最易磨损的，更应该保护，这时整机保护这种保知道在屏幕贴上保护膜，但这种保护只是局部的，手机外壳机身是最易磨损的，更应该保护，这时整机保护护膜起到的作用就是保护，过了几个月，把膜揭掉，手机还是全新的！没有任何磨损和污渍！</p>
                        <br />
                        <img src="uploadfiles/image/img14.jpg" width="940" height="143" /><br />
                        <p style="font-size:1.17em; color:#e60012; font-weight:bold; padding-bottom:15px;">选择比较多的透明膜，按照留胶性</p>
                        <img src="uploadfiles/image/img15.jpg" width="340" height="197" style=" float:right;" />
                        <p>很多人买了新机后，都知道在屏幕贴上保护膜，但这种保护只是局部的，手机外壳机身是最易磨损的，更应该保护，这时整机保护膜就用上了。</p>
                        <br />
                        <p>这种保护膜起到的作用就是保护，过了几个月，把膜揭掉，手机还是全新的！没有任何磨损和污渍！</p>
                        <p>照留胶性、拉伸性、耐磨性等指标，将材大。</p>
                        <br />
                        <p style="font-size:1.17em; color:#e60012; font-weight:bold; padding-bottom:15px;">选择比较多的透明膜，按照留胶性</p>
                        <p>但这种保护只是局部的，手机外壳机身是最易磨损的，更应该保护，这时整机保护膜就用上了。这种保护膜起到的作用就是保护，过了几机身是最易磨损的，更应该保护，这时整机保护膜就用上了。</p>
                        <p>这种保护膜起到的作用就是保护，过了几个月，把膜揭掉，手机还是全新的！没有任何磨损和污渍！这种产品的主要目的是保护手机壳，选择比较多的透明膜，按照留胶性、拉伸性、耐磨性等指标，将材大。个月，把膜揭掉，手机还是全新的！机壳，选择比较多的透明膜，按照留胶性、拉伸性、耐磨性等指标，将材大。</p>
                    </div>
                </div>
            </div>
        </section>
        <div class="clear"></div>
    </div>
</section>
<script type="text/javascript">
    jQuery(".PackageList ul li").each(function(i) {
        if((i+1)%3==0){
            jQuery(this).css("padding-right","0");
        }
    });

    var width=0;
    jQuery(".Pages span").each(function(){
        width=width+jQuery(this).width()+7;
    });
    jQuery(".Pages").width(width);

</script>



<!--bottom-->
<footer class="Bottomer">
    <div class="Bottom">
        <div class="BottomCont">
            <ul>
                <li>
                    <dl>
                        <dd><a href="#">了解更多</a></dd>
                        <dt><a href="#">手机市场</a></dt>
                        <dt><a href="#">最新资讯</a></dt>
                        <dt><a href="#">行业新闻</a></dt>
                        <dt><a href="#">品牌介绍</a></dt>
                        <dt><a href="#">服务中心</a></dt>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dd><a href="#">关于我们</a></dd>
                        <dt><a href="#">公司简介</a></dt>
                        <dt><a href="#">产品服务</a></dt>
                        <dt><a href="#">客户服务</a></dt>
                        <dt><a href="#">公司新闻</a></dt>
                        <dt><a href="#">荣誉资质</a></dt>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dd><a href="#">活动中心</a></dd>
                        <dt><a href="#">优惠活动</a></dt>
                        <dt><a href="#">在线促销</a></dt>
                        <dt><a href="#">特价商品</a></dt>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dd><a href="#">社区</a></dd>
                        <dt><a href="#">新浪微博</a></dt>
                        <dt><a href="#">微信</a></dt>
                    </dl>
                </li>
                <div class="code">
                    <img src="images/code.jpg" width="197" height="184" />
                    <p>手机官网</p>
                </div>
                <div class="clear"></div>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
        jQuery(".BottomCont ul li:first").css("padding-left","0");
        jQuery(".BottomCont ul li").each(function(i){
            if(i==0){
                jQuery(this).css("padding-left","0");
            }
            jQuery(this).find("dl dd").css("background","url(images/bg_"+i+".jpg) no-repeat center");
        });
    </script>
    <nav class="BottomLinks"> <!--友情链接-->
        友情链接 ：<a href="#" target="_blank">淘宝网</a><a href="#" target="_blank">京东</a><a href="#" target="_blank">百姓网</a><a href="#" target="_blank">腾讯网</a><a href="#" target="_blank">搜狐网</a>
    </nav>
    <div class="Copyright">
        <p>Copyright@ 2014 我的虚拟世界店铺  版权所有  Designed by <a href="#" target="_blank">我的虚拟世界店铺</a></p>
        <p>《中华人民共和国电信与信息服务业务经营许可证》粤ICP备00000000号</p>
    </div>
</footer>

<div class="QQTab" id="floatdiv">
    <a href="#" class="QQ"></a>
    <a href="javascript:void(0);" class="ToTop"></a>
</div>
<script type="text/javascript" src="scripts/qq.js"></script>
<script type="text/javascript">
    $(function(){
        $(function () {
            //当点击跳转链接后，回到页面顶部位置

            $(".ToTop").click(function(){
                $('body,html').animate({scrollTop:0},1000);
                return false;
            });
        });
    });
</script>
<script type="text/javascript">
    //整站无图处理
    jQuery.each(jQuery("img"), function (i, n) { jQuery(n).error(function () { n.src = 'uploadfiles/nopic.jpg'; }); n.src = n.src; });
</script>

<!--bottom End-->
</body>
</html>
