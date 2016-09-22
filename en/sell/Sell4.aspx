<%@ Page Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.en.sell.Sell4" %>

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
        <td height="70" class="zi4">AIRCRAFT BROKERS/DEALERS</td>
      </tr>
 
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
  <td align="left" valign="top"><div style="background-color:#2377B5;"><table width="100%" border="0" align="center" cellpadding="5" cellspacing="0"  style="color:#FFFFFF;">


              <tr bgcolor="#2377B5">
                <td height="50" colspan="6" bgcolor="#2377B5"> 　　BASIC INFORMATION </td>
              </tr>
        <tr bgcolor="#2377B5">
                <td align="right" bgcolor="#538DB8">Type </td>
                <td align="left" bgcolor="#538DB8"><%= Type %></td>
                <td align="right" bgcolor="#538DB8">Subject </td>
                <td align="left" bgcolor="#538DB8"><%=Subject %></td>
                <td align="right" bgcolor="#538DB8">SerialNumber</td>
                <td align="left" bgcolor="#538DB8"><%= SerialNumber %></td>
              </tr>
              <tr bgcolor="#2377B5">
                <td width="108" align="right" bgcolor="#80AFD2">Make</td>
                <td width="181" align="left" bgcolor="#80AFD2"><%= Manufacturer %></td>
                <td width="132" align="right" bgcolor="#80AFD2">Model </td>
                <td width="156" align="left" bgcolor="#80AFD2"><%= Model %></td>
                <td width="125" align="right" bgcolor="#80AFD2">Condition</td>
                <td width="109" align="left" bgcolor="#80AFD2"><%= New %></td>
              </tr>
              <tr bgcolor="#2377B5">
                <td align="right" bgcolor="#538DB8">Year </td>
                <td align="left" bgcolor="#538DB8"><%= Year %></td>
                <td align="right" bgcolor="#538DB8">No.Seats </td>
                <td align="left" bgcolor="#538DB8"><%= NumberOfSeats %></td>
                <td align="right" bgcolor="#538DB8">Total time </td>
                <td align="left" bgcolor="#538DB8"><%= CumulativeHours %> hours</td>
              </tr>
              <tr bgcolor="#2377B5">
                <td align="right" bgcolor="#80AFD2">Exterior color </td>
                <td align="left" bgcolor="#80AFD2"><%= Color %></td>
                <td align="right" bgcolor="#80AFD2">Interior color </td>
                <td align="left" bgcolor="#80AFD2"><%= SeatsColor %></td>
                <td align="right" bgcolor="#80AFD2">Selling Price</td>
                <td align="left" bgcolor="#80AFD2">$<%= Price %></td>
              </tr>
              
              <tr>
                <td colspan="6">&nbsp;</td>
                </tr>
              <tr>
                <td colspan="6" bgcolor="#FFFFFF">&nbsp;</td>
              </tr>
              <tr>
                <td colspan="6">　　DETAIL INFORMATION</td>
              </tr>
              <tr>
                <td colspan="6"><table width="80%" border="0" align="center" cellpadding="5" cellspacing="0"  style="color:#FFFFFF;">
                  <tr>
                    <td height="50" colspan="6" valign="bottom"><strong class="zi11">Description</strong></td>
                  </tr>
                  <tr>
                    <td colspan="6"><span style="padding-left:0px; padding-top:20px;"><%=Overview %></span></td>
                  </tr>
                  <tr>
                    <td height="50" colspan="6" valign="bottom" class="zi11">Features</td>
                  </tr>
                  <tr>
                    <td colspan="6"><span style="padding-left:0px; padding-top:20px;"><%=Characteristics %></span></td>
                  </tr>
                  <tr>
                    <td height="50" colspan="6" valign="bottom" class="zi11">Maintienance/Records</td>
                  </tr>
                  <tr>
                    <td colspan="6"><span style="padding-left:0px; padding-top:20px;"><%=Maintenance %></span></td>
                  </tr>
                  <tr>
                    <td height="50" colspan="6" valign="bottom" class="zi11">Avionics</td>
                  </tr>
                  <tr>
                    <td colspan="6"><span style="padding-left:0px; padding-top:20px;"><%=Equipment %></span></td>
                  </tr>
                  <tr>
                    <td height="50" colspan="6" valign="bottom" class="zi11">Interior/Cabin</td>
                  </tr>
                  <tr>
                    <td colspan="6"><span style="padding-left:0px; padding-top:20px;"><%=EngineRoom %></span></td>
                  </tr>
                  <tr>
                    <td height="50" colspan="6" valign="bottom" class="zi11">Additional Equipment </td>
                  </tr>
                  <tr>
                    <td colspan="6"><span style="padding-left:0px; padding-top:20px;"><%=AdditionalEquipment %></span></td>
                  </tr>
                  <tr>
                    <td height="50" colspan="6" valign="bottom" class="zi11">Location</td>
                  </tr>
                  <tr>
                    <td colspan="6"><span style="padding-left:0px; padding-top:20px;"><%= Area %></span></td>
                  </tr>
                  <tr>
                    <td height="70" colspan="6" align="right"><a href="Sell3.aspx?Id=<%=Id %>"><img src="../../images/bt1_en.jpg" width="126" height="33" border="0" /></a>　<a href="Sell5.aspx?Id=<%=Id %>"><img src="../../images/bt2_en.jpg" width="192" height="33" border="0" /></a></td>
                  </tr>
                </table></td>
              </tr>
            </table>
  </div>
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
