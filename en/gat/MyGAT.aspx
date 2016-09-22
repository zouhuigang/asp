<%@ Page Language="C#" AutoEventWireup="true"   Inherits="Aircraft.Web.en.gat.MyGAT" %>

<%@ Register Src="~/en/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/en/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/en/gat/gat_left.ascx" TagPrefix="uc1" TagName="gat_left" %>
<%@ Register Src="~/en/include/top.ascx" TagPrefix="uc1" TagName="top" %>




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
<script type="text/javascript" src="../../js/jquery-1.8.3.min.js"></script> 
<link rel="stylesheet" type="text/css" href="../../css/pageGroup2.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <uc1:top runat="server" ID="top" />
<div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
        <uc1:gat_left runat="server" ID="gat_left" />
	
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">View My Favorite Search</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="190" align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="5">
              <tr>
                <td height="87" align="center" valign="middle">
                    
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate> 
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-bottom:1px #003366 solid;">
                  <tr>
                    <td width="106" rowspan="2" bgcolor="#E4EFF3"><a href="../buy/content.aspx?Id=<%# Eval("Id") %>"><img src="../../<%# Eval("Image") %>"  alt="" width="106" height="83" border="0"/></a></td>
                    <td width="308" bgcolor="#E4EFF3"><p><strong><%# Eval("Subject") %></strong></p>                      </td>
                    <td width="183" bgcolor="#E4EFF3"><%# Eval("Manufacturer") %></td>
                    <td width="70" bgcolor="#E4EFF3">sale</td>
                    <td width="83" bgcolor="#E4EFF3">$<%# Eval("Price") %></td>
                  </tr>
                  <tr>
                    <td colspan="2" bgcolor="#E4EFF3"> </td>
                    <td bgcolor="#E4EFF3">&nbsp;</td>
                    <td bgcolor="#E4EFF3"><a href="MyGAT.aspx?DeId=<%# Eval("Id") %>"><div class="bt">Delete</div></a></td>
                  </tr>
                </table> 
                         </ItemTemplate>
                    </asp:Repeater>
                   
                  <p>&nbsp;</p></td>
              </tr>
              <tr>
                <td height="87" align="center" valign="top"><asp:HiddenField ID="PageIndex" runat="server" />
                 <div id="pageGro" class="cb">
	<div class="pageUp" onclick="pr()">Prev</div>
    <div class="pageList">
        <ul>
           
            <% 
                                
                                int s = Index - 2;
                                if (s < 1)
                                    s = 1;
                                int e = s + 4; 
                                
                                if (e > PageCount)
                                    e = PageCount;

                                if (e - s < 4)
                                {
                                    if (s > 1)
                                        s = s - 1;
                                }
                                if (e - s < 4)
                                {
                                    if (s > 1)
                                        s = s - 1;
                                }
                                 
                                    for(int i=s;i<=e;i++)
                                    {
                                 %>
                            <% if (i ==Index){ %> 
                             <li class="on" onclick="Change('<%=i %>')" ><%=i %></li>
                            <%}else{ %>
                             <li onclick="Change('<%=i %>')" ><%=i %></li>
                            <%} %>

                            <%} %> 
        </ul>
    </div>
    <div class="pageDown" onclick="ne()">Next</div>
</div></td>
              </tr>
            </table>
             </td>
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
