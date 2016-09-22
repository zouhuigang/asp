<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.sell.sell2" %>

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
        <td height="70" class="zi4">SELL AIRCRAFT</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><p>&nbsp;</p>
            <table width="700" border="0" align="center" cellpadding="5" cellspacing="1">
              <tr>
                <td> </td>
                <td width="170" height="45" align="center" valign="middle" style="background:url(../../images/bg6.jpg) no-repeat center bottom; color:#FFFFFF; ">OWNER</td>
                <td width="170" align="center" valign="middle" style="background:url(../../images/bg7.jpg) no-repeat center bottom; color:#FFFFFF;">BROKER<br />
DEALER</td>
              </tr>
              <tr>
                <td bgcolor="#DCBDCD" class="zi6" style="padding-left:30px;"><strong> FREE GAT membership</strong></td>
                <td align="center" bgcolor="#BDDCCD"><img src="../../images/enter.png" width="30" height="30" /></td>
                <td align="center" bgcolor="#BED7DC"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td bgcolor="#F6ECF2"><strong>　　FREE Advertising</strong></td>
                <td align="center" bgcolor="#ECF5F0"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
                <td align="center" bgcolor="#E9F3F5"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td bgcolor="#DCBDCD"><strong>　　Up to 39 images of FREE Upload</strong></td>
                <td align="center" bgcolor="#BDDCCD"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
                <td align="center" bgcolor="#BED7DC"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td bgcolor="#F6ECF2"><strong>　　UP to 5 mins of FREE video Upload</strong></td>
                <td align="center" bgcolor="#ECF5F0"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
                <td align="center" bgcolor="#E9F3F5"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td bgcolor="#DCBDCD"><strong>　　Unlimited GAT Edit</strong></td>
                <td align="center" bgcolor="#BDDCCD"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
                <td align="center" bgcolor="#BED7DC"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td bgcolor="#F6ECF2"><strong>　　Featured Listing</strong></td>
                <td align="center" bgcolor="#ECF5F0"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
                <td align="center" bgcolor="#E9F3F5"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td bgcolor="#DCBDCD"><strong>　　Email Alerts to GAT Buyers</strong></td>
                <td align="center" bgcolor="#BDDCCD"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
                <td align="center" bgcolor="#BED7DC"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td bgcolor="#F6ECF2"><strong>　　Multiple Postings</strong></td>
                <td align="center" bgcolor="#ECF5F0">&nbsp; </td>
                <td align="center" bgcolor="#E9F3F5"><img src="../../images/enter.png" alt=" " width="30" height="30" /></td>
              </tr>
              <tr>
                <td><a href="Sell3.asp"></a></td>
                <td align="center"><a href="index1.aspx"><img src="../../images/bt4_en.jpg" width="124" height="33" border="0" /> &nbsp;</a></td>
                <td align="center"><a href="index.aspx"><img src="../../images/bt4_en.jpg" width="124" height="33" border="0" /></a></td>
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
