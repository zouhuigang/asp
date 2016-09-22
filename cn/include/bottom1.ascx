<%@ Control Language="C#" AutoEventWireup="true"   Inherits="Aircraft.Web.cn.include.bottom1" %>
<table width="1160" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="77%" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="65%" height="30" class="titilee"><img src="../../images/img04.jpg" width="4" height="24"  alt=""/> 最新上市</td>
        <td width="35%" align="right"><a href="../buy/index.aspx">了解更多&gt;&gt;</a></td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#F8B219" height="2"></td>
      </tr>
    </table>
        <br />
        <table width="98%" border="0" cellspacing="0" cellpadding="0" style="font-size:10px">
            <% if (Table !=null){ %>
             
          <tr>
            <td width="215">
                <% if (Table.Rows.Count >=1){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[0]["Id"] %>"><img src="../../<%=Table.Rows[0]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %>
            </td>
            <td width="215">
                <% if (Table.Rows.Count >=2){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[1]["Id"] %>"><img src="../../<%=Table.Rows[1]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %>
            </td>
            <td width="215"> <% if (Table.Rows.Count >=3){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[2]["Id"] %>"><img src="../../<%=Table.Rows[2]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >=4){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[3]["Id"] %>"><img src="../../<%=Table.Rows[3]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %></td>
          </tr>
          <tr>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=1){ %><%=Table.Rows[0]["Subject"] %><%} %></td>
            <td height="35"  class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=2){ %><%=Table.Rows[1]["Subject"] %><%} %></td>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=3){ %><%=Table.Rows[2]["Subject"] %><%} %></td>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=4){ %><%=Table.Rows[3]["Subject"] %><%} %></td>
          </tr> 
            <% if (Table.Rows.Count >5){  %>
          <tr>
            <td> <% if (Table.Rows.Count >=5){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[4]["Id"] %>"><img src="../../<%=Table.Rows[4]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >= 6)
                    { %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[5]["Id"] %>"><img src="../../<%=Table.Rows[5]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >= 7)
                    { %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[6]["Id"] %>"><img src="../../<%=Table.Rows[6]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >= 8)
                    { %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[7]["Id"] %>"><img src="../../<%=Table.Rows[7]["Image"] %>"  alt="" width="200" height="128" border="0"/></a>
                <%} %></td>
          </tr>
          <tr>
            <td class="pro" height="35"  style="padding-left:10px;"><% if (Table.Rows.Count >= 5)
                                                                       { %><%=Table.Rows[4]["Subject"] %><%} %></td>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >= 6)
                                                          { %><%=Table.Rows[5]["Subject"] %><%} %></td>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >= 7)
                                                          { %><%=Table.Rows[6]["Subject"] %><%} %></td>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >= 8)
                                                          { %><%=Table.Rows[7]["Subject"] %><%} %></td>
          </tr>
            <%} }%>
      </table></td>
    <td width="348" style="background:url(../../images/bottom_line.gif) no-repeat left ; line-height:30px; padding-left:50px; font-size:14px; ">

        <table>
            <tr>
                <td><img src="../../images/sina.jpg" width="131" height="130"  alt=""/></td>
                <td>
                    <img src="../../images/weibo.jpg" width="130" height="130"  alt=""/>
                </td>
            </tr>
        </table> 
        电子邮件：info@bhwnet.com<br /> 
        美国联系电话：1.626.222.3622<br /> 
    </td>
  </tr>
  </table>