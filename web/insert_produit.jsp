<%-- 
   Document   : insert_produit
   Created on : 08 october 2018, 15:25:17
   Author     : K-LynG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            String num = request.getParameter("num_prod");
            String design = request.getParameter("design_prod");
            String mark = request.getParameter("marque");
            String form = request.getParameter("forme");
            String epai = request.getParameter("epais");
            int pri = request.getIntHeader("prix");
            int qtt = request.getIntHeader("quantite");
            int mont = request.getIntHeader("montant");

        %>;
        <%@ page import="java.sql.*" %>
        <jsp:useBean id="cli" scope="page" class="classe.Produit"/>
        <jsp:setProperty  property="*" name="cli" />
        <jsp:useBean id="cl" scope="page"  class="gestion.Gestion_produit" />
        <%
                cl.insert(cli);
        %>


    </body>
</html>
