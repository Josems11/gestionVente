<%-- 
   Document   : insert_fournisseeur
   Created on : 08 october 2018, 08:09:58
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
            String nom = request.getParameter("nom_frs");
            String prenom = request.getParameter("prenom_frs");
            String cin = request.getParameter("cin");
            String tel = request.getParameter("tel_frs");
            String adresse = request.getParameter("adresse");

        %>;
        <%@ page import="java.sql.*" %>
        <jsp:useBean id="cli" scope="page" class="classe.Fournisseur"/>
        <jsp:setProperty  property="*" name="cli" />
        <jsp:useBean id="cl" scope="page"  class="gestion.Gestion_fournisseur" />
        <%
                cl.insert(cli);
        %>


    </body>
</html>
