<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.club.user" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/cn/club/clu_left.ascx" TagPrefix="uc1" TagName="clu_left" %>
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
        <td height="70" class="zi4">个人信息</td>
      </tr>
      <tr>
        <td ><table width="600" border="0" cellpadding="6" cellspacing="0"  >
        
        <tr>
          <td width="87" align="right"><span class="font_lexiang"> </span>电子邮件：</td>
          <td width="489">
              <asp:TextBox ID="Email" CssClass="inputstyle inputuse" size="40" runat="server" ></asp:TextBox>
              </td>
              </tr>
        <tr>
          <td align="right"><span class="font_lexiang"> </span>姓名：</td>
          <td><asp:TextBox ID="UserName" CssClass="inputstyle inputuse" size="40" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="right"><span class="font_lexiang"> </span>电话：</td>
          <td><asp:TextBox ID="Telephone" CssClass="inputstyle inputuse" size="40" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="right">微信号：</td>
          <td><asp:TextBox ID="WeChat" CssClass="inputstyle inputuse" size="40" runat="server"></asp:TextBox></td>
              </tr>
        <tr>
          <td align="right">出身年月：</td>
          <td><asp:TextBox ID="Birthday" CssClass="inputstyle inputuse" size="40" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td align="right">性别：</td>
          <td valign="middle"><asp:RadioButton ID="RadioButton3" GroupName="1" Text="男" runat="server" />
 <asp:RadioButton ID="RadioButton1" GroupName="1" Text="女" runat="server" /> 
                  
 <asp:RadioButton ID="RadioButton2" GroupName="1" Text="保密" runat="server" /> 

          </td>
        </tr>
        <tr>
          <td height="80" align="right" valign="top">简介：</td>
          <td>            <label>
              <asp:TextBox ID="Description" TextMode="MultiLine" CssClass="inputstyle" size="40" Rows="9" runat="server"></asp:TextBox>
     
              </label>          </td>
        </tr>
        <tr>
          <td align="right">&nbsp;</td>
          <td><span class="form_style mart20">
              <asp:Button ID="SaveButton" runat="server" CssClass="but_sub" Text="提 交" /> 
          </span></td>
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
