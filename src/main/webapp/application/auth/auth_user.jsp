<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2019/9/26
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <link href="css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="css/H-ui.admin.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
    <title>Title</title>
</head>
<body id="userBody">
<div class="pd-20">
    <table class="table table-border table-bordered table-bg">
        <thead>
        <tr>
            <th scope="col" colspan="10">权限列表</th>
        </tr>
        <tr class="text-c">
            <th width="25"><input type="checkbox" name="" value=""></th>
            <th width="40">编号</th>
            <th width="60">姓名</th>
            <th width="120">密码</th>
            <th width="150">年龄</th>
            <th width="90">电话</th>
            <th width="150">邮箱</th>
            <th width="130">地址</th>
            <th width="100">权限</th>
            <th width="100">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageInfo.list}" var="sysUser">
            <tr class="text-c">
                <td><input type="checkbox" value="1" name=""></td>
                <td>${sysUser.id}</td>
                <td>${sysUser.name}</td>
                <td>${sysUser.password}</td>
                <td>${sysUser.age}</td>
                <td>${sysUser.phonenumber}</td>
                <td>${sysUser.email}</td>
                <td>${sysUser.adress}</td>
                <td>${sysUser.admin}</td>
                <td class="td-manage">
                    <a style="text-decoration:none" onClick="admin_stop(this,'10001')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>
                    <a title="编辑" href="javascript:;" onclick="admin_edit('管理员编辑','admin-add.html','1','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                    <a title="删除" href="javascript:;" onclick="del_auth_user()" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a>
                </td>i
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <%--展示分页导航条--%>
    <jsp:include page="/application/common/page.jsp">
        <jsp:param name="bodyId" value="authorization"></jsp:param>
    </jsp:include>
</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script type="text/javascript">



    /*管理员-删除，接触授权用户*/
    function del_auth_user(obj,id){
        layer.confirm('确认要解除授权用户吗？',function(index){
            //发送异步请求，去删除角色用户关系表中的记录
            $.ajax({
                url:"auth/delAuthUser",
                type:"GET",
                data:"roleId="+${roleId},
                success:function(data){
                    if(data.result){
                        $(obj).parents("tr").remove();
                        layer.msg('删除成功!',{icon:6,time:2000});
                        location.reload();
                    }else{
                        layer.msg('删除失败!',{icon:5,time:2000});
                    }
                }
            })


        });
    }

</script>
</body>
</html>
