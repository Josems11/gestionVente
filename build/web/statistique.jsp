<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*" %>
<%@page import="org.jfree.chart.*" %>
<%@page import="org.jfree.chart.plot.*" %>
<%@page import="org.jfree.data.category.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>statistique du commande</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/bd_vitre","root","");
            Statement stm=con.createStatement();
            String sql="SELECT date,sum(montant)As total FROM commande GROUP BY date";
            ResultSet rs=stm.executeQuery(sql);
            DefaultCategoryDataset data=new DefaultCategoryDataset();
            while(rs.next()){
                data.setValue(rs.getInt(2),"", rs.getString(1));
            }
            JFreeChart graphe=ChartFactory.createBarChart("GRAPHE POUR LE MONTANT TOTAL DU COMMANDE JOURNALIER","Date du commande ","Montant total du commande",data,PlotOrientation.VERTICAL,true,true,true);
            response.setContentType("image/JPEG");
            OutputStream sortie=response.getOutputStream();
            ChartUtilities.writeChartAsJPEG(sortie,graphe,1800,900);
        %>
    </body>
</html>   
