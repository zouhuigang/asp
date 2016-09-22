<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.buy.buy_left" %>
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
<span class="label">类型</span>
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
    <a href="index.aspx?Type=<%= HttpUtility.UrlEncode( typetable.Rows[j]["Name"]+"" )%>"><%=typetable.Rows[j]["Name"] %></a>
    <%
           j = j + 1;
    } %>

</td>
<td align="center" valign="top">
    <%if (j<number){ %><a href="index.aspx?Type=<%= HttpUtility.UrlEncode( typetable.Rows[j]["Name"]+"" )%>"><%=typetable.Rows[j]["Name"] %></a><%j = j + 1;
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
<span class="label">新机/二手机</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;">
    <asp:ListBox ID="ListBox1" runat="server" Rows="1">
        <asp:ListItem>请选择</asp:ListItem>
        <asp:ListItem>新机</asp:ListItem>
        <asp:ListItem>二手机</asp:ListItem>
    </asp:ListBox>
     </li>
</ul>
</li>

<li><!--新机-->  
<div class="header">
<span class="label">价格</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;"> <asp:ListBox ID="ListBox2" runat="server" Rows="1">
        <asp:ListItem>不限</asp:ListItem>
        <asp:ListItem>少于1000万</asp:ListItem>
        <asp:ListItem>1000至2000万</asp:ListItem>
    <asp:ListItem>2000至3000万</asp:ListItem>
    <asp:ListItem>3000至4000万</asp:ListItem>
    <asp:ListItem>4000至5000万</asp:ListItem>
    <asp:ListItem>5000万以上</asp:ListItem>
    </asp:ListBox>
 </li>
</ul>
</li>

<li><!--价格-->
 <div class="header">
<span class="label">年份</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;"><asp:ListBox ID="ListBox3" runat="server" Rows="1"> 
    </asp:ListBox>
到
<asp:ListBox ID="ListBox4" runat="server" Rows="1"> 
    </asp:ListBox>
</li>
</ul>
</li>

<li><!--年份-->  
<div class="header">
<span class="label">制造商</span>
<span class="arrow down" id="zzsarrow"></span>
</div>
<ul class="menu" style="display:none" id="zzsmenu">
<li style="padding-left:22px;">
    <asp:CheckBoxList ID="CheckBoxList1" AutoPostBack="true" runat="server"></asp:CheckBoxList>
</li>

</ul>
</li>


<li><!--制造商-->
 <div class="header">
<span class="label">型号</span>
<span class="arrow down" ></span>
</div>
<ul class="menu" style="display:none" >
<li style="padding-left:22px;">
<asp:CheckBoxList ID="CheckBoxList2"  runat="server"></asp:CheckBoxList>
</li>
</ul>
</li>

<li><!--型号-->  
<div class="header">
<span class="label">累积飞行时间</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:20px;"><asp:ListBox ID="ListBox5" runat="server" Rows="1">
        <asp:ListItem>不限</asp:ListItem>
        <asp:ListItem>少于10小时</asp:ListItem>
        <asp:ListItem>10至100小时</asp:ListItem>
    <asp:ListItem>100至200小时</asp:ListItem>
    <asp:ListItem>200至300小时</asp:ListItem>
    <asp:ListItem>300至400小时</asp:ListItem>
    <asp:ListItem>400小时以上</asp:ListItem>
    </asp:ListBox></li>
</ul>
</li>


<li><!--飞行时间--> 
<div class="header">
<span class="label">座位数量</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none; ">
<li style="padding-left:20px;">
<asp:ListBox ID="ListBox6" runat="server" Rows="1">
        <asp:ListItem>不限</asp:ListItem>
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
<span class="label">外观颜色</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:22px;"> <asp:CheckBoxList ID="CheckBoxList3"  runat="server"></asp:CheckBoxList></li>
</ul>
</li>

<li><!--外观颜色-->  
<div class="header">
<span class="label">内观颜色</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li  style="padding-left:22px;"> <asp:CheckBoxList ID="CheckBoxList4"  runat="server"></asp:CheckBoxList></li>
</ul>
</li>

<li><!--内观颜色--> 
<div class="header">
<span class="label">航空电子设备</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:22px;"><asp:CheckBoxList ID="CheckBoxList5"  runat="server"></asp:CheckBoxList></li>
</ul>
</li><!--航空电子设备-->
<li>
<div class="header">
<span class="label">特点功能</span>
<span class="arrow down"></span>
</div>
<ul class="menu" style="display:none">
<li style="padding-left:22px;">
<asp:CheckBoxList ID="CheckBoxList6"  runat="server"></asp:CheckBoxList>
</ul>
</li><!--特点功能--> 

    <li>
       <div style="width:100%; text-align:center; margin-top:10px; margin-bottom:10px;">
           <asp:ImageButton ID="SearchButton" ImageUrl="../../images/bt06.jpg" Width="126" Height="33" runat="server" />
 
       </div>
    </li>
</ul>
<!-- End Freebie -->
</li>
</ul>
</div>
<script src="../../js/jquery-1.8.2.min.js"></script>
<script src="../../js/jquery.tools.min.js"></script>
<script src="../../js/main.js"></script>
<script type="text/javascript">
    function showzzs()
    {
        $("#zzsarrow").removeClass("down");
        $("#zzsarrow").addClass("up");
        document.getElementById("zzsmenu").style.display = "block";
    }
</script>
<!-- 代码部分end -->	
