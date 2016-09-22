$(document).ready(function () {
    $.formValidator.initConfig({ formid: "form1", onerror: function (msg) { }, onsuccess: function () { return true; } });

    $("#email").formValidator({ onshow: " ", onfocus: "邮箱6-100个字符", oncorrect: "√", defaultvalue: "" }).inputValidator({ min: 6, max: 100, onerror: "请输入正确的邮箱格式" }).regexValidator({ regexp: "^([\\w-.]+)@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.)|(([\\w-]+.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(]?)$", onerror: "您输入的邮箱格式不正确" })
        .ajaxValidator({
            type: "post",
            url: "regcheck.aspx",
            datatype: "text",
            success: function (data) {
                if (data.substring(0, 1) == "0") {
                    return true;
                }
                else {
                    return false;
                }
            },
            buttons: $("#btn_Reg"),
            error: function () { alert("服务器没有返回数据，可能服务器忙，请重试"); },
            onerror: "该邮箱已被使用",
            onwait: "正在对邮箱进行合法性校验，请稍候...",
            onsuccess: "OK"
        });


    $("#username").formValidator({ validatorgroup: "1", onshow: " ", onfocus: "请输入3~16个字符", oncorrect: "√" }).inputValidator({ min: 3, max: 16, onerror: "用户名格式不正确" })
	    .ajaxValidator({
	        type: "post",
	        url: "regcheck.aspx",
	        datatype: "text",
	        success: function (data) {
	            if (data.substring(0, 1) == "0") {
	                return true;
	            }
	            else {
	                return false;
	            }
	        },
	        buttons: $("#btn_Reg"),
	        error: function () { alert("服务器没有返回数据，可能服务器忙，请重试"); },
	        onerror: "该用户名已被使用",
	        onwait: "正在对用户名进行合法性校验，请稍候...",
	        onsuccess: "OK"
	    });




	    $("#txtcheck").formValidator({ validatorgroup: "1", onshow: " ", onfocus: " ", oncorrect: "√" })
	    .ajaxValidator({
	        type: "post",
	        url: "regcheck.aspx",
	        datatype: "text",
	        success: function (data) {
	            if (data.substring(0, 1) == "0") {
	                return true;
	            }
	            else {
	                return false;
	            }
	        },
	        buttons: $("#btn_Reg"),
	        error: function () { alert("服务器没有返回数据，可能服务器忙，请重试"); },
	        onerror: "验证码错误",
	        onwait: " ",
	        onsuccess: "OK"
	    });


    $("#userpass").formValidator({ onshow: " ", onfocus: "请输入6~16个字符", oncorrect: " " }).inputValidator({ min: 1, onerror: "密码不能为空" }).inputValidator({ min: 6, max: 16, empty: { leftempty: false, rightempty: false, emptyerror: "密码两边不能有空符号" }, onerror: "密码必须为6~16个字符" });
    $("#userpass2").formValidator({ onshow: " ", onfocus: "两次密码必须一致", oncorrect: " " }).inputValidator({ min: 6, empty: { leftempty: false, rightempty: false, emptyerror: "两边不能有空符号" }, onerror: "重复密码有误" }).compareValidator({ desid: "userpass", operateor: "=", onerror: "2次密码不一致" });

});

