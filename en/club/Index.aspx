<%@ Page Language="C#" AutoEventWireup="true"  EnableEventValidation="false" Inherits="Aircraft.Web.en.club.Index" %>

<%@ Register Src="~/en/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/en/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/en/include/top.ascx" TagPrefix="uc1" TagName="top" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
<title>北美飞机资源网</title>
<link rel="stylesheet" type="text/css" href="../../css/style_en.css" />
    <script src=" ../../js/jquery-1.8.1.min.js" type="text/javascript"></script>
    <script src="../../js/ website.account.login.js" type="text/javascript"></script>


<%--<script src="../../js/organictabs.jquery.js"></script>--%>
<script>
    $(function () {

        $("#example-one").organicTabs();

        $("#example-two").organicTabs({
            "speed": 200
        });

    });
</script>
 <style type="text/css">
 
body{font:14px Georgia, serif;  font-family:Arial, Helvetica, sans-serif;}
a{text-decoration:none;}
a:focus{outline:0;}
#page-wrap{width:400px;margin:40px auto; border:#ccc 1px solid; -webkit-box-shadow:0 0 0px 1px #F7F7F7;  
  -moz-box-shadow:0 0 10px 5px #F7F7F7;  
  box-shadow:0 0 10px 5px #F7F7F7;  }
#page-wrap p{font-size:12px;margin:0 0 20px 0;}
h1{font:bold 40px Sans-Serif;margin:0 0 20px 0;}
 /* G eneric Utility */
.hide{position:absolute;top:-9999px;left:-9999px;}
/* Specific to example one */

#example-one{background:#fff;padding:10px;margin:0 0 20px 0;-moz-box-shadow:0 0 5px #666;-webkit-box-shadow:0 0 5px #666;}

#example-one .nav{overflow:hidden;margin:0 0 10px 0;}
#example-one .nav li{width:180px;float:left;margin:0 10px 0 0;}
#example-one .nav li.last{margin-right:0;}
#example-one .nav li a{display:block;padding:5px;background:#959290;color:white;font-size:10px;text-align:center;border:0;}
#example-one .nav li a:hover{background-color:#111;}

#example-one ul{list-style:none;}
#example-one ul li a{display:block; padding:4px;color:#666;}
#example-one ul li a:hover{background:#fe4902;color:white;}
#example-one ul li:last-child a{border:none;}

#example-one ul li.nav-one a.current, #example-one ul.featured li a:hover{background-color:#0575f4;color:white;}
#example-one ul li.nav-two a.current, #example-one ul.core li a:hover{background-color:#d30000;color:white;}
#example-one ul li.nav-three a.current, #example-one ul.jquerytuts li a:hover{background-color:#8d01b0;color:white;}
#example-one ul li.nav-four a.current, #example-one ul.classics li a:hover{background-color:#FE4902;color:white;}

/* Specific to example two */

#example-two .list-wrap{background:#fff;padding:10px;margin:0 0 15px 0;}

#example-two ul{list-style:none;}
#example-two ul li a{padding:4px;color:#666;}
#example-two ul li a:hover{ }
#example-two ul li:last-child a{border:none;}

#example-two .nav{overflow:hidden;}
#example-two .nav li{width:200px;float:left;margin:0 0px 0 0; }
#example-two .nav li.last{margin-right:0;}
#example-two .nav li a{display:block;padding:25px;background:#eee;color:#0D77C1;font-size:18px;text-align:center;border:0;}

#example-two li a.current,#example-two li a.current:hover{background-color:#fff !important;color:black;}
#example-two .nav li a:hover, #example-two .nav li a:focus{background:#eee;}
.inputt{height:33px; width:358px; padding-left:10px; margin-left:4px;} 
.inputt1{height:33px;   padding-left:10px; margin-left:4px;} 

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="main">
        <uc1:top runat="server" ID="top" />
<div>
<table width="1160" height="350" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top" >
	
<div id="page-wrap">
  <div id="example-two">
 	<ul class="nav">
		<li class="nav-one"><a href="#featured2" class="current"><img src="../../images/img37.png" width="25" height="25" style="vertical-align:text-bottom" /> Sign in</a></li>
		<li    onclick="Register.aspx" ><a href="Register.aspx?ReturnUrl=<%=ReturnUrl %>"><img src="../../images/img38.png" width="25" height="25" style="vertical-align:text-bottom"/> Register</a></li>
	</ul>
 	<div class="list-wrap">
 		<ul id="featured2">
			 
			 
			 
                <li style=" width:260px; height:50px;">  
                    <asp:TextBox ID="LoginEmail" runat="server" CssClass="inputt" placeholder="User email" ></asp:TextBox>
                    </li>
    <li style=" width:260px; height:50px;">
        <asp:TextBox ID="LoginPassword" TextMode="Password" runat="server" CssClass="inputt" placeholder="Password" ></asp:TextBox>
        </li>
   
			<li style=" width:260px; height:50px;">
                <asp:ImageButton ID="LoginImageButton" OnClientClick="return CheckLogin()"  ImageUrl="../../images/bt_sign.jpg" width="372" height="41" runat="server" />
                </li>
			<li><div style="float:left; width:170px; height:30px; padding-left:5px;">
            <input type="radio" name="radiobutton" value="radiobutton" style="vertical-align:middle;"  /> <span style="vertical-align:middle;">Stay signed in</span></div>
			<div style="float:right; width:200px; height:30px; line-height:20px; text-align:right; "><a href="forget.asp">Forgot your password?</a>　</div>
			</li>
			<li><a href="#">Using a public or shared device? Uncheck to protect you account.</a></li>
		</ul>
         <script type="text/javascript">
             function CheckLogin()
             {
                 if ($("#LoginEmail").val() == "")
                 {
                     alert("请输入Email")
                     return false;
                 }
                 if ($("#LoginPassword").val() == "") {
                     alert("请输入密码")
                     return false;
                 }
                 return true;
             }
         </script>
		
		<ul id="core2" class="hide">
			<li style="height:50px;">
                <asp:TextBox ID="Email" runat="server" CssClass="inputt"  placeholder="Email"></asp:TextBox></li>
			<li style="height:50px;"> 
                <asp:TextBox ID="Email1" runat="server" CssClass="inputt"  placeholder="Reenter Email"></asp:TextBox>
                </li>
			<li style="height:50px;"> 
                <asp:TextBox ID="Password" TextMode="Password" runat="server" CssClass="inputt"  placeholder="Password"></asp:TextBox>
            </li>
			<li style="width:375px; height:50px;"> 
                <asp:TextBox ID="FirstName" runat="server" size="23" style=" width:162px;" CssClass="inputt1"   placeholder="First name"></asp:TextBox>
                <asp:TextBox ID="LastName" runat="server" style="width:112px; margin-left:19px;"  CssClass="inputt1"  placeholder="Last name"></asp:TextBox></li>
                
 			<li style="width:260px; height:50px;">
                 
                 <asp:TextBox ID="ContactNumber"   runat="server" CssClass="inputt"  placeholder="Contact Number"></asp:TextBox>
                  </li>
			<li style="width:370px; margin-left:10px; height:75px;">By Registering.you agree that you've read and accepted our <a href="#" style="color:#2952C0; text-decoration:underline;">User Agreement</a>,You're at least 18 years old consent to our <a href="../include/Privacy.asp" style="color:#2952C0; text-decoration:underline;">Privacy Notece</a> and receiving marketing communications from us.</li>
			<li style=" width:260px; height:50px;">
                
                <asp:ImageButton ID="RegImageButton" OnClientClick="return CheckReg()" ImageUrl="../../images/bt_reg.jpg" width="372" height="41" runat="server" />
                </li> 

		</ul>
		 
    </div> 
      <script type="text/javascript">
          function CheckReg()
          {
              if ($("#Email").val() == "")
              {
                  alert("请输入Email")
                  return false;
              }

              if ($("#Email1").val() == "") {
                  alert("请输入 Reenter Email")
                  return false;
              }
              if ($("#Email1").val() != $("#Email1").val()) {
                  alert(" Reenter Email不等于Email")
                  return false;
              }

              if ($("#Password").val() == "") {
                  alert("请输入Password")
                  return false;
              }

              if ($("#FirstName").val() == "") {
                  alert("请输入FirstName")
                  return false;
              }
              if ($("#LastName").val() == "") {
                  alert("请输入LastName")
                  return false;
              }

              if ($("#ContactNumber").val() == "") {
                  alert("请输入ContactNumber")
                  return false;
              }
              return true;

          }
      </script>
 </div> 
</div></td>
    </tr>
</table>
    <uc1:bottom1 runat="server" ID="bottom1" />
</div>
        <uc1:bottom runat="server" ID="bottom" />
</div>

    </form>
</body>
</html>
