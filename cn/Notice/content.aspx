<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.Notice.content" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/cn/Notice/not_left.ascx" TagPrefix="uc1" TagName="not_left" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
<title>北美飞机资源网</title>
<link rel="stylesheet" type="text/css" href="../../css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <uc1:top runat="server" ID="top" />
<div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
       <uc1:not_left runat="server" ID="not_left" />
 	
	
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4"><%=Type %></td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td ><table width="885" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="70" colspan="2" align="center" valign="middle" class="f16" style="padding-right:30px;"><strong class="zi1"> <%= Subject %></strong></td>
              </tr>
              <tr>
                <td height="30" colspan="2" align="center" valign="top" class="new_line" style="padding-right:30px;">发布时间：<%=CreateDate %> </td>
              </tr>
              
              <tr>
                <td colspan="2" align="left" valign="top" style="padding-right:30px;">
                    <%= Content %>
                  </td>
                </tr>
            </table>
            <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p></td>
              </tr>
        </table></td>
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
