<%@ Page Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.cn.Around.tc" %>

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

<script type="text/javascript" src="../../js/jquery.min.js"></script>
<style>
p.p_num{width:78px;height:24px;border-top:solid 1px #d0d0d0;position:relative;border-bottom:solid 1px #d0d0d0; margin-top:-3px;}
span.sy_minus,span.sy_plus{width:15px;height:24px;line-height:24px;text-align:center;display:block;position:absolute;top:0px;font-size:14px; border:solid 1px #d0d0d0;background:#ebebeb;cursor:pointer;border-top:none;border-bottom:none;}
span.sy_minus{left:0px;}
span.sy_plus{right:0px;}
input.sy_num{width:44px;height:18px;line-height:24px;text-align:center;position:absolute;top:0px;left:17px;}
span.sy_num{padding:5px 8px;border:solid 1px #d0d0d0;border-left:none;border-right:none;cursor:pointer;}
</style>

</head>
<body>
    <form id="form1" runat="server">
   <div class="main">
       <uc1:top runat="server" ID="top" />
<div>
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
	
        <uc1:a_left1 runat="server" ID="a_left1" />
	
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">北美包机环游套餐</td>
      </tr>
      <tr>
        <td><img src="../../images/banner1.jpg" width="885" height="161"  alt=""/></td>
      </tr>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
        <td > <table width="880" border="0" cellpadding="0" style="margin-bottom:50px;">
          <tr>
            <td width="390" height="210"><p> <span class="zi88"><strong> </strong></span><img src="../../<%# Eval("Image") %>" width="385" height="195" /><br />
                          </p></td>
            <td width="472" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size:18px; color:#000;">
              <tr>
                <td height="40" colspan="4"><a href="tcdetail.aspx?Id=<%# Eval("Id") %>" style="font-size:18px; color:blue;text-decoration:underline;"><%# Eval("Subject") %> </a></td>
              </tr>
              <tr>
                <td height="50" colspan="4" bgcolor="#E9EEFF">　价格：<span class="zi7"><strong>￥<%# Eval("Price") %></strong></span>/每人</td>
              </tr>
              <tr>
                <td width="78"> </td>
                <td width="90" valign="middle">   </td>
                <td width="178" height="70" style="padding-bottom:11px;"><a href="tcdetail.aspx?Id=<%# Eval("Id") %>"><img src="../../images/bt08.jpg" width="175" height="36" border="0" /></a></td>
                <td width="127" style="padding-bottom:11px;"><a style="<%# Eval("Registration")+""=="是"?"":"display:none"%>" href="tcbm.aspx?Id=<%# Eval("Id") %>"><img src="../../images/bt07.jpg" width="126" height="36" border="0" /></a></td>
              </tr>
            </table></td>
          </tr>
        </table>
         </td>
      </tr>
            </ItemTemplate>
        </asp:Repeater>
      



      
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
