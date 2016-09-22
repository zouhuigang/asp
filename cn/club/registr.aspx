<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.club.registr" %>

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
    <div class="main"> <uc1:top runat="server" ID="top" />
<div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
 
        <uc1:clu_left runat="server" ID="clu_left" />
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">会员注册</td>
      </tr>
      <tr>
        <td ><table width="885" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="350" valign="top"><table width="864" border="0" align="left" cellpadding="0" cellspacing="5" class="mart10">
              <tr>
                <td width="86" align="right"><span class="font_lexiang">*</span> 邮　箱：</td>
                <td width="285">
                    <asp:TextBox ID="Email" runat="server" CssClass="inputstyle"  size="40"  ></asp:TextBox>
                   </td>
                <td width="473">输入有效邮箱地址并成功激活，可用此邮箱做为登录账号及找回密码；</td>
              </tr>
              <tr>
                <td align="right"><span class="font_lexiang">*</span> 用户名：</td>
                <td><asp:TextBox ID="UserName" runat="server" CssClass="inputstyle"  size="40"  ></asp:TextBox></td>
                <td>4-20位字符，以英文字母开头可包含英文、数字或“_”；</td>
              </tr>
              <tr>
                <td align="right"><span class="font_lexiang">* </span>密　码：</td>
                <td><asp:TextBox ID="Password" TextMode="Password" runat="server" CssClass="inputstyle"  size="40"  ></asp:TextBox></td>
                <td>6-20位字符，可由大小写英文、数字符号组成；</td>
              </tr>
              <tr>
                <td align="right"><span class="font_lexiang">*</span> 确认密码：</td>
                <td><asp:TextBox ID="ConfirmPassowrd" TextMode="Password" runat="server" CssClass="inputstyle"  size="40"  ></asp:TextBox></td>
                <td>再次输入密码</td>
              </tr>
              <tr>
                <td align="right"><span class="font_lexiang">*</span> 验证码：</td>
                <td colspan="2">
                    <asp:TextBox ID="Code" runat="server" CssClass="inputstyle" size="10"></asp:TextBox>
                     <img src="ValidateCode.aspx" align="absmiddle" />  <a  class="font_green" onclick="imgcode.src='../../include/getcode.asp?t='+(new Date().getTime());" href="javascript:viod(0)" >看不清，换一张</a></td>
              </tr>
              <tr>
                <td align="right">&nbsp;</td>
                <td colspan="2">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                  <a href="#" class="font_leyue" target="_blank">自愿遵守北航网宗旨</a></td>
              </tr>
              <tr>
                <td height="80" align="right">&nbsp;</td>
                <td colspan="2" align="left"><span class="form_style mart20">
                    <asp:Button ID="SaveButton" runat="server" Text="注 册" CssClass="but_sub fl" OnClientClick="return checkform()" /> 
                  <label class="marl15 fl mart15"> &nbsp;&nbsp;已注册？请<a href="index.aspx" class="font_leyue">登录</a> </label>
                </span></td>
                </tr>
            </table>

                <script type="text/javascript">
                    function checkform()
                    { 
                        if (document.getElementById("Email").value == "")
                        {
                            alert("请输入Email")
                            return false;
                        }

                        if (document.getElementById("UserName").value == "") {
                            alert("请输入用户名")
                            return false;
                        }
                        if (document.getElementById("Password").value == "") {
                            alert("请输入密码")
                            return false;
                        }
                        if (document.getElementById("ConfirmPassowrd").value == "") {
                            alert("请输入确认密码")
                            return false;
                        }

                        if (document.getElementById("ConfirmPassowrd").value != document.getElementById("Password").value) {
                            alert("密码和确认密码不相同")
                            return false;
                        }
                        if (document.getElementById("Code").value == "") {
                            alert("请输入验证码")
                            return false;
                        }
                        
                        if (!document.getElementById("CheckBox1").checked  ) {
                            alert("请输入选择自愿遵守北航网宗旨")
                            return false;
                        }


                        

                        
                        return true;
                    }
                </script>
            </td>
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
