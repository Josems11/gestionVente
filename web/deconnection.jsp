<%-- 
    Document   : deconnection
    Created on : 15 oct. 2018, 16:59:12
    Author     : ASUS X75VB
--%>
<%@page language="java" %>
    <%
        session.setAttribute("nom", null);
        session.setAttribute("prenom", null);
        session.setAttribute("tel", null);
        session.setAttribute("adresse", null);
        session.invalidate();
        response.sendRedirect("login.jsp");
    %>
