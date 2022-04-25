<%-- 
   Document   : insert_commande
   Created on : 09 october 2018, 13:09:08
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
            String num = request.getParameter("num_cli");
            String ref = request.getParameter("ref_prod");
            String dat = request.getParameter("date");
            String qtt = request.getParameter("quantite");
            int pri = request.getIntHeader("prix");
            int mont = request.getIntHeader("montant");

        %>;
        <%@ page import="java.sql.*" %>
        <jsp:useBean id="cli" scope="page" class="classe.Commande"/>
        <jsp:useBean id="prod" scope="page" class="classe.Produit"/>
        <jsp:setProperty  property="*" name="cli" />
        <jsp:useBean id="cl" scope="page"  class="gestion.Gestion_commande" />
        <%
             int kantie=Integer.parseInt(qtt);
                cl.insert(cli);
                cl.update_qtt(ref, kantie, prod);
         %>;
    </body>
</html>
