<%-- 
    Document   : suppr_client
    Created on : 7 oct. 2018, 02:12:27
    Author     : ASUS X75VB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:useBean id="gestcom" class="gestion.Gestion_commande" />
         <%
            String id = request.getParameter("ref_com");
            gestcom.delete(id);
        %>
    </body>
</html>
