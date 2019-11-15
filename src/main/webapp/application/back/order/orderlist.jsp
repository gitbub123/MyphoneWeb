<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/backstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<link href="AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet"
	type="text/css" />
<link href="AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet"
	type="text/css" />
<link href="css/personal.css" rel="stylesheet" type="text/css" />
<link href="css/orstyle.css" rel="stylesheet" type="text/css" />
<script src="AmazeUI-2.4.2/assets/js/jquery.min.js" />
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script src="AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<script type="text/javascript">
	$(function() {
		$("#selAll").click(function() {
			$(".single").attr("checked", $("#selAll").prop("checked"));
		})

		$(".single").click(function() {
			var count = 0;
			$(".single").each(function() {
				if ($(this).prop("checked")) {
					count++;
				}
			})
	debugger
			
			
			if (count==$(".single").length) {
				$("#selAll").prop("checked", true);
			} else {
				$("#selAll").prop("checked", false);
			}

		})

		/* 批量删除 */
		$("#batchId").click(function() {
			var arr = new Array();//类似Java的动态赋值
			$(".single:checked").each(function() {
				var id = $(this).val();//遍历获取ID
				arr.push(id);//存到数组
			})
			
			var obj = new Object();
			obj.id = arr;
			$.get("OrderServlet?action=batchDelId", obj, function(data) {

				location.reload();
			})
		})
	})
</script>
</head>

<body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">首页</a></li>
			<li><a href="#">数据表</a></li>
			<li><a href="#">基本内容</a></li>
		</ul>
	</div>
	<div class="rightinfo">
		<div class="tools">

			<ul class="toolbar">
				<li class="click"><span><img src="images/t01.png" /></span><a
					href="/application/back/user/adduser.jsp">添加</a></li>
				<li class="click"><span><img src="images/t02.png" /></span>修改</li>
				<li id="batchId"><span><img src="images/t03.png" /></span>删除</li>
				<li><span><img src="images/t04.png" /></span>统计</li>
			</ul>

			<ul class="toolbar1">
				<li><span><img src="images/t05.png" /></span>设置</li>
			</ul>
		</div>
		<table class="tablelist">
			<thead>
				<tr>
					<th><input name="" type="checkbox" value="" id="selAll" /></th>
					<th>订单编号</th>
					<th>订单金额</th>
					<th>下单日期</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${page.list}" var="order">
					<tr>
						<td><input name="" type="checkbox" value="${order.id}" class="single" /></td>
						<td>${order.id}</td>
						<td>${order.o_paycount}</td>
						<td>${order.o_orderdate}</td>
						<td><a href="">编辑</a> | <a
							href="OrderServlet?action=del&id=${order.id}">删除</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<%@include file="/common/page.jsp"%>

		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>

			<div class="tipinfo">
				<span><img src="images/ticon.png" /></span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>

			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>

		</div>
	</div>

	<script type="text/javascript">
		$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
