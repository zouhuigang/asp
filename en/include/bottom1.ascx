<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Aircraft.Web.en.include.bottom1" %>
<table width="1160" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td width="77%" rowspan="3" valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="65%" height="30" class="titilee"><img src="../../images/img04.jpg" width="4" height="24"  alt=""/> Featured Aircrafts</td>
        <td width="35%" align="right"><a href="../buy/index.aspx">More&gt;&gt;</a></td>
      </tr>
      <tr>
        <td colspan="2" bgcolor="#F8B219" height="2"></td>
      </tr>
    </table>
        <br />
        <table width="98%" border="0" cellspacing="0" cellpadding="0">
            <% if (Table !=null){ %>
             
          <tr>
            <td width="215">
                <% if (Table.Rows.Count >=1){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[0]["Id"] %>"><img src="../../<%=Table.Rows[0]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
                <%} %>
            </td>
            <td width="215">
                <% if (Table.Rows.Count >=2){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[1]["Id"] %>"><img src="../../<%=Table.Rows[1]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
                <%} %>
            </td>
            <td width="215"> <% if (Table.Rows.Count >=3){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[2]["Id"] %>"><img src="../../<%=Table.Rows[2]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >=4){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[3]["Id"] %>"><img src="../../<%=Table.Rows[3]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
                <%} %></td>
          </tr>
          <tr>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=1){ %><%=Table.Rows[0]["Subject"] %><%} %></td>
            <td height="35"  class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=2){ %><%=Table.Rows[1]["Subject"] %><%} %></td>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=3){ %><%=Table.Rows[2]["Subject"] %><%} %></td>
            <td class="pro" style="padding-left:10px;"><% if (Table.Rows.Count >=4){ %><%=Table.Rows[3]["Subject"] %><%} %></td>
          </tr> 
          <tr>
            <td> <% if (Table.Rows.Count >=5){ %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[4]["Id"] %>"><img src="../../<%=Table.Rows[4]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >= 6)
                    { %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[5]["Id"] %>"><img src="../../<%=Table.Rows[5]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >= 7)
                    { %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[6]["Id"] %>"><img src="../../<%=Table.Rows[6]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
                <%} %></td>
            <td> <% if (Table.Rows.Count >= 8)
                    { %>
                <a href="../buy/content.aspx?Id=<%=Table.Rows[7]["Id"] %>"><img src="../../<%=Table.Rows[7]["Image"] %>"  alt="" width="202" height="128" border="0"/></a>
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
            <%} %>
      </table></td>
    <td width="23%"><a href="../../en/club/index.asp"><img src="../../images/img09.jpg"  alt="" width="274" height="129" border="0"/></a><a href="../../en/buy/index.asp"></a></td>
  </tr>
  <tr>
    <td><a href="../../en/club/index.asp"><img src="../../images/img09.jpg"  alt="" width="274" height="129" border="0"/></a></td>
  </tr>
  <tr>
    <td><a href="../../en/club/index.asp"><img src="../../images/img09.jpg"  alt="" width="274" height="129" border="0"/></a><a href="../gat/MyGAT.asp"></a></td>
  </tr>
</table>