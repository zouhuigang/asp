﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.cn.buy.index" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/cn/buy/buy_left.ascx" TagPrefix="uc1" TagName="buy_left" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
<title>北美飞机资源网</title>
<link rel="stylesheet" type="text/css" href="../../css/style.css" /><SCRIPT src="../../js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<link rel="stylesheet" type="text/css" href="../../css/pageGroup1.css"/>

<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script> 


</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <uc1:top runat="server" ID="top" />
        <div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
        <uc1:buy_left runat="server" ID="buy_left" />
	
	</td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">北美飞机搜索</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td height="90" ><table width="885" border="0" cellspacing="0" cellpadding="0" bgcolor="#EEEEEE" height="45">
          <tr>
            <td width="743" style="padding-left:20px;"> 
                 </td>
            <td width="600" align="left" valign="middle">
                
                <asp:HiddenField ID="PageIndex" runat="server" />
                 <div id="pageGro" class="cb" style="float:right">
	<div class="pageUp" onclick="pr()">上一页</div>
    <div class="pageList">
        <ul>
            <% 
                                
                                int s = Index - 2;
                                if (s < 1)
                                    s = 1;
                                int e = s + 4; 
                                
                                if (e > PageCount)
                                    e = PageCount;

                                if (e - s < 4)
                                {
                                    if (s > 1)
                                        s = s - 1;
                                }
                                if (e - s < 4)
                                {
                                    if (s > 1)
                                        s = s - 1;
                                }
 
                                 
                                    
                                    for(int i=s;i<=e;i++)
                                    {
                                 %>
                            <% if (i ==Index){ %> 
                            <li class="on" onclick="Change('<%=i %>')" > <%=i %></li>
                            <%}else{ %>
                             <li onclick="Change('<%=i %>')" > <%=i %></li>
                            <%} %>

                            <%} %> 
        </ul>
    </div>
    <div class="pageDown" onclick="ne()" style="width:initial; background:url(../../images/pageDown.png) 44px 6px no-repeat;">下一页</div>
</div></td>
          </tr>
        </table>
             <div style="height:0px; overflow:hidden"> 
                 <asp:Button ID="Button1" runat="server" Text="Button" /> 
             </div>
            <script type="text/javascript">
                function Change(index) {
                    document.getElementById("PageIndex").value = index;
                    document.getElementById("Button1").click();
                }

                function pr()
                {
                    var index = document.getElementById("PageIndex").value * 1;
                    if (index > 1) {
                        index = index - 1;
                        Change(index);
                    }
                }

                function ne()
                {
                    var index = document.getElementById("PageIndex").value * 1;
                    if (index < '<%=PageCount%>'*1) {
                        index = index + 1;
                        Change(index);
                    } 

                }

            </script>

        </td>
      </tr>
      <tr>
        <td valign="top">  
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate> 
     <table width="885" border="0" cellspacing="0" cellpadding="0">
       <tr>
         <td width="340" valign="top"><a href="content.aspx?Id=<%# Eval("Id") %>"><img src="../../<%# Eval("Image") %>" width="338" height="265" border="0"></a></td>
         <td width="347" valign="top"><table width="275" border="0" align="center" cellpadding="0" cellspacing="0">
             <tr>
               <td height="30" colspan="2" class="zi1"><%# Eval("Subject") %></td>
             </tr>
             <tr>
               <td colspan="2" class="zi2"><%# Eval("Description") %></td>
             </tr>
             <tr>
               <td height="25" class="zi3">制造商： </td>
               <td class="zi3"><%# Eval("Manufacturer") %></td>
             </tr>
             <tr>
               <td height="25" class="zi3">年份： </td>
               <td class="zi3"><%# Eval("Year") %></td>
             </tr>
             <tr>
               <td height="25" class="zi3">型号：</td>
               <td class="zi3"><%# Eval("Model") %></td>
             </tr>
             <tr>
               <td height="25" class="zi3">累积飞行小时：</td>
               <td class="zi3"><%# Eval("CumulativeHours") %>小时</td>
             </tr>
             <tr>
               <td height="25" class="zi3">座位数量：</td>
               <td class="zi3"> <%# Eval("NumberOfSeats") %></td>
             </tr>
             <tr>
               <td height="25" class="zi3">机身颜色：</td>
               <td class="zi3"><%# Eval("Color") %></td>
             </tr>
             <tr>
               <td height="25" class="zi3">座位颜色：</td>
               <td class="zi3"><%# Eval("SeatsColor") %></td>
             </tr>
             <tr>
               <td height="25" class="zi3">编号：</td>
               <td class="zi3"><%# Eval("SerialNumber") %></td>
             </tr>
         </table></td>
         <td width="198" valign="top"><div class=" leftt">
             <table width="170" border="0" align="center" cellpadding="0" cellspacing="0" >
               <tr>
                 <td height="35" class="zi6">最新价格</td>
               </tr>
               <tr>
                 <td height="35" class="zi5"><%# Eval("Price")+""=="0"?"<span style=\"font-size:14px\">详细价格请联系我们</span>":"USD$"+  Convert.ToDecimal( Eval("Price")).ToString("#,##") %></td>
               </tr>
               <tr>
                 <td height="60" align="center" valign="middle"><a href="content.aspx?Id=<%# Eval("Id") %>"><img src="../../images/bt03.jpg"  width="167" height="37" border="0"/></a></td>
               </tr>
               <tr>
                 <td height="50">
                     <asp:ImageButton ID="SaveButton"  OnCommand="SaveButton_Command" CommandArgument='<%# Eval("Id") %>'  width="167" height="37" runat="server" ImageUrl="../../images/bt04.jpg" />
                     </td>
               </tr>
             </table>
         </div></td>
       </tr>
     </table>
     <div class="linee"></div> 
     </ItemTemplate>
            </asp:Repeater>
  
        </td>
      </tr>
    </table></td>
  </tr>
</table> <uc1:bottom1 runat="server" ID="bottom1" />
</div>
        <uc1:bottom runat="server" ID="bottom" />
 </div>

    </form>
</body>
</html>
