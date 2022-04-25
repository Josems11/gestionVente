<%-- 
   Document   : verifier_qtt
   Created on : 10 october 2018, 15:13:08
   Author     : K-LynG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
           String ref = request.getParameter("ref_prod");
        %>
        <%@ page import="java.sql.*" %>
        <jsp:useBean id="cl" scope="page"  class="gestion.Gestion_commande" />
        <%
            int refpro=Integer.parseInt(ref);
            int conte = cl.getCountstock(refpro);
            
         %>
         <input  type="hidden" value="<%=conte%>" id="compt_qtt">
    </body>
</html>
