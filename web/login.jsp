<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
   
        <title>登录-逸学</title>
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">           
        <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/basic.js.下载"></script>
        <script type="text/javascript" src="js/pub_utils.js"></script>   
    	<script src="js/jweixin-1.0.0.js"></script>
    <script>
        var open_id = '';
        window.onload = function () {
            if (isWeiXin()) {
                //微信APP内授权获取
                $("#btnCurrentApp").show();
            }
            else {
                //二维码登录
                $('#btnQrCode').show();
            }
        };
        function isWeiXin() {
            var ua = window.navigator.userAgent.toLowerCase();
            if (ua.match(/MicroMessenger/i) == 'micromessenger') {
                return true;
            } else {
                return false;
            }
        }
    </script>
<link media="all" href="css/index.css" type="text/css" rel="stylesheet">
</head>
<body style="position: relative;">
    <header>
        <div class="header-honor">
            <div class="honor-logo">
                <a><img style="height: 50px;" src="img/logo.png"></a>
            </div>
        </div>
    </header>
    <%
      
    %>
    <section class="login-main">
    
        <h2>用户登录</h2>

        <div class="login-more">
            <input name="next_page" id="next_page" value="/sso/login?go=directly&amp;from=http://iriding.cc/sso/login?from=/community/" type="hidden">

            <div class="login-left clearfix" style="margin-left: 50px;">
                <p>

                </p>

                <div class="login-detail fl left-dec register-data" style="margin: 0px;">
                  <form action="login" method="post">
        
                    <p>
                        <i><img src="img/phone.png"></i>
                        <input placeholder="请输入手机号码或邮箱" name="email" id="phone" value="" type="text">
                        <label id="phone-text" class="onError"></label>
                    </p>

                    <p>
                        <i><img src="img/lock.png"></i>
                        <input placeholder="请输入密码" name="upsw" id="password" type="password">
                        <label id="pass-text" class="onError"></label>
                    </p>

                    <div class="login-select">
                        <a href="https://passport.iriding.cc/login/forget_password?from_url=/sso/login?go=directly&amp;from=http://iriding.cc/sso/login?from=/community/">忘记密码</a>
                    </div>
                    <div class="login-str">                   
                      <a id="right-more"><input value="立即登录" type="submit" style="background-color:transparent;border-style:none;font-size:22px;padding-top:7px;"></a> 
                    </div>
                    
                   </form>
                </div>
            </div>
            <div class="login-right" style="margin-right: 50px;">
                <h4>快速注册</h4>

                <p>仅需三步，即可立即完成注册。<br>尽享全站功能与服务</p>
                <a href="register.html">立即注册</a>
            </div>
            <div class="zhi"></div>
        </div>
    </section>
    <footer>
        <div class="footer-er">
            <div class="footer-dex">
                <div class="footer-p">
                    <p>逸学</p>
                </div>
            </div>
        </div>
    </footer>
    <script type="text/javascript">
        $(document).ready(function () {
            function footerSet() {
                var offsetTop = $(window).height();
                var bodyH = $("body").height();
                if (offsetTop < bodyH) {
                    $("body").css("position", "relative");
                } else {
                    $("body").css("position", "static");
                }
            }

            footerSet();
            $(window).resize(function () {
                footerSet();
            })
        });
    </script>

    <script language="javascript" type="text/javascript">
        /**
         * Check email format
         */
        function emailCheck(email) {
            var pattern = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
            if (!pattern.test(email)) {
                return false;
            }
            return true;
        }
        function checkMobile(str) {
            var re = /^1\d{10}$/;
            if (re.test(str)) {
                return true;
            } else {
                return false;
            }
        }
        /*
        
        function doSubmit() {
            if ($("#right-more").is(".disabled")) {
                return false;
            }
            var email = $("#phone").val();
            var password = $("#password").val();
            if (!email) {
                return;
            }
            var next = $("#next_page").val();
            if (!emailCheck(email) && !checkMobile(email)) {
                alert("账号格式有误")
                return;
            }
            if (!password) {
                return;
            }
            $("#right-more").addClass("disabled");
   
            
            $.ajax({
                url: "/login/email", data: {email: email, password: password, from: next}, type: "POST", dataType: 'json', success: function (data) {
                    if (data.success) {
                        window.location.href = data.url;
                        $("#right-more").removeClass("disabled")
                        return;
                    } else {
                        alert(data.message)
                        $("#right-more").removeClass("disabled")
                        return;
                    }
                },
                error: function (er) {
                    alert("登录失败")
                    $("#right-more").removeClass("disabled")
                    return;
                }
            });
            */

    </script>
</body>
</html>
