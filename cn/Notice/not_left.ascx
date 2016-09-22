<%@ Control Language="C#" AutoEventWireup="true" CodeFile="not_left.ascx.cs" Inherits="cn_Notice_not_left" %>
<link rel="stylesheet" href="../../css/culb_menu.css" type="text/css" />
 
<!-- 代码部分begin -->
	<div id="content">
		<ul id="expmenu-freebie">
			<li>
				<!-- Start Freebie -->
				<ul class="expmenu">
				<li>
						<div class="header">
							<span class="label" style="padding-left:10px;">常见问题</span>
 						</div>
						<ul class="menu" style="display:block">
 							<li ><a href="index.aspx?Type=<%= HttpUtility.UrlEncode("如何买飞机") %>" style="font-size:16px; color:#000000;">如何买飞机</a></li>
							<li><a href="index.aspx?Type=<%= HttpUtility.UrlEncode("北航网全方位服务") %>" style="font-size:16px; color:#000000;">北航网全方位服务</a></li>
							<li> <a href="index.aspx?Type=<%= HttpUtility.UrlEncode("航空租赁") %>" style="font-size:16px; color:#000000;">航空租赁</a></li>
 						</ul>
				  </li>
				</ul>
				<!-- End Freebie -->
			</li>
		</ul>
	</div>
     <!-- 代码部分end -->	
