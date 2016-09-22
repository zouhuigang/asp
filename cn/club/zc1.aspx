<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.club.zc1" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/club/clu_left.ascx" TagPrefix="uc1" TagName="clu_left" %>
<%@ Register Src="~/cn/include/top.ascx" TagPrefix="uc1" TagName="top" %>




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
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
 
        <uc1:clu_left runat="server" ID="clu_left" />
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">我要众筹</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td ><table width="885" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top" style="padding-top:20px;"><table width="95%" border="0" align="left" cellpadding="0" cellspacing="0" >
              <tr>
                <td align="left"><table width="700" border="0" cellpadding="6" cellspacing="0"  >

                  <tr>
                    <td width="87" align="right"><span class="font_lexiang"> </span>姓名：</td>
                    <td width="489">
                        <asp:TextBox ID="UserName" runat="server" CssClass="inputstyle" size="40"></asp:TextBox>
                        </td>
                  </tr>
                  <tr>
                    <td align="right"><span class="font_lexiang"> </span>邮箱：</td>
                    <td><asp:TextBox ID="Email" runat="server" CssClass="inputstyle" size="40"></asp:TextBox></td>
                  </tr>
                  <tr>
                    <td align="right">电话：</td>
                    <td><asp:TextBox ID="Telephone" runat="server" CssClass="inputstyle" size="40"></asp:TextBox></td>
                  </tr>

                  <tr>
                    <td height="80" align="right" valign="top">说明：</td>
                    <td><label>
                        <asp:TextBox ID="Content" TextMode="MultiLine" runat="server" CssClass="inputstyle"  style="width:500px; height:200px;"></asp:TextBox>
                        
                      </label>                    </td>
                  </tr>
                  <tr>
                    <td align="right">&nbsp;</td>
                    <td><span class="form_style mart20">
                        <asp:Button ID="SaveButton" OnClientClick="return CheckForm()" runat="server" Text="提 交" CssClass="but_sub" />
                      
                    </span></td>
                  </tr>
                </table>                
                <p>&nbsp;</p></td>
              </tr>
            </table>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
            </td>
          </tr>
        </table>

            <script type="text/javascript">
                function CheckForm()
                {
                    if (document.getElementById("UserName").value() == "")
                    {
                        alert("请输入姓名");
                        return false;
                    }
                    if (document.getElementById("Email").value() == "") {
                        alert("请输入邮箱");
                        return false;
                    }
                    if (document.getElementById("Telephone").value() == "") {
                        alert("请输入电话");
                        return false;
                    }
                    if (document.getElementById("Content").value() == "") {
                        alert("请输入说明");
                        return false;
                    }
                    return true;
                }
            </script>

        </td>
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
