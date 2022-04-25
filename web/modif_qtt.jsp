<%-- 
    Document   : modif_qtt
    Created on : 17 juil. 2018, 10:24:27
    Author     : _
--%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ajout qtt</title>
    </head>
    <body>

<jsp:useBean id="cr" class ="classe.Produit"/>
<jsp:setProperty name="cr" property ="*"/>
<jsp:useBean id="get" class ="gestion.Gestion_produit"/>
<%
	try {
            String ref = request.getParameter("code"); 
            get.modifier_quantite(ref, cr);
	}catch(Exception e){
            System.out.print(e);
	}
       
%>

