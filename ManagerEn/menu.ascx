<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.ManagerEn.menu" %>
<div id="left" style="height:100%;">
            <form action="search-results.html" method="GET" class='search-form' style="display:none;"></form>
			   
			 <div <%= fjgl %>>
				<div class="subnav-title">
					<a href="#" class='toggle-subnav'><i class="icon-angle-down"></i><span>Aircraft</span></a>
				</div>
                 <ul class="subnav-menu">
				    <li>
					    <a href="../AircraftType/list.aspx">Type</a> 
				    </li>
                    <%-- <li>
					    <a href="../AircraftManufacturer/list.aspx">制造商管理</a> 
				    </li>--%>
                    <li>
					    <a href="../AircraftModel/list.aspx">Model</a> 
				    </li>
                    <li>
					    <a href="../Avionics/list.aspx">Avionics</a> 
				    </li>
                     <li>
					    <a href="../Features/list.aspx">Features</a> 
				    </li>
                     <li>
					    <a href="../Aircraft/list.aspx">飞机</a> 
				    </li>
				</ul>
			</div> 
       
     
</div>