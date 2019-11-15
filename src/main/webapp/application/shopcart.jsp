<%@ page import="java.io.File" %><%--
  Created by IntelliJ IDEA.
  User: 20244
  Date: 2019/10/14
  Time: 10:48
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <base href="<%=request.getContextPath()+File.separator%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <title>深圳市方胜包装制品有限公司----购物车页面</title>
    <link rel="stylesheet" type="text/css" href="css/css_whir.css"/>
    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="scripts/html5shiv.v3.72.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="scripts/DD_roundies_min.js"></script>
    <script type="text/javascript">
        var navID = "4";
        var menuID = "2";
    </script>
    <script type="text/javascript">
        DD_roundies.addRule('.Pages a', '4px 4px 4px 4px', true);
    </script>
    <style type="text/css">
        .Banner{ background:url(/uploadfiles/image/banner/Banner_Insite2.jpg) no-repeat center;}
    </style>


    <link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
          type="text/css" />
    <link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/optstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript">
        function sub(id){
            var count = $("#count_"+id).val();  //获取到数量的值  2
            if(count>1){
                count = count-1;
                $("#count_"+id).val(count);  //1
            }
            var obj = new Object();
            obj.id = id;
            obj.count = count;   //1
            //ajax局部刷新小计和总价
            $.get("Shoping/Update/"+id+"/"+count,function(){
                location.reload();  //刷新  改变了后台购物车后，前端取的购物车数据局实时变化
            })

        }

        function add(id){
            var count = parseInt($("#count_"+id).val());  //获取到数量的值
            var stock = parseInt($("#stock_"+id).val());  //获取库存
            if(count<stock){  //比库存小，则可以添加
                count = count+1;
                $("#count_"+id).val(count);
            }

            var obj = new Object();
            obj.id = id;
            obj.count = count;   //1
            //ajax局部刷新小计和总价
            $.get("Shoping/Update/"+id+"/"+count,function(){
                location.reload();  //刷新  改变了后台购物车后，前端取的购物车数据局实时变化
            })

        }
    </script>
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
<aside class="Banner">
</aside>
<!--top End-->
<!--购物车 -->
<div class="concent">
    <div id="cartTable">
        <div class="cart-table-th">
            <div class="wp">
                <div class="th th-chk">
                    <div id="J_SelectAll1" class="select-all J_SelectAll"></div>
                </div>
                <div class="th th-item">
                    <div class="td-inner">商品信息</div>
                </div>
                <div class="th th-price">
                    <div class="td-inner">单价</div>
                </div>
                <div class="th th-amount">
                    <div class="td-inner">数量</div>
                </div>
                <div class="th th-sum">
                    <div class="td-inner">金额</div>
                </div>
                <div class="th th-op">
                    <div class="td-inner">操作</div>
                </div>
            </div>
        </div>
        <div class="clear"></div>

        <tr class="item-list">
            <div class="bundle  bundle-last ">
                <div class="bundle-hd">
                    <div class="bd-promos"></div>
                </div>
                <div class="clear"></div>
                <div class="bundle-main"></div>
            </div>
        </tr>
        <div class="clear"></div>

        <tr class="item-list">
            <div class="bundle  bundle-last ">

                <div class="clear"></div>
                <div class="bundle-main">
                    <!-- 购物车 -->
                    <c:forEach items="${cart.list}" var="domain">

                        <ul class="item-content clearfix">
                            <li class="td td-item">
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a href="#" target="_blank" title=""
                                           class="item-title J_MakePoint" data-point="tbcart.8.11">${domain.name}</a>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-info">
                                <div class="item-props item-props-can">
                                   <img src="images/${domain.picture}" alt="" height="100px">
                                </div>
                            </li>
                            <li class="td td-price">
                                <div class="item-price price-promo-promo">
                                    <div class="price-content">
                                        <div class="price-line">
                                            <em class="J_Price price-now" tabindex="0">${domain.price}</em>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-amount">
                                <div class="amount-wrapper ">
                                    <div class="item-amount ">
                                        <div class="sl">
                                            <input class="min am-btn" onclick="sub(${domain.id})"  name="" type="button" value="-" />
                                            <input class="text_box" id="count_${domain.id}" type="text" value="${domain.count}" style="width: 30px; text-align: center;" />
                                            <input type="hidden" id="stock_${domain.id}" value="${domain.number}" />
                                            <input class="add am-btn" name="" onclick="add(${domain.id})"  type="button" value="+"  />

                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-sum">
                                <div class="td-inner">
                                    <em tabindex="0" class="J_ItemSum number" ><fmt:formatNumber value="${domain.count*domain.price}" pattern="0.00"></fmt:formatNumber></em>
                                </div>
                            </li>
                            <li class="td td-op">
                                <div class="td-inner">
                                    <a href="Shoping/Del/${domain.id}" data-point-url="#" class="delete"> 删除</a>
                                </div>
                            </li>

                        </ul>
                    </c:forEach>

                </div>
            </div>
        </tr>
    </div>
    <div class="clear"></div>

    <div class="float-bar-wrapper">
        <div class="float-bar-right">
            <div class="amount-sum">
              <%--  <span class="txt">已选商品</span> <em id="getnum">${cart.list.length}</em><span class="txt">件--%>
            </span>
                <div class="arrow-box">
                    <span class="selected-items-arrow"></span> <span class="arrow"></span>
                </div>
            </div>
            <div class="price-sum">
                <span class="txt">合计:</span>
                <strong class="price">
                    ¥<em id="J_Total">
                        <fmt:formatNumber value="${cart.price}" pattern="0.00"></fmt:formatNumber>
                    </em>
                </strong>
            </div>
            <div class="btn-area">
                <a href="Shoping/JieSuan" id="J_Go" class="submit-btn submit-btn-disabled"
                   aria-label="请注意如果没有选择宝贝，将无法结算"> <span>结&nbsp;算</span></a>
            </div>
        </div>

    </div>

    <div class="footer">
        <div class="footer-hd">
            <p>
                <a href="#">方胜科技</a> <b>|</b> <a href="#">商城首页</a> <b>|</b> <a
                    href="#">支付宝</a> <b>|</b> <a href="#">物流</a>
            </p>
        </div>
        <div class="footer-bd">
            <p>
                <a href="#">关于方胜</a> <a href="#">合作伙伴</a> <a href="#">联系我们</a> <a
                    href="#">网站地图</a> <em>© 2015-2025 fangsheng.com 版权所有</em>
            </p>
        </div>
    </div>

</div>

<!--操作页面-->

<div class="theme-popover-mask"></div>

<%--<div class="theme-popover">
    <div class="theme-span"></div>
    <div class="theme-poptit h-title">
        <a href="javascript:;" title="关闭" class="close">×</a>
    </div>
    <div class="theme-popbod dform">
        <form class="theme-signin" name="loginform" action="" method="post">

            <div class="theme-signin-left">

                <li class="theme-options">
                    <div class="cart-title">颜色：</div>
                    <ul>
                        <li class="sku-line selected">12#川南玛瑙<i></i></li>
                        <li class="sku-line">10#蜜橘色+17#樱花粉<i></i></li>
                    </ul>
                </li>
                <li class="theme-options">
                    <div class="cart-title">包装：</div>
                    <ul>
                        <li class="sku-line selected">包装：裸装<i></i></li>
                        <li class="sku-line">两支手袋装（送彩带）<i></i></li>
                    </ul>
                </li>
                <div class="theme-options">
                    <div class="cart-title number">数量</div>
                    <dd>
                        <input class="min am-btn am-btn-default" name="" type="button" value="-" />
                        <input class="text_box" name="" type="text" value="1" style="width: 30px;" />
                        <input class="add am-btn am-btn-default"  name="" type="button" value="+" />
                        <span class="tb-hidden">库存<span class="stock">1000</span>件
							</span>
                    </dd>

                </div>
                <div class="clear"></div>
                <div class="btn-op">
                    <div class="btn am-btn am-btn-warning">确认</div>
                    <div class="btn close am-btn am-btn-warning">取消</div>
                </div>

            </div>
            <div class="theme-signin-right">
                <div class="img-info">
                    <img src="images/kouhong.jpg_80x80.jpg" />
                </div>
                <div class="text-info">
                    <span class="J_Price price-now">¥39.00</span> <span id="Stock"
                                                                        class="tb-hidden">库存<span class="stock">1000</span>件
						</span>
                </div>
            </div>

        </form>
    </div>
</div>
<!--引导 -->--%>
<div class="navCir">
    <li><a href="home.html"><i class="am-icon-home "></i>首页</a></li>
    <li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
    <li class="active"><a href="shopcart.html"><i
            class="am-icon-shopping-basket"></i>购物车</a></li>
    <li><a href="person/index.html"><i class="am-icon-user"></i>我的</a></li>
</div>
</body>

</html>