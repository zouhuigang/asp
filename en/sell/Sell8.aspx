<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.sell.Sell8" %>

<%@ Register Src="~/en/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/en/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/en/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/en/sell/sel_left.ascx" TagPrefix="uc1" TagName="sel_left" %>




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
        <td height="70" class="zi4" style=" text-transform:uppercase;">Aircraft Brokers/Dealers</td>
      </tr>
  
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="5">


            
              <tr>
                <td align="center" valign="middle"><span class="zi5" style="line-height:40px;">Congratulations<br />
                  </span><span class="zi6" style="line-height:40px;">Your Ad is Successfully Posted</span><br />
                  <a href="#" style="color:#0066FF;">View Your Ad Here</a></td>
                </tr>
              

              <tr>
                <td height="87" align="center" valign="middle"><img src="../../images/bt6_en.jpg" width="126" height="33" />　
                    
                    <% if (Session["Type"] + "" == "Aircraft Brokers/Dealers")
                       { %>
                   <a href="Sell3.aspx"><img src="../../images/bt8_en.jpg" width="192" height="33"  /></a>
                    <%} %>
                </td>
              </tr>
            </table>
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
