<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.sell.Sell6" %>

<%@ Register Src="~/en/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/en/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/en/include/top.ascx" TagPrefix="uc1" TagName="top" %>
<%@ Register Src="~/en/sell/sel_left.ascx" TagPrefix="uc1" TagName="sel_left" %>




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
        <td height="70" class="zi4" style=" text-transform:uppercase;">Aircraft Brokers/Dealers</td>
      </tr>
      
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="5">
              <tr>
                <td width="811" bgcolor="#2377B5"><p style="padding:20px 80px; color:#FFFFFF;"><strong style="font-size:18px;">Add Video Footage for My Ad</strong><br />
                  To upload video,click Browse. By submitting your videos to GAT, you acknowledge that you agree to GAT's Terms of Service and Community Guidelines. Please be sure not to violate others' copyright or privacy rights. Learn more</p>
                  </td>
                </tr>
              <tr>
                <td height="50" align="center" valign="bottom"><br />
                    <br />
                      <img src="../../images/bt05_en.jpg" width="121" height="81" /><br />
                  <br />
                    <span class="zi6">Select files to upload</span><br />
                    Or drag and video files<br />
                    <br />
                    <br /></td>
              </tr>
              <tr>
                <td><span style="padding-left:0px; padding-top:20px;"> </span>
                  <table width="100%" border="0" align="center">
                    <tr>
                      <td width="205"  >Image1</td>
                      <td width="540" height="30" >
                          <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td> 
                    </tr>
                     
                    <tr>
                      <td width="205"  >Vedio Url1</td>
                      <td width="540" height="30" >
                          <asp:TextBox ID="VideoUrl" runat="server"></asp:TextBox>
                        </td> 
                    </tr>
                      <tr>
                      <td width="205"  >Image2</td>
                      <td width="540" height="30" >
                          <asp:FileUpload ID="FileUpload2" runat="server" />
                        </td> 
                    </tr>
                     
                    <tr>
                      <td width="205"  >Vedio Url2</td>
                      <td width="540" height="30" >
                          <asp:TextBox ID="VideoUrl1" runat="server"></asp:TextBox>
                        </td> 
                    </tr>
                     
                   
                     
                  </table>
                  <span style="padding-left:0px; padding-top:20px;"><br />
                            </span></td>
              </tr>
              
              <tr>
                <td height="87" align="center" valign="bottom"><a href="Sell5.aspx?Id=<%=Id %>"><img src="../../images/bt1_en.jpg" width="126" height="33" border="0" /></a>　
                    
                    <asp:ImageButton ID="SaveImageButton" ImageUrl="../../images/bt7_en.jpg"  width="126" height="33" runat="server" />
                    　</td>
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
