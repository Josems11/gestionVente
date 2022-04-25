<%-- 
    Document   : insert_msg
    Created on : 28 oct. 2018, 10:10:33
    Author     : ASUS X75VB
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="gestmsg" class="gestion.Gestion_msg"/>

            <%
               String num_exp=request.getParameter("num_exp");
               String num=request.getParameter("numero");
               String msg=request.getParameter("message");

                gestmsg.insert(num_exp,num, msg);

            %>

    </body>
</html>
