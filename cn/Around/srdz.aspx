<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.Around.srdz" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/Around/a_left1.ascx" TagPrefix="uc1" TagName="a_left1" %>
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
    <div class="main"> <uc1:top runat="server" ID="top" />
<div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	 
        <uc1:a_left1 runat="server" ID="a_left1" />
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">私人定制咨询</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td style="padding:20px;"><table width="710" border="0" align="center" cellpadding="4" style="font-size:16px; ">
          <tr>
            <td width="115" align="right">姓　名：</td>
            <td width="573">
                <asp:TextBox ID="UserName" runat="server" style="width:280px;" size="30"></asp:TextBox>
                </td>
          </tr>
          <tr>
            <td align="right">联系方式：</td>
            <td><asp:TextBox ID="Telephone" runat="server" style="width:280px;" size="30"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right">行程目的：</td>
            <td><asp:TextBox ID="Target" runat="server" style="width:280px;" size="30"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right">出发城市：</td>
            <td><asp:TextBox ID="City" runat="server" style="width:280px;" size="30"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right">抵达城市：</td>
            <td><asp:TextBox ID="City1" runat="server" style="width:280px;" size="30"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right">出发日期：</td>
            <td><asp:TextBox ID="Date" runat="server" style="width:280px;" size="30"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right">起发日期：</td>
            <td><asp:TextBox ID="Date1" runat="server" style="width:280px;" size="30"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right">乘客人数：</td>
            <td><asp:TextBox ID="Number" runat="server" style="width:280px;" size="30"></asp:TextBox></td>
          </tr>
          <tr>
            <td align="right">留　言：</td>
            <td>
                <asp:TextBox ID="Content" runat="server" style="width:280px; height:150px;" TextMode="MultiLine" ></asp:TextBox>
                </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>感谢您提供的定制信息，我们的客服会尽快联系您</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="40">
                <asp:ImageButton  OnClientClick="return Checkform()" ImageUrl="../../images/bt.jpg" ID="SaveButton" runat="server" />

                 </td>
          </tr>
        </table>
        <p>&nbsp;</p>
            <p>&nbsp;</p></td>
      </tr>
        
      
    </table></td>
  </tr>
</table>
    <script type="text/javascript">
        function Checkform()
        {
            if ($("#UserName").val() == "")
            {
                alert("请输入姓名")
                return false;
            }
            if ($("#Telephone").val() == "") {
                alert("请输入联系方式")
                return false;
            }
            if ($("#Target").val() == "") {
                alert("请输入行程目的")
                return false;
            }
            if ($("#City").val() == "") {
                alert("请输入出发城市")
                return false;
            }
            if ($("#City1").val() == "") {
                alert("请输入抵达城市")
                return false;
            }
            if ($("#Date").val() == "") {
                alert("请输入出发日期")
                return false;
            }
            if ($("#Date1").val() == "") {
                alert("请输入起发日期")
                return false;
            }
            if ($("#Number").val() == "") {
                alert("请输入乘客人数")
                return false;
            }
            if ($("#Content").val() == "") {
                alert("请输入留言")
                return false;
            }
            return true;
        }
    </script>
    <uc1:bottom1 runat="server" ID="bottom1" />
 
</div>
 
        <uc1:bottom runat="server" ID="bottom" />
</div>
    </form>
</body>
</html>
