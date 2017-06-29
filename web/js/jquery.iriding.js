/**
 * Created by fely on 14-10-31.
 */


$(function() {

    $(window).scroll(function() {
        var sender = $(this);
        if (sender.scrollTop() > 100) {
            if (!$(".widget-to-top").is(".widget-to-top-on")){
                $(".widget-to-top").addClass("widget-to-top-on").fadeIn('fast');
            }
        } else {
            if ($(".widget-to-top").is(".widget-to-top-on")){
                $(".widget-to-top").removeClass("widget-to-top-on").fadeOut('fast');
            }
        }
    });
	
	// var ft = $(".footer-guide");
	// if (ft.size() == 1 && ft.offset().top < $(window).height() - 260) {
	// 	ft.css("margin-top" , $(window).height() - 260 - ft.offset().top + 50);
	// }

	//顶部菜单，触发方式改完houseover
	$(".navbar-fixed-top-iriding .dropdown").hover(function() {
		$(this).addClass("open");
		if ($(this).data("handler")) {
			window.clearTimeout($(this).data("handler"));
			$(this).data("handler", 0);
		}
	}, function() {
		var delay = parseInt($(this).data("delay"));
		if (delay) {
			var sender = $(this);
			$(this).data("handler" , window.setTimeout(function() {
				sender.removeClass("open");
			},delay));
		}
		else {
			$(this).removeClass("open");
		}
	});

    $(".dropdown-message-container").each(function(){
        var container = $(this);
        $(".hd li", container).click(function(){
            $(".hd li.on", container).removeClass("on");
            $(this).addClass("on");
            $(".bd .tab-current", container).removeClass("tab-current");
            $(".bd .tab:eq("+$(this).index()+")", container).addClass("tab-current");
        }).click(function(event){
                event.preventDefault()
                event.stopPropagation();
            });
    });

    $(".h-menu-container>.container-w>.list-unstyled>li").hover(function(){
        var sender = $(this);
        if (sender.data("handler")) {
            window.clearTimeout(sender.data("handler"));
        }
        sender.addClass("hover");
    }, function(){
        var sender = $(this);
        var handler = window.setTimeout(function(){
            sender.removeClass("hover");
        }, 100);
        sender.data("handler" , handler);
    });

    $("#waterLayoutList").on("mouseover" , ".card" , function() {
        $(this).addClass("card-on");
    }).on("mouseout" , ".card" , function(){
            $(this).removeClass("card-on");
        });

    //函数处理显示用户profile
    $(".action-show-profile").hover(function(){
        var sender = $(this);
        var pop = null;
        if (sender.data("handler")){
            var hander1 = sender.data("handler");
            sender.data("handler" , false);
            window.clearTimeout(hander1);
        }
        if (!sender.is("hover")) {
            $(".pop-user-profile").remove();
            $.get("user_profile_ajax.html?id=" + sender.data("id") , function(html){
                var pop_id = "pop_" + (new Date()).getTime();
                pop = $(html).appendTo("body");
                var pos = {
                    'left' : sender.offset().left - pop.width() / 2 + sender.width() /2,
                    'top' : sender.offset().top - pop.height() - 4
                };
                if (pos.left < 0) {
                    pos.left = 0;
                }
                pop.css(pos).attr("id" , pop_id);

                sender.data("ref-id" , pop_id);
                pop.hover(function(){
                    if (sender.data("handler")){
                        var hander = sender.data("handler");
                        sender.data("handler" , false);
                        window.clearTimeout(hander);
                    }
                }, function(){
                    var handler = window.setTimeout(function(){
                        if (sender.data("ref-id")) {
                            $("#" + sender.data("ref-id")).remove();
                        }
                    }, 200);
                    sender.data("handler" , handler);
                });
            });
        }
        else {

        }

    }, function() {
        var sender = $(this);
        var handler = window.setTimeout(function(){
            if (sender.data("ref-id")) {
                $("#" + sender.data("ref-id")).remove();
            }
        }, 200);
        sender.data("handler" , handler);
    });

    $(".tab-header li").hover(function(){
        if (!$(this).is(".current")) {
            $(this).addClass("hover");
        }
    }, function(){
        $(this).removeClass("hover");
    });

    ///更改帖子状态
    $(".handle-status>label").hover(function(){ $(this).addClass("status-hover");}, function(){$(this).removeClass("status-hover");});

    /*smooth nav*/
    var $liCur = $(".nav-box ul li.on");
    if ($liCur.size() > 0) {
        var curP = $liCur.position().left,
            curW = $liCur.outerWidth(true),
            $slider = $(".nav-line"),
            $targetEle = $(".nav-box ul li:not('.last') a"),
            $navBox = $(".nav-box");
        $slider.stop(true,true).animate({"left":curP,"width":curW});
        $targetEle.mouseenter(function(){
            var $_parent = $(this).parent(),
                _width = $_parent.outerWidth(true),
                posL = $_parent.position().left;
            $slider.stop(true,true).animate({"left":posL,"width":_width},"fast");
        });
        $navBox.mouseleave(function(cur,wid){
            var $liCur = $(".nav-box ul li.on"),
                curP = $liCur.position().left,
                curW = $liCur.outerWidth(true),
                cur = curP;
            wid = curW;
            $slider.stop(true,true).animate({"left":cur,"width":wid},"fast");
        });
        $(".nav-box ul>li").click(function(){
            if (!$(this).is("li.on")) {
                $(".nav-box ul li.on").removeClass("on");
                $(this).addClass("on");
            }
        });
    }

    /*20150320*/
    $(".input-group-search").click(function() {
        if (!$(this).is(".input-group-search-on")) {
            $(this).addClass("input-group-search-on");
            event.preventDefault();
        }
    });
});

/**
 * Created by fely on 14-11-28.
 */
(function ($) {
    $.fn.clickout = function(callBack) {
        $(this).each(function(i){
            var sender = this;
            $(document).mousedown(function(e){
                var target = e.target || e.srcElement;
                while (target != document && target != sender) {
                    target = target.parentNode;
                }
                if (target != sender && typeof callBack == "function") {
                    callBack(e);
                }
            });
        });
    };
})(jQuery);



function show_login(homePage) {
    if (homePage && $(window).scrollTop() > 450 || !homePage) {
        //$(".block-login-outer").fadeIn();
        $.fancybox.open({
            maxWidth	: 310,
            fitToView	: false,
            width		: '500',
            autoSize	: false,
            autoHeight	: true,
            autoCenter    : false ,
            type	: 'ajax',
            href : 'login_html.html',
            closeBtn : true ,
            openEffect	: 'none',
            closeEffect	: 'none',
            wrapCSS : 'fancybox-wrap-empty fancybox-wrap-empty-2'
        });
    }
    else {
        $(".block-login").fadeIn(function () {
            /*$("<div class='bg-shadow' style='z-index: 9999; position: absolute; left: 0px; top: 0px; width: 100%; height: 100%'></div>")
                .appendTo("body").click(function () {
                    $(".block-login").fadeOut();
                    $(".bg-shadow").remove();
                }).height($("body").height());*/
        });
    }
}


/***
 *
 */
function isFooterVisible() {
    // return ($(window).scrollTop() + $(window).height()) > $(".footer-guide").offset().top;
}


function show_reply($id) {
    $("#block-reply-modal").css({"top" : ($(window).scrollTop() + $(window).height()/2) }).fadeIn();
}

$(function(){
    $("#btnQuickReply,.btn-danger").click(function(){
        $("#block-reply-modal").fadeOut();
    });
});