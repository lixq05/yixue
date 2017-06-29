<%@ page language="java"  pageEncoding="UTf-8"%>
<%@ page import="entity.User" %>
<%@ page import="java.util.*,entity.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<!-- saved from url=(0028)http://iriding.cc/community/ -->
<html class="">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>逸学-首页</title>
		<link rel="shortcut icon" href="img/faviconv2.ico" type="image/x-icon">
		<link rel="icon" href="img/faviconv2.ico" type="image/x-icon">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<style>
	

		</style>
		<!--[if lt IE 9]>
        <script type="text/javascript">
            alert('IE版本太低，请升级后使用');
        </script>
    <![endif]-->
		<link rel="stylesheet" type="text/css" href="css/zm-public.css" />
		<link rel="stylesheet" type="text/css" href="css/zm-basic.css" />
		<link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.iriding.css" />
		<link rel="stylesheet" href="css/pageSwitch.min.css">
		<script src="js/countUp.min.js.下载" type="text/javascript" async="true"></script>
		<script src="js/hm.js.下载" type="text/javascript" async="true"></script>
		<script src="js/IsPC.js.下载" type="text/javascript" async="true"></script>
		<script src="js/jquery.fancybox.js.下载" type="text/javascript" async="true"></script>
		<script src="js/jquery.form.js.下载" type="text/javascript" async="true"></script>
		<script src="js/jquery.superslide.js.下载" type="text/javascript" async="true"></script>
	
		<script src="js/jquery-1.8.3.min.js.下载" type="text/javascript" async="true"></script>
		<script src="js/slides.min.jquery.js.下载" type="text/javascript" async="true"></script>
		<script src="js/utils-min.js.下载" type="text/javascript" async="true"></script>
		<script src="js/vds-gr.js.下载" type="text/javascript" async="true"></script>
		<script src="js/zm-qiji.js" type="text/javascript" async="true"></script>

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
	#container {
			width: 830px;
			height: 442px;
			overflow: hidden;
	}
	.sections,.section {
		height:100%;
	}
	#container,.sections {
		position: relative;
	}
	.section {
		background-color: #000;
		background-size: cover;
		background-position: 50% 50%;
		text-align: center;
		color: white;
	}
	#section0 {
		background-image: url('img/pic1.jpg');
	}
	#section1 {
		background-image: url('img/pic2.jpg');
	}
	#section2 {
		background-image: url('img/pic3.jpg');
	}
	#section3 {
		background-image: url('img/pic4.jpg');
	}
</style>
	</head>
 <%
         
   User user = (User) request.getSession().getAttribute("user");
         %>
	<body id="zm-new">
        
		<div id="zm-header" style="height: 100px;">
			<div class="zm-artboard-head clearfix">
				<p class="artboard-logo">
					<a href="http://iriding.cc/" style="padding: 16px 0px 0px;">
					<img src="img/logo.png" style="width: 122px; height: 58px;"></a>
				</p>
				<ul class="zm-nav zm-wes">

					<li style="padding: 40px 42px 44px;">
						<a href="index.jsp" class="bar"><span>首页</span></a>
					</li>

					<li style="padding: 40px 42px 44px;">
						<a href="forum.jsp" class=""><span>论坛</span></a>
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

						<a class="zm-personImg" href="http://iriding.cc/user/w4tjIoc9CaFM"><span><img src="<%=request.getContextPath() %>/img/<%=user.getImage()%>" style="padding: 0;margin-top: 4px;"></span></a>

						<ul class="user-data" style="top: 98px;">
							<li style="padding: 0px;">
								<a href="set.html" onclick="sessionStorage.setItem(&#39;TAB&#39;, 0);">个人设置</a>
							</li>
							<li style="padding: 0px;">
								<a href="relationship.jsp">我的关系</a>
							</li>
							<li style="padding: 0px;">
								<a href="logout.jsp">退出登录</a>
							</li>
						</ul>
					</li>

					<li class="user-news" id="user-news" style="padding: 35px 0px 43px;">
						<a href="http://iriding.cc/community/#"><span><img class="news-data" src="img/zm-xiaoxi.png"></span></a>
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
						<a href="help.jsp"><span><img src="img/zm-help@2x.png"></span></a>
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

		<div class="zm-container-w clearfix">
			<div class="zm-cell-left zm-cell-left-w fl">

				<!--焦点图-->
				<div id="zm-container">
					<div id="example">
						<div id="slides">
							<div id="container">
								<div class="sections">
									<div class="section" id="section0"></div>
									<div class="section" id="section1"></div>
									<div class="section" id="section2"></div>
									<div class="section" id="section3"></div>
								</div>
							</div>
<script type="text/javascript">

  

		 $(function(){



				/*======next======*/

				$(".next a").click(function(){ nextscroll() });



				function nextscroll(){



						var vcon = $(".v_cont ");

						var offset = ($(".v_cont li").width())*-1;

						

						vcon.stop().animate({left:offset},"slow",function(){



							 var firstItem = $(".v_cont ul li").first();

							 vcon.find("ul").append(firstItem);

							 $(this).css("left","0px");



							 circle()

							

						});  

					

				};





				function circle(){

					  

						var currentItem = $(".v_cont ul li").first();

						var currentIndex = currentItem.attr("index");



						$(".circle li").removeClass("circle-cur");

						$(".circle li").eq(currentIndex).addClass("circle-cur");

						

				}



				//setInterval(nextscroll,2000)

				 

				/*======prev======*/

				$(".prev a").click(function(){



						var vcon = $(".v_cont ");

						var offset = ($(".v_cont li").width()*-1);



						var lastItem = $(".v_cont ul li").last();

						vcon.find("ul").prepend(lastItem);

						vcon.css("left",offset);

						vcon.animate({left:"0px"},"slow",function(){

							 circle()

						})



				 });



			   /*======btn====circle======*/

				 var animateEnd = 1;



				$(".circle li").click(function(){



					   if(animateEnd==0){return;}



					   $(this).addClass("circle-cur").siblings().removeClass("circle-cur");

					

						var nextindex = $(this).index();

						var currentindex = $(".v_cont li").first().attr("index");

						var curr = $(".v_cont li").first().clone();

						

						if(nextindex > currentindex){



								for (var i = 0; i < nextindex - currentindex; i++) {

									 

									 var firstItem = $(".v_cont li").first();

									 $(".v_cont ul").append(firstItem); 

										

								}



								$(".v_cont ul").prepend(curr);



								var offset = ($(".v_cont li").width())*-1;



								if(animateEnd==1){



									animateEnd=0;	

									$(".v_cont").stop().animate({left:offset},"slow",function(){



											$(".v_cont ul li").first().remove();

											$(".v_cont").css("left","0px");

											animateEnd=1;



									}); 



								} 



						}else{



								var curt = $(".v_cont li").last().clone();



								for (var i = 0; i < currentindex - nextindex; i++) {

									 var lastItem = $(".v_cont li").last();

									 $(".v_cont ul").prepend(lastItem);

								}



								$(".v_cont ul").append(curt);



								var offset = ($(".v_cont li").width())*-1;



								$(".v_cont").css("left",offset);

										



								  if(animateEnd==1){



										animateEnd=0;	

										$(".v_cont").stop().animate({left:"0px"},"slow",function(){

											

											$(".v_cont ul li").last().remove();

											animateEnd=1;

										  

										}); 



									} 

							

							}



				});



		 })

  

</script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';clear:both;">
<br><br><br><br><br><br>

</div>
						</div>
					</div>
				</div>

				<!--广告图结束-->

				<!--推荐文章-->
				
				<div class="article clearfix">
					<p class="article_title" id="article_recommend_title">学习方向</p>
					<ul>

						<li>
							<a href="http://www.iriding.cc/community/topic/detail/788249" target="_blank">
							</a>
							<div class="articleCtx clearfix">
								<a href="#" target="_blank">
									<div class="articleImg fl" style="background: url(img/ky.jpg)center no-repeat;background-size: cover;">

									</div>
								</a>
								<div class="articleTxt fl">
									<a href="pageServlet?boardId=1" target="_blank">
										<span class="artTxt_title">
                                    
                               考研
                            </span>

										<p class="artTxt_ctx">
											考取研究生的简称，在中国大陆包括考前复习、笔试、面试等一系列过程。分享你的备战日记，以及分享你的考研经验，这里都是你的研友，大家一起携手前进。
										</p>

									</a>
									<div class="avatar_ctx clearfix">
										<a href="http://www.iriding.cc/community/topic/detail/788249" target="_blank">
										</a>
										<a href="http://www.iriding.cc/user/JOTW6BNYaMLj" class="avatar_name" target="_blank">

											<img src="img/ky.jpg" alt="Avatar"> 532
										</a>
										<span class="views avatar_span"></span>
										<span class="click_like avatar_span"></span>
										<span class="comment avatar_span"></span>
										<span class="fr">2016-03-23 07:29:23</span>
									</div>

								</div>

							</div>

						</li>

						<li>
							<a href="http://www.iriding.cc/community/topic/detail/788248" target="_blank">
							</a>
							<div class="articleCtx clearfix">
								<a href="http://www.iriding.cc/community/topic/detail/788248" target="_blank">
									<div class="articleImg fl" style="background: url(img/4.jpg)center no-repeat;background-size: cover;">

									</div>
								</a>
								<div class="articleTxt fl">
									<a href="http://www.iriding.cc/community/topic/detail/788248" target="_blank">
										<span class="artTxt_title">
                                    
                               出国
                            </span>

										<p class="artTxt_ctx">
											留学，旧称留洋，一般是指一个人去母国以外的国家接受各类教育，时间可以为短期或长期（从几个星期到几年）。这些人被称为“留学生”。在这里你可分享你的留学生生活，以及为留学所做的准备，更可以为学弟学妹提供你的经验
										</p>

									</a>
									<div class="avatar_ctx clearfix">
										<a href="http://www.iriding.cc/community/topic/detail/788248" target="_blank">
										</a>
										<a href="http://www.iriding.cc/user/IPtukidzBNZm" class="avatar_name" target="_blank">

											<img src="img/yy.jpg" alt="Avatar"> 66666666
										</a>
										<span class="views avatar_span"></span>
										<span class="click_like avatar_span"></span>
										<span class="comment avatar_span"></span>
										<span class="fr">2016-04-14 09:23:45</span>
									</div>

								</div>

							</div>

						</li>

						<li>
							<a href="http://www.iriding.cc/community/topic/detail/788189" target="_blank">
							</a>
							<div class="articleCtx clearfix">
								<a href="http://www.iriding.cc/community/topic/detail/788189" target="_blank">
									<div class="articleImg fl" style="background: url(img/yy.jpg)center no-repeat;background-size: cover;">

									</div>
								</a>
								<div class="articleTxt fl">
									<a href="http://www.iriding.cc/community/topic/detail/788189" target="_blank">
										<span class="artTxt_title">
                            英语
                            </span>

										<p class="artTxt_ctx">
											英语学习，学习方法，技巧，效率等一切与英语学习相关的问答，在这里你可以分享你每日背的单词，听的听力，每天所获取的点滴进步。
										</p>

									</a>
									<div class="avatar_ctx clearfix">
										<a href="http://www.iriding.cc/community/topic/detail/788189" target="_blank">
										</a>
										<a href="http://www.iriding.cc/user/j3hfqpJwooOU" class="avatar_name" target="_blank">

											<img src="img/yy.jpg" alt="Avatar"> 4322
										</a>
										<span class="views avatar_span"></span>
										<span class="click_like avatar_span"></span>
										<span class="comment avatar_span"></span>
										<span class="fr">2017-04-07 14:27:51</span>
									</div>

								</div>

							</div>

						</li>

						<li>
							<a href="http://www.iriding.cc/community/topic/detail/788232" target="_blank">
							</a>
							<div class="articleCtx clearfix">
								<a href="http://www.iriding.cc/community/topic/detail/788232" target="_blank">
									<div class="articleImg fl" style="background: url(img/jsj.jpg)center no-repeat;background-size: cover;">

									</div>
								</a>
								<div class="articleTxt fl">
									<a href="http://www.iriding.cc/community/topic/detail/788232" target="_blank">
										<span class="artTxt_title">
                                    
                                计算机
                            </span>

										<p class="artTxt_ctx">
											计算机科学（Computer Science, CS）是系统性研究信息与计算的理论基础以及它们在计算机系统中如何实现与应用的实用技术的学科。也是现在大学生所必须具备的一项基本技能，这里都是慢慢的干货。
										</p>

									</a>
									<div class="avatar_ctx clearfix">
										<a href="http://www.iriding.cc/community/topic/detail/788232" target="_blank">
										</a>
										<a href="http://www.iriding.cc/user/I2CUgiTIkh3c" class="avatar_name" target="_blank">

											<img src="img/gwy.jpg" alt="Avatar"> 6743
										</a>
										<span class="views avatar_span"></span>
										<span class="click_like avatar_span"></span>
										<span class="comment avatar_span"></span>
										<span class="fr">2017-04-10 12:04:33</span>
									</div>

								</div>

							</div>

						</li>

						<li>
							<a href="http://www.iriding.cc/community/topic/detail/788100" target="_blank">
							</a>
							<div class="articleCtx clearfix">
								<a href="http://www.iriding.cc/community/topic/detail/788100" target="_blank">
									<div class="articleImg fl" style="background: url(img/js.jpg)center no-repeat;background-size: cover;">

									</div>
								</a>
								<div class="articleTxt fl">
									<a href="http://www.iriding.cc/community/topic/detail/788100" target="_blank">
										<span class="artTxt_title">
                                    
                                        
                                    
                                教师资格证
                            </span>

										<p class="artTxt_ctx">
											教师资格证是教育行业从业教师的许可证。在我国，师范类大学毕业生须在学期期末考试中通过学校开设的教育学和教育心理学课程考试，并且要在全省统一组织的普通话考试中成绩达到二级乙等（中文专业为二级甲等）以上，方可在毕业时领取教师资格证。非师范类和其他社会人员需要在社会上参加认证考试等一系列测试后才能申请教师资格证。
										</p>

									</a>
									<div class="avatar_ctx clearfix">
										<a href="http://www.iriding.cc/community/topic/detail/788100" target="_blank">
										</a>
										<a href="http://www.iriding.cc/user/j3hfqpJwooOU" class="avatar_name" target="_blank">

											<img src="img/sx.jpg" alt="Avatar"> 7896
										</a>
										<span class="views avatar_span"></span>
										<span class="click_like avatar_span"></span>
										<span class="comment avatar_span"></span>
										<span class="fr">2017-03-29 14:42:55</span>
									</div>

								</div>

							</div>

						</li>

						<li>
							<a href="http://www.iriding.cc/community/topic/detail/788188" target="_blank">
							</a>
							<div class="articleCtx clearfix">
								<a href="http://www.iriding.cc/community/topic/detail/788188" target="_blank">
									<div class="articleImg fl" style="background: url(img/jy.jpg)center no-repeat;background-size: cover;">

									</div>
								</a>
								<div class="articleTxt fl">
									<a href="http://www.iriding.cc/community/topic/detail/788188" target="_blank">
										<span class="artTxt_title">
                                    
                                就业
                            </span>

										<p class="artTxt_ctx">
											大学生毕业之后一定要面临找工作的问题，在这里有前辈的经验，也有和你一样面临找工作的战友。
										</p>

									</a>
									<div class="avatar_ctx clearfix">
										<a href="http://www.iriding.cc/community/topic/detail/788188" target="_blank">
										</a>
										<a href="http://www.iriding.cc/user/C0WJ77dZPTFu" class="avatar_name" target="_blank">

											<img src="img/jy.jpg" alt="Avatar"> 1432
										</a>
										<span class="views avatar_span"></span>
										<span class="click_like avatar_span"></span>
										<span class="comment avatar_span"></span>
										<span class="fr">2017-04-07 13:36:09</span>
									</div>

								</div>

							</div>

						</li>

						<li>
							<a href="http://www.iriding.cc/community/topic/detail/788180" target="_blank">
							</a>
							<div class="articleCtx clearfix">
								<a href="http://www.iriding.cc/community/topic/detail/788180" target="_blank">
									<div class="articleImg fl" style="background: url(img/1.jpg)center no-repeat;background-size: cover;">

									</div>
								</a>
								<div class="articleTxt fl">
									<a href="http://www.iriding.cc/community/topic/detail/788180" target="_blank">
										<span class="artTxt_title">
                                    
                                        
                                    
                               闲聊
                            </span>

										<p class="artTxt_ctx">
											在这里你可以分享你生活的点滴，你每天都学习了那些东西，分享你每一天的进步，这儿也有和你一样渴望向上的人，大家携手共进，一起进步。
										</p>

									</a>
									<div class="avatar_ctx clearfix">
										<a href="http://www.iriding.cc/community/topic/detail/788180" target="_blank">
										</a>
										<a href="http://www.iriding.cc/user/j3hfqpJwooOU" class="avatar_name" target="_blank">

											<img src="img/1.jpg" alt="Avatar"> 45267
										</a>
										<span class="views avatar_span"></span>
										<span class="click_like avatar_span"></span>
										<span class="comment avatar_span"></span>
										<span class="fr">2017-04-06 11:01:13</span>
									</div>

								</div>

							</div>

						</li>

					</ul>
					<div class="pageNum fr clearfix">

						<a href="${pageContext.request.contextPath}/pageServlet?pageCur=1" class="pageNum_on" style="width:35px">1</a>

						<a href="${pageContext.request.contextPath}/pageServlet?pageCur=2">2</a>

						<a href="${pageContext.request.contextPath}/pageServlet?pageCur=3">3</a>

						<a href="${pageContext.request.contextPath}/pageServlet?pageCur=4">4</a>

						<a href="${pageContext.request.contextPath}/pageServlet?pageCur=5">5</a>

						<a href="${pageContext.request.contextPath}/pageServletServlet?pageCur=${pageView.pageCur+1>pageView.totalPage?pageView.pageCur:pageView.pageCur+1}">下一页</a>

					</div>

				</div>
			

			</div>
			<div class="zm-cell-right zm-cell-right-w fr">
				<div class="login_m">

					<!--已登录-->
					<div class="logged">
						<div class="loggedTop clearfix">
							<a href="http://iriding.cc/account/logout?next=/community/%3F"><span class="back_btn">退出</span></a>
							<span class="loggedImg">
                        <a href="http://iriding.cc/user/w4tjIoc9CaFM" target="_blank">
                              
                                 <a href="set.jsp"><img src="<%=request.getContextPath() %>/img/<%=user.getImage()%>"></a>
                              
                        </a>
                        </span>

							<p class="logged_name"><%=user.getUsername()%></p>

							<p class="logged_mileage">

							</p>

							<div class="newsNum">
								<ul class="clearfix">
									<li>
										<a href="http://iriding.cc/user/w4tjIoc9CaFM/topics" target="_blank">
											<p>
												0</p>
											<span>话题</span></a>
									</li>
									<li>
										<p>0</p><span>被赞</span>
									</li>
									<li>
										<a href="http://iriding.cc/user/w4tjIoc9CaFM/friends" target="_blank">
											<p>
												0</p>
											<span>好友</span></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="handle">
							<ul class="clearfix">
								<li>
									<a href="http://iriding.cc/user/w4tjIoc9CaFM" target="_blank" style="display: inline-block;width: 19px;height: 19px;" class="person-l1"><b></b></a>
								</li>
								<li>
									<a href="http://iriding.cc/account/setting" target="_blank" style="display: inline-block;width: 20px;height: 20px;" class="person-l2"><b></b></a>
								</li>
								<li>
									<a href="http://iriding.cc/message/system/notice" target="_blank" style="display: inline-block;width: 18px;height: 20px;" class="person-l3"><b></b></a>
								</li>
								<li>
									<a href="http://iriding.cc/user/w4tjIoc9CaFM/sports" target="_blank" style="display: inline-block;width: 19px;height: 17px;" class="person-l4"><b></b></a>
								</li>
							</ul>
						</div>

					</div>

				</div>

				<!--推荐标签-->
				<div class="zm-tag">
					<div class="tags" id="zm-tag">
						<p class="article_title">推荐标签</p>

						<p class="tags_span">

							<a href="topic.jsp">考研</a>

							<a href="http://www.iriding.cc/community/index?sort_field=&amp;has_image=&amp;tag_id=23&amp;is_fine=">出国</a>

							<a href="http://www.iriding.cc/community/index?sort_field=&amp;has_image=&amp;tag_id=25&amp;is_fine=">就业</a>

							<a href="http://www.iriding.cc/community/index?sort_field=&amp;has_image=&amp;tag_id=26&amp;is_fine=">英语</a>

							<a href="http://www.iriding.cc/community/index?sort_field=&amp;has_image=&amp;tag_id=27&amp;is_fine=">计算机二级</a>

							<a href="http://www.iriding.cc/community/index?sort_field=&amp;has_image=&amp;tag_id=29&amp;is_fine=">教师资格证</a>

							<a href="http://www.iriding.cc/community/index?sort_field=&amp;has_image=&amp;tag_id=30&amp;is_fine=">意见反馈</a>

						</p>
					</div>
				</div>

				<!--骑行明星榜-->
				<div class="ranking_list">
					<p class="article_title">学霸人气榜</p>
					<ul>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/FUqAf8J3x4JT" target="_blank">

									<img src="img/1.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/FUqAf8J3x4JT" target="_blank">
									<p>半盏流年</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/MIhc88eMeOpA" target="_blank">

									<img src="img/2.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/MIhc88eMeOpA" target="_blank">
									<p>莫负韶华</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/RU0ay6ezDH52" target="_blank">

									<img src="img/3.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/RU0ay6ezDH52" target="_blank">
									<p>清酒孤灯</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/gK3BIYpNYHIh" target="_blank">

									<img src="img/4.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/gK3BIYpNYHIh" target="_blank">
									<p>考神附体</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/BDrg1hn24eX7" target="_blank">

									<img src="img/gwy.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/BDrg1hn24eX7" target="_blank">
									<p>盖世小逗比</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/SNkhqjhroCWU" target="_blank">

									<img src="img/ky.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/SNkhqjhroCWU" target="_blank">
									<p>花落成泥</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/ufK2TqrVm113" target="_blank">

									<img src="img/sx.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/ufK2TqrVm113" target="_blank">
									<p>努力努力再努力</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

						<li class="clearfix">

							<div class="startImg fl">
								<a href="http://www.iriding.cc/user/st0zQBsv9fLa" target="_blank">

									<img src="img/yy.jpg">

								</a>
							</div>
							<div class="start_name fl">
								<a href="http://www.iriding.cc/user/st0zQBsv9fLa" target="_blank">
									<p> goodjob</p>
								</a>
								<span></span>
							</div>
							<span class="mileage fr"><span class="km"></span></span>

						</li>

					</ul>

				</div>

			</div>

		</div>

		<div id="zm-artboard-footer" style="position: static; left: auto; bottom: auto; right: auto;">
			<div class="artboard-foot">
				<div class="foot-content">

					<div class="foot-lef">
						<ul class="clearfix">
							<li>
								<a href="http://www.iriding.cc/download" target="_blank"><span></span></a>
							</li>
							<li>
								<a href="http://www.iriding.cc/company_info" target="_blank"><span>关于我们</span></a>
							</li>
							<li>
								<a href="http://www.iriding.cc/company_info" target="_blank"><span>联系我们</span></a>
							</li>
							<li>
								<a href="http://www.iriding.cc/feedback/index" target="_blank"><span>问题反馈</span></a>
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
				<li class="feed">
					<a href="http://iriding.cc/feedback/post/opinion" target="_blank">反馈</a>
				</li>
			</ul>
		</div>

		<script language="javascript" type="text/javascript" src="js/jquery.superslide.js.下载"></script>
		<script language="javascript">
			function search() {
				var title = $('#txtTopicTitle').val();
				window.open("/search/results?type=topic&keyword=" + title);
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
		<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
		<script src="js/pageSwitch.min.js"></script>
		<script>
			$("#container").PageSwitch({
				direction:'horizontal',
				easing:'ease-in',
				duration:1000,
				autoPlay:true,
				loop:'false'
			});
		</script>
	</body>

</html>