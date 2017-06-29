<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html class="">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
		<link rel="shortcut icon" href="img/faviconv2.ico" type="image/x-icon">
		<link rel="icon" href="img/faviconv2.ico" type="image/x-icon">  
     	<title>逸学-好书推荐</title>
    	<style>
        .clear {
            clear: both;
        }

        .clearfix:after {
            content: "\200B";
            display: block;
            height: 0;
            clear: both;
        }

        .clearfix {
            *zoom: 1;
        }
    	</style>
	    <link rel="stylesheet" href="css/bootstrap.iriding.css">
	    <link rel="stylesheet" href="css/zm-public.css?v=20160905">
	    <link rel="stylesheet" href="css/zm-basic.css?v=20160905">
	   <!-- <script type="text/javascript" async="" src="js/vds-gr.js"></script>-->
	    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	    <script type="text/javascript" src="js/slides.min.jquery.js"></script>
	    <script type="text/javascript" src="js/zm-qiji.js"></script>
        <link rel="stylesheet" href="css/style-book.css?v=20160905">       
        <link rel="stylesheet" type="text/css" href="js/jquery.fancybox.css" media="screen">
        <script language="javascript" type="text/javascript" src="js/utils-min.js"></script>        
        <script language="javascript" type="text/javascript" src="js/new_unread_messages.js?v=20160905"></script>    
    
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.iriding.css">
    <link rel="stylesheet" type="text/css" href="css/style-book.css">
    <link rel="stylesheet" type="text/css" href="css/style_space.css?v=20160918">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen">

    <script language="javascript" type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.iriding.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.superslide.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.ui.widget.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.iframe-transport.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.fileupload.js"></script>
    <script language="javascript" type="text/javascript" src="js/jquery.xdr-transport.js"></script>

  <style>
  #progressbar {
    margin-top: 20px;
  }
  </style>



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
            
                _vds.push(['setCS1', 'UserId', 'w4tjIoc9CaFM']);
                _vds.push(['setCS2', 'UserName', 'Dreizehn Maif5xRaPVJ']);
            
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
<style type="text/css">.fancybox-margin{margin-right:17px;}</style><style type="text/css">.fancybox-margin{margin-right:17px;}</style></head>

<body class="white">
<%
	   User user = (User)request.getSession().getAttribute("user");
	%>
    <div id="zm-header" style="height: 100px;" class="">
        <div class="zm-artboard-head clearfix">
            <p class="artboard-logo"><a href="#" style="padding: 16px 0px 0px;">
            <img src="img/logo.png" style="width: 122px; height: 58px;"></a></p>
            <ul class="zm-nav zm-wes">

                <li style="padding: 40px 42px 44px;"><a href="index.jsp" class=""><span>首页</span></a></li>

                <li style="padding: 40px 42px 44px;"><a href="topicList.jsp" class=""><span>论坛</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="book.jsp" class="bar"><span>好书分享</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="join.jsp" class=""><span>俱乐部</span></a></li> 
                <li style="padding: 40px 42px 44px;"><a href="our.jsp" class=""><span>联系我们</span></a></li>               
            </ul>
            
               <ul class="artboard-right zm-nav">
                <li class="clearfix" style="padding: 35px 0px 43px;">
                   <div class="zm-search-div none">

                        <input id="txtBarKeyword" type="text" onkeydown="EnterPressSearch()" placeholder="请输入搜索关键词" maxlength="15">
                        <a id="btnSearchUser" href="javascript:void(0);" class="zm-search-btn"><span><img class="gray" src="img/zm-search@2x.png"></span></a>
                    </div>
                    <a href="javascript:void(0);" class="cur zm-search-show"><span><img src="img/zm-search@2x.png"></span></a>
                    <span class="zm-help none">搜索</span>
                </li>
                    <li class="user" id="zm-user" style="padding: 35px 0px 43px;">


                        <a class="zm-personImg" href="set.jsp" style="color: rgb(176, 176, 176);"><span><img src="<%=request.getContextPath() %>/img/<%=user.getImage()%>" style="padding: 0;margin-top: 4px;"></span></a>

                        <ul class="user-data" style="top: 98px; display: none;">
                            
                            <li style="padding: 0px;"><a href="set.jsp" onclick="sessionStorage.setItem(&#39;TAB&#39;, 0);">个人设置</a></li>
                            <li style="padding: 0px;"><a href="relationship.jsp">我的关系</a></li>
                            <li style="padding: 0px;"><a href="logout.jsp">退出登录</a></li>
                        </ul>
                    </li>

                    <li class="user-news" id="user-news" style="padding: 35px 0px 43px;">
                <a href="#" style="color: rgb(176, 176, 176);"><span><img class="news-data" src="img/zm-xiaoxi.png"></span></a>
                <span class="zm-help none" id="news">消息</span>
                 <div class="news-content none" style="top: 98px; display: none;">
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
                                <div class="mt" style="display:none;">
                                    <ul class="zm-mt-content" id="divNotification">

                                    </ul>
                                </div>
                                <div class="mt" style="display:none;">
                                    <ul class="zm-mt-content" id="divDirectMessage">

                                    </ul>
                                </div>

                            </div>
                            <div class="news-more"><a href="#">查看更多</a></div>
                    </div>
                        </div>
                    </li>

                   <li style="padding: 35px 0px 43px;">
                        <a href="#"><span><img src="img/zm-help@2x.png"></span></a>
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


<div class="container-w" style="padding-top: 0px">
    <div class="book-list-page">
      
        <div class="book-list clearfix">
            <h3 class="title">好书推荐</h3>
              
            <div class="book-item-2">
                <div class="map">

                     <a href="bookDetail.html" target="_blank">
                            
                                <img src="img/book-1.jpg" id="rbImage529075">
                            
                        </a>

                </div>
                <div class="info">
                    <p>二手时间</p>
                    <div>[白俄] S.A.阿列克谢耶维奇
</div>
                   
                </div>
            </div>
             
            <div class="book-item-2">
                <div class="map">

                     <a href="#" target="_blank">
                            
                                <img src="img/book-2.jpg" id="rbImage529074">
                            
                        </a>

                </div>
                <div class="info">
                    <p>极简宇宙史</p>
                    <div>[法]克里斯托弗·加尔法德 </div>
                    
                </div>
            </div>
             
            <div class="book-item-2">
                <div class="map">

                     <a href="#" target="_blank">
                            
                                <img src="img/book-3.jpg" id="rbImage529073">
                            
                        </a>

                </div>
                <div class="info">
                    <p>无人生还</p>
                    <div>[英]阿加莎·克里斯蒂 </div>
                    
                </div>
            </div>
             
            <div class="book-item-2">
                <div class="map">

                     <a href="#" target="_blank">
                            
                                <img src="img/book-4.jpg" id="rbImage529072">
                            
                        </a>

                </div>
                <div class="info">
                    <p>灯塔</p>
                    <div>[法]克里斯多夫·夏布特 </div>
                   
                </div>
            </div>
             
            <div class="book-item-2">
                <div class="map">

                     <a href="#" target="_blank">
                            
                                <img src="img/book-5.jpg" id="rbImage529071">
                            
                        </a>

                </div>
                <div class="info">
                    <p>活着为了讲述</p>
                    <div>[哥伦比亚]加西亚·马尔克斯 </div>
                    
                </div>
            </div>
             
            <div class="book-item-2">
                <div class="map">

                     <a href="#" target="_blank">
                            
                                <img src="img/book-6.jpg" id="rbImage529070">
                            
                        </a>

                </div>
                <div class="info">
                    <p>造房子</p>
                    <div> 王澍 </div>
                   
                </div>
            </div>
             
            <div class="book-item-2">
                <div class="map">

                     <a href="#" target="_blank">
                            
                                <img src="img/book-7.jpg" id="rbImage529068">
                            
                        </a>

                </div>
                <div class="info">
                    <p>北鸢</p>
                    <div>葛亮 </div>
                    
                </div>
            </div>
             
            <div class="book-item-2">
                <div class="map">

                     <a href="#" target="_blank">
                            
                                <img src="img/book-8.jpg" id="rbImage529067">
                            
                        </a>

                </div>
                <div class="info">
                    <p>斯通纳</p>
                    <div>[美国]约翰·威廉斯 </div>
                   
                </div>
            </div>
             


        </div>
    <div class="zm-cell-left">
        <div class="article" style="text-align: center;">
            <div class="pageNum clearfix" style="display: inline-block;">
                
             
                    
                        
                            <a class="pageNum_on" style="width:35px">1</a>
                        
                    
                
                    
                        <a href="#">2</a>
                    
                
                    
                        <a href="#">3</a>
                    
                
                    
                        <a href="#">4</a>
                    
                
                    
                        <a href="#">5</a>
                    
                
                
                    <a href="#">下一页</a>
                
            </div>
        </div>
    </div>


    </div>
</div>

 <script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
    <script language="javascript" type="text/javascript">
        var option = {
            maxWidth: 500,
            fitToView: false,
            width: '500',
            autoSize: false,
            autoHeight: true,
            //autoCenter    : false ,
            type: 'inline',
            closeBtn: false,
            openEffect: 'none',
            closeEffect: 'none',
            wrapCSS: 'fancybox-wrap-empty'
        };

        function show_notice_1(name, id) {

            $('#txtRouteBookName').val(name);
            $('#txtRouteBookId').val(id);

            $.fancybox.open("#modal-notice-1", option);
        }

        function show_notice_2(id) {
            $.post("/routebook/regenerate/thumbnail", {id: id}, function (res) {
                var msg = bacutil.decode(res);
                if (msg && msg.success) {
                    //删除成功
                    $('#rbImage' + id).attr("src", msg.image_url);
                    $.fancybox.open("#modal-notice-2", option);
                } else {
                    //删除失败
                    alert(msg.message);
                }
            });


        }

        function show_notice_3(id) {
            $('#txtRouteBookId').val(id);
            $.fancybox.open("#modal-notice-3", option);
        }

        function show_notice_4() {

            $.fancybox.open("#modal-book", {
                maxWidth: 600,
                fitToView: false,
                width: '600',
                autoSize: false,
                autoHeight: true,
                //autoCenter    : false ,
                type: 'inline',
                closeBtn: false,
                openEffect: 'none',
                closeEffect: 'none',
                wrapCSS: 'fancybox-wrap-empty'
            });
        }
    </script>


    <script>


        function getStrLength(str) {
            var cArr = str.match(/[^\x00-\xff]/ig);
            return str.length + (cArr == null ? 0 : cArr.length);
        }


        $('#btnDelete').click(function () {
            var id = $('#txtRouteBookId').val();
            $.post("/routebook/delete", {id: id}, function (res) {
                var msg = bacutil.decode(res);
                if (msg && msg.success) {
                    //删除成功
                    $("#routeBookItem" + id).remove();
                    $.fancybox.close();
                } else {
                    //删除失败
                    alert(msg.message);
                }
            });
        });

        function cancelUpload() {
            $('#txtFormName').val("")
            $('#filedata').val("");
            $.fancybox.close();
        }

        $('#btnEditName').click(function () {
            var name = $('#txtRouteBookName').val();
            var count = getStrLength(name);
            if (count > 100) {
                alert("路书名称不能大于100个字");
                return;
            }
            var id = $('#txtRouteBookId').val();
            $.post("/routebook/edit/name", {id: id, name: name}, function () {









            });
        });

        $('#sltfile').click(function () {
            $('#filedata').click();
        });


        $(document).ready(function () {
            var options = {
                beforeSubmit: showRequest, // pre-submit callback
                success: showResponse
                // post-submit callback
            };

            $('#formAddFileRoutebook').submit(function (res) {
                $(this).ajaxSubmit(options);
                return false;
            });

        });

        function showRequest(formData, jqForm, options) {
            
            
            
            
            var text = $('#export').html();
            $('#export').attr("disabled", "disabled");
            if (text == '提交中..') {

                return;
            }
            $('#export').html("提交中..");
            var queryString = $.param(formData);

            return true;
        }

        function showResponse(responseText, statusText, xhr, $form) {
            var msg = bacutil.decode(responseText);
            if (msg.success) {
                $('#export').html("保存路书");
                $('#export').removeAttr("disabled");
                $.fancybox.close();
                window.location.href = "/routebook/detail/" + msg.id;
            } else {
                $('#export').html("保存路书");
                $('#export').removeAttr("disabled");
                alert(msg.message);
            }
        }


        function copyRouteBook(id) {
            if (confirm('确定要复制此路书吗?')) {
                $.post("/routebook/copy", {id: id}, function (res) {
                    var msg = bacutil.decode(res);
                    if (msg && msg.success) {
                        alert("已复制一份到我的路书列表~");
                    } else {
                        alert(msg.message);
                    }
                });
            }
        }


           $(function () {

            $('#btnSubmit').click(function () {
                var routebookName = $('#txtRoutebookName').val();
                var $title = $.trim(routebookName);


                window.location.href = "index?rbname=" + routebookName;

            });

        });




























    </script>






    <div id="zm-artboard-footer" style="position: static; left: auto; bottom: auto; right: auto;">
        <div class="artboard-foot">
            <div class="foot-content">
             
                <div class="foot-lef">
                    <ul class="clearfix">
                       
                        <li><a href="http://www.iriding.cc/company_info" target="_blank"><span>关于我们</span></a></li>
                        <li><a href="http://www.iriding.cc/company_info" target="_blank"><span>联系我们</span></a></li>
                        <li><a href="http://www.iriding.cc/feedback/index" target="_blank"><span>问题反馈</span></a></li>
                    </ul>
                   
                </div>
            </div>
        </div>
    </div>
    <div class="zm-widget-to-top widget-to-top-on" style="display: block; margin-left: 620px; left: 50%;" id="zm-to-top">
        <ul class="list-unstyled">
            <li class="top"><span id="toTop"></span></li>
            <li class="qrcode" onmouseover="$(this).addClass(&#39;qrcode_on&#39;)" onmouseout="$(this).removeClass(&#39;qrcode_on&#39;)">
                <a href="javascript:void(0)"></a>

                <div class="drop-qrcode"></div>
            </li>
          
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

</body></html>