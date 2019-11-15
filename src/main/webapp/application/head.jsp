<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cn">
<head>
    <base href="${pageContext.request.contextPath}/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="Author" content="">
    <meta content=" shop116703760.taobao.com/index.html" name="design">
    <title>深圳市方胜包装制品有限公司</title>
    <link rel="stylesheet" type="text/css" href="../css/css_whir.css"/>
    <script type="text/javascript" src="../scripts/jquery-1.9.1.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="scripts/html5shiv.v3.72.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="scripts/jquery.SuperSlide.js"></script>
    <script type="text/javascript">
        var navID = "1";
    </script>
</head>

<body>
<!--top-->

<header class="Toper">
    <div class="Top">
        <nav class="TopNav">
            <em>|</em><a href="application/PriceArea.jsp">特价专区</a>
            <em>|</em><a href="application/package.jsp">包装展示</a>
            <em>|</em><a href="#" target="_blank">联系我们</a>
            <em>|</em>
            <shiro:guest>
                欢迎游客访问，<a href="${pageContext.request.contextPath}/application/user/login.jsp">登录</a>
            </shiro:guest>

            <shiro:user>
                欢迎您<shiro:principal type="com.qf.oa.entity.User" property="name"/><a href="${pageContext.request.contextPath}/sysUser/logout">退出</a>
            </shiro:user>
            <shiro:hasPermission name="1">
                <a href="/application/back/main.jsp">后台管理</a>
            </shiro:hasPermission>
            <a href="/application/user/login.jsp">注销</a>
            <%--<c:choose>
                <c:when test="${empty froutUser}">
                    <a href="/application/user/login.jsp" target="_top" class="h">亲，请登录！</a>
                </c:when>
                <c:otherwise>
                    <a href="/application/index.jsp" target="_top" class="h">${froutUser.name},欢迎您！</a>
                </c:otherwise>
            </c:choose>
            <a href="/sysUser/logout">退出</a>--%>
            <em>|</em>
            <em>|</em><a href="/application/shopcart.jsp" target="_blank">购物车</a>
        </nav>
        <div class="TopLogo_Search">
            <div class="Logo">
                <a href="index.jsp"><img src="images/logo.jpg" width="253" height="59" /></a>
            </div>
            <div class="Search">
                <a class="search_btn" href="javascript:void('0');" onclick="return GoSearchUrl();">搜索</a>
                <input type="text" class="search_input" id="key" value="搜索" onblur="if(this.value=='')this.value='搜索';" onfocus="if(this.value=='搜索')this.value='';" onkeydown="entersearch()"/>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</header>