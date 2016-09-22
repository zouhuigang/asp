<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.include.top" %>
 <style type="text/css">
 #nav {line-height: 24px;  list-style-type: none;  width:640px; margin:0px; padding:0px; font-size:14px;}
#nav li{}
#nav a {display: block; width: 140px; text-align:center; }

#nav a:link  {color:#000; text-decoration:none;}
#nav a:visited  {color:#000;text-decoration:none;}
#nav a:hover  {color:#000;text-decoration:none; }

#nav li {float: left;width:140px;height:43px; line-height:43px;}
#nav li a:hover{background:url(../../images/11.png) no-repeat right center; width:140px; }
#nav li ul {line-height: 27px;  list-style-type: none;text-align:left;left: -999em; width: 180px; position: absolute; z-index:999;}
#nav li ul li{float: left; background:#EFEFEF;width:255px;margin-left:0px; border-bottom:#C9C9C9 1px solid; font-size:14px;}

#nav li ul a{display: block; width:246px;text-align:left;padding-left:24px; overflow:hidden; }

#nav li ul a:link  {color:#000; text-decoration:none;}
#nav li ul a:visited  {color:#000;text-decoration:none;}
#nav li ul a:hover  {color:#000;text-decoration:none;font-weight:normal;background:#dcdcdc;width: 230px; }
#nav li:hover ul {left: auto;}
#nav li.sfhover ul {left: auto;} 
#content {clear: left;}

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
      <td width="80%" height="95" valign="bottom" style="padding-left:20px; "><a href="../index/index.aspx"><img src="../../images/logo_en.png"   border="0"/></a></td>
      <td width="20%" align="right" valign="top" style="padding-top:10px;"><table width="240" height="23" border="0" cellpadding="0">
        <tr>
          <td align="right"  valign="middle"><a href="../club/index.aspx" class="top1"> </a> <a href="../club/index.aspx" class="top1"> Login</a><a href="#" class="top1">/</a><a href="../club/Register.aspx" class="top1">Register</a></td>
          </tr>
        
      </table></td>
    </tr>
    
  </table>
   
  <table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="640" height="71" align="left" valign="bottom" style="background:url(../../images/bg_menu1.jpg) no-repeat left bottom;">	
	 
	 <ul id="nav">
        <li><a href="../buy/index.aspx">FIND AIRCRAFT</a> <ul>
 
       <!-- <li><a href="../Around/index.asp">北美包机环游</a></li>
         <li> <a href="../Around/hy.asp">北美飞行策划</a></li>
        <li> <a href="../Around/tc.asp">北美包机环游套餐</a></li>
        <li> <a href="../Around/srdz.asp">私人定制咨询</a></li>-->
    </ul>
</li>
 <li ><a href="../sell/sell2.aspx">SELL AIRCRAFT</a>    <ul>
   <!--  <li> <a href="../sell/index.asp" >Aircraft Brokers/Dealers</a></li>
        <li> <a href="../sell/index.asp">Aircraft Owners</a></li>
		       <li> <a href="../sell/index.asp">Advertiser Agreement</a></li>-->

     </ul>
</li>

<li><a href="../Advertise/index.aspx">ADVERTISE</a>
<!--    <ul>
    <li> <a href="../news/index.asp">最新快讯</a></li>
    </ul>
--></li>
<li ><a href="../sell/index.aspx">MYGAT</a>
    <% if (Session["LoginId"]+""!=""){ %>
    <ul> 

        <% if (cannew){ %>
    <li > <a href="../sell/Sell3.aspx"  >Place a New Ad</a></li>
        <%} %>
        <%--<li  > <a href="../gat/MyGAT2.aspx"  >Manage and Edit My ad</a></li>--%>
		    <li > <a href="../gat/MyGAT.aspx"  >View My Favorite Search</a></li>
        <li  > <a href="../gat/MyGAT1.aspx"  >Edit My Portfolio</a></li> 
    </ul>
    <%} %>
</li>
     </ul>	</td> 
      <td width="276" align="right" valign="bottom"   style="padding-bottom:15px; padding-right:10px;"> </td>
      <td width="284" align="left" valign="bottom" style="padding-bottom:6px;"><table width="190" border="0">
        <tr>
          <td>
		  
		  <input  type="text" placeholder="Enter your search" size="30"  style="background:url(../../images/search.jpg) no-repeat left center #FFFFFF; padding-left:25px; height:28px!important;line-height:28px!important;border:1px solid #DDE4EA; font-size:12px; color:#333333;"/>     </td>
          <td><img src="../../images/search1.png" width="31" height="30" /></td>
        </tr>
      </table></td>
    </tr>
  </table>
</div>