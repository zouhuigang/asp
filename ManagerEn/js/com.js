
/*-- �˳���¼--*/
$(function () {
    $("#btn_logout").click(function () {

        $.post("logout.ashx", {
        }, function (data, textStatus) {
            if (data.substring(0, 1) == "0") {
                window.location.reload();
                return false;
            }
        });

    });
});

/*-- ������--*/
$(function () {
    $("#key_button").click(function () {
        document.myFormSeach.submit();
    });
});


