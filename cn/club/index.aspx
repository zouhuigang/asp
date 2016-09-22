<%@ Page Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.cn.club.index" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/cn/club/clu_left.ascx" TagPrefix="uc1" TagName="clu_left" %>




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
<table width="1160" height="350" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
        <uc1:clu_left runat="server" ID="clu_left" />
	</td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="48%" height="76" class="zi4">会员登录</td>
        <td width="52%" rowspan="2" valign="top"><span style="width:350px; float:left; margin-left:30px; line-height:180%;"><strong><br />
          <img src="../../images/pic.jpg" width="378" height="179" />如果您还不是北航网会员</strong>，请点击注册<br />
<a href="registr.aspx" class="but_sub">注 册</a></span></td>
      </tr>
      <tr>
        <td ><table width="400" border="0" align="left" cellpadding="1" cellspacing="9" >
            <tr>
              <td width="80" align="right" ><span class="font_lexiang">* </span><span style="font-size:15px;">帐　号：</span></td>
              <td width="308">
                  <asp:TextBox ID="Email" CssClass="inputstyle" runat="server" size="30"  ></asp:TextBox>
                  </td>
            </tr>
            <tr>
              <td align="right"><span class="font_lexiang">* </span><span style="font-size:15px;">密　码：</span></td>
              <td><asp:TextBox ID="Password" TextMode="Password" CssClass="inputstyle" runat="server" size="30"  ></asp:TextBox></td>
            </tr>
            <tr>
              <td height="48" align="right"><span class="font_lexiang">* </span><span style="font-size:15px;">验证码：</span></td>
              <td>
                  <asp:TextBox ID="Code" CssClass="inputstyle" size="10" runat="server"></asp:TextBox>

                  <img src="ValidateCode.aspx" id="imgcode" align="absmiddle" /> <a  class="font_green" onclick="changeiamge()" href="#" >看不清，换一张</a></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td align="left" style="padding-top:2px;">
                  <asp:Button ID="LoginButton" runat="server" CssClass="but_sub fl" Text="登 录" /> 
                  <span class="marl15 mart15 fl">&nbsp;忘记密码？请<a href="forget.aspx" class="font_leyue">找回密码</a></span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table></td>
        </tr>
      
    </table></td>
       
  </tr>
</table> <uc1:bottom1 runat="server" ID="bottom1" />
</div>
        <uc1:bottom runat="server" ID="bottom" />
</div>
        <script type="text/javascript">
            function changeiamge()
            {

                document.getElementById("imgcode").src = "ValidateCode.aspx?dt=" + new Date().getTime();
            }
            
        </script>
    </form>
</body>
</html>
