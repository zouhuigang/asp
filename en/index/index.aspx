<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.index.index" %>

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
<link rel="stylesheet" href="../../css/lrtk-banner.css">
<script src="../../js/jquery.minbanner.js"></script>
 <script type="text/javascript" src="../../js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
    (function ($) {
        $.fn.hoverForIE6 = function (option) {
            var s = $.extend({ current: "hover", delay: 10 }, option || {});
            $.each(this, function () {
                var timer1 = null, timer2 = null, flag = false;
                $(this).bind("mouseover", function () {
                    if (flag) {
                        clearTimeout(timer2);
                    } else {
                        var _this = $(this);
                        timer1 = setTimeout(function () {
                            _this.addClass(s.current);
                            flag = true;
                        }, s.delay);
                    }
                }).bind("mouseout", function () {
                    if (flag) {
                        var _this = $(this); timer2 = setTimeout(function () {
                            _this.removeClass(s.current);
                            flag = false;
                        }, s.delay);
                    } else {
                        clearTimeout(timer1);
                    }
                })
            })
        }
    })(jQuery);
</script>
<style type="text/css">
 /* navsort */
.navsort,.carbox,.allsort,.allsort .mt .extra,.allsort h3,.allsort s,.allsort .close{background:url(../../images/nav-sort.gif) no-repeat;  }
.navsort{width:960px;height:50px;background-position:0 1px;background-repeat:repeat-x;margin:0px auto 0 auto;  }
.carbox{width:226px;height:50px;float:right;background-position:0 -152px; }
.searcbox{width:334px;height:31px;overflow:hidden;float:left;margin:10px 0 0 15px;display:inline;background:url(images/searchbox.gif) no-repeat; }
/*allsort*/
.allsort{float:left;width:211px;height:50px;background-position:0px -101px; }
.allsort .mt{height:24px;padding:14px 12px 12px 16px;line-height:24px;cursor:pointer;overflow:hidden; }
.allsort .mt strong{float:left;font-size:14px;color:#630; z-index:1;}
.allsort .mt .extra{float:right;overflow:hidden;width:22px;height:22px;background-position:-214px -52px; }
.allsort .mc{display: ;position:absolute;top:45px;overflow:visible;width:203px;padding:0 3px 0; z-index:1;}
.allsort .item{width:203px;height:32px; margin-bottom:9px; }
.allsort .fore{border-top:none; }
.allsort span{display:block;width:203px;position:relative;z-index:1;}
.allsort h3{font-size:14px;width:170px;height:35px;padding-left:20px; background-position:-241px -57px;font-weight:normal; margin-bottom:5px; }
.allsort h3 a:link,.allsort h3 a:visited{display:block;height:35px;line-height:35px;color:#333; }
.allsort h3 a:hover,.allsort h3 a:active{color:#1B578A; z-index:1;}
.allsort s{display:block;position:absolute;top:10px;left:182px;width:13px;height:13px;background-position:-218px -106px; z-index:1;}
.allsort .item .i-mc{display:none;position:absolute;left:200px;top:-68px;width:700px;border:solid #DEDEDE; border-width:0px 1px 1px 1px; background:#F5F5F5;overflow:hidden;}
.allsort .item dt{padding:3px 6px 0 0;font-weight:bold; z-index:1;}
.allsort .item dd{padding:3px 0 0;overflow:hidden;zoom:1;}
.allsort .subitem{float:left;width:664px;min-height:225px;padding:0 4px 0 8px; }
.allsort .subitem dl{border-top:0px solid #FFEFD7;padding:6px 0;overflow:hidden;zoom:1;}
.allsort .subitem .fore{border-top:none;}
.allsort .subitem dt{float:left;width:54px;line-height:22px;text-align:right;color:#c00;}
.allsort .subitem dd{float:left;width:650px;}
.allsort .subitem em{float:left;height:14px;margin:4px 0;line-height:14px;padding:0 8px;border-left:1px solid #ccc;font-style:normal;white-space:nowrap;}
.allsort .fr{background:#fff;width:194px;padding:0 15px 2010px 15px;margin-bottom:-2000px;float:right;}
.allsort .fr dl{padding-bottom:0;}
.allsort .mc .extra{padding:7px 8px;background:#FDF1DE;border-top:1px solid #333333;}
.allsorthover{background-position:0 -50px;}
.allsorthover .mt .extra{background-position:-214px -75px;}
.allsorthover .mc{display:block;}
.allsort .hover span{z-index:1;width:160px;}
.allsort .hover h3{font-size:14px;border:solid #DEDEDE;border-width:0px 0 0px 0px;overflow:hidden;background:url(../../images/bg.gif)  no-repeat 10px 0px;font-weight:bold; border-right:0;width:192px;  }
.allsort .hover s{display:none;}
.allsort .hover .i-mc{display:block; }
*html .allsort .item dd{padding-bottom:6px;}
*html .allsort .subitem{height:400px;}
.allsort .close{position:absolute;top:6px;left:674px;z-index:1;width:19px;height:19px;background-position:-216px -125px;cursor:pointer;}
</style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="main">
       <uc1:top runat="server" ID="top" />
<div>
<!-- search-->

<div class="search"  style="z-index:10;">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td height="30"  style="color:#FFFFFF; font-size:15px;" >　Quick Search</td>
    </tr> 
    <tr>
      <td height="190" valign="top"> <div class="navsort">
	<div class='allsort'>
		<div class='mc'>
			<div class='item fore'>
				<span style="background:url(../../images/bg1.jpg) no-repeat 0px 0px;"><h3><a href="" style="font-size:14px;" id="typel">Aircraft Type</a></h3><s></s></span>
				<div class='i-mc' style="background:url(../../images/m1.jpg) top center  no-repeat #F5F5F5; ">
					<div class='close' onclick="$(this).parent().parent().removeClass('hover')"></div>
					<div class='subitem'>
						<dl class='fore'>
						 
							<dd>
							<table border="0" cellpadding="0" cellspacing="0" style="margin-left:15px;">
   <tr>
     <td colspan="6" height="80"  class="zi8"><strong>Aircraft Type</strong></td>
   </tr>
   <tr>
       <asp:Repeater ID="Repeater1" runat="server">
           <ItemTemplate>
               <td width="120" align="center" height="60"><a href="#" onclick="setType('<%#Eval("Name") %>')"><img src="../../<%# Eval("Image") %>" border="0" /></a></td>
           </ItemTemplate>
       </asp:Repeater>
      
   </tr>
   <tr style="font-size:11px;text-transform:uppercase;">
       <asp:Repeater ID="Repeater2" runat="server">
           <ItemTemplate>
               <td height="30" align="center" valign="top"><a href="#" onclick="setType('<%#Eval("Name") %>')"><%# Eval("Name") %></a></td>
           </ItemTemplate>
       </asp:Repeater>
     
      
   </tr>
</table>		</dd>
						</dl> 
					</div>
 				</div>
			</div>
			
			<div class='item'>
				<span  style="background:url(../../images/bg2.jpg) no-repeat 0px 0px;"><h3><a href="" style="font-size:14px;" id="Manufacturerl">Manufacturer</a></h3><s></s></span>
				<div class='i-mc' style="background:url(../../images/m2.jpg) top center  no-repeat #F5F5F5; ">
					<div class='close' onclick="$(this).parent().parent().removeClass('hover')"></div>
					<div class='subitem'>
						<dl>
 							<dd>
  								<table width="690" border="0"  style="margin-left:15px; line-height:22px;">
  <tr> <td colspan="5" height="50"  class="zi8"><strong>Manufacturer</strong></td>
  </tr>
  <tr>
     <td width="502" valign="top">
        <%
            int index = 1;
            if (AircraftManufacturerTable != null){ 
                
                while(index<6 && index<AircraftManufacturerTable.Rows.Count)
                {
                %>
        <a href="#" onclick="setM('<%= AircraftManufacturerTable.Rows[index]["NameEN"] %>')"><%= AircraftManufacturerTable.Rows[index]["NameEN"] %></a><br />
     <%
                    index = index + 1;
     }
       
       } %>

    </td>
    <td width="502" valign="top">
        <% if (AircraftManufacturerTable != null){
               while(index<12 && index<AircraftManufacturerTable.Rows.Count)
               {
                %>


        <a href="#" onclick="setM('<%= AircraftManufacturerTable.Rows[index]["NameEN"] %>')"><%= AircraftManufacturerTable.Rows[index]["NameEN"] %></a><br />
   

        <%
        index=index+1;
        }
          } %>

    </td>
      <td width="502" valign="top">
      <% if (AircraftManufacturerTable != null){
               while(index<18 && index<AircraftManufacturerTable.Rows.Count)
               {
                %> 
           <a href="#" onclick="setM('<%= AircraftManufacturerTable.Rows[index]["NameEN"] %>')"><%= AircraftManufacturerTable.Rows[index]["NameEN"] %></a><br />
        <%
        index=index+1;
        }
          } %>


      </td>
  </tr>
 </table>	</dd>
						</dl>
					 
 
					</div>
 				</div>
			</div>
 			<div class='item'>
				<span  style="background:url(../../images/bg3.jpg) no-repeat 0px 0px;"><h3><a href="" style="font-size:14px;" id="priel">Model and price</a></h3><s></s></span>
				<div class='i-mc' style="background:url(../../images/m3.jpg) top center  no-repeat #F5F5F5; ">
					<div class='close' onclick="$(this).parent().parent().removeClass('hover')"></div>
					<div class='subitem'>
						<dl>
 							<dd>
								<table width="650" border="0" style="margin-left:15px; margin-top:15px;">
   <tr>
     <td height="50" colspan="2"  class="zi8"><strong>Model And Price</strong></td>
     <td width="366"   rowspan="5" style="padding:20px 20px; border-left:#999999 solid 1px; font-size:13px;">China, jet fleet number nearly 300 aircraft, and 1420 in mainland China currently potential of official machine to buy and purchase official machine demand up to 1750, with a total value of over 3400 million yuan.
<!--This is the Minsheng financial leasing with Hurun Report jointly released the "China business jet industry special report published data. However, the report also pointed out that compared to developed countries such as Europe and the United States, the number of private aircraft in China is still considered a,--> what it is that prevents more wealthy to buy his private plane?</td>
   </tr>
   <tr>
     <td width="60">Manufacturer：</td>
       <td width="210"><span id="Manufacturerl1">All Manufacturers</span></td>
      
   </tr>
   <tr>
     <td>Model：</td>
     <td>
         <select name="modulelist" id="modulelist" style="width:190px;" onchange="selectModule(this)">
   <option>All Models</option>
  </select><asp:HiddenField ID="Module" runat="server" />
          </td>
   </tr>
   <tr>
     <td>Price：</td>
     <td><asp:ListBox ID="ListBox2" onchange="setprice(this)" runat="server" Rows="1">
        <asp:ListItem>Any</asp:ListItem>
        <asp:ListItem><$1,000,000</asp:ListItem>
        <asp:ListItem>$1,000,000-$2,000,000</asp:ListItem>
    <asp:ListItem>$2,000,001-$5,000,000</asp:ListItem>
    <asp:ListItem>$5,000,001-$10,000,000</asp:ListItem>
    <asp:ListItem>$10,000,001-$50,000,000</asp:ListItem>
    <asp:ListItem>$50,000,001-$100,000,000</asp:ListItem>
    <asp:ListItem>>$100,000,000</asp:ListItem>
    </asp:ListBox></td>
   </tr> 
 </table>		</dl>
						 
					</div>
 				</div>
			</div>
			
			<div class='item'>
				<span  style="background:url(../../images/bg4.jpg) no-repeat 0px 0px;"><h3><a href="" style="font-size:14px;" id="Avionicsl">Features</a></h3><s></s></span>
				<div class='i-mc' style="background:url(../../images/m4.jpg) top center  no-repeat #F5F5F5; ">
					<div class='close' onclick="$(this).parent().parent().removeClass('hover')"></div>
					<div class='subitem'>
						<dl class='fore'>
 							<dd>
	 	<table width="690" border="0"  style="margin-left:15px;">
  <tr> <td colspan="7" height="50"  class="zi8"><strong>Features</strong></td>
  </tr>
  <tr>
    <td>
          <%
             index = 0;
             if (AvionicsTable != null)
             {

                 while (index < 7 && index < AvionicsTable.Rows.Count)
                {
                %>
        <a href="#" style="font-size:13px;" onclick="setAvionics('<%= AvionicsTable.Rows[index]["Name"] %>')"><%= AvionicsTable.Rows[index]["Name"] %></a><br />
     <%
                    index = index + 1;
     }
       
       } %> 
     
    </td>
    <td>
          <% 
             if (AvionicsTable != null)
             {

                 while (index < 15 && index < AvionicsTable.Rows.Count)
                {
                %>
        <a href="#" style="font-size:13px;" onclick="setAvionics('<%= AvionicsTable.Rows[index]["Name"] %>')"><%= AvionicsTable.Rows[index]["Name"] %></a><br />
     <%
                    index = index + 1;
     }
       
       } %> 
    </td>
    <td>
        <% 
             if (AvionicsTable != null)
             {

                 while (index < 23 && index < AvionicsTable.Rows.Count)
                {
                %>
        <a href="#" style="font-size:13px;" onclick="setAvionics('<%= AvionicsTable.Rows[index]["Name"] %>')"><%= AvionicsTable.Rows[index]["Name"] %></a><br />
     <%
                    index = index + 1;
     }
       
       } %> 
    </td>
    <td>
         <% 
             if (AvionicsTable != null)
             {

                 while (index < 31 && index < AvionicsTable.Rows.Count)
                {
                %>
        <a href="#" style="font-size:13px;" onclick="setAvionics('<%= AvionicsTable.Rows[index]["Name"] %>')"><%= AvionicsTable.Rows[index]["Name"] %></a><br />
     <%
                    index = index + 1;
     }
       
       } %> 

    </td>
  </tr>
 </table></dd>
						</dl>
						 
					</div>
 				</div>
			</div>
			
  		</div>
 	</div><!--allsort end-->
 	<div class="searcbox"></div>
 	<div class="carbox"></div>
 </div>	
 <script type="text/javascript">
     $(".allsort").hoverForIE6({ current: "allsorthover", delay: 200 });
     $(".allsort .item").hoverForIE6({ delay: 150 });
</script><script type="text/javascript" src="../../js/jquery.js"></script>

  </td>
    </tr>
     <tr>
      <td><a href="#" onclick="Search()"><img src="../../images/search_en.png"  alt="" width="155" height="36" border="0" style="padding-left:40px;"/></a></td>
    </tr>
  </table>
 </div>
<!-- searchend-->
 <!-- banner-->
    <table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
<div class="slide_container">
      <ul class="rslides" id="slider">
        <li>
          <img src="../../images/banner01.jpg" alt="" height="450" width="1200">         </li>
        <li>
         <img src="../../images/banner02.jpg" alt="" height="450" width="1200">  
         </li>
        <li>
        <img src="../../images/banner03.jpg" alt="" height="450" width="1200">  
         </li>
      </ul>
    </div>	
	</td>
  </tr>
</table>
<!-- bannerend-->
    <uc1:bottom1 runat="server" ID="bottom1" />
</div>



       <uc1:bottom runat="server" ID="bottom" />


 
<script src="../../js/responsiveslides.minbanner.js"></script>
<script src="../../js/slidebanner.js"></script>
        <script type="text/javascript">
            function setType(data) {
                document.getElementById("typel").innerHTML = data;
            }
            function setM(data) {

                document.getElementById("Manufacturerl").innerHTML = data;
                document.getElementById("Manufacturerl1").innerHTML = data;
                loadmodule(data);
            }

            function loadmodule(data) {

                $("#modulelist").find('option').remove();

                $.get("AjaxData.aspx", { "Manufacturerl": data }, function (result) {
                    var d = result.split(',');
                    for (var i = 0; i < d.length; i++) {
                        if (d[i] != "") {
                            document.getElementById('modulelist').options.add(new Option(d[i], d[i]));

                        }
                    }

                });
            }

            function selectModule(ctr) {
                $("#Module").val(ctr.value);
            }

            function setprice(ctr) {

                document.getElementById("priel").innerHTML = ctr.value;
            }
            function setAvionics(data) {
                document.getElementById("Avionicsl").innerHTML = data;
            }

            function Search() {
                var type = document.getElementById("typel").innerHTML;
                if (type == "Aircraft Type")
                    type = "";

                var Manufacturerl = document.getElementById("Manufacturerl").innerHTML;
                if (Manufacturerl == "Manufacturer")
                    Manufacturerl = "";
                var priel = document.getElementById("priel").innerHTML;
                if (priel == "Model and price")
                    priel = "";
                var Avionicsl = document.getElementById("Avionicsl").innerHTML;
                if (Avionicsl == "Features")
                    Avionicsl = "";
                var Module = $("#Module").val();
                if (Module == "All Models")
                    Module = "";
                window.location.href = "../buy/index.aspx?Type=" + encodeURI(type) + "&Manufacturer=" + encodeURI(Manufacturerl) + "&Price=" + encodeURI(priel) + "&Avionics=" + encodeURI(Avionicsl) + "&Model=" + encodeURI(Module);
            }
        </script>
</div>

    </form>
</body>
</html>
