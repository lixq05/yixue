function checkPhone(phone) {
    var myreg = /^1(3[0-9]|4[57]|5[0-35-9]|7[01678]|8[0-9])+\d{8}$/;
    if (!myreg.test(phone)) {
        return false;
    }
    return true;
}

function checkEmail(email) {
    var myreg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    if (!myreg.test(email)) {
        return false;
    }
    return true;
}

function checkPassword(text) {
    var myreg = /^[A-Za-z0-9]\w{5,17}$/;
    if (!myreg.test(text)) {
        return false;
    }
    return true;
}

function checkId(id_card) {
    //身份证正则表达式(15位)
    var isId1 = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$/;
    //身份证正则表达式(18位) 
    var isId2 = /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}(\d|X)$/;
    if (!((isId1.test(id_card)) || (isId2.test(id_card)))) {
        return false;
    }
    return true;
}

function IdCard(UUserCard, num) {
    if (num == 1) {
        //获取出生日期
        birth = UUserCard.substring(6, 10) + "-" + UUserCard.substring(10, 12) + "-" + UUserCard.substring(12, 14);
        return birth;
    }
    if (num == 2) {
        //获取性别
        if (parseInt(UUserCard.substr(16, 1)) % 2 == 1) {
            //男
            return "男";
        } else {
            //女
            return "女";
        }
    }
    if (num == 3) {
        //获取年龄
        var myDate = new Date();
        var month = myDate.getMonth() + 1;
        var day = myDate.getDate();
        var age = myDate.getFullYear() - UUserCard.substring(6, 10) - 1;
        if (UUserCard.substring(10, 12) < month || UUserCard.substring(10, 12) == month && UUserCard.substring(12, 14) <= day) {
            age++;
        }
        return age;
    }
}
