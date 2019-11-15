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
            <li id="nav8"><a class="navS" href="#">网上商城</a>
                <div class="subnav subnav1">
                    <dl>
                        <dt><a href="#" style="background:url(images/bg24.jpg) no-repeat left center;">阿里巴巴批发网站</a></dt>
                        <dt><a href="#" style="background:url(images/bg25.jpg) no-repeat left center;">百好汇天猫旗舰店</a></dt>
                    </dl>
                    <div class="subnavLeft">
                        <img src="uploadfiles/image/img36.jpg" width="171" height="182" />
                        <a href="#" class="online">在线选购</a></div>
                    <div class="cleaar"></div>
                </div>
            </li>
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

<aside class="HomeBan">
    <div class="BanList">
        <ul>
            <li style="background:url(/uploadfiles/image/banner/HBanner1.jpg) no-repeat center;"><a href="#"></a></li>
            <li style="background:url(/uploadfiles/image/banner/HBanner2.jpg) no-repeat center;"><a href="#"></a></li>
            <li style="background:url(/uploadfiles/image/banner/HBanner3.jpg) no-repeat center;"><a href="#"></a></li>
        </ul>
    </div>
    <div class="TabBox">
        <div class="TabList">
            <ul>
                <li><span></span></li>
                <li><span></span></li>
                <li><span></span></li>
            </ul>
        </div>
    </div>
</aside>
<script type="text/javascript">
    jQuery(".HomeBan").slide({mainCell:".BanList ul",titCell:".TabList ul li",effect:"fold",autoPlay:true,interTime:6000,delayTime:3500});

    var left=(jQuery(".TabList ul li").size()*17)/2;
    jQuery(".TabBox").css("margin-left","-"+left+"px");
</script>

<section class="Contain">
    <div class="HomeCont">
        <div class="HomeBox1">
            <div class="HBoxTitle">
                <span>最新产品</span>
            </div>
            <div class="HBoxCont1">
                <ul>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img1.jpg" width="219" height="180"></a>
                        </a>
                        <p>经典黑Iphone6塑胶手机套</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img2.jpg" width="219" height="180"></a>
                        </a>
                        <p>米白色Iphone6塑胶手机套机套</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img3.jpg" width="219" height="180"></a>
                        </a>
                        <p>土豪金Iphone6塑胶手机套</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img4.jpg" width="219" height="180"></a>
                        </a>
                        <p>朱红色Iphone6塑胶手机套</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
        <div class="HomeBox2">
            <div class="HBoxTitle">
                <span>热销产品</span>
            </div>
            <div class="HBoxCont2">
                <ul>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img5.jpg" width="219" height="180"></a>
                        </a>
                        <p>Iphone6五色阿胶防尘手机套 颜色齐</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img6.jpg" width="219" height="180"></a>
                        </a>
                        <p>Iphone6/6 plus软胶按键盖手机壳</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img7.jpg" width="219" height="180"></a>
                        </a>
                        <p>Iphone6 plus/ 6防摔pvc手机套</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="uploadfiles/image/img8.jpg" width="219" height="180"></a>
                        </a>
                        <p>土豪金Iphone6 plus塑胶手机套</p>
                        <a href="#" class="more">查看参数</a>
                    </li>
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
        <div class="HomeBox3">
            <div class="HBoxLeft">
                <div class="HBoxTitle">
                    <a href="#">更多>></a>
                    <span>最新产品</span>
                </div>
                <div class="HBoxContL">
                    <ul>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">三星note3手机皮套 定做三星各种</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">智能手机大屏时代：手机到底该</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">手机钢化玻璃膜在我国的发展现</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">ipad系列皮套,高端商务平板皮套</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">最新iphone6手机皮套，各种手机型</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">小米4高清透明膜 厂家定制各种</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">魅族MX4手机防窥膜 度哦方向多角</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">三星note4高清膜 三星各种手机型</a>
                        </li>
                        <li>
                            <span>2014-12-29</span>
                            <a href="#">手机钢化玻璃保护膜的特点及贴</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="HBoxRight">
                <div class="HBoxTitle">
                    <a href="#">更多>></a>
                    <span>客户案例</span>
                </div>
                <div class="HBoxContR">
                    <dl>
                        <dd>
                            <div class="HBoxRImg">
                                <a href="#">
                                    <img src="uploadfiles/image/img9.jpg" width="213" height="137" />
                                </a>
                            </div>
                            <div class="HBoxRInfo">
                                <a href="#" class="HBoxRTitle">苹果IPAD MINI防窥膜 平板电脑高</a>
                                <span>2014-12-29</span>
                                <p> 给您最好的Ipad mini防窥膜，深圳方胜包装制品有限公司出品的ipad mini防窥膜，采用进口高端材质...
                                    <a href="#" class="more">【详细】</a></p>
                            </div>
                            <div class="clear"></div>
                        </dd>
                        <dt><a href="#">苹果iphone4|4s 3D膜-钻石手机贴膜</a></dt>
                        <dt><a href="#">索尼手机lt22i手机保护磨砂贴膜</a></dt>
                        <dt><a href="#">HTC One X防指纹_高清高透屏幕膜_手机保护膜</a></dt>
                        <dt><a href="#">宏基联想华硕12寸笔记本电脑屏幕防窥保护贴膜</a></dt>
                    </dl>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</section>

<script type="text/javascript">
    jQuery(".HBoxCont1 ul li:last").css("border","0");
    jQuery(".HBoxCont2 ul li:last").css("border","0");
    jQuery(".HBoxContL ul li:last").css("border","0");

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