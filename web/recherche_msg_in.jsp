<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="assets/alert/sweetalert.css" />
    <link rel="stylesheet" href="assets/css/ready.css">
  <link rel="stylesheet" href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.addons.css">
  <link rel="stylesheet" href="assets/vendors/iconfonts/font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="shortcut icon" href="assets/images/favicon.png" />
</head>

<body>
    <jsp:useBean id="gest" scope="page"  class="gestion.Gestion_msg" />
        <%
            ResultSet res;
            int i = 0;
            String re = request.getParameter("recherche");
                if (re.equals("")){
                    res = gest.getAllin();
            
                }else{
                    res = gest.getRecherchein(re);
            }
        %>              
    <table class="table table-bordered table-striped" id="tab_msg">
        <div hidden> <input class="receiver"  id="receiver" name="receiver"> </div>
        <thead>
            <tr>
                <th><b>Expéditeur</b></th>
                <th><b>Corps du message</b></th>
                <th><b>Temps de recevoir</b></th>
                <th style="text-align: center;"><b>Actions</b></th>
            </tr>
        </thead>
        <tbody>
             <% while (res.next()) {%>
                <tr>
                    <td hidden><%= res.getString("id")%><input type="hidden" id="id<%=i%>" value="<%=res.getString("id")%>"/></td>
                     <td><%= res.getString("sender")%><input type="hidden" id="sender<%=i%>" value="<%=res.getString("sender")%>"/></td>
                     <td><%= res.getString("msg")%><input type="hidden" id="msg<%=i%>" value="<%=res.getString("msg")%>"/></td>
                     <td><%= res.getString("receivedtime")%><input type="hidden" id="receivedtime<%=i%>" value="<%=res.getString("receivedtime")%>"/></td>
                     <td align="center">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="checkbox" name="checkbox<%=i%>" onclick="getVal(<%=i%>)" value="<%= res.getString("id")%>">
                            <span class="form-check-sign"></span>
                        </label>
                     </td>
                </tr>

             <% i++; %>
             <% }%>
        </tbody>
    </table>
</body>
  <script src="assets/alert/sweetalert.min.js"></script>
  <script src="assets/alert/sweetalert.init.js"></script>
  <script src="assets/js/jquery-3.1.1.min.js"></script>
  <script src="assets/vendors/js/vendor.bundle.base.js"></script>
  <script src="assets/js/off-canvas.js"></script>
  <script src="assets/js/misc.js"></script>
  <script src="assets/js/dashboard.js"></script>

</html>