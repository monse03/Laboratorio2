<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Index</title>
    <link href="../../Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>Lista de videos: </h1>
    <br />
    Existen <%:((System.Data.DataTable)ViewData["Video"]).Rows.Count %> videos
    <br />
    <table>
    <br />
    <tr>
    <th>IdVideo</th>
    <th>Titulo</th>
    <th>Num Reproducciones</th>
    <th>URL</th>
    </tr>
    <%
        foreach (System.Data.DataRow ren in ((System.Data.DataTable)ViewData["Video"]).Rows)
        {%>
        <tr>
        <td><%:ren["idVideo"].ToString() %></td>
        
        <td><%:ren["titulo"].ToString() %></td>
      
        <td><%:ren["repro"].ToString() %></td>
       
        <td><%:ren["url"].ToString() %></td>
        
        </tr>
            
        <%}
     %>
      </table>
</body>
</html>
