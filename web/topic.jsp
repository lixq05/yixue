<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="entity.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
    <title>发表话题</title>    
    <link rel="shortcut icon" href="img/faviconv2.ico" type="image/x-icon">
    <link rel="icon" href="img/faviconv2.ico" type="image/x-icon">
    <meta charset="utf-8"> 
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/zm-qiji.js"></script>     
    <script language="javascript" type="text/javascript" src="js/jquery.iriding.js"></script>
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
                _vds.push(['setCS1', 'UserId', 'yZ16SlrYWRFu']);
                _vds.push(['setCS2', 'UserName', '陈喵喵dBVsvorc']);            
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
<link media="all" href="css/index1.css" type="text/css" rel="stylesheet">
</head>
<body class="white">
    <div id="zm-header" style="height: 100px;">
        <div class="zm-artboard-head clearfix">
            <p class="artboard-logo"><a href="#" style="padding: 16px 0px 0px;">
            <img src="img/qiji-logo.@2x.png" style="width: 122px; height: 58px;"></a></p>
            <ul class="zm-nav zm-wes">
                <li style="padding: 40px 42px 44px;"><a href="index.jsp" class=""><span>首页</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="topicList.jsp" class="bar"><span>论坛</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="book.jsp" class=""><span>好书分享</span></a></li>
                <li style="padding: 40px 42px 44px;"><a href="join.jsp" class=""><span>俱乐部</span></a></li>
                    <i class="bt-right" style="top: 40px;"></i>
               </li>
               <li style="padding: 40px 42px 44px;">
						<a href="our.jsp" class=""><span>联系我们</span></a>
					</li>
           </ul>   
           <%
             User user = (User) request.getSession().getAttribute("user");
           %>        
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
                            <li style="padding: 0px;"><a href="set.html" onclick="sessionStorage.setItem('TAB', 0);">个人设置</a></li>
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
    <div id="some_file_queue" style="display: none; width: 300px;">
        <div id="progress" class="progress" style="background-image: linear-gradient(to bottom, rgb(0, 153, 255), rgb(0, 153, 255)); margin-bottom: 0px;">
        </div>
    </div>
    
    
     <div class="container-w" style="margin-top: 80px;">
        <h4 class="pane-title"><span class="">发表话题</span></h4>
      <form action="addForumServlet" method="post" enctype="multipart/form-data">
         <div class="shequ-form-container">
       
            <div class="topic-list" style="margin-top: 20px;" id="divTags">
            	
            	<label><input style="margin-top: -4px;" value="考研" name="choose" type="radio">&nbsp;考研</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="出国" name="choose" type="radio">&nbsp;出国</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="就业" name="choose" type="radio">&nbsp;就业</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="四六级" name="choose" type="radio">&nbsp;四六级</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="计算机二级" name="choose" type="radio">&nbsp;计算机二级</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="教师资格证" name="choose" type="radio">&nbsp;教师资格证</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="日语" name="choose" type="radio">&nbsp;日语</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="韩语" name="choose" type="radio">&nbsp;韩语</label>&nbsp;&nbsp;
            	<label><input style="margin-top: -4px;" value="英语专四专八" name="choose" type="radio">&nbsp;英语专四专八</label>&nbsp;&nbsp;
            </div>
            <div class="form-group">
                <label class="control-label">标题</label>
                <input class="form-control" id="title" value="" type="text" name="title">
            </div>
            <div class="form-group">
                <label>发表时间</label>
                <br />
                <input id="dateandtime" value="" name="time"/>
            </div>
            <script>
            var date = new Date();
            var seperator1 = "-";
            var seperator2 = ":";
            var month = date.getMonth() + 1;
            var strDate = date.getDate();
            if (month >= 1 && month <= 9) {
                month = "0" + month;
            }
            if (strDate >= 0 && strDate <= 9) {
                strDate = "0" + strDate;
            }
            var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                    + " " + date.getHours() + seperator2 + date.getMinutes()
                    + seperator2 + date.getSeconds();
            document.getElementById("dateandtime").value = currentdate;
            </script>
            
            <div class="form-group">
                <input id="imgstr" name="imgstr" type="hidden">
                <input id="tags" name="tags" type="hidden">
                <label class="control-label">内容</label>
                <textarea class="form-control" style="height: 260px;" id="content" name="content"></textarea>
            </div>
    
        
        
      
            <div class="photo-uploader">
                <span class="btn btn-default fileinput-button">
                        <span>选择图片</span>
                       <input id="fileToUpload" multiple="" name="pic" style="background: rgb(151, 151, 151) none repeat scroll 0% 0%;" accept="image/png, image/gif, image/jpg, image/jpeg" type="file">
                    </span>
                <ul class="list-unstyled" id="imgshow">
                </ul>
                <div class="clearfix"></div>
            </div>
        
           
            <div class="form-actions">
                <button class="btn btn-success btn-success-2"  type="submit" id="btnPostTopic">好了，发布</button>
            </div>
           
           
        </div>
        </form>
    </div>
    <div id="zm-artboard-footer" style="position: static; left: auto; bottom: auto; right: auto;">
        <div class="artboard-foot">
            <div class="foot-content">
                <div class="foot-lef">
                    <ul class="clearfix">                        
                        <li><a href="#" target="_top"><span>关于我们</span></a></li>
                        <li><a href="#" target="_top"><span>联系我们</span></a></li>
                        <li><a href="#" target="_top"><span>问题反馈</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
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
</script>
</body>
</html>