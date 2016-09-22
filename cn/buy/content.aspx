<%@ Page Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.cn.buy.content" %>

<%@ Register Src="~/cn/include/bottom1.ascx" TagPrefix="uc1" TagName="bottom1" %>
<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/include/top_buy1.ascx" TagPrefix="uc1" TagName="top_buy1" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
<title>北美飞机资源网</title>
<link rel="stylesheet" type="text/css" href="../../css/style1.css" />
 <link href="../../css/css1.css" type="text/css" rel="stylesheet">	
<SCRIPT src="../../js/jquery-1.2.6.pack.js" type=text/javascript></SCRIPT>
<SCRIPT src="../../js/base.js" type=text/javascript></SCRIPT>
 <link rel="stylesheet" href="../../css/ui.tabs.css" type="text/css" media="print, projection, screen">
         <script src="../../js/ui.core.js" type="text/javascript"></script>
        <script src="../../js/ui.tabs.js" type="text/javascript"></script>
    <style>
        .video-banner-box a {
    width: 30px;
    height: 30px;
    display: block;
    position: absolute;
    right: -24px;
    top: -24px;
    z-index: 9999;
    cursor: pointer;
    background: url(../../images/vedio_close.png) no-repeat;
}
        .video-bann-mune {
    width: 800px;
    height: 484px;
    position: absolute;
    left: 0px;
    right: 0px;
    margin: auto;
    top: 0px;
    background: #fff;
    bottom: 0px;
    border: 10px solid #fff;
    float: left;
}
        .video-banner-box {
    width: 100%;
    height: 100%;
    position: fixed;
    z-index: 999999;
    background: rgba(0,0,0,0.45);
    display: none;
}
    </style>
        <script type="text/javascript">
            $(function () {
                $('#rotate > ul').tabs({ fx: { opacity: 'toggle' } }).tabs('rotate', 200000);
            });
        </script>

    <script type="text/javascript">
        $(document).ready(function () {
            
            $(".video-bann-mune a").click(function () {
                $(".video-banner-box").hide();
            });
        });

        function play(url)
        { 
            $(".video-banner-box").show();
            var myVideo = document.getElementsByTagName('video')[0];
            if (myVideo) {
                myVideo.src = url;
                myVideo.play();
            }
        }
        function playPause() {
            var myVideo = document.getElementsByTagName('video')[0];
            if (myVideo.ended)
                myVideo.play();
            else
                myVideo.pause();
        }
</script>
</head>
<body>
    <form id="form1" runat="server">

            <!--焦点图弹出视频-->
    <div class="video-banner-box" style="display:none">
     <div class="video-bann-mune">
         <!--视频播放停止20160607-->
          <a href="javascript:playPause();"></a>
          <i></i> 
          <div class="videx-mian">
               <!--视频内容-->
                <video  controls="controls" width="800" height="450">
  <source src="movie.ogg" type="video/ogg" />
  <source src="" type="video/mp4" />
                  当前浏览器不支持此视频
</video> 
          </div>
     </div>
</div>

    <div class="main"> <uc1:top_buy1 runat="server" ID="top_buy1" />
<table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="76%"><table width="850" border="0">
          <tr>
            <td width="600" align="left" valign="top">
			
			
<div id="preview">
	<div class=jqzoom id=spec-n1  ><IMG  
	src="../../<%=Imageurl1 %>" jqimg="../../<%=Imageurl1 %>" style="max-width:570px; max-height:430px"  >	</div>
    <div id="spec-n5">
		<div class="control" id="spec-left">
			<img src="../../images/left1.gif" />		</div>
		<div id="spec-list">
			<ul class="list-h" style="overflow:hidden;<%= imgnumber<=5 ?"margin:0px; padding:0px;":"" %> ">
				 <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <li><img src="../../<%# Eval("Image") %>"> </li> 
                    </ItemTemplate>
                </asp:Repeater>
			</ul>
		</div>
		<div class="control" id="spec-right">
			<img src="../../images/right1.gif" />		</div>
    </div> 
</div>
<SCRIPT type=text/javascript>
    $(function () {
        //$(".jqzoom").jqueryzoom({
        //    xzoom: 400,
        //    yzoom: 400,
        //    offset: 10,
        //    position: "right",
        //    preload: 1,
        //    lens: 1
        //});
        $("#spec-list").jdMarquee({
            deriction: "left",
            width: 560,
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
	</SCRIPT>

<SCRIPT src="../../js/lib.js" type=text/javascript></SCRIPT>
<SCRIPT src="../../js/niutuku_com.js" type=text/javascript></SCRIPT>			</td>
            <td width="275" rowspan="2" valign="top"><table width="250" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="35" colspan="2"><div style="position:absolute; float:left;  "><span  class="zi44" style="font-size:26px"><%=Subject %></span><br /><span class="zi2"><%=Description %></span></div></td>
              </tr>
              <tr>
                <td height="50" colspan="2" valign="bottom" class="zi2"></td>
              </tr>
              <tr>
                <td colspan="2" class="zi2"><span class="zi7" ><%= Price+""=="0"?"<span style=\"font-size:18px\">详细价格请联系我们</span>":"USD$"+ Convert.ToDecimal( Price).ToString("#,##") %></span><br />
                  <span class="zi8" style="font-size:12px"><%=PriceDescription %></span></td>
              </tr>
              <tr>
                <td height="40" colspan="2" class="zi8"><strong class="zi6">产品一瞥</strong></td>
                </tr>
              <tr>
                <td height="28" class="zi3">制造商： </td>
                <td class="zi3"><%= Manufacturer %></td>
              </tr>
              <tr>
                <td height="28" class="zi3">年份： </td>
                <td class="zi3"><%= Year %></td>
              </tr>
              <tr>
                <td height="28" class="zi3">型号：</td>
                <td class="zi3"><%= Model %></td>
              </tr>
              <tr>
                <td height="28" class="zi3">累积飞行小时：</td>
                <td class="zi3"><%=CumulativeHours %>小时</td>
              </tr>
              <tr>
                <td height="28" class="zi3">座位数量：</td>
                <td class="zi3"> <%= NumberOfSeats %></td>
              </tr>
              <tr>
                <td height="28" class="zi3">机身颜色：</td>
                <td class="zi3"><%= Color %></td>
              </tr>
              <tr>
                <td height="28" class="zi3">座位颜色：</td>
                <td class="zi3"><%= SeatsColor %></td>
              </tr>
              <tr>
                <td height="28" class="zi3">编号：</td>
                <td class="zi3"><%= SerialNumber %></td>
              </tr>
              <tr>
                <td height="50" colspan="2" valign="middle"><strong class="zi9">视频播放</strong></td>
                </tr>
              <tr>
                <td height="80" colspan="2" valign="top" >
                    
                    <% if (VideoImage !=""){ %><a   onclick="play('../../<%=VideoUrl %>')" target="_blank"><img src="../../<%= VideoImage %>" width="105" height="59" border="0" /></a>&nbsp;&nbsp;<%} if (VideoImage1 !=""){ %><a  onclick="play('../../<%=VideoUrl1 %>')" target="_blank"><img src="../../<%= VideoImage1 %>" width="105" height="59" /></a><%} %></td>
                </tr>
             
            </table>
			
			  <div style=" float:left;">分享到：</div>
			  <div class="bshare-custom" style="width:230px;"><a title="分享到QQ空间" class="bshare-qzone"></a><a title="分享到新浪微博" class="bshare-sinaminiblog"></a><a title="分享到人人网" class="bshare-renren"></a><a title="分享到腾讯微博" class="bshare-qqmb"></a><a title="分享到网易微博" class="bshare-neteasemb"></a><a title="更多平台" class="bshare-more bshare-more-icon more-style-addthis"></a><span class="BSHARE_COUNT bshare-share-count">0</span></div>
			  <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/buttonLite.js#style=-1&amp;uuid=&amp;pophcol=2&amp;lang=zh"></script>			  <script type="text/javascript" charset="utf-8" src="http://static.bshare.cn/b/bshareC0.js"></script>			</td>
          </tr>
          <tr>
            <td align="left" valign="top">此机提供日期：<%= Convert.ToDateTime(CreateDate).ToString("yyyy-MM-dd")%></td>
            </tr>
        </table></td>
        <td width="24%" rowspan="2" valign="top" style="padding-top:80px;"> <br />
            <asp:ImageButton ImageUrl="../../images/bt05.jpg" ID="SaveButton" runat="server" />
         <br />            <br />            <a href="../Notice/index.aspx?Type=北航网全方位服务"><img src="../../images/img10.jpg" width="274"   border="0" /></a><br />          
            <br/><a href="#"><img src="../../images/img09.jpg" width="274"   border="0" /></a><br />          
            <br/><a href="#"><img src="../../images/img11.jpg" width="274"   border="0" /></a></td>
      </tr>
      <tr>
        <td>
		
		<div id="rotate">
            <ul>
                <li><a href="#fragment-1"><span  style="font-size:14px;">整体概述</span></a></li>
                <li><a href="#fragment-2"><span style="font-size:14px;">功能特点</span></a></li>
                <li><a href="#fragment-3"><span style="font-size:14px;">维修记录</span></a></li>
                <li><a href="#fragment-4"><span style="font-size:14px;">电子设备</span></a></li>
                <li><a href="#fragment-5"><span style="font-size:14px;">机身/机仓</span></a></li>
				<li><a href="#fragment-6"><span style="font-size:14px;">附加设备</span></a></li>
                <li><a href="#fragment-7"><span style="font-size:14px;">所在地区</span></a></li>
            </ul>
            <div id="fragment-1">
                <%=Overview %></div>
            <div id="fragment-2">
                <%= Characteristics %></div>
            <div id="fragment-3">
                <%= Maintenance %></div>
            <div id="fragment-4">
              <%= Equipment %> </div>
            <div id="fragment-5">
                <%= EngineRoom %>  
            </div>
			 <div id="fragment-6">
               <%= AdditionalEquipment %> 
            </div>
			 <div id="fragment-7">
              <%= Area %> 
            </div>
            </div>
        </td>
      </tr>
 
    </table></td>
  </tr>
</table> 
        <uc1:bottom1 runat="server" ID="bottom1" /> 
        <uc1:bottom runat="server" ID="bottom" />
</div>
    </form>
</body>
</html>
