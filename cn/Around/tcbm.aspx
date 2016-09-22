<%@ Page Language="C#" AutoEventWireup="true"   Inherits="Aircraft.Web.cn.Around.tcbm" %>

<%@ Register Src="~/cn/include/top_buy.ascx" TagPrefix="uc1" TagName="top_buy" %>
<%@ Register Src="~/cn/Around/a_left1.ascx" TagPrefix="uc1" TagName="a_left1" %>
<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
<script src="../../js/jquery-1.11.1.min.js"></script>
 

<style>
 .linear{ 
 width:840px;
padding:15px;

FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#ffffff,endColorStr=#F1F1F1); /*IE 6 7 8*/ 

background: -ms-linear-gradient(top, #fff,  #F1F1F1);        /* IE 10 */

background:-moz-linear-gradient(top,#fff,#F1F1F1);/*火狐*/ 

background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#F1F1F1), to(#f6f6f8));/*谷歌*/ 

background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fff), to(#fff));      /* Safari 4-5, Chrome 1-9*/

background: -webkit-linear-gradient(top, #fff, #F1F1F1);   /*Safari5.1 Chrome 10+*/

background: -o-linear-gradient(top, #fff, #F1F1F1);  /*Opera 11.10+*/
border-radius:5px;
border:1px #eee solid;

}

.zzsc{ width:850px; height:305px; margin:10px auto;font-family:'微软雅黑';}
.zzsc .tab{ overflow:hidden; background:#fff; border-bottom:1PX #0099CC solid; margin:auto;}
.zzsc .tab a{ display:block; padding:10px 70px; float:left; text-decoration:none; color:#333;}
.zzsc .tab a:hover{ background:#B1CCEA; color:#fff; text-decoration:none;}
.zzsc .tab a.on{ background:#B1CCEA; color:#fff; text-decoration:none;}
.zzsc .content{ overflow:hidden; padding:0px;}
.zzsc .content li{ display:none;}
</style>

<title>北美飞机资源网</title>
<link rel="stylesheet" type="text/css" href="../../css/style.css" />
 <SCRIPT src="../../js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
 
 <link href="../../css/97zzw.css" rel="stylesheet" type="text/css" media="all" />
<!-- <script type="text/javascript" src="../../js/jquery-1.4.2.min.js"></script>-->
   <script src="../../js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="../../js/jquery.jcarousellite.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   <div class="main"> <uc1:top_buy runat="server" ID="top_buy" />
  <table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
        <uc1:a_left1 runat="server" ID="a_left1" />
 
	
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4"><%=Subject %>报名表</td>
      </tr> 
      <tr>
        <td>
		
	<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="45"  ><strong class="zi88">乘客信息 </strong></td>
  </tr>
  <tr>
    <td height="45"><div class="linear"><table id="ctable" width="100%" border="0" cellpadding="5">
      <tr>
        <td height="35" colspan="4" class="zi9" style="border-bottom:1px #C9CCDF solid;">去程： </td>
      </tr>
        <tr>
        <td colspan="4"><label>
            <input id="cnumber" value="1" type="hidden" /><button  onclick="addc()" type="button">添加乘客</button></label></td>
      </tr>
      <tr>
        <td width="30%">姓名</td>
        <td width="30%">联系电话</td>
        <td width="20%">行李数量</td>
        <td width="20%">总重量</td>
      </tr>
      <tr id="c1">
        <td><input type="text"  id="username1" /></td>
        <td><input type="text"   id="mobile1" /></td>
        <td><select  id="Baggage1">
                <option>0</option>
            <option>1</option>
            <option>2</option>
            </select>
        </td>
        <td><input name="Weight1" id="Weight1" value="0" type="text" size="8" />
          kg</td>
      </tr> 
      
    </table> 
    </div> 

        <script type="text/javascript">
            function addc()
            {
                
                var number = $("#cnumber").val()*1;
                number=number+1;
                $("#ctable").append("<tr id=\"c"+number+"\"><td><input type=\"text\"  id=\"username"+number+"\" /></td><td><input type=\"text\"  id=\"mobile"+number+"\" /></td><td><select  id=\"Baggage"+number+"\"><option>0</option><option>1</option><option>2</option></select></td><td><input id=\"Weight"+number+"\" value=\"0\" type=\"text\" size=\"8\" /> kg  <button  onclick=\"delc("+number+")\" type=\"button\">删除</button></td></tr> "); 
              
                $("#cnumber").val(number);
            }
            function delc(number)
            { 
                var tr = $("#c" + number)  
                tr.remove();

            }
        </script>
   

        <br /><div class="linear">
        <table width="100%"  id="ftable" border="0" cellpadding="5">
          <tr>
            <td height="35" colspan="4" class="zi9"  style="border-bottom:1px #C9CCDF solid;">返程： </td>
          </tr>
          <tr>
            <td colspan="4"><input type="radio" name="radiobutton" checked="checked" id="xt" value="radiobutton" />
              相同乘客<input type="radio" name="radiobutton" id="bxt" value="radiobutton" />
              不相同乘客</td>
            </tr>
            <tr>
        <td colspan="4"><label>
        <input id="fnumber" value="1" type="hidden" />  <button  onclick="addf()" type="button">添加乘客</button></label></td>
      </tr>
          <tr>
            <td width="30%">姓名</td>
            <td width="30%">联系电话</td>
            <td width="20%">行李数量</td>
            <td width="20%">总重量</td>
          </tr>
          <tr id="f1">
        <td><input type="text"  id="fusername1" /></td>
        <td><input type="text"  id="fmobile1" /></td>
        <td><select   id="fBaggage1">
                <option>0</option>
            <option>1</option>
            <option>2</option>
            </select>
        </td>
        <td><input   id="fWeight1" value="0" type="text" size="8" />
          kg</td>
      </tr> 
           
        </table>
        </div>		 </td>
  </tr>

           <script type="text/javascript">
               function addf() { 
                   var number = $("#fnumber").val()*1;
                   number = number + 1;
                   $("#ftable").append("<tr id=\"f" + number + "\"><td><input type=\"text\"  id=\"fusername" + number + "\" /></td><td><input type=\"text\"  id=\"fmobile" + number + "\" /></td><td><select  id=\"fBaggage" + number + "\"><option>0</option><option>1</option><option>2</option></select></td><td><input id=\"fWeight" + number + "\" value=\"0\" type=\"text\" size=\"8\" /> kg  <button  onclick=\"delf(" + number + ")\" type=\"button\">删除</button></td></tr> ");

                   $("#fnumber").val(number);
               }
               function delf(number) {
                   var tr = $("#f" + number)
                   tr.remove();

               }
        </script>
  <tr>
    <td height="45" valign="bottom"> <strong class="zi88">紧急联系人 </strong> </td>
  </tr>
  <tr>
    <td height="90">
        <p>请填写以下信息，方便我们在紧急情况下，能够联系到与当事人相关的人 </p>
        <div class="linear">
      <table width="95%" border="0" cellpadding="5">
          <tr>
            <td>姓名</td>
            <td>Email</td>
            <td>手机 </td>
            <td>其他联系方式</td>
            </tr>
          <tr>
            <td><input  id="jjusername" type="text" size="10" /></td>
            <td><input type="text" id="jjemail"  /></td>
            <td><input type="text" id="jjmobile"  /></td>
            <td><input type="text" id="jjtelephone"  /></td>
            </tr>
      </table>
        </div></td>
  </tr>
  <tr>
    <td height="90" > <p><br />
         <strong class="zi88">附加服务</strong> <br />
        </p>
      <div class="linear">
        <p>我们的目标是提供一种特殊的旅行经验，所以知道如果您有任何特殊的问题可以给我们留言<p />
          <textarea name="textarea" id="remark" cols="55" rows="5"></textarea>
        </p>
        </div>
      <p><img src="../../images/bt1.png" width="195" onclick="save()" height="46" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>      </td>
  </tr>
</table>	
            <script type="text/javascript">
                function save() {
                    var username1 = $("#username1").val();
                    var mobile1 = $("#mobile1").val();
                    var Baggage1 = $("#Baggage1").val();
                    var Weight1 = $("#Weight1").val();

                    if (username1 == "" || mobile1 == "") {
                        alert("请输入去程乘客信息")
                        return false;
                    }


                    var number = $("#cnumber").val() * 1;

                    var data = "";
                    for (var i = 2; i <= number; i++) {
                        if (typeof ($("#username" + i).val()) == "undefined") {
                            var username = $("#username" + i).val();
                            var mobile = $("#mobile" + i).val();
                            var Baggage = $("#Baggage" + i).val();
                            var Weight = $("#Weight" + i).val();

                            data += "|" + username + "!" + mobile + "!" + Baggage + "!" + Weight + "";
                        }
                    }

                    data = username1 + "!" + mobile1 + "!" + Baggage1 + "!" + Weight1  + data;

                    var xt = document.getElementById("xt").checked;
                    var data1 = "";
                    var number1 = $("#fnumber").val() * 1;

                    var fusername1 = $("#fusername1").val();
                    var fmobile1 = $("#fmobile1").val();
                    var fBaggage1 = $("#fBaggage1").val();
                    var fWeight1 = $("#fWeight1").val();

                    if (!xt) {
                        if (fusername1 == "" || fmobile1 == "") {
                            alert("请输入返程乘客信息")
                            return false;
                        }

                        for (var i = 2; i <= number1; i++) {
                            if (typeof ($("#fusername" + i).val()) == "undefined") {
                                var username = $("#fusername" + i).val();
                                var mobile = $("#fmobile" + i).val();
                                var Baggage = $("#fBaggage" + i).val();
                                var Weight = $("#fWeight" + i).val();

                                data1 += "|" + username + "!" + mobile + "!" + Baggage + "!" + Weight + "";
                            }
                        }
                    }

                    data1 = fusername1 + "!" + fmobile1 + "!" + fBaggage1 + "!" + fWeight1 + data1;


                    var jjusername = $("#jjusername").val();
                    var jjemail = $("#jjemail").val();
                    var jjmobile = $("#jjmobile").val();
                    var jjtelephone = $("#jjtelephone").val();

                    if (jjusername == "" || jjmobile == "") {
                        alert("请输入紧急联系人信息")
                        return false;
                    }

                    $.post("SaveData.aspx", { Id: '<%= Id%>', xt: xt?"是":"否", data1: data1, data: data, jjusername: jjusername, jjemail: jjemail, jjmobile: jjmobile, jjtelephone: jjtelephone, remark: $("#remark").val() }, function (result) {
                         
                        if (result == "1") {

                            alert('信息提交成功');
                            window.location.href = window.location.href;
                        }
                        else {
                            alert('信息提交失败')
                        }
                    });

                }
            </script>
		</td>
      </tr>
    </table></td>
  </tr>
</table> <uc1:bottom1 runat="server" ID="bottom1" />
       <uc1:bottom runat="server" ID="bottom" />
</div>

 

    </form>
</body>
</html>
