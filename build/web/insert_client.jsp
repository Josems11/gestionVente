<%-- 
   Document   : insert_client
   Created on : 07 october 2018, 12:01:08
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
            String nom = request.getParameter("nom_cli");
            String prenom = request.getParameter("prenom_cli");
            String cin = request.getParameter("cin_cli");
            String adresse = request.getParameter("adresse_cli");
            String tel = request.getParameter("tel_cli");

        %>
        <%@ page import="java.sql.*" %>
        <jsp:useBean id="cli" scope="page" class="classe.Client"/>
        <jsp:setProperty  property="*" name="cli" />
        <jsp:useBean id="cl" scope="page"  class="gestion.Gestion_client" />
        <%
                cl.insert(cli);
        %>


    </body>
</html>
