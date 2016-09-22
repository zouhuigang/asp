<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.gat.MyGAT1" %>

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
        <td height="70" class="zi4">SELL AIRCRAFT</td>
      </tr>
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td height="190" align="left" valign="top"><!--<div style="height:35px; border:1px #4A964B solid; background-color:#B3FFB4; line-height:35px; padding:0 20px;">Your profile information has been updated successfuily</div>-->
              <table width="760" border="0" align="left" style="border:1px #CCCCCC solid;">
                <tr>
                  <td height="30" colspan="4" style="background:url(../../images/bg5.jpg) repeat-x 5px -5px;"><strong>　Profile Details</strong></td>
                </tr>
              <tr>
                <td colspan="4"  > </td>
                </tr>
              <tr>
                <td width="19%" height="30"><span class="font_lexiang">　*</span>User ID </td>
                <td width="35%"><%=Email %></td>
                <td width="12%">&nbsp;</td>
                <td width="34%">&nbsp;</td>
              </tr>
              <tr>
                <td><span class="font_lexiang">　*</span>First Name</td>
                <td>
                    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>

                </td>
                <td><span class="font_lexiang">*</span>Street</td>
                <td><asp:TextBox ID="Street" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                <td><span class="font_lexiang">　*</span>Last Name</td>
                <td><asp:TextBox ID="LastName" runat="server"></asp:TextBox></td>
                <td><span class="font_lexiang">*</span>City</td>
                <td><asp:TextBox ID="City" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                <td><span class="font_lexiang">　*</span>Phone Number</td>
                <td><asp:TextBox ID="ContactNumber" runat="server"></asp:TextBox></td>
                <td><span class="font_lexiang">*</span>Zip Code</td>
                <td><asp:TextBox ID="ZipCode" runat="server"></asp:TextBox></td>
              </tr>
             
              <tr>
                <td height="55" colspan="4"> 　  <asp:Button ID="SaveButton" runat="server" Text="Update" />                
                                  </td>
                </tr>
            </table>
              <p><br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                  <br />
                      <br />
                      </p>
              <table width="760" border="0" style="border:1px #CCCCCC solid;">
                <tr>
                  <td height="30" colspan="4" style="background:url(../../images/bg5.jpg)  repeat-x 5px -5px;"><strong>　Change Password</strong></td>
                </tr>
                <tr>
                  <td colspan="4" >  </td>
                </tr>

                <tr>
                  <td width="24%"><span class="font_lexiang">　*</span>Old Password</td>
                  <td width="76%" colspan="3"><asp:TextBox ID="OPassword" TextMode="Password" runat="server"></asp:TextBox></td>
                  </tr>
                <tr>
                  <td><span class="font_lexiang">　*</span>New Password</td>
                  <td colspan="3"><asp:TextBox ID="NewPassword" TextMode="Password" runat="server"></asp:TextBox></td>
                  </tr>
                <tr>
                  <td><span class="font_lexiang">　*</span>Confirm Password</td>
                  <td colspan="3"><asp:TextBox ID="ConfirmPassword" TextMode="Password" runat="server"></asp:TextBox></td>
                  </tr>
                 
                <tr>
                  <td colspan="4" style="padding:10px 20px;">Password must contain at least eight characters(One upercase character,One lowercase character,One numbe),The password cannot be the same as the user name.The password cannot equal the previously entered password.</td>
                  </tr>
                <tr>
                  <td colspan="4"><span class="font_lexiang">　*</span>Requlred Fields</td>
                  </tr>
                <tr>
                  <td height="55" colspan="4">　
                      <asp:Button ID="SaveButton1" runat="server" Text="Submit" />
                                        </td>
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
