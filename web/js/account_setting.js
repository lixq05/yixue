var editPasswrodFlag = false;
var editUserName = false;

$(function () {
    $("#baseinfoBtn").click(function () {
            $("#baseinfoBtn").attr('disabled', true);
            var sex;
            var s = $(".perR-sexCk").html()
            if (s == '男') {
                sex = 1
            }
            if (s == '女') {
                sex = 2
            }
            var name = $("#userNameTxt").val();

            msgDivTxt = $("#pswMsgTxt");
            usernameDivTxt = $("#userNameTxt");
            usermsgObj = $("#userMsgTxt");

            checkUserNameConfirm();
        }
    );
    $("#psdSaveBtn").click(function () {
            currentPsw = $("#currentPswTxt").val();
            newPsw = $("#newPswTxt").val();
            newPswCfm = $("#newPswCfmTxt").val();
            msgDivTxt = $("#pswMsgTxt");
            
            checkCurrentPassword();

            if (editPasswrodFlag && checkNewPassword() && checkNewPasswordConfirm()) {

                $.ajax({
                    cache: true,
                    type: "POST",
                    url: "/account/editPsw",
                    data: {"newPsw": newPsw},
                    success: function (data) {
                        if (data.success == '1') {
                            $("#psdSaveBtn").addClass("perR-kept-re").removeClass("per-kept-btn").attr("disabled", true);
                            msgDivTxt.html("密码修改成功！");
                            $(".per-layer").fadeIn();
                            document.getElementById("currentPswTxt").value = '';
                            document.getElementById("newPswTxt").value = '';
                            document.getElementById("newPswCfmTxt").value = '';
                            $("#currentPswMsgTxt").html("");
                            $("#newPswMsgTxt").html("");
                            $("#newPswCnfMsgTxt").html("");
                        } else {
                            msgDivTxt.html("密码修改失败！");
                            $(".per-layer").fadeIn();
                        }
                    }
                });
            }
        }
    );
});

function checkNewPassword() {
    newPsw = $("#newPswTxt").val();
    newmsgObj = $("#newPswMsgTxt");
    newPswCfn = $("#newPswCfmTxt").val();
    newPswmsgObj = $("#newPswCnfMsgTxt");
    currentPsw = $("#currentPswTxt").val();
    if (editPasswrodFlag && currentPsw.length >= 6 && currentPsw && currentPsw == newPsw) {
        newmsgObj.html("不能和原密码一致!");
        return false;
    }
    if (newPsw && newPswCfn && newPswCfn != newPsw) {
        newPswmsgObj.html("两次输入的密码不一致!");
        return false;
    }

    if (newPsw.length < 6 || newPsw.length > 16) {
        newmsgObj.html("密码长度为6-16!");
        return false;
    }
    if (newPsw) {
        newmsgObj.html("");
        return true;
    }
}
function checkNewPasswordConfirm() {
    newPsw = $("#newPswTxt").val();
    newPswCfn = $("#newPswCfmTxt").val();
    newPswmsgObj = $("#newPswCnfMsgTxt");
    currentPsw = $("#currentPswTxt").val();

    if (newPsw && newPswCfn && newPswCfn != newPsw) {
        newPswmsgObj.html("两次输入的密码不一致!");
        return false;
    }
    if (editPasswrodFlag && currentPsw.length >= 6 && currentPsw && currentPsw == newPswCfn) {
        newPswmsgObj.html("不能和原密码一致!");
        return false;
    }
    if (newPswCfn.length < 6 || newPswCfn.length > 16) {
        newPswmsgObj.html("密码长度为6-16!");
        return false;
    }
    if (newPswCfn == '') {
        newPswmsgObj.html("密码长度为6-16!");
        return false;
    }
    if (newPswCfn) {
        newPswmsgObj.html("");
        return true;
    }
}
function checkUserNameConfirm() {

    var name = $("#userNameTxt").val();
    usermsgObj = $("#userMsgTxt");
    name = name.replace(/ /g, '')
    for (var i = 0; i < name.length; i++) {
        var tempStr = "[%~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]";
        var bool = tempStr.indexOf(name[i]);
        if (bool >= 0) {
            usermsgObj.html("用户名不能包含特殊字符，请重新输入!");
            editUserName = false;

            return false;
        }
    }
    name = stripscript(name);
    if (name.replace(/[^\x00-\xff]/g, "01").length > 16 || name.replace(/[^\x00-\xff]/g, "01").length < 1) {
        usermsgObj.html("用户名长度:字母不能大于16汉字不能大于8!");
        editUserName = false;

        return false;
    }
    if (name == '') {
        usermsgObj.html("用户名不能为空!");
        editUserName = false;
        return false;

    }
    if (name.length > 0) {
        $.ajax({
            type: "POST",
            async: false,
            url: "/account/checkusername",
            data: {"user_name": name},
            success: function (data) {
                if (data.success == '1') {
                    editUserName = true;
                    usermsgObj.html("");
                    return true;
                } else {
                    editUserName = false;
                    usermsgObj.html("用户名已存在!");
                    return false;
                }
            }
        });
    }
}

function doBindSns(tip) {
    window.location.href = '/account/dobinding?tip=' + tip + '#sns';
}

function undoBindSns(tip) {
    $.ajax({
        cache: true,
        type: "GET",
        url: '/account/undobinding',
        data: {"tip": tip},
        success: function (data) {
            if (data.success == '1') {
                window.location.reload();
            }
        }
    });
}

function stripscript(s) {
    var pattern = new RegExp("[%`~!@#$^&*()=|{}':;',\\[\\].<>/?~！@#￥……&*（）——|{}【】‘；：”“'。，、？]")
    var rs = "";
    for (var i = 0; i < s.length; i++) {
        rs = rs + s.substr(i, 1).replace(pattern, '');

    }
    return rs;
}