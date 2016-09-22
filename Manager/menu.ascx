<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.Manager.menu" %>
<div id="left" style="height:100%;">
            <form action="search-results.html" method="GET" class='search-form' style="display:none;"></form>
			   
			 <div <%= fjgl %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>飞机管理</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
					    <a href="../AircraftType/list.aspx">类型管理</a> 
				    </li>
                     <li>
					    <a href="../AircraftManufacturer/list.aspx">制造商管理</a> 
				    </li>
                    <li>
					    <a href="../AircraftModel/list.aspx">型号管理</a> 
				    </li>
                    <li>
					    <a href="../Avionics/list.aspx">航空电子设备</a> 
				    </li>
                     <li>
					    <a href="../Features/list.aspx">特点功能</a> 
				    </li>
                     <li>
					    <a href="../Aircraft/list.aspx">飞机</a> 
				    </li>
				</ul>
			</div> 
<%--    <div <%= bmfj %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>北美包机环游</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
					    <a href="../MemoInfo/InfoEdit.aspx?Type=<%= HttpUtility.UrlEncode("北美包机环游") %>&MenuType=<%= HttpUtility.UrlEncode("北美包机") %>">北美包机环游</a> 
				    </li>
                     <li>
					    <a href="../Introduction/list.aspx">北美介绍</a> 
				    </li>
                     <li>
					    <a href="../Meal/list.aspx">北美包机环游套餐</a> 
				    </li>
                     <li>
					    <a href="../Consultation/list.aspx">私人定制咨询</a> 
				    </li>
                   
				</ul>
			</div> --%>
    <div <%= cjwt %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>常见问题管理</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
					    <a href="../Notice/list.aspx?Type=<%= HttpUtility.UrlEncode("如何买飞机") %>">如何买飞机</a> 
				    </li>
                     <li>
					    <a href="../Notice/list.aspx?Type=<%= HttpUtility.UrlEncode("北航网全方位服务") %>">北航网全方位服务</a> 
				    </li>
                    <li>
					    <a href="../Notice/list.aspx?Type=<%= HttpUtility.UrlEncode("航空租赁") %>">航空租赁</a> 
				    </li> 
				</ul>
			</div> 

    <div <%= hkkx %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>航空快讯管理</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
					    <a href="../Info/list.aspx?Type=<%= HttpUtility.UrlEncode("航空快讯") %>">航空快讯管理</a> 
				    </li>  
				</ul>
			</div> 
      <div <%= hygl %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>航空俱乐部管理</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
                        <a href="../user/list.aspx">会员管理</a> 
				    </li>
                     <li>
                        <a href="../Project/list.aspx">项目众筹</a> 
				    </li>
                     <li>
                        <a href="../MemoInfo/InfoEdit.aspx?Type=<%= HttpUtility.UrlEncode("俱乐部增值服务") %>&MenuType=<%= HttpUtility.UrlEncode("航空俱乐部") %>">俱乐部增值服务</a> 
				    </li>
                      <li>
                        <a href="../MemoInfo/InfoEdit.aspx?Type=<%= HttpUtility.UrlEncode("定制服务") %>&MenuType=<%= HttpUtility.UrlEncode("航空俱乐部") %>">定制服务</a> 
				    </li>
                     
				</ul>
			</div>
    <div <%= lxwm %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>联系我们</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
                        <a href="../MemoInfo/InfoEdit.aspx?Type=<%= HttpUtility.UrlEncode("联系我们") %>&MenuType=<%= HttpUtility.UrlEncode("联系我们") %>">联系我们</a> 
				    </li>
                     <li>
                        <a href="../MemoInfo/InfoEdit.aspx?Type=<%= HttpUtility.UrlEncode("销售网络") %>&MenuType=<%= HttpUtility.UrlEncode("联系我们") %>">销售网络</a> 
				    </li>
				</ul>
			</div>
    <div <%= fxjspx %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>飞行驾驶培训</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
                        <a href="../MemoInfo/InfoEdit.aspx?Type=<%= HttpUtility.UrlEncode("培训要求") %>&MenuType=<%= HttpUtility.UrlEncode("飞行驾驶培训") %>">培训要求</a> 
				    </li>
                     <li>
                        <a href="../MemoInfo/InfoEdit.aspx?Type=<%= HttpUtility.UrlEncode("培训计划与时间") %>&MenuType=<%= HttpUtility.UrlEncode("飞行驾驶培训") %>">培训计划与时间</a> 
				    </li>
				</ul>
			</div>
</div>