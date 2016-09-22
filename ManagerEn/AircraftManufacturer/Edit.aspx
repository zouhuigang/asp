<%@ Page Language="C#" AutoEventWireup="true"  ValidateRequest="false"  Inherits="Aircraft.Web.ManagerEn.AircraftManufacturer.Edit" %>

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

	<!-- Bootstrap CSS框架-->
	<link rel="stylesheet" href="../adminskin/css/bootstrap.min.css">
	<!-- Bootstrap responsive 响应式布局CSS框架-->
	<link rel="stylesheet" href="../adminskin/css/bootstrap-responsive.min.css">
	<!-- jQuery UI -->
	<link rel="stylesheet" href="../adminskin/css/plugins/jquery-ui/smoothness/jquery-ui.css">
	<link rel="stylesheet" href="../adminskin/css/plugins/jquery-ui/smoothness/jquery.ui.theme.css">
	<!-- timepicker时间选择器 -->
	<link rel="stylesheet" href="../adminskin/css/plugins/timepicker/bootstrap-timepicker.min.css">
	<!-- colorpicker颜色选择器-->
	<link rel="stylesheet" href="../adminskin/css/plugins/colorpicker/colorpicker.css">
	<!-- Datepicker日期选择器 -->
	<link rel="stylesheet" href="../adminskin/css/plugins/datepicker/datepicker.css">
	<!-- chosen选择  -->
	<link rel="stylesheet" href="../adminskin/css/plugins/chosen/chosen.css">
	<!-- multi select 多选-->
	<link rel="stylesheet" href="../adminskin/css/plugins/multiselect/multi-select.css">
	<!-- Tagsinput 添加标签 -->
	<link rel="stylesheet" href="../adminskin/css/plugins/tagsinput/jquery.tagsinput.css">
	<!-- 界面 CSS -->
	<link rel="stylesheet" href="../adminskin/css/style.css">
	<!-- 肤色 CSS -->
	<link rel="stylesheet" href="../adminskin/css/themes.css">
	<!-- 自定义 CSS -->
	<link rel="stylesheet" href="../adminskin/css/customerui.css">


	<!-- jQuery -->
	<script src="../adminskin/js/jquery.min.js"></script>
	
	<!-- 滚动条插件 -->
	<script src="../adminskin/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
	<!-- imagesLoaded 图像堆叠 -->
	<script src="../adminskin/js/plugins/imagesLoaded/jquery.imagesloaded.min.js"></script>
	<!-- jQuery UI -->
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.core.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.widget.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.mouse.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.draggable.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
	<!-- Touch enable for jquery UI 触摸设备支持-->
	<script src="../adminskin/js/plugins/touch-punch/jquery.touch-punch.min.js"></script>
	<!-- slimScroll 悬停滚动条 -->
	<script src="../adminskin/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- Bootstrap 前端CSS/HTML开发框架 -->
	<script src="../adminskin/js/bootstrap.min.js"></script>
	<!-- bootbox 对话框 -->
	<script src="../adminskin/js/plugins/bootbox/jquery.bootbox.js"></script>
	<!-- Datepicker日期选择器 -->
	<script src="../adminskin/js/plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Timepicker时间选择器 -->
	<script src="../adminskin/js/plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<!-- Colorpicker颜色选择器 -->
	<script src="../adminskin/js/plugins/colorpicker/bootstrap-colorpicker.js"></script>
	<!-- Custom file upload文件上传 -->
	<script src="../adminskin/js/plugins/fileupload/bootstrap-fileupload.min.js"></script>
	<script src="../adminskin/js/plugins/mockjax/jquery.mockjax.js"></script>
	<!-- Chosen选择 -->
	<script src="../adminskin/js/plugins/chosen/chosen.jquery.min.js"></script>
	<!-- MultiSelect 多选-->
	<script src="../adminskin/js/plugins/multiselect/jquery.multi-select.js"></script>
	<!-- Filetree 树 -->
	<script src="../adminskin/js/plugins/dynatree/jquery.dynatree.js"></script>
	<!-- TagsInput添加标签 -->
	<script src="../adminskin/js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
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

    <link href="../../control/kindeditor/themes/default/default.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="../../control/kindeditor/kindeditor.js"></script>
    <script  type="text/javascript" src="../../control/kindeditor/lang/zh_CN.js"></script>

        <script type="text/javascript" src="../../Control/My97DatePicker/WdatePicker.js"></script>
</head>
<body>
	<uc1:top ID="top" runat="server"></uc1:top>
	<div class="container-fluid" id="content">
		<uc1:menu ID="menu" runat="server" Type="飞机管理"></uc1:menu>
		<div id="main">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="box box-bordered">
							<div class="box-title">
								<h3><i class="icon-th-list"></i> <%=tname %></h3>
							</div>
							<div class="box-content nopadding">
								<form id="form1" runat="server" class='form-horizontal form-striped'>
									  
									<div class="control-group">
										<label for="textfield" class="control-label">名称</label>
										<div class="controls">
                                            <asp:TextBox ID="Name" runat="server" placeholder="" class="input-xlarge" style="width:300px;"></asp:TextBox>
										</div>
									</div> 
                                     
                                     
									 
									<div class="form-actions">
                                        <asp:Button ID="SaveButton" runat="server"  OnClientClick="return CheckForm()" Text="保存" class="btn btn-primary" />
										<button type="button" class="btn" onclick="location='List.aspx'">取消</button>
									</div>

 <script type="text/javascript">
     function CheckForm()
     {
         if ($("#Name").val() == "")
         {
             alert("请输入名称")
             return false;
         } 
         return true;
     }
 </script>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> 
         
</body>
</html>
