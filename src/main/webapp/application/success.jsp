<%--
  Created by IntelliJ IDEA.
  User: 20244
  Date: 2019/10/16
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <base href="<%=request.getContextPath()+"/"%>">
    <title>Title</title>
    <link rel="stylesheet"  type="text/css" href="AmazeUI-2.4.2/assets/css/amazeui.css"/>
    <link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
          type="text/css" />
    <link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/optstyle.css" rel="stylesheet" type="text/css" />

    <link href="css/sustyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="basic/js/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="scripts/html5shiv.v3.72.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="scripts/DD_roundies_min.js"></script>
    <script type="text/javascript" src="scripts/jquery.SuperSlide.js"></script>
    <script type="text/javascript">
        var navID = "2";
        var menuID = "1";
        var submenuID = "1";
    </script>
    <script type="text/javascript">
        DD_roundies.addRule('.Pages a', '4px 4px 4px 4px', true);
    </script>
    <style type="text/css">
        .Banner{ background:url(/uploadfiles/image/banner/Banner_Insite2.jpg) no-repeat center;}
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

<div class="take-delivery" style="border: 1px solid black; height: 200px; width: 760px; left:50%; margin-left: 380px;">
    <div class="status">
        <h2>您已成功付款</h2>
        <div class="successInfo">
            <ul>
                <li>付款金额<em>${order.paycount}元</em></li>
                <div class="user-info">
                    <p>收货人：${order.username}</p>
                    <p>联系电话：${order.userphone}</p>
                    <p>收货地址：${order.useradress}</p>
                </div>
                请认真核对您的收货信息，如有错误请联系客服

                <h5><a href="Shoping/toindex">查看我的已付款订单</a>|<a href="application/index.jsp">回到首页</a></h5>
            </ul>
        </div>
    </div>
</div>


<div class="footer" >
    <div class="footer-hd">
        <p>
            <a href="#">恒望科技</a>
            <b>|</b>
            <a href="#">商城首页</a>
            <b>|</b>
            <a href="#">支付宝</a>
            <b>|</b>
            <a href="#">物流</a>
        </p>
    </div>
    <div class="footer-bd">
        <p>
            <a href="#">关于恒望</a>
            <a href="#">合作伙伴</a>
            <a href="#">联系我们</a>
            <a href="#">网站地图</a>
            <em>© 2015-2025 Hengwang.com 版权所有</em>
        </p>
    </div>
</div>
<p></p>
</body>
</html>
