<%@ Page Language="C#" AutoEventWireup="true" Inherits="Aircraft.Web.cn.Around.hy" %>

<%@ Register Src="~/cn/include/top_buy.ascx" TagPrefix="uc1" TagName="top_buy" %>
<%@ Register Src="~/cn/Around/a_left1.ascx" TagPrefix="uc1" TagName="a_left1" %>
<%@ Register Src="~/cn/include/bottom.ascx" TagPrefix="uc1" TagName="bottom" %>
<%@ Register Src="~/cn/Around/a_left.ascx" TagPrefix="uc1" TagName="a_left" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="北美飞机资源网" />
<meta name="description" content="北美飞机资源网" />
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
    <div class="main">
        <uc1:top_buy runat="server" ID="top_buy" />

  <table width="1160" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="275" align="left" valign="top" style=" padding-top:25px;">
        <uc1:a_left runat="server" ID="a_left" />
	</td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="70" class="zi4">北美飞行策划</td>
      </tr> 
      <tr>
        <td align="center"><img src="../../images/map1.jpg" width="787" height="489" border="0" usemap="#Map" /><a name="1" id="1"></a></td>
      </tr>
      <tr>
        <td height="30" align="center"><div style="background-color:#AA5599; width:820px;color:#fff; height:35px; line-height:36px; font-size:24px; margin-left:5px;"><%=Subject %>
        </div></td>
      </tr>
      <tr>
        <td align="center">
		
		
		<div class="MainBg">
	
 	<div class="OriginalPicBorder">
		<div id="OriginalPic">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
<p class="Hidden">
				<span class="Summary FlLeft">
				<%# Eval("Content") %> </span>
				<span class="SliderPicBorder FlRight"><img src="../../<%# Eval("Image") %>" /></span>
				<span class="Clearer"></span>			</p> 
                </ItemTemplate>
            </asp:Repeater>
 			
		</div>
	</div>
	
	
	
	<div class="ThumbPicBorder">
		<img src="../../images/ArrowR.jpg" id="btnPrev" class="FlLeft" style="cursor:pointer;" />
		<div class="jCarouselLite FlLeft">
			<ul id="ThumbPic">
                <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
				<li rel='<%# Eval("Index") %>'><img src="../../<%# Eval("Image") %>" /></li> 
                     </ItemTemplate>
            </asp:Repeater>
 			</ul>
			<div class="Clearer"></div>
		</div>
		<img src="../../images/ArrowL.jpg" id="btnNext" class="FlLeft" style="cursor:pointer;" />
		<div class="Clearer"></div>
	</div>
</div>

<script type="text/javascript">
    //缩略图滚动事件
    $(".jCarouselLite").jCarouselLite({
        btnNext: "#btnNext",
        btnPrev: "#btnPrev",
        scroll: 1,
        speed: 240,
        circular: false,
        visible: 5
    });
</script>

<script type="text/javascript">
    var currentImage;
    var currentIndex = -1;
    //显示大图(参数index从0开始计数)
    function showImage(index) {
        //更新当前图片页码
        $(".CounterCurrent").html(index + 1);
        //隐藏或显示向左向右鼠标手势
        var len = $('#OriginalPic img').length;
        if (index == len - 1) {
            $("#aNext").hide();
        } else {
            $("#aNext").show();
        }
        if (index == 0) {
            $("#aPrev").hide();
        } else {
            $("#aPrev").show();
        }
        //显示大图            
        if (index < $('#OriginalPic img').length) {
            var indexImage = $('#OriginalPic p')[index];
            //隐藏当前的图
            if (currentImage) {
                if (currentImage != indexImage) {
                    $(currentImage).css('z-index', 2);
                    $(currentImage).fadeOut(0, function () {
                        $(this).css({ 'display': 'none', 'z-index': 1 })
                    });
                }
            }
            //显示用户选择的图
            $(indexImage).show().css({ 'opacity': 0.4 });
            $(indexImage).animate({ opacity: 1 }, { duration: 200 });
            //更新变量
            currentImage = indexImage;
            currentIndex = index;
            //移除并添加高亮
            $('#ThumbPic img').removeClass('active');
            $($('#ThumbPic img')[index]).addClass('active');
        }
    }

    //下一张
    function ShowNext() {
        var len = $('#OriginalPic img').length;
        var next = currentIndex < (len - 1) ? currentIndex + 1 : 0;
        showImage(next);
    }
    //上一张
    function ShowPrep() {
        var len = $('#OriginalPic img').length;
        var next = currentIndex == 0 ? (len - 1) : currentIndex - 1;
        showImage(next);
    }
    //下一张事件
    $("#aNext").click(function () {
        ShowNext();
        if ($(".active").position().left >= 144 * 5) {
            $("#btnNext").click();
        }
    });
    //上一张事件
    $("#aPrev").click(function () {
        ShowPrep();
        if ($(".active").position().left <= 144 * 5) {
            $("#btnPrev").click();
        }
    });
    //初始化事件
    $(".OriginalPicBorder").ready(function () {
        ShowNext();
        //绑定缩略图点击事件
        $('#ThumbPic li').bind('click', function (e) {
            var count = $(this).attr('rel');
            showImage(parseInt(count) - 1);
        });
    });
</script>		</td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="1160" border="0" align="center" cellpadding="5" cellspacing="0">
          <tr>
            <td width="77%" rowspan="3" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="30" class="titilee"><img src="../../images/img04.jpg" width="4" height="24"  alt=""/> 全美各州特色推荐  </td>
                </tr>
                <tr>
                  <td bgcolor="#F8B219" height="2"></td>
                </tr>
              </table>
                <br />
                <% if (rtable != null){ %>
                <table width="98%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="215">
                        <% if (rtable.Rows.Count>0) {%>
                        <img src="../../<%= rtable.Rows[0]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %>
                    </td>
                    <td width="215"> <% if (rtable.Rows.Count>1) {%>
                        <img src="../../<%= rtable.Rows[1]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %></td>
                    <td width="215"> <% if (rtable.Rows.Count>2) {%>
                        <img src="../../<%= rtable.Rows[2]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %></td>
                    <td> <% if (rtable.Rows.Count>3) {%>
                        <img src="../../<%= rtable.Rows[3]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %></td>
                  </tr>
                  <tr>
                    <td class="pro"> <% if (rtable.Rows.Count>0) {%><%= rtable.Rows[0]["Subject"] %><%} %></td>
                    <td height="35"  class="pro"><% if (rtable.Rows.Count>1) {%><%= rtable.Rows[1]["Subject"] %><%} %></td>
                    <td class="pro"><% if (rtable.Rows.Count>2) {%><%= rtable.Rows[2]["Subject"] %><%} %></td>
                    <td class="pro"><% if (rtable.Rows.Count>3) {%><%= rtable.Rows[3]["Subject"] %><%} %></td>
                  </tr>
                  <tr>
                    <td> <% if (rtable.Rows.Count>4) {%>
                        <img src="../../<%= rtable.Rows[4]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %></td>
                    <td> <% if (rtable.Rows.Count>5) {%>
                        <img src="../../<%= rtable.Rows[5]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %></td>
                    <td> <% if (rtable.Rows.Count>6) {%>
                        <img src="../../<%= rtable.Rows[6]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %></td>
                    <td> <% if (rtable.Rows.Count>7) {%>
                        <img src="../../<%= rtable.Rows[7]["Image"] %>" width="202" height="128"  alt=""/>
                        <%} %></td>
                  </tr>
                  <tr>
                    <td class="pro" height="35" ><% if (rtable.Rows.Count>4) {%><%= rtable.Rows[4]["Subject"] %><%} %></td>
                    <td class="pro"><% if (rtable.Rows.Count>5) {%><%= rtable.Rows[5]["Subject"] %><%} %></td>
                    <td class="pro"><% if (rtable.Rows.Count>6) {%><%= rtable.Rows[6]["Subject"] %><%} %></td>
                    <td class="pro"><% if (rtable.Rows.Count>7) {%><%= rtable.Rows[7]["Subject"] %><%} %></td>
                  </tr>
                </table>
                <%} %>

            </td>
            <td width="23%"><a href="../../cn/buy/index.aspx"><img src="../../images/img01.jpg"  alt="" width="272" height="118" border="0"/></a></td>
          </tr>
          <tr>
            <td><a href="../../cn/club/index.aspx"><img src="../../images/img02.jpg"  alt="" width="272" height="118" border="0"/></a></td>
          </tr>
          <tr>
            <td><a href="../../cn/train/time.aspx"><img src="../../images/img03.jpg"  alt="" width="272" height="118" border="0"/></a></td>
          </tr>
  </table> <uc1:bottom runat="server" ID="bottom" />
</div>
<map name="Map" id="Map"><area shape="poly" coords="140,18,158,21,145,63,90,61,70,39,74,13,88,26,102,11" href="hy.aspx?Id=华盛顿州" /><area shape="poly" coords="137,72,143,81,128,139,31,107,63,50,74,58,95,71,112,73" href="hy.aspx?Id=俄勒冈州" />
  <area shape="poly" coords="73, 191, 128, 288, 108, 309, 43, 246, 36, 202, 28, 137, 71, 155, 75, 190" href="hy.aspx?Id=加利福尼亚州" />
<area shape="poly" coords="130,266,168,153,92,138,77,189,130,266" href="hy.aspx?Id=内华达州" />
<area shape="poly" coords="212,261,202,350,130,319,144,261,214,259" href="hy.aspx?Id=阿利桑那州" />
<area shape="poly" coords="171, 160, 151, 240, 214, 253, 232, 190" href="hy.aspx?Id=犹他州" />
<area shape="rect" coords="360, 280, 426, 318" href="hy.aspx?Id=俄克拉荷马州" /><area shape="rect" coords="339, 225, 415, 265" href="hy.aspx?Id=堪萨斯州" /><area shape="rect" coords="317, 170, 403, 209" href="hy.aspx?Id=内布拉斯加州" /><area shape="rect" coords="323, 116, 398, 156" href="hy.aspx?Id=南达科州" /><area shape="rect" coords="320, 55, 395, 105" href="hy.aspx?Id=北达科州" /><area shape="rect" coords="209, 51, 300, 103" href="hy.aspx?Id=蒙大拿州" /><area shape="rect" coords="149, 109, 203, 149" href="hy.aspx?Id=爱达荷州" /><area shape="rect" coords="458, 102, 514, 137" href="hy.aspx?Id=威斯康辛州" /><area shape="rect" coords="404,82,456,111" href="hy.aspx?Id=明尼苏达州" /><area shape="rect" coords="415, 171, 473, 200" href="hy.aspx?Id=爱荷华州" /><area shape="rect" coords="429, 227, 488, 276" href="hy.aspx?Id=密苏里州" />
<area shape="rect" coords="434, 290, 489, 336" href="hy.aspx?Id=阿肯色州" /><area shape="rect" coords="312, 348, 421, 410" href="hy.aspx?Id=得克萨斯州" /><area shape="rect" coords="521, 313, 577, 374" href="hy.aspx?Id=阿拉巴马州" /><area shape="rect" coords="583, 320, 627, 372" href="hy.aspx?Id=佐治亚州" /><area shape="rect" coords="626,297,695,334" href="hy.aspx?Id=南卡罗来纳州" /><area shape="rect" coords="615, 272, 721, 297" href="hy.aspx?Id=北卡罗来纳州" /><area shape="rect" coords="539,239,598,263" href="hy.aspx?Id=肯塔基州" /><area shape="rect" coords="524, 197, 565, 240" href="hy.aspx?Id=印第安纳州" /><area shape="rect" coords="476, 193, 524, 225" href="hy.aspx?Id=伊利诺斯州" /><area shape="rect" coords="538, 135, 588, 168" href="hy.aspx?Id=密歇根州" /><area shape="rect" coords="621, 170, 698, 197" href="hy.aspx?Id=宾夕法尼亚州" /><area shape="rect" coords="562, 190, 613, 223" href="hy.aspx?Id=俄亥俄州" /><area shape="rect" coords="612, 215, 675, 246" href="hy.aspx?Id=西弗吉尼亚州" /><area shape="rect" coords="602,249,675,268" href="hy.aspx?Id=弗吉尼亚州" /><area shape="rect" coords="514, 269, 601, 299" href="hy.aspx?Id=田纳西州" /><area shape="rect" coords="488, 319, 516, 378" href="hy.aspx?Id=密西西比州" /><area shape="rect" coords="435, 377, 506, 407" href="hy.aspx?Id=路易斯安那州" />
    <area shape="rect" coords="123, 388, 197, 436" href="hy.aspx?Id=阿拉斯加州" /><area shape="rect" coords="703,199,765,221" href="hy.aspx?Id=特拉华州" /><area shape="rect" coords="702, 227, 762, 246" href="hy.aspx?Id=马里兰州" /><area shape="rect" coords="700, 173, 784, 198" href="hy.aspx?Id=新泽西州" /><area shape="rect" coords="715,144,787,171" href="hy.aspx?Id=康涅狄格州" /><area shape="rect" coords="719, 125, 787, 145" href="hy.aspx?Id=马萨诸塞州" /><area shape="rect" coords="647, 115, 705, 159" href="hy.aspx?Id=纽约州" /><area shape="rect" coords="730, 53, 779, 92" href="hy.aspx?Id=缅因州" />
<area shape="rect" coords="722, 105, 742, 124" href="hy.aspx?Id=新罕布什尔州" /><area shape="rect" coords="700, 93, 719, 114" href="hy.aspx?Id=佛蒙特州" /><area shape="rect" coords="611,380,653,439" href="hy.aspx?Id=佛罗里达州" /><area shape="rect" coords="228, 137, 296, 183" href="hy.aspx?Id=怀俄明州" /><area shape="rect" coords="235, 205, 315, 255" href="hy.aspx?Id=科罗拉多州" /><area shape="rect" coords="219,274,294,339" href="hy.aspx?Id=新墨西哥州" /> 
</map>
</form>
</body>
</html>
