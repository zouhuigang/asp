<%@ Page Language="C#" AutoEventWireup="true"   Inherits="Aircraft.Web.cn.club.Favorites" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/cn/club/clu_left1.ascx" TagPrefix="uc1" TagName="clu_left1" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
<title>北美飞机资源网</title>
<link rel="stylesheet" type="text/css" href="../../css/style.css" />
<SCRIPT src="../../js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
</head>
<body>
    <form id="form1" runat="server">
   <div class="main">
       <uc1:top runat="server" ID="top" />
<div>
<table width="1160" height="450" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
        <uc1:clu_left1 runat="server" ID="clu_left1" />
	
	</td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">我的收藏</td>
      </tr>
      <tr>
        <td align="center" valign="top" ><table width="100%" border="0" align="center" cellpadding="3">
           
          <tr>
            <td align="center" valign="middle"> 
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>

                    
              <div class="light"><br />
                  <a href="../buy/content.aspx?Id=<%# Eval("AircraftId") %>" class="lightbox-2"  rel="flowers" title="jQuery Lightbox　"><img src="../../<%# Eval("Image") %>"  alt="" width="130" height="90" border="0"/></a>
                <div  class="light1"> 　
                    
                    <asp:Button ID="Button1"  OnCommand="Button1_Command" CommandArgument='<%# Eval("Id") %>' runat="server" Text="删除" /> 
                    
                  </div>
                </div>
               </ItemTemplate>
                </asp:Repeater>
                 </td>
          </tr> 
        </table>
          <p>&nbsp;</p></td>
      </tr>
      
    </table></td>
  </tr>
</table>
    <uc1:bottom1 runat="server" ID="bottom1" />
</div>
       <uc1:bottom runat="server" ID="bottom" />
 </div>
    </form>
</body>
</html>
