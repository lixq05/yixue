/**
 * Created by lmb on 16/4/26.
 */
/*登录注册*/
$(document).ready(function () {
    /*注册验证*/
    $(".register-data :input").blur(function(){
    	if($(this).is("#username")){
    		if(this.value == ""){
                $(this).parent('p').find('img').attr("src","img/name-s.jpg");
                $(this).attr("placeholder","").css("display","none");
                $('#username-text').css("display","block").text('用户名不能为空');
            }else if(/\s/.test(this.value)){
                $(this).parent('p').find('img').attr("src","img/name-s.jpg");
                $(this).attr("placeholder","").css("display","none");;
                $('#username-text').css("display","block").text('格式不正确');
            }else{
                $('#username-text').removeClass("onError");
            }
    		}
        if($(this).is("#phone")){
            if(this.value == ""){
                $(this).parent('p').find('img').attr("src","img/phone-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#phone-text').css("display","block").text('内容不能为空');
            }else if(!/^1[3|4|5|7|8][0-9]\d{8}$/.test(this.value)  &&  !/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(this.value)){
                $(this).parent('p').find('img').attr("src","img/phone-s.png");
                $(this).attr("placeholder","").css("display","none");;
                $('#phone-text').css("display","block").text('格式不正确');
            }else{
                $('#phone-text').removeClass("onError");
            }
        }
        if($(this).is("#password")){
            pwd=this.value;
            if(this.value==""){
                $(this).parent('p').find('img').attr("src","img/lock-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#pass-text').css("display","block").text('密码不能为空');
            }else if(this.value.length<6 || this.value.length>16){
                $(this).parent('p').find('img').attr("src","img/lock-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#pass-text').css("display","block").text('密码长度在6-16位之间');
            }else{
                $('#pass-text').removeClass("onError");
            }
        }
        if($(this).is("#repassword")){
            if(this.value==""){
                $(this).parent('p').find('img').attr("src","img/lock-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#repass-text').css("display","block").text('确认密码不能为空');
            }else if(this.value!=pwd){
                $(this).parent('p').find('img').attr("src","img/lock-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#repass-text').css("display","block").text('两次密码不一致');
            }else{
                $('#repass-text').removeClass("onError");
            }
        }
        if($(this).is("#code")){
            if(this.value ==""){
                $(this).parent('p').find('img').attr("src","img/lock-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#code-text').css("display","block").text('验证码不能为空');
            }else{
                $('#code-text').removeClass("onError");
            }
        }
        if($(this).is("#email")){
            if(this.value==""){
                $(this).parent('p').find('img').attr("src","img/lock-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#email-text').css("display","block").text('确认邮箱不能为空');
            }else if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(this.value)){
                $(this).parent('p').find('img').attr("src","img/lock-s.png");
                $(this).attr("placeholder","").css("display","none");
                $('#email-text').css("display","block").text('邮箱格式不正确');
            }else{
                $('#email-text').removeClass("onError");
            }
        }
    })
    $(".register-data p label").click(function(){
    	if($(this).is("#username-text")){
            $(this).parent('p').find('img').attr("src","img/name-s.jpg");
            $('#username-text').css("display","none");
            $('#username').css("display","block").focus();
        }
        if($(this).is("#phone-text")){
            $(this).parent('p').find('img').attr("src","img/phone-s.png");
            $('#phone-text').css("display","none");
            $('#phone').css("display","block").focus();
        }
        if($(this).is("#pass-text")){
            $(this).parent('p').find('img').attr("src","img/lock-s.png");
            $('#pass-text').css("display","none");
            $('#password').css("display","block").focus();
        }
        if($(this).is("#repass-text")){
            $(this).parent('p').find('img').attr("src","img/lock-s.png");
            $('#repass-text').css("display","none");
            $('#repassword').css("display","block").focus();
        }
        if($(this).is("#code-text")){
            $(this).parent('p').find('img').attr("src","img/anquan.png");
            $('#code-text').css("display","none");
            $('#code').css("display","block").focus();
        }
        if($(this).is("#email-text")){
            $(this).parent('p').find('img').attr("src","img/email.png");
            $('#email-text').css("display","none");
            $('#email').css("display","block").focus();
        }
    })

    /*7天是否自动登录*/
    $('.login-select label i').click(function(){
        if($(this).hasClass("ert")){
            $(this).removeClass("ert");
        }else{
            $(this).addClass("ert");
        }
    })
    /*提交注册*/
    function checkPhone(node){
        var value=node.value;
        if(value == ""){
            $(node).parent('p').find('img').attr("src","img/phone-s.png");
            $(node).attr("placeholder","");
            $('#phone-text').css("display","block").text('内容不能为空');
        }else if(!/^1[3|4|5|7|8][0-9]\d{8}$/.test(value)  &&  !/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(value)){
            $(node).parent('p').find('img').attr("src","img/phone-s.png");
            $(node).attr("placeholder","");
            $('#phone-text').css("display","block").text('格式不正确');
        }else{
            $('#phone-text').removeClass("onError");
        }
    }
    function checkPass(node){
        var value=node.value;
        if(value == ""){
            $(node).parent('p').find('img').attr("src","img/lock-s.png");
            $(node).attr("placeholder","");
            $('#pass-text').css("display","block").text('密码不能为空');
        }else if(value.length<6 || value.length>16){
            $(node).parent('p').find('img').attr("src","img/lock-s.png");
            $(node).attr("placeholder","");
            $('#pass-text').css("display","block").text('密码长度在6-16位之间');
        }else{
            $('#pass-text').removeClass("onError");
        }
    }
    function checkRepass(node){
        var value=node.value;
        pwd = $("#password").val();
        if(value == ""){
            $(node).parent('p').find('img').attr("src","img/lock-s.png");
            $(node).attr("placeholder","");
            $('#repass-text').css("display","block").text('确认密码不能为空');
        }else if(value!=pwd){
            $(node).parent('p').find('img').attr("src","img/lock-s.png");
            $(node).attr("placeholder","");
            $('#repass-text').css("display","block").text('两次密码不一致');
        }else{
            $('#repass-text').removeClass("onError");
        }
    }
    function checkCode(node){
        var value=node.value;
        if(value ==""){
            $(node).parent('p').find('img').attr("src","img/lock-s.png");
            $(node).attr("placeholder","");
            $('#code-text').css("display","block").text('验证码不能为空');
        }else{
            $('#code-text').removeClass("onError");
        }
    }
    function checkEmail(node){
        var value=node.value;
        if(value ==""){
            $(node).parent('p').find('img').attr("src","img/phone-s.png");
            $(node).attr("placeholder","");
            $('#email-text').css("display","block").text('邮箱不能为空');
        }else if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(this.value)){
            $(node).parent('p').find('img').attr("src","img/phone-s.png");
            $(node).attr("placeholder","").css("display","none");
            $('#email-text').css("display","block").text('邮箱格式不正确');
        }else{
            $('#email-text').removeClass("onError");
        }
    }

    $("#send").click(function(){
        var numError = $('.register-data .onError').length;
        if(numError){
            checkPhone(document.getElementById('phone'));
            checkPass(document.getElementById('password'));
            checkRepass(document.getElementById('repassword'));
            checkCode(document.getElementById('code'));
            checkEmail(document.getElementById('email'));
        }else{
            location.href="#";
        }
    });

    /*首页立即登录*/
    $("#right").click(function(){
        var numError = $('.register-data .onError').length;
        if(numError){
            checkPhone(document.getElementById('phone'));
            checkPass(document.getElementById('password'));
        }else{
            location.href="#";
        }
    });

    /*用户登录--2*/
    $("#right-more").click(function(){
        var numError = $('.register-data .onError').length;
        if(numError){
            checkPhone(document.getElementById('phone'));
            checkPass(document.getElementById('password'));
        }else{
            location.href="#";
        }
    });

    /*找回密码--发送*/
    $('#emails').blur(function(){
        value = $('#emails').val();
        if(value == ""){
            $(this).parent('p').find('img').attr("src","/static/images/error.png");
            $(this).attr("placeholder","");
            $('#emails-text').css("display","block").text('邮箱不能为空');
        }else if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(value)){
            $(this).parent('p').find('img').attr("src","/static/images/error.png");
            $(this).attr("placeholder","").css("display","none");
            $('#emails-text').css("display","block").text('邮箱格式不正确');
        }else{
            $('#emails-text').removeClass("onError");
        }
    })
    $("#emails-text").click(function(){
        $(this).parent('p').find('img').attr("src","/static/images/email.png");
        $('#emails-text').css("display","none");
        $('#emails').css("display","block").focus();
    })
    function checkEmails(node){
        var value=node.value;
        if(value == ""){
            $(node).parent('p').find('img').attr("src","/static/images/error.png");
            $(node).attr("placeholder","");
            $('#emails-text').css("display","block").text('邮箱不能为空');
        }else if(!/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/.test(this.value)){
            $(node).parent('p').find('img').attr("src","/static/images/error.png");
            $(node).attr("placeholder","").css("display","none");
            $('#emails-text').css("display","block").text('邮箱格式不正确');
        }else{
            $('#emails-text').removeClass("onError");
        }
    }
    $('#send-pass').click(function(){
        var numError = $('.email-sd .onError').length;
        if(numError){
            checkEmails(document.getElementById('emails'));
        }else{
            location.href="#";
        }
    })
})
