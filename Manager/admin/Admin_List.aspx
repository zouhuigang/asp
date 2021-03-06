﻿<%@ Page Language="C#" AutoEventWireup="true"   Inherits="WebSite.Web.Manager.admin.Admin_List" %>
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
	
	<title>系统管理 - 管理员列表</title>

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
	<!-- CKEditor编辑器 标准版 -->
	<script src="../adminskin/js/plugins/ckeditor/ckeditor.js"></script>
	<!-- CKFinder文件管理器 CKEditor版 -->
	<script src="../adminskin/js/plugins/ckfinder/ckfinder.js"></script>

	<!-- Theme framework -->
<%--	<script src="../adminskin/js/eakroko.min.js"></script>--%>
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
        <script type="text/javascript" >
            function ajaxDelItem(Id) {
                $.post("Admin_List.aspx", {
                    act: "del",
                    Id: Id
                }, function (data, textStatus) {
                    //$("#resText").html(data);
                    $("#tr_" + Id).hide();
                }
                );

            }
    </script>
</head>
<body>
    <uc1:top ID="top" runat="server"></uc1:top>
	<div class="container-fluid" id="content">
		<uc1:menu ID="menu" runat="server"></uc1:menu>
    <form id="form1" runat="server">
		<div id="main">
			<div class="container-fluid">
				<div style="height: 20px; overflow: hidden;"></div>
				<div class="breadcrumbs">
					<ul>
						<li>
							<a href="Index.aspx">系统首页</a>
							<i class="icon-angle-right"></i>
						</li>
						<li>
							<a href="#">管理员管理</a>
						</li>
					</ul>
					<div class="close-bread">
						<a href="#"><i class="icon-remove"></i></a>
					</div>
				</div>

				<!--带过滤器列表-->
				<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-table"></i>
									管理员列表
								</h3>
							</div>
							<div class="box-content nopadding">




                            <table class="table table-hover table-nomargin table-bordered dataTable dataTable-nosort" data-nosort="0,1">
									<thead>
										<tr>
											<th class="with-checkbox"><input type="checkbox" name="check_all" id="check_all"></th>
											<th>登录名</th> 
                                            <th>系统管理</th>  
											 
											<th>操作</th>
										</tr>
									</thead> 
									<tbody>
                                    <asp:Repeater id="Repeater1" runat="server">
                        <ItemTemplate>
										<tr id='tr_<%# Eval("Id") %>'>
											<td class="with-checkbox">
												<input type="checkbox" name="radiotex" aid="<%# Eval("rownum") %>" value="<%# Eval("id") %>" />
											</td>
                                            <td><%# Eval("LoginName") %></td>
										 <td><%# Convert.ToBoolean( Eval("System"))?"是":"否" %></td>
										 
										 
											<td class="data-act">
                                            <a href="Admin_Detail.aspx?Id=<%# Eval("Id") %>"><i class="icon-edit"></i> 编辑</a>
                                            <a style="cursor: pointer;" onclick="if(confirm('确认要删除吗?')){ajaxDelItem('<%# Eval("Id") %>')};" class="delt"><i class="icon-remove"></i> 删除</a>
                                            </td>
										</tr>
						</ItemTemplate>
					</asp:Repeater>
									</tbody>
								</table>



							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </form>
	</div>
</body>
</html> 