<%-- 
    Document   : suppr_fournisseur
    Created on : 8 oct. 2018, 13:12:42
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
         <jsp:useBean id="gestprod" class="gestion.Gestion_produit" />
         <%
            String id = request.getParameter("ref_prod");
            gestprod.delete(id);  
        %>
    </body>
</html>
