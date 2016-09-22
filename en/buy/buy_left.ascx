<%@ Control Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.en.buy.buy_left" %>
<link rel="stylesheet" href="../../css/pro_menu1.css" type="text/css" />
<link rel="stylesheet" href="../../css/jquery-tool.css" type="text/css" />
<style>input{ height:15px;}</style>
<!-- 代码部分begin -->
<div id="content">
<ul id="expmenu-freebie">
<li>
<!-- Start Freebie -->
<ul class="expmenu">


<li>
<div class="header">
<span class="label">Type</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:block">
<li><table width="210" border="0" cellpadding="0" cellspacing="0">

    <% if (typetable !=null ){

           int i = 0;
           int j=0;
           int number=typetable.Rows.Count;
           while(i<number)
           {
           
            %>
<tr>
<td align="center" valign="bottom">
    <%if (i<number){ %>
    <a href="index.aspx?Type=<%= HttpUtility.UrlEncode( typetable.Rows[i]["Name"]+"" )%>"><img src="../../<%=typetable.Rows[i]["Image"] %>"  width="70" border="0" /></a>
    <%
          i = i + 1;
    } %>
</td>
<td align="center" valign="bottom">
    <% if (i<number){ %>
    <a href="index.aspx?Type=<%= HttpUtility.UrlEncode( typetable.Rows[i]["Name"]+"" )%>"><img src="../../<%=typetable.Rows[i]["Image"] %>"  width="70" border="0" /></a>
    <%
           i = i + 1;
    } %>
</td>
</tr>
 <tr>
<td align="center" valign="top" height="25">
    <% if (j<number){ %>
    <a href="index.aspx?Type=<%= HttpUtility.UrlEncode( typetable.Rows[j]["Name"]+"" )%>" style="font-size:12px;"><%=typetable.Rows[j]["Name"] %></a>
    <%
           j = j + 1;
    } %>

</td>
<td align="center" valign="top">
    <%if (j<number){ %><a href="index.aspx?Type=<%= HttpUtility.UrlEncode( typetable.Rows[j]["Name"]+"" )%>"  style="font-size:12px;"><%=typetable.Rows[j]["Name"] %></a><%j = j + 1;
      } %></td>
</tr>
 
    <%} 
      }
      %>
</table></li>
</ul>
</li>

 

<li><!--类型--> 
 <div class="header">
<span class="label">Condition</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;">
    
    <asp:ListBox ID="ListBox1" runat="server" Rows="1">
        <asp:ListItem>Select</asp:ListItem>
        <asp:ListItem>New</asp:ListItem>
        <asp:ListItem>Used</asp:ListItem>
    </asp:ListBox>
     </li>
</ul>
</li>

<li><!--新机-->  
<div class="header">
<span class="label">Price</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;">
    
<asp:ListBox ID="ListBox2" runat="server" Rows="1">
        <asp:ListItem>Any</asp:ListItem>
        <asp:ListItem><$1,000,000</asp:ListItem>
        <asp:ListItem>$1,000,000-$2,000,000</asp:ListItem>
    <asp:ListItem>$2,000,001-$5,000,000</asp:ListItem>
    <asp:ListItem>$5,000,001-$10,000,000</asp:ListItem>
    <asp:ListItem>$10,000,001-$50,000,000</asp:ListItem>
    <asp:ListItem>$50,000,001-$100,000,000</asp:ListItem>
    <asp:ListItem>>$100,000,000</asp:ListItem>
    </asp:ListBox></li>
</ul>
</li>

<li><!--价格-->
 <div class="header">
<span class="label">Year</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;"><asp:ListBox ID="ListBox3" runat="server" Rows="1"> 
    </asp:ListBox>
to
<asp:ListBox ID="ListBox4" runat="server" Rows="1"> 
    </asp:ListBox>
</li>
</ul>
</li>

<li><!--年份-->  
<div class="header">
<span class="label">Manufacturer</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none" id="zzsmenu">
<li style="padding-left:22px;">
    <asp:CheckBoxList ID="CheckBoxList1" AutoPostBack="true" runat="server"></asp:CheckBoxList>
</li>

</ul>
</li>


<li><!--制造商-->
 <div class="header">
<span class="label">Model</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none" >
<li style="padding-left:22px;">
<asp:CheckBoxList ID="CheckBoxList2"  runat="server"></asp:CheckBoxList>
</li>
</ul>
</li>

<li><!--型号-->  
<div class="header">
<span class="label">Total Time in Hours</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;"><asp:ListBox ID="ListBox5" runat="server" Rows="1">
        <asp:ListItem>Any</asp:ListItem>
        <asp:ListItem><10</asp:ListItem>
        <asp:ListItem>10-100</asp:ListItem>
    <asp:ListItem>100-200</asp:ListItem>
    <asp:ListItem>200-300</asp:ListItem>
    <asp:ListItem>300-400</asp:ListItem>
    <asp:ListItem>>400</asp:ListItem>
    </asp:ListBox></li>
</ul>
</li>


<li><!--飞行时间--> 
<div class="header">
<span class="label">Number of Seats</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none; ">
<li style="padding-left:20px;">
<asp:ListBox ID="ListBox6" runat="server" Rows="1">
        <asp:ListItem>Any</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
    <asp:ListItem>6</asp:ListItem>
    <asp:ListItem>8</asp:ListItem> 
    </asp:ListBox>
</li>
</ul>

</li>


<li><!--座位数量--> 

<div class="header">
<span class="label">Exterior Color</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:22px;"> <asp:CheckBoxList ID="CheckBoxList3"  runat="server"></asp:CheckBoxList></li>
</ul>
</li>

<li><!--外观颜色-->  
<div class="header">
<span class="label">Interior Color</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li  style="padding-left:22px;"> <asp:CheckBoxList ID="CheckBoxList4"  runat="server"></asp:CheckBoxList></li>
</ul>
</li>

<li><!--内观颜色--> 
<div class="header">
<span class="label">Avionics</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:22px;"><asp:CheckBoxList ID="CheckBoxList5"  runat="server"></asp:CheckBoxList></li>
</ul>
</li><!--航空电子设备-->
<li>
<div class="header">
<span class="label">Additional Features</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:22px;">
<asp:CheckBoxList ID="CheckBoxList6"  runat="server"></asp:CheckBoxList>
</ul>
</li><!--特点功能--> 
</ul>
    
      <li>
       <div style="width:100%; text-align:center; margin-top:10px; margin-bottom:10px;">
           <asp:ImageButton ID="SearchButton" ImageUrl="../../images/search_en.png" Width="144" Height="35"  runat="server" />
 
       </div>
    </li>
     
<!-- End Freebie -->
</li>

</ul>
</div>
<script src="../../js/jquery-1.8.2.min.js"></script>
<script src="../../js/jquery.tools.min.js"></script>
<script src="../../js/main.js"></script>
<script type="text/javascript">
    function showzzs() {
        $("#zzsarrow").removeClass("down");
        $("#zzsarrow").addClass("up");
        document.getElementById("zzsmenu").style.display = "block";
    }
</script>
<!-- 代码部分end -->	
