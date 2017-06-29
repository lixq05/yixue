$(function () {
    speed = 800;//返回顶部速度
    //登录状态下个人的信息
    $("#zm-user img").mouseover(function () {
        $(this).parents("#zm-user").children("ul").show();
        $(this).parents("#zm-user").children('a').css('color', '#FFD800');
    })
    $("#zm-user").mouseleave(function () {
        $(this).children("ul").hide();
        $(this).children('a').css('color', '#B0B0B0');
    })
    //登录状态下个人的消息
    $("#user-news img").mouseover(function () {
        $(this).parents("#user-news").children(".news-content").show();
        $(this).parents("#user-news").children('a').css('color', '#FFD800');
    })
    $("#user-news").mouseleave(function () {
        $(this).children(".news-content").hide();
        $(this).children('a').css('color', '#B0B0B0');
    })
    //登录状态下个人的消息的内容切换
    $(".news-content li").click(function () {
        $(".news-content li").removeClass("current");
        $(this).addClass("current");
        var index=$(this).prevAll().length;
        $("#zs-content div").hide();
        $("#zs-content div").eq(index).show();
    })
    //返回顶部
    $("#toTop").click(function () {
        $('html,body').animate({
                scrollTop: '0px'
            },
            speed);
    });
    //导航栏的更多
    $("#zm-plate-left ul li>a").click(function () {
        $("#zm-plate-left ul li>a").removeClass("plate-bar");
        $(this).addClass("plate-bar");
    });
    $('#zm-plate-down').click(function () {
        var s = $('.sdf').hasClass('ert');
        if (!s) {
            $(".sdf").animate({"position": "absolute", "height": "50px", "padding-top": "10px"}, 200).addClass('ert');
            $('.zm-plate').css("box-shadow", "none");
            $(".zm-plate-more").css("border-top", "1px solid #E7E7E7").slideDown(200);
        } else {
            $(".sdf").animate({"position": "none", "height": "0", "padding-top": "0"}, 200).removeClass('ert');
            $('.zm-plate').css("box-shadow", "0 4px 4px rgba(100,100,100,.16)");
            $(".zm-plate-more").css("border-top", "none").slideUp(50);
        }
    });
    $(document).click(function (e) {
        var drag = $("#drag");
        var dragel = $("#drag")[0];
        var target = e.target;
        var dragel2 = $("#zm-plate-down")[0];
        if (drag && dragel && dragel2) {
            if ((dragel !== target && !$.contains(dragel, target)) && (dragel2 !== target && !$.contains(dragel2, target))) {
                $(".sdf").animate({"position": "none", "height": "0", "padding-top": "0"}, 200).removeClass('ert')
                $('.zm-plate').css("box-shadow", "0 4px 4px rgba(100,100,100,.16)");
                $(".zm-plate-more").css("border-top", "none").slideUp(50);
            }
        }
    });
    ////页面底部数字动画
    //var options = {
    //    useEasing : true,
    //    useGrouping : true,
    //    separator : ',',
    //    decimal : '.',
    //    prefix : '',
    //    suffix : ''
    //};
    //var demo = new CountUp("myTargetElement", 0, 4312310, 0, 2.5, options);
    ////当页面内容没有滚动轴出现的时候
    //var zm_data = $('.foot-lef').offset().top;
    //var we = $(window).height();
    //if(zm_data < we){
    //    demo.start();
    //}


    var a = $('#zm-header').height();
    var b = $('.zm-plate').height();
    var c = $('.zm-cell-left').height();
    var d = $('.zm-cell-right').height();
    var e = $(window).height();
    var s = a+b+c;
    var w = a+b+d;
    var zm_height = $('.foot-lef').offset().top;
    //alert(zm_height);

    if($(window).scrollTop()>=80){
        $('#zm-header').css({"height":"44px"});
        $('.artboard-logo a').css({"padding":"10px 0 0 0"});
        $('.artboard-logo a img').css({"width":"72px","height":"23px"});
        $('#zm-header .zm-artboard-head ul.zm-wes li').css({"padding":"15px 42px 19px 42px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li').css({"padding":"8px 0 18px 0"});
        $('#zm-header .zm-artboard-head ul.zm-mt-xin li').css({"padding":"15px 25px"});
        $('#zm-header .zm-artboard-head ul.zm-mt-content li').css({"padding":"15px 25px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data').css({"top":"42px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data li').css({"padding":"0"});
        $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content').css({"top":"42px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content ul li.hand').css({"padding":"0"});
        $('#zm-header .zm-artboard-head ul i.bt-left').css({"top":"16px"});
        $('#zm-header .zm-artboard-head ul i.bt-right').css({"top":"16px"});
    }else{
        $('#zm-header').css({"height":"100px"});
        $('.artboard-logo a').css({"padding":"16px 0 0 0"})
        $('.artboard-logo a img').css({"width":"122px","height":"58px"});
        $('#zm-header .zm-artboard-head ul.zm-wes li').css({"padding":"40px 42px 44px 42px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li').css({"padding":"35px 0 43px 0"});
        $('#zm-header .zm-artboard-head ul.zm-mt-xin li').css({"padding":"15px 25px"});
        $('#zm-header .zm-artboard-head ul.zm-mt-content li').css({"padding":"15px 25px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data').css({"top":"98px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data li').css({"padding":"0"});
        $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content').css({"top":"98px"});
        $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content ul li.hand').css({"padding":"0"});
        $('#zm-header .zm-artboard-head ul i.bt-left').css({"top":"40px"});
        $('#zm-header .zm-artboard-head ul i.bt-right').css({"top":"40px"});
    }

    if($(window).scrollTop()>=800){
        $('.top').fadeIn();
        if($(window).scrollTop()>=(b+d+130)){
            $('#zm-tag').css({"position":"fixed","top":"50px"});
        }else{
            $('#zm-tag').css({"position":"static"});
        }
        if($(window).scrollTop()>=(zm_height-e+30)){
            demo.start();
        }
    }else{
        $('.top').fadeOut();
    }

    $(window).scroll(function(){
        var a = $('#zm-header').height();
        var b = $('.zm-plate').height();
        var c = $('.zm-cell-left').height();
        var d = $('.zm-cell-right').height();
        var e = $(window).height();
        var s = a+b+c;
        var w = a+b+d;
        var zm_height = $('.foot-lef').offset().top;
        //alert(zm_height);

        if($(window).scrollTop()>=80){
            $('#zm-header').css({"height":"44px"});
            $('.artboard-logo a').css({"padding":"10px 0 0 0"});
            $('.artboard-logo a img').css({"width":"72px","height":"23px"});
            $('#zm-header .zm-artboard-head ul.zm-wes li').css({"padding":"15px 42px 19px 42px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li').css({"padding":"8px 0 18px 0"});
            $('#zm-header .zm-artboard-head ul.zm-mt-xin li').css({"padding":"15px 25px"});
            $('#zm-header .zm-artboard-head ul.zm-mt-content li').css({"padding":"15px 25px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data').css({"top":"42px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data li').css({"padding":"0"});
            $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content').css({"top":"42px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content ul li.hand').css({"padding":"0"});
            $('#zm-header .zm-artboard-head ul i.bt-left').css({"top":"16px"});
            $('#zm-header .zm-artboard-head ul i.bt-right').css({"top":"16px"});
        }else{
            $('#zm-header').css({"height":"100px"});
            $('.artboard-logo a').css({"padding":"16px 0 0 0"})
            $('.artboard-logo a img').css({"width":"122px","height":"58px"});
            $('#zm-header .zm-artboard-head ul.zm-wes li').css({"padding":"40px 42px 44px 42px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li').css({"padding":"35px 0 43px 0"});
            $('#zm-header .zm-artboard-head ul.zm-mt-xin li').css({"padding":"15px 25px"});
            $('#zm-header .zm-artboard-head ul.zm-mt-content li').css({"padding":"15px 25px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data').css({"top":"98px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li ul.user-data li').css({"padding":"0"});
            $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content').css({"top":"98px"});
            $('#zm-header .zm-artboard-head ul.artboard-right li.user-news .news-content ul li.hand').css({"padding":"0"});
            $('#zm-header .zm-artboard-head ul i.bt-left').css({"top":"40px"});
            $('#zm-header .zm-artboard-head ul i.bt-right').css({"top":"40px"});
        }

        if($(window).scrollTop()>=800){
            $('.top').fadeIn();
            if($(window).scrollTop()>=(b+d+130)){
                $('#zm-tag').css({"position":"fixed","top":"50px"});
            }else{
                $('#zm-tag').css({"position":"static"});
            }
            // if($(window).scrollTop()>=(zm_height-e+30)){
            //     demo.start();
            // }
        }else{
            $('.top').fadeOut();
        }
    });
    if ($("#slides").length > 0) {
        //图片动画
        $('#slides').slides({
            preload: true,
            play: 5000,
            preloadImage: '../static/images/loading.gif',
            pause: 2500,
            hoverPause: true,
            animationStart: function (current) {
                $('.caption').animate({
                    bottom: -35
                }, 100);
                if (window.console && console.log) {
                    // example return of current slide number
                    console.log('animationStart on slide: ', current);
                }
                ;
            },
            animationComplete: function (current) {
                $('.caption').animate({
                    bottom: 0
                }, 200);
                if (window.console && console.log) {
                    // example return of current slide number
                    console.log('animationComplete on slide: ', current);
                }
                ;
            },
            slidesLoaded: function () {
                $('.caption').animate({
                    bottom: 0
                }, 200);
            }
        });
    }
    $('#zm-container').mouseover(function () {
        var s = $('#zm-container .slides_container .slide').length;
        //alert(s);
        if(s>=2){
            $('.prev').show();
            $('.next').show();
        }
    }).mouseout(function () {
        $('.prev').hide();
        $('.next').hide();
    });
    //侧边栏
    window.onload = function () {
        if ($(window).width() < 1366) {
            $("#zm-to-top").css({"margin-left": "0", "left": "auto", "right": "20px"})
        } else {
            $("#zm-to-top").css({"margin-left": "620px", "left": "50%"})
        }
        ;
    }
    window.addEventListener("resize", function () {
        if ($(window).width() < 1366) {
            $("#zm-to-top").css({"margin-left": "0", "left": "auto", "right": "20px"})
        } else {
            $("#zm-to-top").css({"margin-left": "620px", "left": "50%"})
        }
    });

})
