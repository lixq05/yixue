<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="">
<head>
	<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">    
    <title>俱乐部</title>
    <link rel="shortcut icon" href="faviconv2.ico" type="image/x-icon">
    <link rel="icon" href="img/faviconv2.ico" type="image/x-icon">
    <link rel="shortcut icon" href="img/faviconv2.ico" type="image/x-icon">
    <link rel="icon" href="img/faviconv2.ico" type="image/x-icon">
    <meta charset="utf-8">
    <link media="all" href="css/index4.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/zm-qiji.js"></script>
    <script language="javascript" type="text/javascript" src="jquery.iriding.js"></script>
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
            
                _vds.push(['setCS1', 'UserId', 'e9NGSF5Xl3Pv']);
                _vds.push(['setCS2', 'UserName', '陈喵喵sdMQaH7q']);
            
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

</head>
<body class="white">
<%
	   User user = (User)request.getSession().getAttribute("user");
	%>
    <div id="zm-header" style="height: 100px;">
        <div class="zm-artboard-head clearfix">
            <p class="artboard-logo"><a href="#" style="padding: 16px 0px 0px;">
            <img src="img/qiji-logo.@2x.png" style="width: 122px; height: 58px;"></a></p>
            <ul class="zm-nav zm-wes">
                <li style="padding: 40px 42px 44px;"><a href="index.jsp" class=""><span>首页</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="topicList.jsp" class=""><span>论坛</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="book.jsp" class=""><span>好书分享</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="join.jsp" class="" id="chenkx"><span>俱乐部</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="index.jsp" class=""><span>联系我们</span></a></li>
            </ul>
               <ul class="artboard-right zm-nav">
                <li class="clearfix" style="padding: 35px 0px 43px;">
                   <div class="zm-search-div none">
                        <input id="txtBarKeyword" onkeydown="EnterPressSearch()" placeholder="请输入搜索关键词" maxlength="15" value="" type="text">
                        <a id="btnSearchUser" href="javascript:void(0);" class="zm-search-btn"><span><img class="gray" src="img/zm-search@2x.png"></span></a>
                    </div>
                    <a href="javascript:void(0);" class="cur zm-search-show"><span><img src="img/zm-search@2x.png"></span></a>
                    <span class="zm-help none">搜索</span>
                </li>
                    <li class="user" id="zm-user" style="padding: 35px 0px 43px;">
                        <a class="zm-personImg" href="#"><span><img src="<%=request.getContextPath() %>/upload/<%=user.getImage()%>" style="padding: 0px; margin-top: 4px;"></span></a>
                        <ul class="user-data" style="top: 98px;">
                           
                            <li style="padding: 0px;"><a href="set.jsp" onclick="sessionStorage.setItem('TAB', 0);">个人设置</a></li>
                            <li style="padding: 0px;"><a href="relationship.jsp">我的关系</a></li>
                            <li style="padding: 0px;"><a href="logout.jsp">退出登录</a></li>
                        </ul>
                    </li>
                    <li class="user-news" id="user-news" style="padding: 35px 0px 43px;">
                <a href="#"><span><img class="news-data" src="img/zm-xiaoxi.png"></span></a>
                <span class="zm-help none" id="news">消息</span>
                 <div class="news-content none" style="top: 98px;">
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
                   <li style="padding: 35px 0px 43px;">
                        <a href="help.jsp"><span><img src="img/zm-help@2x.png"></span></a>
                            <span class="zm-help none">帮助</span>
                   </li>                    
        </ul></div>
    </div>

    <div class="container-w">
        <div class="layout-73-home clearfix" style="padding-top: 0px;">
            <div class="column-main">
                <div class="club-list-container">
                    <div class="pane-title">
                        <div class="form-group-search">
                            <input class="" id="txtClubName" onkeydown="enterSearch()" value="创建俱乐部" type="button" style="background-color:#7ED321;color:white;width:160px;height:38px;border-s:none;">
                        </div>
                        <strong>俱乐部列表</strong>
                        <div class="search-citys">
                            <div class="pop search-citys-pop click" style="display: none; z-index: 9999;" id="cityarea">
                                <a href="javascript:void(0)" class="pop-close" style="right: 0px;">X</a>
                                <div class="click" id="citylistAll"></div>
                            </div>
                        </div>
                    </div>
                    <div class="club-list-grid">
                        <table>                                                           
                            <tbody><tr>
                            <td style="width: 50px;">
                            <a target="_top" href="#">                                            
                            <img src="img/cet6.jpg" height="48px" width="48px">
                            </a></td>
                            <td><a target="_top" href="#">
                            <span class="title">我要过六级</span></a></td>
                            <td style="width: 160px;"><span id="chenkexin1">25人加入此俱乐部</span></td>
                            <script>
                            	function change1(){
                            		var chenkexin1 = document.getElementById("chenkexin1");
                                	document.getElementById("chenkx2").innerHTML="已加入";
                            		chenkexin1.innerHTML = "26人加入此俱乐部";
                            	}
                            	
                            </script>
                            <td style="width: 80px;">                                            
                            <a class="btn btn-success-2" target="_top" href="#" onclick="change1()"><span id="chenkx2">申请加入</span></a>                                            
                            </td></tr>                               
                            <tr>
                            <td style="width: 50px;">
                            <a target="_top" href="#">                                            
                            <img src="img/yan1.jpg" height="48px" width="48px">
                            </a></td>
                            <td><a target="_top" href="#">
                            <span class="title">考研部落</span></a></td>
                            <td style="width: 160px;"><span>19人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                            
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                            
                            </td></tr>                                
                            <tr>
                            <td style="width: 50px;">
                            <a target="_top" href="#">                                            
                            <img src="img/yany1.jpg" height="48px" width="48px">
                            </a>
                            </td>
                            <td><a target="_top" href="#"><span class="title">Our Club</span></a></td>
                            <td style="width: 160px;"><span>48人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                           
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                           
                            </td></tr>                                
                            <tr>
                            <td style="width: 50px;">
                            <a target="_top" href="#">                                            
                            <img src="img/english.jpg" height="48px" width="48px">
                            </a></td>
                            <td>
                            <a target="_top" href="#"><span class="title">快乐英语营</span></a></td>
                            <td style="width: 160px;"><span>61人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                           
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                           
                            </td></tr>                               
                            <tr>
                            <td style="width: 50px;"><a target="_top" href="#">                                            
                            <img src="img/math.jpg" height="48px" width="48px">
                            </a>
                            </td>
                            <td><a target="_top" href="#"><span class="title">考研数学小分队</span></a></td>
                            <td style="width: 160px;"><span>28人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                           
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                            
                            </td></tr>                               
                            <tr>
                            <td style="width: 50px;"><a target="_top" href="#">                                           
                            <img src="img/cet4.jpg" height="48px" width="48px">
                            </a></td>
                            <td>
                            <a target="_top" href="#"><span class="title">bang~</span></a>
                            </td>
                            <td style="width: 160px;"><span>11人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                           
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                            
                            </td></tr>                                                               
                            <tr>
                            <td style="width: 50px;">
                            <a target="_top" href="#">                                           
                            <img src="img/tx10.jpg" height="48px" width="48px">
                            </a></td>
                            <td>
                            <a target="_top" href="#"><span class="title">青春尚好</span></a>
                            </td>
                            <td style="width: 160px;"><span>71人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                            
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                            
                            </td></tr>                               
                            <tr>
                            <td style="width: 50px;"><a target="_top" href="#">                                           
                            <img src="img/tx6.jpg" height="48px" width="48px">
                            </a></td>
                            <td><a target="_top" href="#"><span class="title">坚持</span></a>
                            </td>
                            <td style="width: 160px;"><span>26人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                            
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                            
                            </td></tr>                                
                            <tr>
                            <td style="width: 50px;"><a target="_top" href="#">                                            
                            <img src="img/computer2.jpg" height="48px" width="48px">
                            </a></td>
                            <td><a target="_top" href="#"><span class="title">国二加油</span></a>
                            </td>
                            <td style="width: 160px;"><span>44人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                            
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                            
                            </td></tr>                               
                            <tr>
                            <td style="width: 50px;"><a target="_top" href="#">                                            
                            <img src="img/teacher.jpg" height="48px" width="48px">
                            </a></td>
                            <td><a target="_top" href="#">
                            <span class="title">要做光荣的人民教师</span></a></td>
                            <td style="width: 160px;"><span>56人加入此俱乐部</span></td>
                            <td style="width: 80px;">                                            
                            <a class="btn btn-success-2" target="_top" href="#">申请加入</a>                                            
                            </td></tr>                                                                                                                                                 
                        </tbody></table>
                        <div class="pagination">
                            <ul>                                                                          
                                <li class="active"><a>1 </a></li>                                   
                                <li>
                                    <a href="#">2 </a>
                                </li>                                    
                                <li>
                                    <a href="#">3 </a>
                                </li>                              
                                <li class="next"><a href="#"> 下一页 </a>
                                </li>                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column-right">
                <div class="widget" style="margin-top: 40px;">
                    <div class="widget-title">推荐同校俱乐部</div>
                    <div class="pane-club">
                        <ul class="list-unstyled" id="liLocalClubs">
                        	<li>
                        	<a class="avatar" target="_top" href="#">
                        	<img src="img/yany1.jpg"></a>
                        	<h3><a class="" target="_top" href="#">我们的故事</a></h3>
                        	<p>64人加入此俱乐部 <a class="text-success-2" target="_top" href="#">去看看</a></p></li>
                        	<li><a class="avatar" target="_top" href="#">
                        	<img src="img/haha.jpg"></a><h3>
                        	<a class="" target="_top" href="#">东师GRE小分队</a></h3><p>18人加入此俱乐部 <a class="text-success-2" target="_top" href="#">去看看</a></p></li>
                        	<li><a class="avatar" target="_top" href="#">
                        		<img src="img/guo.jpg"></a><h3>
                        			<a class="" target="_top" href="#">沙卡拉卡</a></h3><p>7人加入此俱乐部 <a class="text-success-2" target="_top" href="#">去看看</a></p></li>
                        	<li><a class="avatar" target="_top" href="#">
                        	<img src="img/tx4.jpg"></a><h3>
                        	<a class="" target="_top" href="#">四级稳过~</a></h3><p>61人加入此俱乐部 <a class="text-success-2" target="_top" href="#">去看看</a></p></li>
                        	<li><a class="avatar" target="_top" href="#">
                        	<img src="img/study.jpg"></a><h3>
                        	<a class="" target="_top" href="#">东师小窝</a></h3><p>66人加入此俱乐部 <a class="text-success-2" target="_top" href="#">去看看</a></p></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
   </div>

    <div id="zm-artboard-footer" style="position: static; left: auto; bottom: auto; right: auto;">
        <div class="artboard-foot">
            <div class="foot-content">
                <div class="foot-lef">
                    <ul class="clearfix">
                        <li><a href="#" target="_top" class="chenkx"><span>关于我们</span></a></li>
                        <li><a href="#" target="_top" class="chenkx"><span>联系我们</span></a></li>
                        <li><a href="#" target="_top" class="chenkx"><span>问题反馈</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="zm-widget-to-top widget-to-top-on" style="display: block; margin-left: 0px; left: auto; right: 20px;" id="zm-to-top">
        <ul class="list-unstyled">
            <li class="top" style="display: none;"><span id="toTop"></span></li>
            <li class="qrcode" onmouseover="$(this).addClass('qrcode_on')" onmouseout="$(this).removeClass('qrcode_on')">
                <a href="javascript:void(0)"></a>
                <div class="drop-qrcode"></div>
            </li>
            <li class="feed"><a href="#" target="_top">反馈</a></li>
        </ul>
    </div>
<script>
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