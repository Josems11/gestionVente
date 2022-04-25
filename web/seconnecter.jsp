<%-- 
    Document   : seconnecter
    Created on : 9 oct. 2018, 20:49:22
    Author     : ASUS X75VB
--%>
<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>connection</title>           
    </head>
    <body>
        <jsp:useBean id="clutili" scope="page" class="classe.Utilisateur"/>
        <jsp:useBean id="gstutil" scope="page" class="gestion.Gestion_utilisateur"/>
        <%@page import="java.sql.ResultSet" %>
        <%
            String usrnm = request.getParameter("utilisateur");
            String pwd = request.getParameter("motpasse");
            String nam = request.getParameter("nom");
            String pren = request.getParameter("prenom");
            String tl = request.getParameter("tel");
            String adrs = request.getParameter("adresse");
            
            ResultSet rs =gstutil.login(usrnm, pwd);
         
         if(rs.next()){
            session.setAttribute("nom", nam);
            session.setAttribute("prenom", pren);
            session.setAttribute("tel", tl);
            session.setAttribute("adresse", adrs);
            response.sendRedirect("index.jsp");
         }else 
            response.sendRedirect("erreur_login.jsp");
         %>                                                 
    </body>
</html>