<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.ManagerEn.Consultation.List" %>
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
	<!-- dataTables -->
	<link rel="stylesheet" href="../adminskin/css/plugins/datatable/TableTools.css">
	<!-- chosen选择  -->
	<link rel="stylesheet" href="../adminskin/css/plugins/chosen/chosen.css">
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
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.resizable.min.js"></script>
	<script src="../adminskin/js/plugins/jquery-ui/jquery.ui.sortable.min.js"></script>
	<!-- slimScroll  悬停滚动条-->
	<script src="../adminskin/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<!-- Bootstrap  前端CSS/HTML开发框架 -->
	<script src="../adminskin/js/bootstrap.min.js"></script>
	<!-- Bootbox 对话框 -->
	<script src="../adminskin/js/plugins/bootbox/jquery.bootbox.js"></script>
	<!-- dataTables -->
	<script src="../adminskin/js/plugins/datatable/jquery.dataTables.min.js"></script>
	<!-- Chosen选择 -->
	<script src="../adminskin/js/plugins/chosen/chosen.jquery.min.js"></script>

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
    
    <script type="text/javascript" >
        function ajaxDelItem(Id) { 
            $.post("List.aspx", {
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
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
	<div class="container-fluid" id="content">
		<uc1:menu ID="menu" runat="server" Type="北美包机"></uc1:menu>
		<div id="main">
			<div class="container-fluid">
				<!--带过滤器列表-->
				<div class="row-fluid">
					<div class="span12">
						<div class="box">
							<div class="box-title">
								<h3>
									<i class="icon-table"></i>
									<%=tname %>
								</h3>
							</div>
							<div class="box-content nopadding" id="resText">
                                
                          
								<table class="table table-hover table-nomargin table-bordered dataTable dataTable-nosort"  >
									<thead>
										<tr> 
											<th>姓名</th> 
                                            <th>联系方式</th> 
                                             <th>行程目的</th> 
                                             <th>出发城市</th> 
                                             <th>抵达城市</th> 
                                             <th>出发日期</th> 
                                             <th>返回日期</th> 
                                            <th>乘客人数</th> 
                                            <th>状态</th> 
											<th>操作</th>
										</tr>
									</thead> 
									<tbody>
                                    <asp:Repeater id="Repeater1" runat="server">
                        <ItemTemplate>
										<tr id='tr_<%# Eval("Id") %>'>
											 
                                            <td class="data-mun"><%# Eval("UserName") %></td>
                                             <td class="data-mun"><%# Eval("Telephone") %></td> 
                                             <td class="data-mun"><%# Eval("Target") %></td> 
                                             <td class="data-mun"><%# Eval("City") %></td> 
                                             <td class="data-mun"><%# Eval("City1") %></td> 
                                             <td class="data-mun"><%# Eval("Date") %></td> 
                                             <td class="data-mun"><%# Eval("Date1") %></td> 
                                             <td class="data-mun"><%# Eval("Number") %></td> 
                                             <td class="data-mun"><%# Eval("State") %></td> 
											 
											<td class="data-act">
                                            <a href="Edit.aspx?Type=<%= tname %>&Id=<%# Eval("Id") %>"><i class="icon-edit"></i> 编辑</a>
                                            <a style="cursor: pointer;" onclick="if(confirm('确认要删除吗?')){ajaxDelItem('<%# Eval("Id") %>')};" class="delt"><i class="icon-remove"></i> 删除</a>
                                            </td>
										</tr>
						</ItemTemplate>
					</asp:Repeater>
									</tbody>
								</table> <table width="100%" border="0" cellspacing="0" cellpadding="0" class="Apagecolor">
  <tr>
    <td height="26"><asp:HiddenField ID="PageIndexField" runat="server" />共有 <%=Total %> 条记录，当前第 <%= PageIndex %> 页，共 <%= PageNumber %> 页</td>
    <td><table border="0" align="right" cellpadding="0" cellspacing="0">
      <tr>
        <td width="40">  
            <asp:ImageButton ID="ImageButton1" ImageUrl="../img/first.gif" runat="server" title="转到首页" />
            </td>
        <td width="45">
            <asp:ImageButton ID="ImageButton2" ImageUrl="../img/back.gif" runat="server" title="转到上一页" />
           </td>
        <td width="45">
            <asp:ImageButton ID="ImageButton3" ImageUrl="../img/next.gif" runat="server" title="转到下一页" /> </td>
        <td width="40">
            
            <asp:ImageButton ID="ImageButton4" ImageUrl="../img/last.gif" runat="server" title="转到末页" /> </td>
         
        
      </tr>
    </table></td>
  </tr>
</table>
							</div> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>  
    </form>
</body>

</html>
