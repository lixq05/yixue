<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="entity.*,util.*" %>
<%@ page import="dao.*,daoImpl.*" %>
<%@ page import="service.*,serviceImpl.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!-- saved from url=(0033)http://iriding.cc/community/index -->
<html class="">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>论坛-考研</title>
		<link rel="shortcut icon" href="img/faviconv2.ico" type="image/x-icon">
		<link rel="icon" href="img/faviconv2.ico" type="image/x-icon">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
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
		<!--[if lt IE 9]>
        <script type="text/javascript">
            alert('IE版本太低，请升级后使用');
        </script>
    <![endif]-->
		<link rel="stylesheet" href="css/bootstrap.iriding.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/zm-public.css">
		<link rel="stylesheet" href="css/zm-basic.css">
		<script type="text/javascript" async="" src="js/vds-gr.js.下载"></script>
		<script src="js/hm.js.下载"></script>
		<script type="text/javascript" src="js/jquery-1.8.3.min.js.下载"></script>
		<script type="text/javascript" src="js/countUp.min.js.下载"></script>
		<script type="text/javascript" src="js/slides.min.jquery.js.下载"></script>
		<script type="text/javascript" src="js/zm-qiji.js"></script>
		<script type="text/javascript" src="js/IsPC.js.下载"></script>

		<link rel="stylesheet" href="js/style.css">

		<link rel="stylesheet" type="text/css" href="js/jquery.fancybox.css" media="screen">
		<script language="javascript" type="text/javascript" src="js/jquery.form.js.下载"></script>
		<script language="javascript" type="text/javascript" src="js/jquery.fancybox.js.下载"></script>
		<!-- <script language="javascript" type="text/javascript" src="js/utils-min.js.下载"></script> -->

		<script language="javascript" type="text/javascript" src="js/new_unread_messages.js.下载"></script>

		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.iriding.css">
		<link rel="stylesheet" type="text/css" href="css/style(1).css">

		<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen">
		<script language="javascript" type="text/javascript" src="css/jquery-1.8.3.min.js(1).下载"></script>
		<script language="javascript" type="text/javascript" src="css/utils-min.js.下载"></script>
		<script language="javascript" type="text/javascript" src="css/bootstrap.min.js.下载"></script>
		<script language="javascript" type="text/javascript" src="css/respond.min.js.下载"></script>
		<script language="javascript" type="text/javascript" src="css/jquery.fancybox.pack.js.下载"></script>
		<script language="javascript" type="text/javascript" src="css/jquery.iriding.js.下载"></script>

		<script language="javascript" type="text/javascript" src="css/jquery.qtip.min.js.下载"></script>
		<script src="css/jquery.timeago.js.下载"></script>
		<script type="text/javascript" src="css/common.js.下载"></script>

		<script>
			var _hmt = _hmt || [];
			(function() {
				var hm = document.createElement("script");
				hm.src = "//hm.baidu.com/hm.js?82fc0233449ae435746db2fa038196bb";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s);
			})();
			//#############################
			var _vds = _vds || [];
			window._vds = _vds;
			(function() {
				_vds.push(['setAccountId', 'c831f3f148814099a87c86bd3aff59f9']);

				_vds.push(['setCS1', 'UserId', 'w4tjIoc9CaFM']);
				_vds.push(['setCS2', 'UserName', 'Dreizehn Maif5xRaPVJ']);

				(function() {
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
		<style type="text/css">
			.fancybox-margin {
				margin-right: 17px;
			}
		</style>
		<style type="text/css">
			.fancybox-margin {
				margin-right: 17px;
			}
		</style>
	</head>

	<body class="white">
	<%
	  User user1 = (User)request.getSession().getAttribute("user");
	 
	%>

		<div id="zm-header" style="height: 100px;">
			<div class="zm-artboard-head clearfix">
				<p class="artboard-logo">
					<a href="http://iriding.cc/" style="padding: 16px 0px 0px;">
					<img src="img/logo.png" style="width: 122px; height: 58px;"></a>
				</p>
				<ul class="zm-nav zm-wes">

					<li style="padding: 40px 42px 44px;">
						<a href="index.jsp" class=""><span>首页</span></a>
					</li>

					<li style="padding: 40px 42px 44px;">
						<a href="forum.jsp" class="bar"><span>论坛</span></a>
					</li>
					<li style="padding: 40px 42px 44px;">
						<a href="book.jsp" class=""><span>好书分享</span></a>
					</li>
					<li style="padding: 40px 42px 44px;">
						<a href="join.jsp" class=""><span>俱乐部</span></a>
					</li>
					<li style="padding: 40px 42px 44px;">
						<a href="our.jsp" class=""><span>联系我们</span></a>
					</li>
					
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

						<a class="zm-personImg" href="http://iriding.cc/user/w4tjIoc9CaFM"><span><img src="<%=request.getContextPath() %>/upload/<%=user1.getImage()%>" style="padding: 0;margin-top: 4px;"></span></a>

						<ul class="user-data" style="top: 98px;">
							
							<li style="padding: 0px;">
								<a href="http://iriding.cc/account/setting" onclick="sessionStorage.setItem(&#39;TAB&#39;, 0);">个人设置</a>
							</li>
							<li style="padding: 0px;">
								<a href="#">我的关系</a>
							</li>
							<li style="padding: 0px;">
								<a href="#">退出登录</a>
							</li>
						</ul>
					</li>

					<li class="user-news" id="user-news" style="padding: 35px 0px 43px;">
						<a href="http://iriding.cc/community/index#"><span><img class="news-data" src="img/zm-xiaoxi.png"></span></a>
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
									<div class="mt" style="display:none;">
										<ul class="zm-mt-content" id="divNotification">

										</ul>
									</div>
									<div class="mt" style="display:none;">
										<ul class="zm-mt-content" id="divDirectMessage">

										</ul>
									</div>

								</div>
								<div class="news-more">
									<a href="http://iriding.cc/message/system/notice">查看更多</a>
								</div>
							</div>
						</div>
					</li>

					<li style="padding: 35px 0px 43px;">
						<a href="http://iriding.cc/feedback/index"><span><img src="img/zm-help@2x.png"></span></a>
						<span class="zm-help none">帮助</span>
					</li>

				</ul>
			</div>
		</div>

		<script language="javascript">
			function show_float_login() {
				reqhref = window.location.href;
				reqhost = window.location.host;
				index = reqhref.indexOf(reqhost)
				requrl = reqhref.substr(index + reqhost.length, reqhref.length)

				homePageFlage = document.getElementById("isHomepageFlag")
				homePage = homePageFlage != null ? true : false;

				if(homePage || (!homePage)) {

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
				} else {
					$(".block-login").fadeIn(function() {

					});
				}
			}
		</script>
		<div class="zm-plate" style="box-shadow: rgba(100, 100, 100, 0.156863) 0px 4px 4px;">
			<div class="zm-plate-content clearfix">
				<div class="zm-plate-left clearfix" id="zm-plate-left">
					<ul class="clearfix">
						<li>
							<a href="forumServlet?param=kaoyan" class="plate-bar">考研</a>
						</li>
						<li>
							<a href="forumServlet?param=chuguo" class="">出国</a>
						</li>
						<li>
							<a href="forumServlet?param=yingyu">英语</a>
						</li>

						<li>
							<a href="forumServlet?param=jisuanji">计算机</a>
						</li>

						<li>
							<a href="forumServlet?param=jiaoshi">教师资格证</a>
						</li>

						<li>
							<a href="forumServlet?param=jiuye">就业</a>
						</li>

						<li>
							<a href="forumServlet?param=xianliao">闲聊</a>
						</li>

						<li>
							<a href="javascript:void(0)" id="zm-plate-down">更多<i class="zm-plate-down"></i></a>
						</li>
					</ul>

				</div>

			</div>
		
		</div>

		<div class="container-w">

			<script>
				$(".discover-photo-list .item").hover(function() {
					$(this).addClass("item-on");
				}, function() {
					$(this).removeClass("item-on");
				});
			</script>

			
			<div class="layout-73-home clearfix" style="padding-top: 20px">
				<div class="column-main">
					<div class="shequ-title">

						<strong>考研社区</strong>
						<a class="on" href="http://iriding.cc/community/index?is_follow=&amp;has_image=1&amp;sort_field=post_time&amp;tag_id=&amp;is_fine="></a>
						<a href="http://iriding.cc/community/index?is_follow=&amp;has_image=1&amp;sort_field=browse_count&amp;tag_id=&amp;is_fine="></a>
						<a href="http://iriding.cc/community/index?is_follow=&amp;has_image=1&amp;sort_field=lastreply_time&amp;tag_id=&amp;is_fine="></a>
					</div>

					<div class="shequ-topic-list shequ-topic-list-4 shequ-topic-list-pic">

	 <c:forEach var="forum" items="${sessionScope.pageBean.pageData}">
           
						<div class="item">

							<a class="avatar">

								<img src="<%=request.getContextPath()%>/upload/${forum.user.image}">

							 </a>

							<div class="title">
								<h3>
                                    
                                        <span class="text-success-2">[${forum.choose}]</span>
                                    
                                    <a href="http://iriding.cc/community/topic/detail/788253" target="_blank">

                                        
                                      ${forum.title}
                                        
                                    </a>

                                    <i class="icon-picture"></i>                              

                                    

                                </h3>

								<div class="info">
									<span>${forum.user.username}</span>&nbsp;|&nbsp;<span>浏览：${forum.view}</span>&nbsp;|&nbsp;<span>回复：0</span>&nbsp;|&nbsp;<span>发表于 </span><span class="timeago" title="2017-04-11 22:04:37">${TimeFormat.getFriendlytime(forum.time)}</span>
								</div>
								<script>
									$(function() {
										$(".timeago").timeago();
									});
								</script>

							</div>

							<div class="photo" style="width:700px">

								<a href="forumListServlet" target="_blank"><img src="<%=request.getContextPath() %>/upload/${forum.pic}" style="height: 100px;max-width: 160px;"></a>

							

							</div>

						</div>
					
				</c:forEach>
				
				<!-- 导航 -->
				<div class="pagination" style="margin-bottom:15px;">
						<ul>
<!--  
							<li class="active">
								<a>1</a>
							</li>
-->
							<li>
								<a href="${pageContext.request.contextPath }/pageServlet?currentPage=1">首页</a>
							</li>

							<li>
								<a href="${pageContext.request.contextPath }/pageServlet?currentPage=${sessionScope.pageBean.currentPage-1}">上一页</a>
							</li>

							<li>
								<a href="${pageContext.request.contextPath }/pageServlet?currentPage=${sessionScope.pageBean.currentPage+1}">下一页</a>
							</li>


							<li class="next">
								<a href="${pageContext.request.contextPath }/pageServlet?currentPage=${sessionScope.pageBean.totalPage}">末页</a>
							</li>

						</ul>
					</div>
 
					
			
			</div>

		</div>
	<div class="column-right column-right-white">
					<a style="background-color: #7ED321;" class="btn btn-success-2 btn-pub-topic" href="topic.jsp"><i class="icon-edit"></i>发表话题</a>

					<div class="pane-topic-home mt30" style="margin-top:20px">
						<h3 class="pane-title">热门话题</h3>
						<ul class="list-unstyled">

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">考研复习中忘性大记不住怎么办？</div>
								</a>
							</li>

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">考研复习你有哪些独到而实用的经验方法？</div>
								</a>
							</li>

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">考研复习在学校好还是在家复习也一样呢？ </div>
								</a>
							</li>

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">面对考研复习，如何每天都保证高效状态？</div>
								</a>
							</li>

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">考研复习经验</div>
								</a>
							</li>

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">考研复习期间怎么解决分神问题？</div>
								</a>
							</li>

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">考研复习到一半，效率和心态都明显下降，如何调整回状态？</div>
								</a>
							</li>

							<li>
								<a href="#">
									<div style="white-space:nowrap;text-overflow:ellipsis;overflow: hidden;width: 292px">考研复习有必要对阅读做全文翻译吗？</div>
								</a>
							</li>

						</ul>
					</div>
				</div>
		<script language="javascript" type="text/javascript" src="./论坛_files/jquery.superslide.js.下载"></script>
		<script language="javascript">
			$(function() {
				$(".recommend-slider").slide({
					titCell: ".hd a",
					mainCell: ".bd",
					effect: "left",
					autoPlay: true,
					delayTime: 700,
					interTime: 5000,
					defaultIndex: 1
				});

				$('#divSltTags').delegate(">a", "click", function() {
					var $it = $(this);
					var flag = "0";
					var i = $it.attr("class");
					var id = $it.attr("data-id");

					if(i == "on") {
						//取消操作
						flag = "1";
					}

					$.post("/community/topic/followtag", {
						id: id,
						flag: flag
					}, function(result) {
						var msg = bacutil.decode(result);
						if(msg.success) {
							if(flag == '1') {
								$it.removeClass("on");
							} else {
								$it.addClass("on");
							}
						} else {
							alert(msg.message)
						}
					});

				});

			});

			function showSltTags(flag) {
				if(flag > 0) {
					$('#divSltTags').show();
					$('#divAllTags').hide();
					$('.shequ-filter-tag').addClass("shequ-filter-tag-on");
				} else {
					$('#divSltTags').hide();
					$('#divAllTags').show();
					$('.shequ-filter-tag').removeClass("shequ-filter-tag-on");
				}
			}

			function search() {
				var title = $('#txtTopicTitle').val();
				window.location.href = "/community/index?is_follow=&has_image=1&sort_field=post_time&tag_id=&is_fine=&title=" + title;

			}

			function enterSearch() {
				var topic = window.topic || arguments.callee.caller.arguments[0];
				if(topic.keyCode == 13) {
					search();
				}
			}

			$(function() {
				$('#btnSearchTopic').click(function() {
					search();
				});
			})
		</script>

		<div id="zm-artboard-footer" style="position: static; left: auto; bottom: auto; right: auto;">
			<div class="artboard-foot">
				<div class="foot-content" style="margin-top:1000px;">
					

					
					<div class="foot-lef" >
						<ul class="clearfix">
							
							<li>
								<a href="#" target="_blank"><span>关于我们</span></a>
							</li>
							<li>
								<a href="#" target="_blank"><span>联系我们</span></a>
							</li>
							<li>
								<a href="#" target="_blank"><span>问题反馈</span></a>
							</li>
						</ul>
						
					</div>
				</div>
			</div>
		</div>
		<div class="zm-widget-to-top widget-to-top-on" style="display: block; margin-left: 0px; left: auto; right: 20px;" id="zm-to-top">
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
				if(offsetbottom < winHeight) {
					$("#zm-artboard-footer").css({
						"position": "absolute",
						"left": 0,
						"bottom": 0,
						"right": 0
					});
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
					if($("#zm-artboard-footer").offset().top + 150 < winHeight) {
						$("#zm-artboard-footer").css({
							"position": "absolute",
							"left": 0,
							"bottom": 0,
							"right": 0
						});
					} else {
						$("#zm-artboard-footer").css({
							"position": "static",
							"left": "auto",
							"bottom": "auto",
							"right": "auto"
						});

					}
				}
				if(offsetbottom - 150 < winHeight) {
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
				success: function(data) {
					if(data.success) {
						var demo = new CountUp("myTargetElement", 0, data.TotalDistance, 0, 2.5, options);
						$(window).scroll(function() {
							var a = $('#zm-header').height();
							var b = $('.zm-plate').height();
							var c = $('.zm-cell-left').height();
							var d = $('.zm-cell-right').height();
							var e = $(window).height();
							var s = a + b + c;
							var w = a + b + d;
							if($(window).scrollTop() >= 800) {
								$('.top').fadeIn();
								if($(window).scrollTop() >= (a + b + d + 30)) {
									$('#zm-tag').css({
										"position": "fixed",
										"top": "50px"
									});
								} else {
									$('#zm-tag').css({
										"position": "static"
									});
								}

							} else {
								$('.top').fadeOut();
							}
							if($(window).scrollTop() >= (s - e + 110)) {
								demo.start();
							}
						});
						showNumber(data.TotalDistance);
						if($("#totalUserDistance")) {
							$("#totalUserDistance").html(data.TotalDistance + "<span style='font-size:20px'>km</span>");
						}
					}
				}
			});
			$(document).ready(function() {
				var offsetTop2 = $("#zm-artboard-footer").offset().top + 145;
				window.addEventListener("resize", function() {
					var winHeight = $(window).height();
					if(offsetTop2 < winHeight) {
						$("#zm-artboard-footer").css({
							"position": "absolute",
							"left": 0,
							"bottom": 0,
							"right": 0
						});
					} else {
						$("#zm-artboard-footer").css({
							"position": "static",
							"left": "auto",
							"bottom": "auto",
							"right": "auto"
						});
					}
				});

				$(".zm-search-show").click(function() {
					$(this).hide();
					$(this).siblings(".zm-help").hide();
					$(".zm-search-div").fadeIn();
					$(".zm-search-div input").css({
						"width": "280px"
					});
				});
			});

			function gSearch() {

				var keyword = $('#txtBarKeyword').val();
				var $title = $.trim(keyword);
				if($title == '') {
					window.location.href = "/search/results";
				} else {
					var type = "user";
					window.location.href = "/search/results?type=" + type + "&keyword=" + keyword;
				}
			}

			$(function() {
				$('#btnSearchUser').click(function() {
					gSearch();
				});
			})

			function EnterPressSearch(e) { //传入 title
				var e = e || window.event;
				if(e.keyCode == 13) {
					gSearch();
				}
			}
		</script>

	</body>

</html>