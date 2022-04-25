<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                
<%@ page import="java.sql.*" %>

<% String num=request.getParameter("code"); %>
        <jsp:useBean id="clie" scope="page" class="classe.Commande"/>
        <jsp:setProperty name="clie" property="*" />
        <jsp:useBean id="cl" scope="page"  class="gestion.Gestion_commande" />
<%
	if(num==""){
		out.print("Insertion impossible, numero vide");
	}else{	
		cl.update(num, clie);
	} 
			
%>
    </body>
</html

