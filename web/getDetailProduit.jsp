<%-- 
    Document   : getref
    Created on : 1 nov. 2018, 17:04:54
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
       <jsp:useBean id="gest_pro" scope="page"  class="gestion.Gestion_produit" /> 
        <%
            ResultSet res = gest_pro.getAll();
            int i = 0;
        %>
        
        <% while (res.next()) {%>
            <option value="<%= res.getString("ref_prod")%>"><%= res.getString("num_prod")%>   <%= res.getString("marque")%></option>
        
         <% i++; %>
        <% }%>
    </body>
</html>
