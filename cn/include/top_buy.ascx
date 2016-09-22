<%@ Control Language="C#" AutoEventWireup="true" CodeFile="top_buy.ascx.cs" Inherits="cn_include_top_buy" %>
   <style type="text/css">
<!--
/* www.divcss5.com CSS下拉菜单实例 */
 
#nav {line-height: 24px;  list-style-type: none;  width:840px; margin:0px; padding:0px; font-size:16px!important;}
#nav li{  font-size:16px!important;}
#nav a {display: block; width: 140px; text-align:center; }

#nav a:link  {color:#000; text-decoration:none; font-size:16px!important;}
#nav a:visited  {color:#000;text-decoration:none; font-size:16px!important;}
#nav a:hover  {color:#000;text-decoration:none;  font-size:16px!important;}

#nav li {float: left;width:140px;height:43px; line-height:43px; font-size:16px!important;}
#nav li a:hover{background:url(../../images/11.png) no-repeat right center; width:140px; font-size:16px!important; }
#nav li ul {line-height: 27px;  list-style-type: none;text-align:left;left: -999em; width: 140px; position: absolute; z-index:999;}
#nav li ul li{float: left; background:#EFEFEF;width: 170px;margin-left:0px; border-bottom:#C9C9C9 1px solid;}


#nav li ul a{display: block; width: 170px!important;text-align:left;padding-left:24px; overflow:hidden; }

#nav li ul a:link  {color:#000; text-decoration:none;}
#nav li ul a:visited  {color:#000;text-decoration:none;}
#nav li ul a:hover  {color:#000;text-decoration:none;font-weight:normal;background:#dcdcdc;width: 146px; }

#nav li:hover ul {left: auto;}
#nav li.sfhover ul {left: auto;} 
#content {clear: left;}


-->
</style>

<script type=text/javascript>

    function menuFix() {
        var sfEls = document.getElementById("nav").getElementsByTagName("li");
        for (var i = 0; i < sfEls.length; i++) {
            sfEls[i].onmouseover = function () {
                this.className += (this.className.length > 0 ? " " : "") + "sfhover";
            }
            sfEls[i].onMouseDown = function () {
                this.className += (this.className.length > 0 ? " " : "") + "sfhover";
            }
            sfEls[i].onMouseUp = function () {
                this.className += (this.className.length > 0 ? " " : "") + "sfhover";
            }
            sfEls[i].onmouseout = function () {
                this.className = this.className.replace(new RegExp("( ?|^)sfhover\\b"),

        "");
            }
        }
    }
    window.onload = menuFix;

</script>

  
<div class="top">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="80%" height="95" valign="bottom" style="padding-left:20px; "><a href="../index/index.aspx"><img src="../../images/logo.png"  border="0"/></a></td>
      <td width="20%" align="right" valign="top" style="padding-top:10px;"><table width="120" height="23" border="0" cellpadding="0">
          <tr>
            <td width="14" valign="middle"><img src="../../images/img01.png" width="12" height="15"  alt=""/></td>
            <td width="35" valign="bottom"><a href="../club/index.asp" class="top1">注册</a></td>
            <td width="16" align="right" valign="middle"><img src="../../images/img02.png" width="16" height="14"  alt=""/></td>
            <td width="37" valign="bottom"><a href="../club/registr.asp" class="top1">登录</a></td>
          </tr>
      </table></td>
    </tr>
  </table>
  <table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="845" height="71" align="left" valign="bottom" style="background:url(../../images/bg_menu.jpg) no-repeat left bottom;">	
	 
	 <ul id="nav">
        <li><a href="../buy/index.aspx">北美飞机搜寻</a></li>
 
<%--        <li><a href="../Around/index.aspx">北美包机环游</a>
    <ul>
        <li> <a href="../Around/hy.aspx">北美飞行策划</a></li>
        <li> <a href="../Around/tc.aspx">北美包机环游套餐</a></li>
        <li> <a href="../Around/srdz.aspx">私人定制咨询</a></li>
    </ul>
</li>--%>
<%--<li><a href="../club/index.aspx">航空俱乐部</a>    <ul>
    <li> <a href="../club/index.aspx">会员注册</a></li>
        <li> <a href="../club/zc.aspx">项目众筹</a></li>
        <li> <a href="../club/service.aspx">俱乐部增值服务</a></li>
		 <li> <a href="../club/dz.aspx">定制服务</a></li>
        <li> <a href="../club/index.aspx">我要加入</a></li>
    </ul>
</li>--%>
<li ><a href="../Notice/index.aspx">常见问题</a>    <ul>
    <li> <a href="../Notice/index.aspx?Type=<%=HttpUtility.UrlEncode("如何买飞机") %>" >如何买飞机</a></li>
        <li> <a href="../Notice/index.aspx?Type=<%=HttpUtility.UrlEncode("北航网全方位服务") %>">北航网全方位服务</a></li>
        <li> <a href="../Notice/index.aspx?Type=<%=HttpUtility.UrlEncode("航空租赁") %>">航空租赁</a></li>
    </ul>
</li>

<li><a href="../news/index.aspx">航空快讯</a>
    <ul>
    <li> <a href="../news/index.aspx">最新快讯</a></li>
    </ul>
</li>
<%--<li ><a href="../contact/index.aspx">联系我们</a>
    <ul>
    <li > <a href="../contact/index.aspx"  >联系我们</a></li>
        <li  > <a href="../contact/web.aspx"  >销售网络</a></li>
    </ul>
</li>--%>
         <li ><a href="../club/user.aspx">会员中心</a>
    <ul>
    <li > <a href="../club/Favorites.aspx"  >我的收藏</a></li>
        <li  > <a href="../club/user.aspx"  >个人信息</a></li>
         <li  > <a href="../club/changepassword.aspx"  >密码修改</a></li>
         <li  > <a href="../contact/index.aspx"  >联系我们</a></li>
    </ul>
</li>

     </ul>

	 
	 
	
	</td> <td width="423" align="center" valign="bottom" style="padding-bottom:6px;"><table width="190" border="0">
        <tr>
          <td>
              <asp:TextBox ID="SearchContent" runat="server" style="background:url(../../images/search.jpg) no-repeat left center #FFFFFF; padding-left:25px; height:28px!important;line-height:28px!important;border:1px solid #DDE4EA; font-size:12px; color:#333333;" onblur="if (value ==''){value='请输入搜寻内容'}"  onfocus="if (value =='请输入搜寻内容'){value =''}" Text="请输入搜寻内容"></asp:TextBox>
 
     </td>
          <td>
              <asp:ImageButton ID="SearchImageButton" width="31" height="30"  ImageUrl="../../images/search1.png" runat="server" />
              </td>
        </tr>
      </table></td>
    </tr>
  </table>
</div>