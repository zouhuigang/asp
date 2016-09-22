/*-- 登录检测--*/
$(function () {

    $("#form2").submit(function () {
        $("#users").focus();
        if ($("#users").val() == "") {
            alert('请输入用户名');
            return false;
        }
        $("#pwd").focus();
        if ($("#pwd").val() == "") {
            alert('请输入密码');
            return false;
        }

        $.post("login.aspx", {
            users: $("#users").val(),
            pwd: $("#pwd").val(),
            rename: $("#rename").val()
        }, function (data, textStatus) {
            if (data.substring(0, 1) == "0") {
                alert('用户名或密码错误');
                return false;
            }
            else {
                location = $("#urls").val();
                //document.form2.submit();
                return true;
            }
        });
        return false;
    });

});