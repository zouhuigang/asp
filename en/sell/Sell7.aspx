<%@ Page Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.sell.Sell7" %>

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
<link rel="stylesheet" type="text/css" href="../../css/style1_en.css" />
 <link href="../../css/css2.css" type="text/css" rel="stylesheet">	
<SCRIPT src="../../js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<SCRIPT src="../../js/base.js" type=text/javascript></SCRIPT>
 <link rel="stylesheet" href="../../css/ui.tabs.css" type="text/css" media="print, projection, screen">
         <script src="../../js/ui.core.js" type="text/javascript"></script>
        <script src="../../js/ui.tabs.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(function () {
                $('#rotate > ul').tabs({ fx: { opacity: 'toggle' } }).tabs('rotate', 200000);
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
        <td height="50" valign="bottom" class="zi4" style=" text-transform:uppercase;">Aircraft Brokers/Dealers</td>
      </tr>
       
      <tr>
        <td><table width="885" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="5">
               <tr>
                <td valign="top"><table width="850" border="0">
                  <tr>
                    <td width="470" align="left" valign="top"><div id="preview">
                        <div class="jqzoom" id="spec-n1" onclick="window.open('#')"><img height="336"
	src="../../<%=Imageurl1 %>" jqimg="../../<%=Imageurl1 %>" width="470" /> </div>
                      <div id="spec-n5">
                          <div class="control" id="spec-left"> <img src="../../images/left1.gif" /> </div>
                        <div id="spec-list">
                            <ul class="list-h">
                            <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <li><img src="../../<%# Eval("Image") %>"> </li> 
                        </ItemTemplate>
                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="control" id="spec-right"> <img src="../../images/right1.gif" /> </div>
                      </div>
                    </div>
                        <script type="text/javascript">
                            $(function () {
                                $(".jqzoom").jqueryzoom({
                                    xzoom: 400,
                                    yzoom: 400,
                                    offset: 10,
                                    position: "right",
                                    preload: 1,
                                    lens: 1
                                });
                                $("#spec-list").jdMarquee({
                                    deriction: "left",
                                    width: 458,
                                    height: 85,
                                    step: 2,
                                    speed: 4,
                                    delay: 10,
                                    control: true,
                                    _front: "#spec-right",
                                    _back: "#spec-left"
                                });
                                $("#spec-list img").bind("mouseover", function () {
                                    var src = $(this).attr("src");
                                    $("#spec-n1 img").eq(0).attr({
                                        src: src.replace("\/n5\/", "\/n1\/"),
                                        jqimg: src.replace("\/n5\/", "\/n0\/")
                                    });
                                    $(this).css({
                                        "border": "1px solid #ff6600",
                                        "padding": "0px"
                                    });
                                }).bind("mouseout", function () {
                                    $(this).css({
                                        "border": "1px solid #ccc",
                                        "padding": "0px"
                                    });
                                });
                            })
	              </script>
                        <script src="../../js/lib.js" type="text/javascript"></script>
                        <script src="../../js/niutuku_com.js" type="text/javascript"></script>                    </td>
                    <td width="340" rowspan="2" valign="top"><table width="331" border="0"   cellpadding="0" cellspacing="0">
                        <tr>
                          <td height="35" colspan="2"><div style="position:absolute; float:left; width:350px;"><span  class="zi5"><%=Subject %></span><br />
                                <span class="zi2"><%= Description %> <br />
                                </span></div></td>
                        </tr>
                        <tr>
                          <td height="30" colspan="2" valign="bottom" class="zi2"></td>
                        </tr>
                        <tr>
                          <td colspan="2" class="zi2"><span class="zi7">$ <%=Price %></span></td>
                        </tr>
                        <tr>
                          <td height="30" colspan="2"><strong>Description</strong></td>
                        </tr>
                        <tr>
                          <td width="145" height="28" class="zi3">Manufacturer： </td>
                          <td width="186" class="zi3"><%= Manufacturer %></td>
                        </tr>
                        <tr>
                          <td height="28" class="zi3">Year： </td>
                          <td class="zi3"><%= Year %></td>
                        </tr>
                        <tr>
                          <td height="28" class="zi3">Model：</td>
                          <td class="zi3"><%= Model %></td>
                        </tr>
                        <tr>
                          <td height="28" class="zi3">Total Time：</td>
                          <td class="zi3"><%=CumulativeHours %></td>
                        </tr>
                        <tr>
                          <td height="28" class="zi3">Number of Seats：</td>
                          <td class="zi3"><%= NumberOfSeats %></td>
                        </tr>
                        <tr>
                          <td height="28" class="zi3">Exterior Color：</td>
                          <td class="zi3"><%= Color %></td>
                        </tr>
                        <tr>
                          <td height="28" class="zi3">Interior Color：</td>
                          <td class="zi3"><%= SeatsColor %></td>
                        </tr>
                        <tr>
                          <td height="28" class="zi3">GAT Code：</td>
                          <td class="zi3"><%= SerialNumber %></td>
                        </tr>
                        <tr>
                          <td height="38" colspan="2" valign="middle"><strong class="zi9">Play video</strong></td>
                        </tr>
                        <tr>
                          <td height="80" colspan="2" valign="top" > <% if (VideoImage !=""){ %><a href="<%=VideoUrl %>" target="_blank"><img src="../../<%= VideoImage %>" width="105" height="59" border="0" /></a>&nbsp;&nbsp;<%} if (VideoImage1 !=""){ %><a href="<%= VideoUrl1 %>" target="_blank"><img src="../../<%= VideoImage1 %>" width="105" height="59" /></a><%} %></td>
                        </tr>
                      </table>                    </td>
                  </tr>
                  <tr>
                    <td align="left" valign="top">Posted：<%= CreateDate %></td>
                  </tr>
                </table>               </td>
                </tr>
              <tr>
                <td style="padding-left:8px;"><div id="rotate">
            <ul>
                <li><a href="#fragment-1"><span  style="font-size:14px;">Description</span></a></li>
                <li><a href="#fragment-2"><span style="font-size:14px;">Features</span></a></li>
                <li><a href="#fragment-3"><span style="font-size:14px;">Maintenance/Records</span></a></li>
                <li><a href="#fragment-4"><span style="font-size:14px;">Avionics</span></a></li>
                <li><a href="#fragment-5"><span style="font-size:14px;">Interior/Cabin</span></a></li>
				<li><a href="#fragment-6"><span style="font-size:14px;">Additonal Equipment</span></a></li>
                <li><a href="#fragment-7"><span style="font-size:14px;">Contact Seller</span></a></li>
            </ul>
            <div id="fragment-1">
                <%= Overview %></div>
            <div id="fragment-2">
                  <%= Characteristics %></div>
            <div id="fragment-3">
                <%= Maintenance %></div>
            <div id="fragment-4">
               <%= Equipment %></div>
            <div id="fragment-5">
                <%= EngineRoom %>
            </div>
			 <div id="fragment-6">
                <%= AdditionalEquipment %>
            </div>
			 <div id="fragment-7">
               <%= Area %>
            </div>
    </div></td>
              </tr>
              <tr>
                <td align="right" style="padding-right:15px;"><a href="Sell6.aspx?Id=<%=Id %>"><img src="../../images/bt1_en.jpg" width="126" height="33" border="0" /></a>　
                    <asp:ImageButton ID="ImageButton1" ImageUrl="../../images/bt5_en.jpg" width="126" height="33"  runat="server" />
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
