<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath();
	String basePath = request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/backstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script type="text/javascript">
	$(function(){
		$("#parentId").attr("value","${goods.gtype_parentid}");
		
	})
</script>
</head>

<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>修改商品类别信息</span></div>
    <form action="goods/update" method="post" enctype="multipart/form-data">
    	<input type="hidden" name="id"	value="${st.id}" />
    	<ul class="forminfo">
			<li><label>商品名称</label><input name="name" type="text" class="dfinput" value="${st.name}"/></li>
            <img id="img" src="images/${st.picture}" width="120px" height="100px"/>
            <li><label>商品图片</label><input name="file" type="file" id="upload" value="${st.picture}" /></li>
			<li><label>商品号码</label><input name="number" type="text" class="dfinput" value="${st.number}"/></li>
			<li><label>价格</label><input name="price" type="text" class="dfinput" value="${st.price}" /></li>
	    <li><label>&nbsp;</label><input name="" type="submit" class="btn" value="确认保存"/></li>
	    </ul>
    
    </form>
    </div>


<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

