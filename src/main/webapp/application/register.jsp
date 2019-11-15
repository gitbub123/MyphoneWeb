<%--
  Created by IntelliJ IDEA.
  User: 20244
  Date: 2019/10/10
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <link href="../css/H-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/H-ui.login.css" rel="stylesheet" type="text/css" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../lib/Hui-iconfont/1.0.1/iconfont.css" rel="stylesheet" type="text/css" />
    <title>Title</title>
</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value="" />
<div class="header"></div>
<div class="loginWraper">
    <div id="loginform" class="loginBox">
        <form class="form form-horizontal" action="sysUser/register" method="post" id="zhuce">
            <div class="row cl">
                <label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-8">
                    <input id="userName" name="name" type="text" placeholder="账户" class="input-text size-L"><span id="msg"></span>
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                <div class="formControls col-8">
                    <input id="password" name="password" type="text" placeholder="密码" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-8">
                    <input id="age" name="age" type="text" placeholder="年龄" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-8">
                    <input id="phonenumber" name="phonenumber" type="text" placeholder="电话" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-8">
                    <input id="email" name="email" type="text" placeholder="邮箱" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-8">
                    <input id="adress" name="adress" type="text" placeholder="住址" class="input-text size-L">
                </div>
            </div>

            <div class="row">
                <div class="formControls col-8 col-offset-3">
                    <input name="" type="submit" class="btn btn-success radius size-L" value="&nbsp;注&nbsp;&nbsp;&nbsp;&nbsp;册&nbsp;">
                    <input name="" type="reset" class="btn btn-default radius size-L" value="&nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;">
                </div>
            </div>
        </form>
    </div>
</div>
<div class="footer">Copyright 你的公司名称 by H-ui.admin.v2.3</div>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-1.8.2.js"></script>
<script>
    $(function () {
        var isuserNaeme = false;
        $("#userName").blur(function () {
            var username = $(this).val();
            $.ajax({
                url:"sysUser/panchong",
                data:"userName="+username,
                success:function(data){
                    if (data==1){
                        $("#msg").html("<br/><font color='red'>用户名已存在<font/>")
                        isuserNaeme=false;
                    }else {
                         $("#msg").html("可以使用");
                         isuserNaeme = true;
                    }
                }
            })
        })
        $("from").submit(function () {
            $("#userName").trigger("blur");
            return isuserNaeme;
        })
    })
    /*var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));*/
</script>
</body>
</html>