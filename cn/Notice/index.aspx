<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.Notice.index" %>

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
<link rel="stylesheet" href="../../css/not_menu.css" type="text/css" />
<link rel="stylesheet" href="../../css/jquery-tool.css" type="text/css" />
<SCRIPT src="../../js/jquery-1.2.6.pack.js" type="text/javascript"></SCRIPT>
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
        <td height="70" class="zi4"><%= Type==""?"常见问题":Type %></td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"> 
              <table width="95%" border="0" cellspacing="0" cellpadding="0"  style="margin-top:20px;">
                  <tr>
                    <td><table width="100%"   border="0" cellpadding="0" cellspacing="0">
                        
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                          <td align="left" class="new_line"><img src="../../images/img7.jpg" width="9" height="9"  /> <a href="content.aspx?Id=<%# Eval("Id") %>"><%# Eval("Subject") %></a></td>
                          <td align="left" class="new_line"><%# Convert.ToDateTime(Eval("CreateDate")).ToString("yyyy.MM.dd") %></td>
                        </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                         
                        
                        <tr>
                          <td height="50" colspan="2" align="center"><div style="width:100%; text-align:center; padding-top:10px;">&nbsp;&nbsp;共有  
                                            <asp:Label ID="TotalNumber" runat="server"></asp:Label> &nbsp;条记录 当前第
                                            <asp:Label ID="CurrentPageLabel" runat="server"></asp:Label>
                                            &nbsp;页 | &nbsp; 共
                                            <asp:Label ID="PageCountLabel" runat="server"></asp:Label>
                                            &nbsp;页
                                            
<asp:LinkButton ID="FirstButton" runat="server" class="LinkNoneStyle">第一页</asp:LinkButton>
<asp:LinkButton ID="ProButton" runat="server" class="LinkNoneStyle">上一页</asp:LinkButton>
<asp:LinkButton ID="NextButton" runat="server" class="LinkNoneStyle">下一页</asp:LinkButton>
<asp:LinkButton ID="LastButton" runat="server" class="LinkNoneStyle">最后一页</asp:LinkButton> <asp:HiddenField ID="CurrentPageHidden" runat="server" /></div></td>
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
