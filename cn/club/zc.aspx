<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.cn.club.zc" %>

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
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
        <uc1:clu_left runat="server" ID="clu_left" />
	
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">项目众筹</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td ><table width="885" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td valign="top" style="padding-top:20px;">
                <table width="95%" border="0" align="left" cellpadding="0" cellspacing="0" >
              <tr>
                <td align="left"> 
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <p class="zi10"><strong>项目名称：<%# Eval("Subject") %></strong></p>
                    <p><strong>时间：</strong><%# Convert.ToDateTime(Eval("SDate")).ToString("yyyy年MM月dd日") %>-<%# Convert.ToDateTime(Eval("EDate")).ToString("yyyy年MM月dd日") %></p>
                    <p><strong>说明：</strong>
                        <%# Eval("Description") %>
                    </p>
                     <p>
                        <label> 
                        <input type="button" name="Submit232" value="我要众筹"  onclick="javascript: window.location = 'zc1.aspx?Id=<%# Eval("Id")%>'"/>
                        </label>
                  </p>
                        </ItemTemplate>
                    </asp:Repeater> 
                </td>
              </tr>
            </table> 
            </td>
          </tr>
            <tr>
                <td>
                    <div style="width:100%; text-align:center; padding-top:10px;">&nbsp;&nbsp;共有  
                                            <asp:Label ID="TotalNumber" runat="server"></asp:Label> &nbsp;条记录 当前第
                                            <asp:Label ID="CurrentPageLabel" runat="server"></asp:Label>
                                            &nbsp;页 | &nbsp; 共
                                            <asp:Label ID="PageCountLabel" runat="server"></asp:Label>
                                            &nbsp;页
                                            
<asp:LinkButton ID="FirstButton" runat="server" class="LinkNoneStyle">第一页</asp:LinkButton>
<asp:LinkButton ID="ProButton" runat="server" class="LinkNoneStyle">上一页</asp:LinkButton>
<asp:LinkButton ID="NextButton" runat="server" class="LinkNoneStyle">下一页</asp:LinkButton>
<asp:LinkButton ID="LastButton" runat="server" class="LinkNoneStyle">最后一页</asp:LinkButton> <asp:HiddenField ID="CurrentPageHidden" runat="server" /></div>
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
