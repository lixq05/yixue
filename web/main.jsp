<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="entity.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="">
	<head>
		<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
		<!--<script src="js/ckepop.js" charset="utf-8"></script>-->
		<title>话题内容 </title>
		<link rel="shortcut icon" href="img/faviconv2.ico" type="image/x-icon">
		<link rel="icon" href="img/faviconv2.ico" type="image/x-icon">
		<meta charset="utf-8">
		<script language="javascript" type="text/javascript" src="js/jquery-1.8.3.min_001.js"></script>
		<script type="text/javascript" src="js/slides.min.jquery.js"></script>
		<script type="text/javascript" src="js/zm-qiji.js"></script>
		<script language="javascript" type="text/javascript" src="js/jquery.form.js"></script>
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
				_vds.push(['setCS1', 'UserId', 'yZ16SlrYWRFu']);
				_vds.push(['setCS2', 'UserName', '陈喵喵dBVsvorc']);
			})();
			//#############################
		</script>
		<link media="all" href="css/index3.css" type="text/css" rel="stylesheet">
		<style>
			.chenkx {
				margin-left: 600px;
			}
		</style>
	</head>

	<body class="white">
	<%
	   User user = (User)request.getSession().getAttribute("user");
	%>
		<div id="zm-header" style="height: 44px;">
			<div class="zm-artboard-head clearfix">
				<p class="artboard-logo">
					<a href="#" style="padding: 10px 0px 0px;">
					<img src="img/qiji-logo.@2x.png" style="width: 72px; height: 23px;"></a>
				</p>
				<ul class="zm-nav zm-wes">
					<li style="padding: 15px 42px 19px;">
						<a href="index.jsp" class=""><span>首页</span></a>
					</li>
					<li style="padding: 15px 42px 19px;">
						<a href="topicList.jsp" class="bar"><span>论坛</span></a>
					</li>
					<li style="padding: 15px 42px 19px;">
						<a href="book.jsp" class=""><span>好书分享</span></a>
					</li>
					<li style="padding: 15px 42px 19px;">
						<a href="join.jsp" class=""><span>俱乐部</span></a>
					</li>
					<li style="padding: 40px 42px 44px;">
						<a href="our.jsp" class=""><span>联系我们</span></a>
					</li>
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

						<a class="zm-personImg" href="#"><span>
							<img src="<%=request.getContextPath() %>/img/<%=user.getImage()%>" style="padding: 0px; margin-top: 4px;"></span></a>

						<ul class="user-data" style="top: 42px;">
							<li style="padding: 0px;">
								<a href="set.jsp" onclick="sessionStorage.setItem('TAB', 0);">个人设置</a>
							</li>
							<li style="padding: 0px;">
								<a href="relationship.jsp">我的关系</a>
							</li>
							<li style="padding: 0px;">
								<a href="logout.jsp">退出登录</a>
							</li>
						</ul>
					</li>

					<li class="user-news" id="user-news" style="padding: 8px 0px 18px;">
						<a href="#"><span>
							<img class="news-data" src="img/zm-xiaoxi.png"></span></a>
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
								<div class="news-more">
									<a href="#">查看更多</a>
								</div>
							</div>
						</div>
					</li>

					<li style="padding: 8px 0px 18px;">
						<a href="#"><span><img src="img/zm-help@2x.png"></span></a>
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

		<div class="zm-plate">
			<div class="zm-plate-content clearfix">
				<div class="zm-plate-left clearfix" id="zm-plate-left">
					<ul class="clearfix">
						<li>
							<a class="plate-bar" href="#">考研</a>
						</li>
						<li>
							<a href="#" class="">出国</a>
						</li>
						<li>
							<a href="#" class="">英语</a>
						</li>
						<li>
							<a href="#">计算机</a>
						</li>
						<li>
							<a href="#">教师资格证</a>
						</li>
						<li>
							<a href="#">就业</a>
						</li>
						<li>
							<a href="#">闲聊</a>
						</li>
						<li>
							<a href="javascript:void(0)" id="zm-plate-down">更多<i class="zm-plate-down"></i></a>
						</li>
					</ul>
				</div>
				<div class="zm-plate-right">
					<div class="plate-search">
						<input placeholder="推荐热词" name="" onkeydown="enterSearch()" id="txtTopicTitle" value="" type="text">

					</div>
					<div class="search">
						<a id="btnSearchTopic" href="javascript:void(0)"><i></i></a>
					</div>
				</div>
			</div>
			<div class="sdf" id="drag">
				<div class="dfg">
					<ul class="zm-plate-more">
						<li>
							<a href="#">韩语</a>
						</li>
						<li>
							<a href="#">日语</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="container-w">
			<div class="layout-73  mt-top clearfix">
				<div class="column-main">
					<div class="bbs-article-container">
						<div class="article-title">
							<h1>考研经验分享 </h1>
						</div>
						<div class="article-info">
							<div>
								<span style="margin-right: 5px;">考研</span>
								<span style="margin-left: 25px;">2017-04-15 10:02:15</span>
							</div>
						</div>
						<div class="article-content">
						<p>一、考研流程
							<br />
考研流程可以分为以下几个部分：
<br />
①明确考研的想法→②挑选学校，选专业→③准备考研→④考研报名→⑤考研初试→⑥等待成绩→⑦考研复试→⑧准备录取事宜
<br/>
二、院校选择
<br />
关于考研学校的选择方面，我觉得可以借鉴以下几点：
<br />
①学费 ②综合排名 ③奖学金的覆盖范围  ④自己的能力（分数线，复习参考书，真题难易度） ⑤所喜欢去地城市，综合以上5点考虑选择学校。
<br />
三、考研的初试与复试
<br />
考研初试科目：
<br />
公共课：政治（100）  英语（100）    数学（150）
<br />
专业课：不考数学，两门专业课（300）；
<br />
考数学，一门专业课（150）
另有某些专业硕士考政治和管理类综合（300）
考研总成绩：
<br />
①一志愿学生：初试权重（百分比）+复试权重（百分比）=总成绩     
<br />
②调剂学生：复试成绩=总成绩
<br />
四、考研复习方法
<br />
①知识点的复习：
<br />
②做题：
<br />
五、日常生活安排
<br />
在考研阶段，一定要合理安排自己的时间，考研是一个日积月累的过程，而不是几天或者几周就能完成的，因此一定要注意平时的积累，一步一个脚印，稳扎稳打。每天复习的时间要不少于7个小时。在复习的同时要注意劳逸结合，切记不可疲劳作战，那样既浪费时间也影响学习的效率。
<br />
六、心态调整
<br />
考研期间压力大是很正常的，为了不影响学习的效率，就要学会适当的减压，在压力大的时候，可以去到操场或者校园里走走，和同学聊聊天，呼吸呼吸空气，舒畅舒畅心情，或者选一个合适的地方大喊或唱歌来减压。男生可以通过运动减压，女生可以通过听歌或看娱乐节目减压，但是切记不要迷恋，考完研有的是时间去看，现在的主要任务是考研。
						</p>
						</div>
						<script language="javascript" type="text/javascript">
							$(function() {
								$(".article-share>.drop").hover(function() {
									$(this).addClass("drop-on");
								}, function() {
									$(this).removeClass("drop-on");
								});
							});
						</script>
					</div>
					<form action="addCommentServlet" method="post">
					<div class="reply-container">
						<h4 class="title">回复:</h4>						
						<a name="pagetop"></a>
						<div class="textarea">
							<textarea class="" id="content" name="commentText"></textarea>
						</div>
						<div class="reply-command">
							<button class="btn btn-success-2 pull-right" href="javascript:void(0)" id="btnSubmit">评论</button>
							<span class="btn btn-default fileinput-button">
                        <span>选择图片</span>
							<input id="fileToUpload" multiple="" name="filedata" style="background: rgb(151, 151, 151) none repeat scroll 0% 0%;" accept="image/png, image/gif, image/jpg, image/jpeg" type="file">
							<input id="txtImageId" class="form-control" name="image_id" type="hidden">
							</span>
							<div class="photo-uploader">
								<ul class="list-unstyled" id="imgshow">
								</ul>
							</div>
						</div>
				</form>
						<div id="msg_end" style="height: 0px; overflow: hidden;"></div>
						<input id="topicId" value="788268" type="hidden">
						
						<div class="discuss-list">
				<c:forEach var="comment" items="${sessionScope.commentList}">
						
						<div class="discuss-item" id="replyDiv76957">
								<a class="avatar" href="#">
									<img src="img/${comment.user.image}" height="36px" width="36px">
								</a>
								<div class="u-info">
									<a class="username" href="#">${comment.user.username}</a>
									<span>${comment.commentTime}</span>
								</div>								
								<p>${comment.commentText}<a class="chenkx" href="#">回复</a></p>
								<div class="discuss-recomment-container" id="recommentContainer76957" style="display: none;">
									<div class="caret"></div>
									<div class="discuss-recomment" id="showComment76957">
									</div>
								</div>
								<div class="discuss-recomment-container" id="commentDiv76957" style="display: none;">									
								</div>
								<div class="discuss-command" style="display: none;">
									<button class="btn btn-success btn-success-2" data-id="76957">评论</button>
								</div>

							</div>						
					</c:forEach>								

							
						</div>
					</div>
				</div>
				<div class="column-right">

					<div class="widget">
						<div class="widget-title">作者信息</div>
						<div class="widget-body">
							<div class="block-profile">
								<div class="avatar">
									<a href="#" target="_top">
										<img src="img/chenkx3.jpg">
									</a>
								</div>
								<div class="profile">
									<h4><a href="detail.jsp" target="_top">等海的少年</a></h4>
									<div class="city">
										东北师范大学</div>
									<p>聚散不由你我</p>
								</div>
								<div class="links">

									<div class="btn-group">
									    <a id="btn_follow_ed" class="btn btn-default btn-followed dropdown-toggle">
									    <button id="btn" onclick="change()" style="background-color:transparent;border-style:none;">关注</button>
									    </a>
									</div>
									<a target="_top" href="talk.jsp" class="btn btn-default btn-message">私信</a>

								</div>
								<div class="fans">
									<ul class="list-unstyled">
										<li class="line">
											<strong>40</strong>
											<span>好友</span>
										</li>
										<li>
											<strong>
                                    <p id="num" style="display:inline;">170</p>
                                </strong>
											<span>粉丝</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<div class="widget widget-3">
						<div class="widget-title">作者其他文章</div>
						<div class="widget-body">
							<div class="widget-article-list">
								<ul class="list-unstyled">

									<li>
										<a href="#">
											<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">你是为了什么而选择考研</div>
										</a>
									</li>

									<li>
										<a href="#">
											<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研政治详细资料</div>
										</a>
									</li>

									<li>
										<a href="#">
											<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">计算机专业实用网站</div>
										</a>
									</li>

									<li>
										<a href="#">
											<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">推荐一本好书</div>
										</a>
									</li>
								</ul>
								<div class="list-more">
									<a href="#">查看全部文章&gt;&gt;</a>
								</div>
							</div>
						</div>
					</div>
<script type="text/javascript">
function change()
{       
    document.getElementById('btn').innerText="已关注";
    btn.disabled=true;
    var num = document.getElementById("num");
    num.innerHTML = parseInt(num.innerHTML) + 1;
}
</script>
					<div class="widget widget-3">
					</div>

					<div class="pane-topic-home" style="margin-top: 20px;">
						<h3 class="pane-title">热门话题</h3>
						<ul class="list-unstyled">
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研复习中忘性大记不住怎么办？ </div>
								</a>
							</li>
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研复习中你有哪些独到而实用的经验方法 </div>
								</a>
							</li>
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研复习在学校好还是在家复习也一样</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">面对考研复习，如何每天都保证高效状态</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研复习经验</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研复习期间怎么解决分神问题？</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研复习到一半，效率和心态都明显下降怎么办</div>
								</a>
							</li>
							<li>
								<a href="#">
									<div style="white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width: 292px;">考研复习有必要对阅读做全文理解吗？ </div>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<script language="javascript" type="text/javascript">
			$(function() {
				$(".discuss-list>.discuss-item").hover(function() {
					$(this).addClass("discuss-item-on");
				}, function() {
					$(this).removeClass("discuss-item-on")
				});

				$(".discuss-item-re").hover(function() {
					$(this).addClass("discuss-item-re-on");
				}, function() {
					$(this).removeClass("discuss-item-re-on")
				});

				$(window).scroll(function() {
					var sender = $(this);
					if(sender.scrollTop() > 200) {
						if(!$(".shequ-to-top").is(".shequ-to-top-on")) {
							$(".shequ-to-top").addClass("shequ-to-top-on").fadeIn('fast');
						}
					} else {
						if($(".shequ-to-top").is(".shequ-to-top-on")) {
							$(".shequ-to-top").removeClass("shequ-to-top-on").fadeOut('fast');
						}
					}
				});
			});
		</script>

		<div id="zm-artboard-footer" style="position: static; left: auto; bottom: auto; right: auto;">
			<div class="artboard-foot">
				<div class="foot-content">
					<div class="foot-lef">
						<ul class="clearfix">
							<li>
								<a href="#" target="_top"><span>关于我们</span></a>
							</li>
							<li>
								<a href="#" target="_top"><span>联系我们</span></a>
							</li>
							<li>
								<a href="#" target="_top"><span>问题反馈</span></a>
							</li>
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
				<li class="feed">
					<a href="#" target="_top">反馈</a>
				</li>
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
		</script>
	</body>
</html>