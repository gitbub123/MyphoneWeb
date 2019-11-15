<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 罗维
  Date: 2019/9/26
  Time: 11:34
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
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 管理员管理 <span class="c-gray en">&gt;</span> 管理员列表 <a class="btn btn-success radius r mr-20" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="pd-20">
    <div class="text-c">
        <div class="row cl ">
            <div class="formControls col-3">
                登录名: <input type="text" class="input-text" style="width: 250px" id="userName" value="${userName}">
            </div>
        </div>
        <div class="row cl">
            <div class="cl pd-5">
                <button type="button"
                        class="btn btn-success radius" id="" name="" onclick="selectByCondition()">
                    <i class="Hui-iconfont">&#xe665;</i> 搜用户
                </button>
            </div>
        </div>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20">
         <span class="l">
            <a href="javascript:;" onclick="batchAddUser()" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 批量授权</a>
         </span>

    <table class="table table-border table-bordered table-bg">
        <thead>
        <tr>
            <th scope="col" colspan="9">员工列表</th>
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
            <td><input type="checkbox" value="${sysUser.id}" class="checkBox"></td>
            <td>${sysUser.id}</td>
            <td>${sysUser.name}</td>
            <td>${sysUser.password}</td>
            <td>${sysUser.age}</td>
            <td>${sysUser.phonenumber}</td>
            <td>${sysUser.email}</td>
            <td>${sysUser.adress}</td>
            <td>${sysUser.admin}</td>
            <td class="td-manage"><a style="text-decoration:none" onClick="admin_stop(this,'10001')" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a> <a title="编辑" href="javascript:;" onclick="admin_edit('管理员编辑','admin-add.html','1','800','500')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a> <a title="删除" href="javascript:;" onclick="admin_del(this,'1')" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    <%--展示分页--%>
    <jsp:include page="/application/common/page.jsp">
       <jsp:param name="bodyId" value="userBody"></jsp:param>
    </jsp:include>
</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="lib/layer/1.9.3/layer.js"></script>
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript" src="lib/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script type="text/javascript">

    
    function selectByCondition(){
        //获取用户输入的用户名
       var userName= $("#userName").val();

       $("#userBody").load("auth/getNoAuthUserByRoleId",{'userName': userName,'roleId':${roleId}});
    }

    function batchAddUser() {
        layer.confirm('确认要授权这些用户吗？',function (index) {
         //得到选中的用户
          var checkedItem= $(".checkBox:checked");
          if(checkedItem.length==0){
              layer.msg("请选择授权用户",{icon:5,time:2000});
              return;
          }
          //定义一个数组用来装用户的id
            var ids=[];
          for(var i=0;i<checkedItem.length;i++){
              //往数组中装选中的复选框对象的值（用户的id）
              ids.push(checkedItem[i].value);

              //发送异步请求，到后台做一个添加的操作
              $.ajax({
                  url:"auth/batchAddUser",
                  type:"GET",
                  data:"ids="+ids+"&roleId="+${roleId},
                  success:function (data) {
                      //{result:false,data:null}
                      if (data.result){
                          layer.msg("批量授权用户成功",{icon:6,time:2000},function () {
                              location.reload();
                          });
                      }else{
                          layer.msg("批量授权用户失败",{icon:5,time:2000});
                      }
                  }
              })

          }
        });
    }
</script>
</body>
</html>
