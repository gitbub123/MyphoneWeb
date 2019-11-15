<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <% String path = request.getContextPath();
    	String basePath = request.getScheme()+"://" +request.getServerName()+":"+request.getServerPort()+path+"/";
    %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/backstyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>

<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
$(function(){
	$("#allSel").click(function(){
		//alert($("#allSel").prop("checked"));
		//attr的checked属性对应的值可以是“checked”或true和false
		//prop的checked属性对应的值是true和false
		$(".single").attr("checked",$("#allSel").prop("checked"));
	})
	
	$(".single").click(function(){
		var count=0;
		$(".single").each(function(){
			if($(this).prop("checked")){
				count++;
			}
		})
		if(count==$(".single").length){
			$("#allSel").attr("checked",true);
		}else{
			$("#allSel").attr("checked",false);
		}
		
	})
	
	
	$("#batchId").click(function(){
	    var checkedItem=$(".single:checked");
	    if(checkedItem.length==0){
            layer.msg("请选择需要删除的用户",{icon:5,time:2000});
            return;
        }

        //定义一个数组用来装用户的id
        var ids=[];
	    for(var i=0;i<checkedItem.length;i++){
            ids.push(checkedItem[i].value);
        }
        $.ajax({
            url: "sysUser/batchDelId",
            type: "POST",
            data: "ids="+ids,
            success : function(data) {
                if (data.result){
                    layer.msg("批量删除用户成功",{icon:6,time:2000},function () {
                        location.reload();
                    });
                }else{
                    layer.msg("批量删除用户失败",{icon:5,time:2000});
                }
            }
        })
	})
	
	
})
</script>
</head>

<body id="userBody">
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
        <li class="click"><span><img src="images/t01.png" /></span><a href="/application/back/user/adduser.jsp">添加</a></li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li id="batchId"><span><img src="images/t03.png" /></span>删除</li>
        <li ><span><img src="images/t04.png" /></span>统计</li>
        </ul>
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
    
    
      <table class="tablelist">
    	<thead>
    	<tr>
	        <th><input name="" type="checkbox" value="" id="allSel"/></th>
	        <th>用户编号</th>
	        <th>用户名</th>
	        <th>年龄</th>
	        <th>电话</th>
	        <th>email</th>
	        <th>地址</th>
	        <th >是否管理员</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="user"  >
        	<tr>
         	 <td><input name="" type="checkbox" value="${user.id}" class="single"/></td>
		        <td>${user.id}</td>
		        <td>${user.name}</td>
		        <td>${user.age}</td>
		        <td>${user.phonenumber}</td>
		        <td>${user.email}</td>
		        <td>${user.adress}</td>
                <td>${user.admin}</td>
		        <td>
		        	<a href="sysUser/updateInit/${user.id}">编辑</a>
		        	<a href="sysUser/del/${user.id}">删除</a>
		        </td>
	        </tr> 
        </c:forEach>
            
	        
        </tbody>
    </table>
    	
   <!-- 静态包含 -->
        <jsp:include  page="/application/common/page.jsp">
            <jsp:param name="bodyId" value="userBody"></jsp:param>
        </jsp:include>
    
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>
        
      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>
        
        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>
    
    </div>
    </div>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>
