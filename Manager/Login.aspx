<%@ Page Language="C#" AutoEventWireup="true"   Inherits="Aircraft.Web.Manager.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- Apple devices fullscreen -->
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<!-- Apple devices fullscreen -->
	<meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />
	
	<title>系统管理 - Login</title>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="adminskin/css/bootstrap.min.css">
	<!-- Bootstrap responsive -->
	<link rel="stylesheet" href="adminskin/css/bootstrap-responsive.min.css">
	<!-- icheck -->
	<link rel="stylesheet" href="adminskin/css/plugins/icheck/all.css">
	<!-- Theme CSS -->
	<link rel="stylesheet" href="adminskin/css/style.css">
	<!-- Color CSS -->
	<link rel="stylesheet" href="adminskin/css/themes.css">
	<!-- 自定义 CSS -->
	<link rel="stylesheet" href="adminskin/css/customerui.css">


	<!-- jQuery -->
	<script src="adminskin/js/jquery.min.js"></script>
	
	<!-- Nice Scroll -->
	<script src="adminskin/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- Validation -->
	<script src="adminskin/js/plugins/validation/jquery.validate.min.js"></script>
	<script src="adminskin/js/plugins/validation/additional-methods.min.js"></script>
	<!-- icheck -->
	<script src="adminskin/js/plugins/icheck/jquery.icheck.min.js"></script>
	<!-- Bootstrap -->
	<script src="adminskin/js/bootstrap.min.js"></script>
	<script src="adminskin/js/eakroko.js"></script>


	<!--[if lte IE 9]>
		<script src="adminskin/js/plugins/placeholder/jquery.placeholder.min.js"></script>
		<script>
			$(document).ready(function() {
				$('input, textarea').placeholder();
			});
		</script>
	<![endif]-->
	

	<!-- Favicon -->
	<link rel="shortcut icon" href="adminskin/img/favicon.ico" />
	<!-- Apple devices Homescreen icon -->
	<link rel="apple-touch-icon-precomposed" href="adminskin/img/apple-touch-icon-precomposed.png" />

</head>
<body class='login'>
    <div class="wrapper">
		
		<div class="login-body">
			<h2>系统登陆</h2>
            <form id="form1" runat="server" class='form-validate'>
				<div class="control-group">
					<div class="name controls">
                        <asp:TextBox ID="LoginName" runat="server" placeholder="登录名" CssClass='input-block-level' data-rule-required="true"></asp:TextBox>
					</div>
				</div>
				<div class="control-group">
					<div class="pw controls">
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" name="upw" placeholder="登录密码" CssClass='input-block-level' data-rule-required="true"></asp:TextBox>
					</div>
				</div>
				<div class="submit">
					<div class="remember">
						
					</div>
                    <asp:Button ID="LoginButton" runat="server" Text="登录" CssClass="btn btn-primary" 
                         />
				</div>
            </form>
			<div class="browser">
				仅支持<a href="https://www.google.com/intl/zh-CN/chrome/browser/" rel='tooltip' title="下载Chrome浏览器" target="_blank">Chrome</a>、<a href="http://firefox.com.cn/download/"rel='tooltip' title="下载FireFox浏览器" target="_blank">FireFox</a>、<a href="http://www.apple.com.cn/safari/"rel='tooltip' title="下载Safari浏览器" target="_blank">Safari</a>及<a href="http://windows.microsoft.com/zh-cn/internet-explorer/download-ie"rel='tooltip' title="下载IE10浏览器，XP/Vista请安装IE8" target="_blank">IE9+</a>版本的浏览器
			</div>
			<div class="forget">
				<a href="#" target="_blank"><span>上海贝聿</span></a>
			</div>
		</div>
	</div>
</body>
</html>
