<%@ Page Language="C#" AutoEventWireup="true"  Inherits="WebSite.Web.Manager.admin.Index" %>
<%@ Register TagPrefix="uc1" TagName="top" Src="../top.ascx" %>
<%@ Register TagPrefix="uc1" TagName="menu" Src="../menu.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<!-- Apple devices fullscreen -->
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<!-- Apple devices fullscreen -->
	<meta names="apple-mobile-web-app-status-bar-style" content="black-translucent" />
	
	<title>系统管理 </title>

	<!-- Bootstrap -->
	<link rel="stylesheet" href="../adminskin/css/bootstrap.min.css">
	<!-- Bootstrap responsive -->
	<link rel="stylesheet" href="../adminskin/css/bootstrap-responsive.min.css">
	<!-- jQuery UI -->
	<link rel="stylesheet" href="../adminskin/css/plugins/jquery-ui/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="../adminskin/css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
	<!-- Theme CSS -->
	<link rel="stylesheet" href="../adminskin/css/style.css">
	<!-- Color CSS -->
	<link rel="stylesheet" href="../adminskin/css/themes.css">
	<!-- 自定义 CSS -->
	<link rel="stylesheet" href="../adminskin/css/customerui.css">


	<!-- jQuery -->
	<script src="../adminskin/js/jquery.min.js"></script>
	<!-- Nice Scroll -->
	<script src="../adminskin/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- jQuery UI -->
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
	<!-- slimScroll  悬停滚动条-->
	<script src="../adminskin/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- Bootstrap 前端CSS/HTML开发框架-->
	<script src="../adminskin/js/bootstrap.min.js"></script>
	<!-- Form -->
	<script src="../adminskin/js/plugins/form/jquery.form.min.js"></script>

	<!-- Theme framework -->
	<script src="../adminskin/js/eakroko.min.js"></script>
	<!-- Theme scripts -->
	<script src="../adminskin/js/application.min.js"></script>
	<!-- Just for demonstration -->
	<script src="../adminskin/js/demonstration.min.js"></script>

	<!--[if lte IE 9]>
		<script src="adminskin/js/plugins/placeholder/jquery.placeholder.min.js"></script>
		<script>
			$(document).ready(function() {
				$('input, textarea').placeholder();
			});
		</script>
	<![endif]-->
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="../adminskin/img/favicon.ico" />
	<!-- Apple devices Homescreen icon -->
	<link rel="apple-touch-icon-precomposed" href="../adminskin/img/apple-touch-icon-precomposed.png" />

</head>
<body>
	<uc1:top ID="top" runat="server"></uc1:top>
	<div class="container-fluid" id="content">
		<uc1:menu ID="menu" runat="server"></uc1:menu>
		<div id="main">
			<div class="container-fluid">
				<div class="page-header">
				</div>
				<div class="breadcrumbs">
					<ul>
						<li>
							<a href="#">系统管理</a>
						</li>
					</ul>
					<div class="close-bread">
						<a href="#"><i class="icon-remove"></i></a>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-reorder"></i>
									网站管理系统
								</h3>
							</div>
							<div class="box-content">
								<!--以下根据实际需要替换-->
								<div style="min-height:500px;">
									
								</div>
								<!--以上根据实际需要替换-->  
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
