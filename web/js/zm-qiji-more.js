$(document).ready(function(){


    //个人中心设置
    $(".zm-perR-page .perR-sex span").click(function(){
        $(".zm-perR-page .perR-sex span").removeClass("perR-sexCk");
        $(this).addClass("perR-sexCk");
        $(this).parents(".perR-myInfo")
            .find("button").addClass("per-kept-btn").removeClass("perR-kept-re").attr("disabled",false);
    });
    $(".zm-perR-page .perR-openly span").click(function(){
        $(".zm-perR-page .perR-openly span").removeClass("perR-openlyCk");
        $(this).addClass("perR-openlyCk");
        $(this).parents(".perR-myInfo")
            .find("button").addClass("per-kept-btn").removeClass("perR-kept-re").attr("disabled",false);
    });
});
