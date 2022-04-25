<%-- 
   Document   : insert_utilisateur
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
            String nm = request.getParameter("nom");
            String prenm = request.getParameter("prenom");
            String utili = request.getParameter("utilisateur");
            String mtpp = request.getParameter("motpasse");
            String tel = request.getParameter("tel");
            String adr = request.getParameter("adresse");

        %>
        <%@ page import="java.sql.*" %>
        <jsp:useBean id="cli" scope="page" class="classe.Utilisateur"/>
        <jsp:setProperty  property="*" name="cli" />
        <jsp:useBean id="cl" scope="page"  class="gestion.Gestion_utilisateur" />
        <%
                cl.insert(cli);
        %>


    </body>
</html>
