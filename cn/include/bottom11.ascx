<%@ Control Language="C#" AutoEventWireup="true"   Inherits="Aircraft.Web.cn.include.bottom1" %>
<style>  .prozi{ height:35px; background:#CCCCCC; margin:2px 0px 5px 0px; line-height:35px; padding-left:5px; font-size:14px;}


 .col {
    width: 202px; margin-right:13px; float: left;
  }
   .col1 {
    width: 202px;  float: left;
  }
  .container {
    width: 850px;
  }
</style>
<table width="1160" border="0" align="center" cellpadding="5" cellspacing="0">
<tr>
<td width="77%" rowspan="3" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="65%" height="30" class="titilee"><img src="../../images/img04.jpg" width="4" height="24"  alt=""/> 最新上市</td>
<td width="35%" align="right"><a href="../buy/index.aspx">了解更多&gt;&gt;</a></td>
</tr>
<tr>
<td colspan="2" bgcolor="#F8B219" height="2"></td>
</tr>
</table>
<br />
<table width="98%" border="0" cellspacing="0" cellpadding="0">
<% if (Table !=null){ %>
<tr>
<div class="container">
<div class="col"><% if (Table.Rows.Count >=1){ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[0]["Id"] %>"><img src="../../<%=Table.Rows[0]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi"><% if (Table.Rows.Count >=1){ %><%=Table.Rows[0]["Subject"] %><%} %></div>
</div>
<div class="col"><% if (Table.Rows.Count >=2){ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[1]["Id"] %>"><img src="../../<%=Table.Rows[1]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi"><% if (Table.Rows.Count >=2){ %><%=Table.Rows[1]["Subject"] %><%} %></div>
</div>
<div class="col"><% if (Table.Rows.Count >=3){ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[2]["Id"] %>"><img src="../../<%=Table.Rows[2]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi"><% if (Table.Rows.Count >=3){ %><%=Table.Rows[2]["Subject"] %><%} %></div>
</div>
<div class="col1 "> <% if (Table.Rows.Count >=4){ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[3]["Id"] %>"><img src="../../<%=Table.Rows[3]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi"><% if (Table.Rows.Count >=4){ %><%=Table.Rows[3]["Subject"] %><%} %></div>
</div>
<div class="col"> <% if (Table.Rows.Count >=5){ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[4]["Id"] %>"><img src="../../<%=Table.Rows[4]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi"><% if (Table.Rows.Count >=5){ %><%=Table.Rows[4]["Subject"] %><%} %></div>
</div>
<div class="col"><% if (Table.Rows.Count >=6){ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[5]["Id"] %>"><img src="../../<%=Table.Rows[5]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi">	<% if (Table.Rows.Count >=6){ %><%=Table.Rows[5]["Subject"] %><%} %></div>
</div>
<div class="col"> <% if (Table.Rows.Count >=7){ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[6]["Id"] %>"><img src="../../<%=Table.Rows[6]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi"><% if (Table.Rows.Count >=7){ %><%=Table.Rows[6]["Subject"] %><%} %></div>
</div>
<div class="col1 "> <% if (Table.Rows.Count >= 8)
{ %>
<a href="../buy/content.aspx?Id=<%=Table.Rows[7]["Id"] %>"><img src="../../<%=Table.Rows[7]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
<%} %>
<div class="prozi"> <% if (Table.Rows.Count >=8){ %><%=Table.Rows[7]["Subject"] %><%} %></div>
</div>
</div>
</tr>
<%} %>
</table></td>
<td width="23%"><a href="../../cn/buy/index.aspx"><img src="../../images/img01.jpg"  alt="" width="272" height="118" border="0"/></a></td>
</tr>
<tr>
<td><a href="../../cn/club/index.aspx"><img src="../../images/img02.jpg"  alt="" width="272" height="118" border="0"/></a></td>
</tr>
<tr>
<td><a href="../../cn/train/time.aspx"><img src="../../images/img03.jpg"  alt="" width="272" height="118" border="0"/></a></td>
</tr>
</table>