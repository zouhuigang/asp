<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.sell.Sell5" %>

<%@ Register Src="~/en/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/en/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/en/sell/sel_left.ascx" TagPrefix="uc1" TagName="sel_left" %>
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

<link rel="stylesheet" href="../../css/lightbox1.css" type="text/css" media="screen" />
<script src="../../js/jquery-latest.pack.js" type="text/javascript"></script>
<script src="../../js/jquery.lightbox.js" type="text/javascript"></script>
	<script>
	    $(document).ready(function () {
	        $(".lightbox-2").lightbox({
	            fitToScreen: true
	        });
	    });
 	</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <uc1:top runat="server" ID="top" />
<div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
        <uc1:sel_left runat="server" ID="sel_left" />
	
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">Aircraft Brokers/Dealers</td>
      </tr>
      <tr>
        <td height="130" bgcolor="#2377B5"><p style="color:#FFFFFF; margin:20px; font-size:11px;">Add/Edit Photos for My Ad<br />
          To upload, click Browse. To upload Multiple photos at once, hold the Ctrl (Option) key down when clicking on the filenames. To Order your photos once uploaded, drag by the grey title bar. Click on any image to view its Details. For maximum quality, upload photos at least 1024x768pixels in size. Note: The photos below ,outlined in red, are lower than this recommended minimum.</p>
          <p style="color:#FFFFFF; margin:20px;">
              <asp:FileUpload ID="FileUpload1" runat="server" /><asp:Button ID="UploadButton" runat="server" Text="Upload" /> </td>
      </tr>
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="3">
               
              <tr>
                <td colspan="2" align="center" valign="middle">
	
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div class="light"><br />
                   <img src="../../<%# Eval("Image") %>"  alt="" width="130" height="90" border="0"/> 
                <div  class="light1"> 　
                    
                    <asp:Button ID="Button1"  OnCommand="Button1_Command" CommandArgument='<%# Eval("Id") %>' runat="server" Text="删除" /> 
                    
                  </div>
                </div>
                        </ItemTemplate>
                    </asp:Repeater>          			

                          </td>
                </tr>
              

              <tr>
                <td width="404"  align="left" valign="top">　 </td>
                <td width="455" align="right" valign="middle" style="padding-right:50px;"><a href="Sell4.aspx?Id=<%=Id %>"><img src="../../images/pre_en.jpg" /></a>　　<a href="Sell6.aspx?Id=<%=Id %>"><img src="../../images/next_en.jpg" border="0" /></a></td>
              </tr>
            </table>
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
