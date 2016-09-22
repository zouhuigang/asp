<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.club.zc2" %>

<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/include/top.ascx" TagPrefix="uc1" TagName="top" %>
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
        <td height="70" class="zi4">项目众筹</td>
      </tr>
      <tr>
        <td align="center" >

            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                          <table width="800" border="0" cellpadding="6" cellspacing="0"  >
                              <tr>
            <td width="58" align="right"><span class="font_lexiang"> </span>项目：</td>
            <td width="718"><%# Eval("Subject") %></td>
          </tr>
          <tr>
            <td width="58" align="right"><span class="font_lexiang"> </span>姓名：</td>
            <td width="718"><%# Eval("UserName") %></td>
          </tr>
          <tr>
            <td align="right"><span class="font_lexiang"> </span>邮箱：</td>
            <td><%# Eval("Email") %></td>
          </tr>
          <tr>
            <td align="right">电话：</td>
            <td><%# Eval("Telephone") %></td>
          </tr>
          <tr>
            <td height="80" align="right" valign="top">说明：</td>
            <td valign="top"><label>
            <%# Eval("Content") %></label></td>
          </tr>

        </table>
		
<div style="color:#CCCCCC; width:800px;">---------------------------------------------------------------------------------------------------------------------------------</div>
           
       
                </ItemTemplate>
            </asp:Repeater>
         
          
          <p>&nbsp;</p></td>
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
