<%-- 
    Document   : impression_fournisseur
    Created on : 03 août. 2018, 12:31:15
    Author     : K-LynG
--%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Impression liste fournisseur</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            Connection connex = null;
            try {
                Class.forName("org.gjt.mm.mysql.Driver");
                System.out.println("pilote reussi");
                connex = DriverManager.getConnection("jdbc:mysql://localhost:3306/bd_vitre", "root", "");
                System.out.println("connexion reussi");
                
            } catch (Exception e) {
                e.printStackTrace();
            }
            File target = new File(application.getRealPath("print/Liste_commande.jasper"));
            Map param = new HashMap();
            System.out.println("target reussi");
            byte[] bytes = JasperRunManager.runReportToPdf(target.getPath(), param, connex);
            System.out.println("affichage reussi");
            response.setContentType("");
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
        %>
    </body>
</html>