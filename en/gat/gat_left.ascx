<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.gat.gat_left" %>
<link rel="stylesheet" href="../../css/culb_menu.css" type="text/css" />
 
<!-- 代码部分begin -->
	<div id="content">
		<ul id="expmenu-freebie">
			<li>
				<!-- Start Freebie -->
				<ul class="expmenu">
				<li>
						<div class="header">
							<span class="label" style="padding-left:10px;">MYGAT</span>
 						</div>
						<ul class="menu" style="display:block">
                            <%if (cannew) {%>
							<li><a href="../sell/Sell3.aspx" style="font-size:16px; color:#000000;">Place a New Ad</a></li>
							
                            <%} %>
                            <li> <a href="MyGAT2.aspx" style="font-size:16px; color:#000000;">Manage and Edit My Ad</a></li>
							<li><a href="MyGAT.aspx" style="font-size:16px; color:#000000;">View My Favorite Search</a></li>
							<li> <a href="MyGAT1.aspx" style="font-size:16px; color:#000000;">Edit My Portfolio</a></li>
						</ul>
				  </li>
				</ul>
				<!-- End Freebie -->
			</li>
		</ul>
	</div>
     <!-- 代码部分end -->	
