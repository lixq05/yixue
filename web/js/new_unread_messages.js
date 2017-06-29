/*
 加载最新未读消息
 */
var x = 1;
$(function () {


    $('.show-all').delegate('>a', 'click', function () {
        var id = $('.tab-current').attr("id");
        if (id == 'divSystemNotice') {
            location.href = "/message/system/notice";
        }
        else if (id == 'divNotification') {
            location.href = "/message/notification";
        } else if (id == 'divDirectMessage') {
            location.href = "/message/directs";
        }
        else {
            location.href = "/message/system/notice";
        }
    });

    setTimeout(loadMessage, 10000);


});


function loadMessage() {
    loadUnReadMessage('SystemNotice', 'notice');//未读系统通知
    loadUnReadMessage('Notification', 'notification');//未读动态
    loadUnReadMessage('DirectMessage', 'direct');//未读私信
    loadUnReadMessageCount("badge");
}


function loadUnReadMessageCount(id) {


    $.post("/message/new/unread/count", null, function (result) {
        var msg = bacutil.decode(result);
        if (msg.success) {
            var count = msg.data;
            if (count > 0) {
                $("#news").addClass("news");
                if($(".person-l3").length>0){
                    $(".person-l3 b").html('<i></i>');
                }
            }
        } else {
            show_notice(msg.message);
        }
    });
}


function loadUnReadMessage(id, ot) {

    if ($('#div' + id)) {
        if (ot) {
            $.post("/message/new/unread", {ot: ot}, function (result) {
                var msg = bacutil.decode(result);
                if (msg.success) {

                    if (msg.data.length > 0) {
                        if (ot == "notice") {
                            $("#aSystemNotice").addClass("zm-news-i")
                        } else if (ot == "notification") {
                            $("#aNotification").addClass("zm-news-i")
                        } else if (ot == "direct") {
                            $("#aDirectMessage").addClass("zm-news-i")
                        }
                    }

                    for (var i = 0; i < msg.data.length; i++) {
                        addUnReadMessageHtml(id, msg.data[i]);
                    }

                } else {
                    show_notice(msg.message);
                }
            });
        }
    }
}


function addUnReadMessageHtml(id, message) {
    var html = "";
    var avatar = '<img     src = "/static/images/default_avatar.jpg" >';
    if (message.avatar_path) {
        avatar = '<img   src="' + message.avatar_path + '">';
    }
    if ($('#li' + message.id).attr('data-id') > 0) {
        //show_notice("ddd");
        //已存在不继续加载
        return;
    }
    var content = message.content;
    var count = 0;
    if (content) {
        content = content.replace(/<[img,/img].*?>/g, '[图片]');
        content = removeHTMLTag(content);
        count = DataLength(content);
    } else {
        content = "内容为空~";
    }

    if (count > 80) {
        content = content.substring(0, 40) + '...';
    }

    html += '<li id="li' + message.id + '" data-id=' + message.id + '>';

    var url = "";
    if (id == 'SystemNotice') {
        //系统消息
        url = "/message/system/notice?id=" + message.id;
    } else if (id == 'Notification') {
        url = "/message/notification";
        if (message.object_type.indexOf('live_reply') == '0') {

            content = message.user_name + "评论了我的直播";

            if (message.object_type.indexOf('live_reply2') == '0') {

                content = message.user_name + "回复了我的评论";

            }

        } else if (message.object_type.indexOf('live_praise') == '0') {

            content = message.user_name + "赞了我的直播";
            url = url + "?ot=praise"

        } else if (message.object_type.indexOf('topic_reply') == '0') {

            content = message.user_name + "评论了我的话题";
            if (message.object_type.indexOf('topic_reply2') == '0') {

                content = message.user_name + "回复了我的评论";

            }

        }
        else if (message.object_type.indexOf('topic_praise') == '0') {

            content = message.user_name + "赞了我的话题";
            url = url + "?ot=praise"


        } else if (message.object_type.indexOf('bug_reply') == '0') {

            content = message.user_name + "评论了我的bug反馈";
            if (message.object_type.indexOf('bug_reply2') == '0') {

                content = message.user_name + "回复了我的评论";

            }
        }


    } else if (id == 'DirectMessage') {
        //私信
        url = "/message/direct/detail?sequence=" + message.user_sequence;
    }

    html += '<a href="' + url + '">' + avatar + '</a>';
    html += '<a href=' + url + '>' + content + '</a>';
    html += '</li>';
    //show_notice(html);
    $('#div' + id).append(html);
}


function DataLength(fData) {
    var intLength = 0
    for (var i = 0; i < fData.length; i++) {
        if ((fData.charCodeAt(i) < 0) || (fData.charCodeAt(i) > 255))
            intLength = intLength + 2
        else
            intLength = intLength + 1
    }
    return intLength
}


function removeHTMLTag(str) {
    str = str.replace(/<\/?[^>]*>/g, ''); //去除HTML tag
    str = str.replace(/[ | ]*\n/g, '\n'); //去除行尾空白
    //str = str.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
    str = str.replace(/&nbsp;/ig, '');//去掉&nbsp;
    return str;
}