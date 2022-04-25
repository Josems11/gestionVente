<%-- 
    Document   : getDetailClient
    Created on : 1 nov. 2018, 17:25:02
    Author     : ASUS X75VB
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="gest_cli" scope="page"  class="gestion.Gestion_client" /> 
        <%
            ResultSet res = gest_cli.getAll();
            int i = 0;
        %>
        
        <% while (res.next()) {%>
            <option value="<%= res.getString("num_cli")%>"><%= res.getString("nom_cli")%>   <%= res.getString("prenom_cli")%></option>
        
         <% i++; %>
        <% }%>
    </body>
</html>
