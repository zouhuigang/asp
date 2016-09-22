<%@ Page Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.en.sell.Sell3" %>

<%@ Register Src="~/en/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/en/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/en/sell/sel_left.ascx" TagPrefix="uc1" TagName="sel_left" %>
<%@ Register Src="~/en/include/top.ascx" TagPrefix="uc1" TagName="top" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
<title>北美飞机资源网</title>
<link rel="stylesheet" type="text/css" href="../../css/style_en.css" />
<link rel="stylesheet" href="../../css/not_menu.css" type="text/css" />
<link rel="stylesheet" href="../../css/jquery-tool.css" type="text/css" />
<SCRIPT src="../../js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <uc1:top runat="server" ID="top" />
<div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
 
        <uc1:sel_left runat="server" ID="sel_left" />
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td class="zi4" style="line-height:70PX;">AIRCRAFT BROKERS/DEALERS</td>
      </tr>
      
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" bgcolor="#2377B5"  style="color:#FFFFFF;">

 
              <tr>
                <td height="50" colspan="6" bgcolor="#2377B5">BASIC INFORMATION </td>
                </tr>
               <tr>
                <td align="right" bgcolor="#538DB8">Type                  </td>
                <td align="left" bgcolor="#538DB8">
                    <asp:ListBox ID="Type" runat="server" Rows="1"></asp:ListBox>
                  </td>
                <td align="right" bgcolor="#538DB8">Subject              </td>
                <td align="left" bgcolor="#538DB8">
                    <asp:TextBox ID="Subject" runat="server"></asp:TextBox>
                  </td>
                <td align="right" bgcolor="#538DB8">SerialNumber              </td>
                <td align="left" bgcolor="#538DB8">
                    <asp:TextBox ID="SerialNumber" runat="server"></asp:TextBox> 
                  </td>
              </tr>
              <tr>
                <td align="right" bgcolor="#80AFD2">Make</td>
                <td width="141" align="left" bgcolor="#80AFD2">
                    <asp:ListBox ID="Make" runat="server" Rows="1" AutoPostBack="true" >
                    </asp:ListBox> 
                  </td>
                <td align="right" bgcolor="#80AFD2">Model                  </td>
                <td width="151" align="left" bgcolor="#80AFD2"> 
                    <asp:ListBox ID="Model" runat="server" Rows="1" >
                    </asp:ListBox>
                  </td>
                <td width="86" align="right" bgcolor="#80AFD2">Condition</td>
                <td width="176" align="left" bgcolor="#80AFD2">
                    <asp:ListBox ID="Condition" runat="server" Rows="1">
                        <asp:ListItem>New</asp:ListItem>
                        <asp:ListItem>Used</asp:ListItem>
                    </asp:ListBox>
                    </td>
              </tr>
              <tr>
                <td align="right" bgcolor="#538DB8">Year                  </td>
                <td align="left" bgcolor="#538DB8">
                    <asp:TextBox ID="Year" runat="server"></asp:TextBox>
                  </td>
                <td align="right" bgcolor="#538DB8">Number of Seats                  </td>
                <td align="left" bgcolor="#538DB8">
                    <asp:TextBox ID="Seats" runat="server"></asp:TextBox>
                  </td>
                <td align="right" bgcolor="#538DB8">Total time                  </td>
                <td align="left" bgcolor="#538DB8">
                    <asp:TextBox ID="TotalTime" runat="server"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                <td align="right" bgcolor="#80AFD2">Exterior</td>
                <td align="left" bgcolor="#80AFD2">
                    <asp:TextBox ID="Exterior" runat="server"></asp:TextBox>
                  </td>
                <td align="right" bgcolor="#80AFD2">Interior                  </td>
                <td align="left" bgcolor="#80AFD2">
                    <asp:TextBox ID="Interior" runat="server"></asp:TextBox>
                  </td>
                <td align="right" bgcolor="#80AFD2">Selling Price</td>
                <td align="left" bgcolor="#80AFD2">
                    <asp:TextBox ID="Price" style="width:100px;" runat="server"></asp:TextBox>
&nbsp;In USD </td>
              </tr>
              <tr>
                <td colspan="6">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="6" bgcolor="#FFFFFF">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="6"><strong>DETAIL INFORMATION</strong></td>
                </tr>
              <tr>
                <td colspan="6"><table width="650" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#2377B5"  style="color:#FFFFFF;">
                  <tr>
                    <td height="40" colspan="6" valign="middle">Description</td>
                  </tr>
                  <tr>
                    <td colspan="6">
                        <asp:TextBox ID="Description" style="width:640px; height:150px;" TextMode="MultiLine" runat="server"></asp:TextBox>
                        </td>
                  </tr>
                  <tr>
                    <td height="40" colspan="6" valign="middle">Features</td>
                  </tr>
                  <tr>
                    <td colspan="6"><asp:TextBox ID="Features" style="width:640px; height:150px;" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td height="40" colspan="6" valign="middle">Maintienance/Records</td>
                  </tr>
                  <tr>
                    <td colspan="6"><asp:TextBox ID="Maintienance" style="width:640px; height:150px;" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td height="40" colspan="6" valign="middle">Avionics</td>
                  </tr>
                  <tr>
                    <td colspan="6"><asp:TextBox ID="Avionics" style="width:640px; height:150px;" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td height="40" colspan="6" valign="middle">Interior/Cabin</td>
                  </tr>
                  <tr>
                    <td colspan="6"><asp:TextBox ID="Cabin" style="width:640px; height:150px;" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td height="40" colspan="6" valign="middle">Additional Equipment </td>
                  </tr>
                  <tr>
                    <td colspan="6"><asp:TextBox ID="Equipment" style="width:640px; height:150px;" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td height="40" colspan="6" valign="middle">Location</td>
                  </tr>
                  <tr>
                    <td colspan="6"><asp:TextBox ID="Location" style="width:640px; height:150px;" TextMode="MultiLine" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td height="70" colspan="6" align="right">
                        <asp:ImageButton ID="SaveImageButton" ImageUrl="../../images/sub.jpg" width="139" height="39" runat="server" />
                        </td>
                  </tr>
                </table></td>
              </tr>
            </table>
            <p>&nbsp;</p>
              <p>&nbsp;</p></td>
            </tr>
        </table>     </td>
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
