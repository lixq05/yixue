<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="entity.User" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="">
<head>
	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">   
    <title>个人设置</title>
    <link rel="shortcut icon" href="faviconv2.ico" type="image/x-icon">
    <link rel="icon" href="faviconv2.ico" type="image/x-icon">
    <link rel="shortcut icon" href="faviconv2.ico" type="image/x-icon">
    <link rel="icon" href="faviconv2.ico" type="image/x-icon">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
 
    <script type="text/javascript" async="" src="js/vds-gr.js"></script><script src="hm.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/countup.min.js"></script>
    <script type="text/javascript" src="js/slides.min.jquery.js"></script>
    <script type="text/javascript" src="js/zm-qiji.js"></script>
    <script type="text/javascript" src="js/ispc.js"></script>        
    <script language="javascript" type="text/javascript" src="js/jquery.form.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.fancybox.js"></script>
    <script language="javascript" type="text/javascript" src="js/utils-min.js"></script>        
    <script language="javascript" type="text/javascript" src="js/new_unread_messages.js"></script>    
    <script language="javascript" type="text/javascript" src="js/jquery-1.8.3.min_001.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.iriding.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.superslide.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.qtip.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/account_setting.js"></script>
    <script language="javascript" type="text/javascript" src="js/packed.js"></script>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "//hm.baidu.com/hm.js?82fc0233449ae435746db2fa038196bb";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
        //#############################
        var _vds = _vds || [];
        window._vds = _vds;
        (function () {
            _vds.push(['setAccountId', 'c831f3f148814099a87c86bd3aff59f9']);
            
                _vds.push(['setCS1', 'UserId', 'n2Dt16ikYhZP']);
                _vds.push(['setCS2', 'UserName', '陈喵喵MuKVXi1h']);
            
            (function () {
                var vds = document.createElement('script');
                vds.type = 'text/javascript';
                vds.async = true;
                vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds-gr.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(vds, s);
            })();
        })();
        //#############################
    </script>
	<link media="all" href="index.css" type="text/css" rel="stylesheet">
	<style type="text/css"> 
		._box 
		{ 
			position: relative; 
			width: 119px; 
			height: 37px; 
			margin-left: 350px;
			margin-top: -180px;
			background-color: rgb(255,216,0); 
			background-image: url(images/bg.png); 
			background-repeat: no-repeat; 
			background-position: 0 0; 
			background-attachment: scroll; 
			line-height: 37px; 
			text-align: center; 
			color: white; 
			cursor: pointer; 
			overflow: hidden; 
			z-index: 1; 
		} 
		._box input 
		{ 
			position: absolute; 
			width: 119px; 
			height: 40px; 
			line-height: 40px; 
			font-size: 23px; 
			opacity: 0; 
			filter: "alpha(opacity=0)"; 
			filter: alpha(opacity=0); 
			-moz-opacity: 0; 
			left: -5px; 
			top: -2px; 
			cursor: pointer; 
			z-index: 2; 
		} 
	</style> 
</head>
 <%
  User user = (User)session.getAttribute("user");
 %>
<body id="zm-new">
    <div id="zm-header" style="height: 44px;">
        <div class="zm-artboard-head clearfix">
            <p class="artboard-logo"><a href="#" style="padding: 16px 0px 0px;">
            <img src="img/qiji-logo.@2x.png" style="width: 72px; height: 23px;"></a></p>
            <ul class="zm-nav zm-wes">
                <li style="padding: 15px 42px 19px;"><a href="index.jsp" class=""><span>首页</span></a></li>

                <li style="padding: 15px 42px 19px;"><a href="topicList.jsp" class=""><span>论坛</span></a></li>
                <li style="padding: 15px 42px 19px;"><a href="book.jsp" class=""><span>好书分享</span></a></li>
               
                <li style="padding: 15px 42px 19px;"><a href="join.jsp" class=""><span>俱乐部</span></a></li>
                
                <li style="padding: 15px 42px 19px;"><a href="#" target="_top"><span>联系我们</span></a></li>
            </ul>
            
               <ul class="artboard-right zm-nav">
                <li class="clearfix" style="padding: 8px 0px 18px;">
                   <div class="zm-search-div none">

                        <input id="txtBarKeyword" onkeydown="EnterPressSearch()" placeholder="请输入搜索关键词" maxlength="15" value="" type="text">
                        <a id="btnSearchUser" href="javascript:void(0);" class="zm-search-btn"><span><img class="gray" src="img/zm-search@2x.png"></span></a>
                    </div>
                    <a href="javascript:void(0);" class="cur zm-search-show"><span><img src="img/zm-search@2x.png"></span></a>
                    <span class="zm-help none">搜索</span>
                </li>
                    <li class="user" id="zm-user" style="padding: 8px 0px 18px;">

                        <a class="zm-personImg" href="set.jsp"><span><img src="<%=request.getContextPath() %>/upload/<%=user.getImage()%>" style="padding: 0px; margin-top: 4px;"></span></a>

                        <ul class="user-data" style="top: 42px;">
                            
                            <li style="padding: 0px;"><a href="set.html" onclick="sessionStorage.setItem('TAB', 0);">个人设置</a></li>
                            <li style="padding: 0px;"><a href="relationship.jsp">我的关系</a></li>
                            <li style="padding: 0px;"><a href="logout.jsp">退出登录</a></li>
                        </ul>
                    </li>

                    <li class="user-news" id="user-news" style="padding: 8px 0px 18px;">
                <a href="#"><span><img class="news-data" src="img/zm-xiaoxi.png"></span></a>
                <span class="zm-help none" id="news">消息</span>
                 <div class="news-content none" style="top: 42px;">
                    <div class="clearfix">
                          <ul class="clearfix">
                                <li class="hand current" style="padding: 0px;"><span>通知<i id="aSystemNotice" class=""></i></span></li>
                        <li class="hand" style="padding: 0px;"><span>动态<i id="aNotification" class=""></i></span></li>
                        <li class="hand" style="padding: 0px;"><span>私信<i id="aDirectMessage" class=""></i></span></li>
                            </ul>
                            <div id="zs-content">
                                <div class="mt">
                                    <ul class="zm-mt-content" id="divSystemNotice">

                                    </ul>
                                </div>
                                <div class="mt" style="display: none;">
                                    <ul class="zm-mt-content" id="divNotification">

                                    </ul>
                                </div>
                                <div class="mt" style="display: none;">
                                    <ul class="zm-mt-content" id="divDirectMessage">

                                    </ul>
                                </div>

                            </div>
                            <div class="news-more"><a href="#">查看更多</a></div>
                    </div>
                        </div>
                    </li>

                   <li style="padding: 8px 0px 18px;">
                        <a href="help.jsp"><span><img src="img/zm-help@2x.png"></span></a>
                            <span class="zm-help none">帮助</span>
                    </li>
                    
        </ul></div>
    </div>

    <script language="javascript">
        function show_float_login() {
            reqhref = window.location.href;
            reqhost = window.location.host;
            index = reqhref.indexOf(reqhost)
            requrl = reqhref.substr(index + reqhost.length, reqhref.length)

            homePageFlage = document.getElementById("isHomepageFlag")
            homePage = homePageFlage != null ? true : false;

            if (homePage || (!homePage )) {

                //$(".block-login-outer").fadeIn();
                $.fancybox.open({
                    maxWidth: 500,
                    fitToView: false,
                    width: '500',
                    autoSize: false,
                    autoHeight: true,
                    autoCenter: false,
                    type: 'ajax',
                    href: "/account/show_float_login?back=" + escape(requrl),
                    closeBtn: true,
                    openEffect: 'none',
                    closeEffect: 'none',
                    wrapCSS: 'fancybox-wrap-empty fancybox-wrap-empty-2'
                });
            }
            else {
                $(".block-login").fadeIn(function () {

                });
            }
        }

    </script>  
    <script type="text/html" id="tplAvatar">
<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"
WIDTH="650" HEIGHT="450" id="myMovieName">
<PARAM NAME=movie VALUE="/static/swf/avatar.swf">
<PARAM NAME=quality VALUE=high>
<PARAM NAME=bgcolor VALUE=#FFFFFF>
<param name="flashvars" value="imgUrl=/static/images/flashimage_default.jpg&uploadUrl=/account/set_avatar&uploadSrc=false" />
<EMBED src="/static/swf/avatar.swf" quality=high bgcolor=#FFFFFF WIDTH="650" HEIGHT="450" wmode="transparent" flashVars="imgUrl=/static/images/flashimage_default.jpg&uploadUrl=/account/set_avatar&uploadSrc=false"
NAME="myMovieName" ALIGN="" TYPE="application/x-shockwave-flash" allowScriptAccess="always"
PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer">
</EMBED>
</OBJECT>

</script>
    <div class="zm-per-ctxW">
    <div class="zm-perL">
        <a href="javascript:void(0);" class="zm-perL-head" style="background: transparent url('<%=request.getContextPath() %>/upload/<%=user.getImage()%>') no-repeat scroll center center / cover ;"></a>
        <ul>
            <li><a onclick="sessionStorage.setItem('TAB', 0);" class="per-on" href="#">个人设置</a></li>
            
        </ul>
    </div>
    <div class="zm-perR">
    <div class="zm-perR-nav">
        <ul class="clearfix" id="clearfix0">
            <li class="">我的信息</li>
            <li class="">头像设置</li>
            <li class="">修改密码</li>
        </ul>
    </div>
    <div class="zm-nav-line">
        <div class="zm-line-on" style="margin-left: 30px;"></div>
    </div>
    <div class="zm-perR-page">
        <!--我的信息-->
        <div class="perR-childPage none" style="display: none;">
            <div class="perR-myInfo">
           
                <form action="updateServlet?deal=basicInfo" method="post">
                    <ul>
                        <li><label>登录邮箱：</label><span><input name="email" class="width200" value="chenkx@nenu.edu.cn" type="text"/></span></li>
                        <li id="userTxt"><label>用户名：</label><input name="username" class="width200" value="<%=user.getUsername()%>" id="userNameTxt" placeholder="最长8个中文或16个英文" type="text">
                            <span id="userMsgTxt" class="download-info"></span>
                        </li>
                        <li>
                            <label>性别：</label>
                            <span class="perR-sex">
                           	<span><input type="radio" name="sex" id="radio1" value="男" />&nbsp;&nbsp;男</span>
                            <span><input type="radio" name="sex" id="radio2" value="女" checked="checked"/>&nbsp;&nbsp;女</span></span>
                        </li>
                        <li>
                            <label>学校：</label><input name="school" type="text" class="width200" />
                        </li>
						<li><label>个人说明：</label><input name="signature" id="weightTxt"  value="" type="text" style="width: 400px;">
                        </li>
                        <li id="direction1"><label>感兴趣的方向：</label>
                        	<input name="hobby" type="checkbox" value="考研" class="direction" /><span>&nbsp;考研</span> 
							<input name="hobby" type="checkbox" value="出国" class="direction" /><span>&nbsp;出国</span> 
							<input name="hobby" type="checkbox" value="就业" class="direction"/><span>&nbsp;就业</span> 
							<input name="hobby" type="checkbox" value="四六级" class="direction"/><span>&nbsp;四六级</span> 
							<input name="hobby" type="checkbox" value="计算机二级" class="direction"/><span>&nbsp;计算机二级</span> 
							<input name="hobby" type="checkbox" value="教师资格证" class="direction"/><span>&nbsp;教师资格证</span> 							
                        </li>
                        <li id="direction2"><label></label>
                        	<input name="hobby" type="checkbox" value="日语" class="direction"/><span>&nbsp;日语</span> 
							<input name="hobby" type="checkbox" value="韩语" class="direction"/><span>&nbsp;韩语</span> 
							<input name="hobby" type="checkbox" value="英语专四专八" class="direction"/><span>&nbsp;英语专四专八</span>                         	
                        </li>                                              
                    </ul>
                    
                    <button type="submit" id="baseinfoBtn" class="perR-kept-re" disabled="">保存</button>
                </form>
            </div>
        </div>
        <!--头像设置-->
        <div class="perR-childPage none" style="display: none;">
       <!--     /**************************-->
        <div style="margin-top: 60px;">
			<div>
				<h2 id="shangchuantouxiangh2">修改头像</h2>
				<form id="form1"  method="post" enctype="multipart/form-data" action="updateServlet?deal=img">
				<img src="img/default_avatar.jpg" alt="头像" id="shangchuantouxiang"/>				
				<!--<button id="shangchuanbutton"></button>-->
				 
					<div> 
						<div class="_box"> 
							<input type="file" name="_f" id="_f" value="" /> 
							选择图片 
						</div> 
					</div> 
					<div>
				       <button id="baocun" type="submit">保存修改</button>
				       <button id="quxiao" type="reset">取消修改</button>
			       </div>
				</form> 
			</div>
			
		</div>

	<!--	/*******************************-->
        </div>
        <!--修改密码-->
        <div class="perR-childPage none" style="display: none;">
            <div class="perR-myInfo perR-padding">
                <form action="updateServlet?deal=password">
                    <ul>
                        <li><label>当前密码：</label><input class="width200" id="currentPswTxt" placeholder="请输入当前密码" type="password" name="oldUpsw">
                            <span id="currentPswMsgTxt" class="download-info"></span>
                        </li>
                        <li><label>新密码：</label><input class="width200" id="newPswTxt" placeholder="请输入新密码" type="password" name="newUpsw">
                            <span id="newPswMsgTxt" class="download-info"></span>
                        </li>
                        <li><label>确认新密码：</label><input class="width200" id="newPswCfmTxt" placeholder="请确认新密码" type="password">
                            <span id="newPswCnfMsgTxt" class="download-info"></span>
                        </li>
                    </ul>
                    <button type="submit" id="psdSaveBtn" class="marTop57 perR-kept-re" disabled="">保存</button>

                </form>
            </div>
        </div>

    </div>

    </div>

    </div>
    <!--弹框提示-->
    <div class="per-layer none">
        <div class="per-layer-ctx">
            <p class="per-layer-info" id="pswMsgTxt">
            </p>
        </div>
    </div>
    <!--弹框结束-->

    <script language="javascript" type="text/javascript">
        var tab_index = sessionStorage.getItem("TAB");
        if (!tab_index) {
            tab_index = 0
        }

        $(document).ready(function () {


            $(".perR-childPage").hide();
            $(".perR-childPage").eq(tab_index).fadeIn();
            //////
            $(".zm-line-on").css({"left": tab_index * 150 + 25});
            $(".zm-perR-nav ul li").removeClass("zm-perR-on");
            $(".zm-perR-nav ul li").eq(tab_index).addClass("zm-perR-on");

            /////////
            $(".zm-perR-nav ul li").click(function () {

                var indexNum = $(this).index();
                if (indexNum != '2') {
                    document.getElementById("currentPswTxt").value = '';
                    document.getElementById("newPswTxt").value = '';
                    document.getElementById("newPswCfmTxt").value = '';
                    $("#currentPswMsgTxt").html("");
                    $("#newPswMsgTxt").html("");
                    $("#newPswCnfMsgTxt").html("");
                }
                sessionStorage.setItem("TAB", indexNum);
                $(".zm-line-on").animate({"left": indexNum * 150 + 25}, 300);
                $(".zm-perR-nav ul li").removeClass("zm-perR-on");
                $(this).addClass("zm-perR-on");
                $(".perR-childPage").hide();
                $(".perR-childPage").eq(indexNum).fadeIn();
            });
            $(".zm-perL-head").click(function () {
                sessionStorage.setItem("TAB", 1);
                var navLi = $(".zm-perR-nav ul li");
                $(".zm-line-on").animate({"left": 175}, 300);
                navLi.removeClass("zm-perR-on");
                navLi.eq(1).addClass("zm-perR-on");
                $(".perR-childPage").hide();
                $(".perR-childPage").eq(1).fadeIn();
            });

            $("#currentPswTxt").blur(function () {
                checkCurrentPassword();
            });

            $("#newPswTxt").blur(function () {
                        checkNewPassword();
                    }
            );

            $("#newPswCfmTxt").blur(function () {
                        checkNewPasswordConfirm();
                    }
            );

            $("#userNameTxt").blur(function () {
                        checkUserNameConfirm();
                    }
            );
            $("#heightTxt").blur(function () {
                        checkUserHeightConfirm();
                    }
            );
            $("#ageTxt").blur(function () {
                        checkUserAgeConfirm();
                    }
            );
            $("#weightTxt").blur(function () {
                        checkUserWeightConfirm();
                    }
            );
            $("#ftpTxt").blur(function () {
                        checkUserFtpConfirm();
                    }
            );
            $("#lthrTxt").blur(function () {
                        checkUserLthrConfirm();
                    }
            );


            $(".perR-myInfo button").click(function () {
                
                setTimeout(function () {
                    $(".per-layer").fadeOut();
                }, 2500);
            });
            window.addEventListener("input", function () {
                if ($("input").change()) {
                    $("input:focus").parents(".perR-myInfo")
                            .find("button").addClass("per-kept-btn").removeClass("perR-kept-re").attr("disabled", false);

                }
            });
        });

    </script>
    <script type="text/javascript" src="js/jquery-1.8.3.min_001.js"></script>
    <script type="text/javascript" src="js/zm-qiji-more.js"></script>

    <div id="zm-artboard-footer" style="position: static; left: auto; bottom: auto; right: auto;">
        <div class="artboard-foot">
            <div class="foot-content">

                <div class="foot-lef">
                    <ul class="clearfix">
                        <li><a href="#" target="_top"><span>客户端</span></a></li>
                        <li><a href="#" target="_top"><span>关于我们</span></a></li>
                        <li><a href="#" target="_top"><span>联系我们</span></a></li>
                        <li><a href="#" target="_top"><span>问题反馈</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="zm-widget-to-top widget-to-top-on" style="display: block; margin-left: 0px; left: auto; right: 20px;" id="zm-to-top">
        <ul class="list-unstyled">
            <li class="top"><span id="toTop"></span></li>
            <li class="qrcode" onmouseover="$(this).addClass('qrcode_on')" onmouseout="$(this).removeClass('qrcode_on')">
                <a href="javascript:void(0)"></a>

                <div class="drop-qrcode"></div>
            </li>
            <li class="feed"><a href="#" target="_top">反馈</a></li>
        </ul>
    </div>

<script>

    function showNumber(number) {
        var winHeight = $(window).height();
        var offsetbottom = $("#zm-artboard-footer").offset().top - $(window).scrollTop() + 150;
        if (offsetbottom < winHeight) {
            $("#zm-artboard-footer").css({"position": "absolute", "left": 0, "bottom": 0, "right": 0});
            //页面底部数字动画
            var options = {
                useEasing: true,
                useGrouping: true,
                separator: ',',
                decimal: '.',
                prefix: '',
                suffix: ''
            };
            var demo = new CountUp("myTargetElement", 0, number, 0, 2.5, options);
            demo.start();

        } else {
            if ($("#zm-artboard-footer").offset().top + 150 < winHeight) {
                $("#zm-artboard-footer").css({"position": "absolute", "left": 0, "bottom": 0, "right": 0});
            } else {
                $("#zm-artboard-footer").css({"position": "static", "left": "auto", "bottom": "auto", "right": "auto"});

            }
        }
        if (offsetbottom - 150 < winHeight) {
            var options = {
                useEasing: true,
                useGrouping: true,
                separator: ',',
                decimal: '.',
                prefix: '',
                suffix: ''
            };
            var demo = new CountUp("myTargetElement", 0, number, 0, 2.5, options);
            demo.start();
        }

    }

    var options = {
        useEasing: true,
        useGrouping: true,
        separator: ',',
        decimal: '.',
        prefix: '',
        suffix: ''
    };
    $.ajax({
        cache: true,
        type: "GET",
        url: "/total_info",
        success: function (data) {
            if (data.success) {
                var demo = new CountUp("myTargetElement", 0, data.TotalDistance, 0, 2.5, options);
                $(window).scroll(function () {
                    var a = $('#zm-header').height();
                    var b = $('.zm-plate').height();
                    var c = $('.zm-cell-left').height();
                    var d = $('.zm-cell-right').height();
                    var e = $(window).height();
                    var s = a + b + c;
                    var w = a + b + d;
                    if ($(window).scrollTop() >= 800) {
                        $('.top').fadeIn();
                        if ($(window).scrollTop() >= (a + b + d + 30)) {
                            $('#zm-tag').css({"position": "fixed", "top": "50px"});
                        } else {
                            $('#zm-tag').css({"position": "static"});
                        }

                    } else {
                        $('.top').fadeOut();
                    }
                    if ($(window).scrollTop() >= (s - e + 110)) {
                        demo.start();
                    }
                });
                showNumber(data.TotalDistance);
                if ($("#totalUserDistance")) {
                    $("#totalUserDistance").html(data.TotalDistance + "<span style='font-size:20px'>km</span>");
                }
            }
        }
    });
    $(document).ready(function () {
        var offsetTop2 = $("#zm-artboard-footer").offset().top + 145;
        window.addEventListener("resize", function () {
            var winHeight = $(window).height();
            if (offsetTop2 < winHeight) {
                $("#zm-artboard-footer").css({"position": "absolute", "left": 0, "bottom": 0, "right": 0});
            }
            else {
                $("#zm-artboard-footer").css({"position": "static", "left": "auto", "bottom": "auto", "right": "auto"});
            }
        });

         $(".zm-search-show").click(function () {
            $(this).hide();
            $(this).siblings(".zm-help").hide();
            $(".zm-search-div").fadeIn();
            $(".zm-search-div input").css({"width":"280px"});
        });
    });

        function gSearch() {

            var keyword = $('#txtBarKeyword').val();
            var $title = $.trim(keyword);
            if ($title == '') {
                window.location.href = "/search/results";
            } else {
                var type = "user";
                window.location.href = "/search/results?type=" + type + "&keyword=" + keyword;
            }
        }

         $(function () {
            $('#btnSearchUser').click(function () {
                gSearch();
            });
        })

        function EnterPressSearch(e) { //传入 title
            var e = e || window.event;
            if (e.keyCode == 13) {
                gSearch();
            }
        }
</script>
</body>
</html>