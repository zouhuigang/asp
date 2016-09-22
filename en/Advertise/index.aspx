<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.Advertise.index" %>

<%@ Register Src="~/en/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/en/Advertise/ad_left.ascx" TagPrefix="uc1" TagName="ad_left" %>
<%@ Register Src="~/en/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/en/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>




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
        <uc1:ad_left runat="server" ID="ad_left" />
 
	
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">Advertise with GAT</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="5">
              
              <tr>
                <td><p>whether advertising your aircraft,service or company name,GlobalphaneSearch has offordable options</p>
                  <p><br />
                      <span class="zi77">Feature Your Aircraft</span><br />
                    We have economical solutions for both private sellers and professionals to receive maximum exposure ofWe have economical solutions for both private sellers and professionals to receive maximum exposure of</p>
                  <p><br />
                    <span class="zi77">Advertising Spots</span></p>
                  <p>We have economical solutions for both private sellers and professionals to receive maximum exposure ofWe have economical solutions for both private sellers and professionals to receive maximum exposure of</p>
                  <p><br />
                      <span class="zi77">Contact Form </span><br />
                    Please fill in the fields below and click &quot;Send&quot; to receive your GlobalPlaneSearch media kit.</p>
                  <p>&nbsp;</p>
                  </td>
              </tr>
              
              
              <tr>
                <td height="70"><table width="670" border="0" cellpadding="6" style="border:1px #999999 solid;">
                  <tr>
                    <td height="30" colspan="2" bgcolor="#E8E8E8"><strong>GPS Media Kit Request </strong></td>
                    </tr>
                  <tr>
                    <td align="right" valign="middle"><strong>Your Email:</strong></td>
                    <td width="527">
                        <asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Subject:</strong></td>
                    <td><asp:TextBox ID="Subject" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right"><strong>Comments:</strong></td>
                    <td><asp:TextBox ID="Comments" TextMode="MultiLine" style="width:300px; height:100px;" runat="server"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><label>
                        <asp:Button ID="SaveButton" runat="server" Text="send" /> 
                    </label></td>
                  </tr>
                  <tr>
                    <td colspan="2">Note aoub Privace:We are onlyPlease fill in the fields below and click &quot;Send&quot; to receive your GlobalPlaneSearch media kit.</td>
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
