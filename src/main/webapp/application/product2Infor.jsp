<%--
  Created by IntelliJ IDEA.
  User: 20244
  Date: 2019/10/10
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="<%=request.getContextPath()+"/"%>">
    <title>深圳市方胜包装制品有限公司</title>
    <link type="text/css" href="css/style.css" rel="stylesheet" />
    <link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
          type="text/css" />

    <link rel="stylesheet" type="text/css" href="css/css_whir.css"/>
    <script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <!--[if lt IE 9]>
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
    <script type="text/javascript">
        $(function(){
            $("#min").click(function(){
                //获取value的值，判断是否大于1，如果是则可以减
                var value = $("#value").val();   //添加的值
                if(value>1){
                    value = value-1; //转整数再+1
                    $("#value").val(value);
                }
            })

            $("#add").click(function(){
                //获取到库存和value的值，判断是否超出库存，如果没有则添加
                var value = parseInt($("#value").val());   //添加的值
                var stock = parseInt($("#stock").html());  //库存值
                if(value<stock){
                    value = value+1; //转整数再+1
                    $("#value").val(value);
                }
            })


           $("#toCart").click(function(){ //加入购物车
                var id =${goods.id};  //获取id
                var count = $("#value").val();  //获取数量
                $.get("Shoping/addCar/"+id+"/"+count,function(){
                    location.reload();  //刷新
                });
            })
        })
    </script>
</head>

<body>
<!--top-->

<header class="Toper">
    <div class="Top">
        <nav class="TopNav">
            <em>|</em><a href="application/PriceArea.jsp">特价专区</a> <em>|</em><a href="application/package.jsp">包装展示</a> <em>|</em><a href="#" target="_blank">品牌介绍</a><em>|</em><a href="#" target="_blank">联系我们</a><em>|</em><a href="#" target="_blank">中文简体</a><em>|</em><a href="javascript:alert('正在建设中。。。');">ENGLISH</a><em>|</em>
        </nav>
        <div class="TopLogo_Search">
            <div class="Logo">
                <a href="application/index.jsp"><img src="images/logo.jpg" width="253" height="59" /></a>
            </div>
            <div class="Search">
                <a class="search_btn" href="javascript:void('0');" onclick="return GoSearchUrl();">搜索</a>
                <input type="text" class="search_input" id="key" value="搜索" onblur="if(this.value=='')this.value='搜索';" onfocus="if(this.value=='搜索')this.value='';" onkeydown="entersearch()"/>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>
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
        <aside class="SildeBar">
            <nav class="MenuList" id="Menu1">
                <div class="MenuTitle">
                    <span style="background-image:url(images/bg23.jpg);">产品型号选区</span>
                </div>
                <ul class="MenuList4">
                    <li id="menu1">
                        <div class="top"><a href="#" class="app"><span>苹果</span></a></div>
                        <div class="down">
                            <dl>
                                <dt><img src="uploadfiles/image/apple_pic.jpg" /></dt>
                                <dd id="submenu1"><a href="#"><span>Iphone6</span></a></dd>
                                <dd id="submenu2"><a href="#"><span>Iphone5</span></a></dd>
                                <dd id="submenu3"><a href="#"><span>Iphone4</span></a></dd>
                            </dl>
                        </div>
                    </li>
                    <li id="menu2">
                        <div class="top"><a href="#" class="sun"><span>三星</span></a></div>
                        <div class="down">
                            <dl>
                                <dt><img src="uploadfiles/image/snmsung_pic.jpg" /></dt>
                                <dd id="submenu4"><a href="#"><span>Note4</span></a></dd>
                                <dd id="submenu5"><a href="#"><span>Galaxy S5</span></a></dd>
                                <dd id="submenu6"><a href="#"><span>Note3</span></a></dd>
                            </dl>
                        </div>
                    </li>
                </ul>
            </nav>

            <nav class="MenuList" id="Menu2">
                <div class="MenuTitle">
                    <span style="background-image:url(images/bg17.jpg);">产品类型选区</span>
                </div>
                <ul class="MenuList2">
                    <li id="menu1">
                        <a href="#" class="productImg"><img src="uploadfiles/image/style01.jpg" width="71" height="47" /></a>
                        <a href="#" class="productTitle"><span>手机保护膜</span></a>
                        <div class="clear"></div>
                    </li>
                    <li id="menu1">
                        <a href="#" class="productImg"><img src="uploadfiles/image/style02.jpg" width="71" height="47" /></a>
                        <a href="#" class="productTitle"><span>平板保护膜</span></a>
                        <div class="clear"></div>
                    </li>
                    <li id="menu1">
                        <a href="#" class="productImg"><img src="uploadfiles/image/style03.jpg" width="71" height="47" /></a>
                        <a href="#" class="productTitle"><span>电脑保护膜</span></a>
                        <div class="clear"></div>
                    </li>
                    <li id="menu1">
                        <a href="#" class="productImg"><img src="uploadfiles/image/style04.jpg" width="71" height="47" /></a>
                        <a href="#" class="productTitle"><span>笔记本保护膜</span></a>
                        <div class="clear"></div>
                    </li>
                    <li id="menu1">
                        <a href="#" class="productImg"><img src="uploadfiles/image/style05.jpg" width="71" height="47" /></a>
                        <a href="#" class="productTitle"><span>显示器保护膜</span></a>
                        <div class="clear"></div>
                    </li>
                    <li id="menu1">
                        <a href="#" class="productImg"><img src="uploadfiles/image/style06.jpg" width="71" height="47" /></a>
                        <a href="#" class="productTitle"><span>相机保护膜</span></a>
                        <div class="clear"></div>
                    </li>
                </ul>
            </nav>

            <nav class="MenuList" id="Menu3">
                <div class="MenuTitle">
                    <span style="background-image:url(images/bg18.jpg);">产品功能选区</span>
                </div>
                <ul class="MenuList1">
                    <li id="menu1"><a href="#">高透膜</a></li>
                    <li id="menu2"><a href="#">防窥膜</a></li>
                    <li id="menu3"><a href="#">玻璃膜</a></li>
                    <li id="menu4"><a href="#">磨砂膜</a></li>
                    <li id="menu5"><a href="#">镜子膜</a></li>
                    <li id="menu6"><a href="#">丝印膜</a></li>
                    <li id="menu7"><a href="#">减蓝光膜</a></li>
                </ul>
            </nav>
            <script type="text/javascript">
                jQuery("#menu"+menuID).addClass("onmenu");
                jQuery("#submenu"+submenuID).addClass("onsubmenu");
                jQuery("#submenu"+submenuID).parent("dl").parent(".down").parent("li").addClass("onmenu");
                jQuery(".MenuList1").each(function(){
                    jQuery(this).find("li:last").css("border","none");
                });
            </script>
        </aside>
        <section class="MainContent">
            <div class="MainContentBox">
                <div class="Column">
                    <div class="ColName">
                        <span>精密模切</span>
                    </div>
                    <div class="Current"><dl>您所在位置：<a href="application/index.jsp">首页</a> > <a href="#">精密模切</a> > <span>产品详情</span></dl></div>
                    <div class="clear"></div>
                </div>
                <div class="Content">
                    <div class="Product2Infor">
                        <div class="Product2Img">
                            <a href="javascript:void(0);" class="prev"></a>
                            <a href="javascript:void(0);" class="next"></a>
                            <div class="BigImg">
                                <ul>
                                    <li><img src="images/${goods.picture}" width="330" height="297" /></li>
                                    <li><img src="uploadfiles/image/min1.jpg" width="330" height="297" /></li>
                                    <li><img src="uploadfiles/image/min2.jpg" width="330" height="297" /></li>
                                    <li><img src="uploadfiles/image/min3.jpg" width="330" height="297" /></li>
                                    <li><img src="uploadfiles/image/min4.jpg" width="330" height="297" /></li>
                                    <li><img src="uploadfiles/image/min5.jpg" width="330" height="297" /></li>
                                </ul>
                            </div>
                            <div class="SmallImg">
                                <div class="SmallImgList">
                                    <ul>
                                        <li><img src="uploadfiles/image/min1.jpg" width="68" height="81" /></li>
                                        <li><img src="uploadfiles/image/min2.jpg" width="68" height="81" /></li>
                                        <li><img src="uploadfiles/image/min3.jpg" width="68" height="81" /></li>
                                        <li><img src="uploadfiles/image/min4.jpg" width="68" height="81" /></li>
                                        <li><img src="uploadfiles/image/min5.jpg" width="68" height="81" /></li>
                                        <li><img src="uploadfiles/image/min6.jpg" width="68" height="81" /></li>
                                        <div class="clear"></div>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="Product2Brief">
                            <div class="BriefTitle">
                                <span>${goods.name}</span>
                                <p>${goods.price}元</p>
                            </div>
                            <div class="Product2Model">
                                <span>适用型号</span>
                                <p>苹果手机 iPhone5</p>
                            </div>
                            <div class="theme-options">
                                <div class="cart-title number">数量</div>
                                <dd>
                                    <input id="min" class="am-btn am-btn-default" name="min" type="button" value="-" />
                                    <input id="value" name="pic" type="text" value="1" style="width: 30px;" />
                                    <input id="add" class="am-btn am-btn-default" name="add" type="button" value="+" />
                                    <span id="Stock" class="tb-hidden">库存
                                        <span class="stock" id="stock">${goods.number}</span>件
                                    </span>
                                </dd>
                                 <div class="pay">
                                    <div>
                                        <li>
                                            <div class="clearfix tb-btn tb-btn-basket theme-login">
                                               <a id="toCart" name="toCart" title="加入购物车">加入购物车</a>
                                            </div>
                                        </li>
                                    </div>
                                 </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="Product2Content">
                            <div class="TabList">
                                <ul>
                                    <li><span>产品介绍</span></li>
                                    <li><span>图片展示</span></li>
                                    <li><span>售后服务</span></li>
                                </ul>
                            </div>
                            <div class="ContentList">
                                <ul>
                                    <li></li>
                                    <li class="ContentImg"><img src="uploadfiles/image/min7.jpg" width="713" height="398" /></li>
                                    <li></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="clear"></div>
    </div>
</section>
<script type="text/javascript">
    jQuery(".Product2Img").slide({mainCell:".BigImg ul",titCell:".SmallImgList ul li",effect:"left",prevCell:".prev",nextCell:".next"});
    jQuery(".Product2Content").slide({mainCell:".ContentList ul",titCell:".TabList ul li",effect:"left",trigger:"click"});
    jQuery(".SmallImgList").width(jQuery(".BigImg ul li").size()*78);
    jQuery(".Product2Img a").each(function(){
        jQuery(this).click(function(){
            var li_num=jQuery(".SmallImgList ul .on").index();
            if(li_num>4){
                left=78*(li_num-4);
                jQuery(".SmallImgList ul").css("left","-"+left+"px");
            }
            else{
                jQuery(".SmallImgList ul").css("left","0");
            }
        });
    });
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

        $(function () {
            //当点击跳转链接后，回到页面顶部位置

            $(".ToTop").click(function(){
                $('body,html').animate({scrollTop:0},1000);
                return false;
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
