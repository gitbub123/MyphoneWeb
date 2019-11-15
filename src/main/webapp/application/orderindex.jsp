<%--
  Created by IntelliJ IDEA.
  User: 20244
  Date: 2019/10/17
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <base href="<%=request.getContextPath()+"/"%>">
    <title>Title</title>
    <link rel="stylesheet" href="lib/layui/css/layui.css" media="all">
    <%--layui的js--%>
    <script src="lib/layui/layui.js"></script>
</head>
<body>
<table class="layui-table">
    <thead>
        <tr>
            <th>昵称</th>
            <th>购买时间</th>
            <th>支付方式</th>
            <th>预留电话号</th>
            <th>支付金额</th>
            <th>地址</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${order}" var="order">
            <tr>
                <th>${order.username}</th>
                <th>
                <fmt:formatDate value="${order.orderdate}" pattern="yyyy-MM-dd"></fmt:formatDate>
                </th>
                <th>${order.paytype}</th>
                <th>${order.userphone}</th>
                <th>${order.paycount}</th>
                <th>${order.useradress}</th>
            </tr>
        </c:forEach>
    </tbody>
</table>
<h5><a href="application/index.jsp">回到首页</a></h5>
</body>
</html>
