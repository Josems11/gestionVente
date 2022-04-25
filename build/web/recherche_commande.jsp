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
    <jsp:useBean id="gest" scope="page"  class="gestion.Gestion_commande" />    
        <%
            ResultSet res;
            int i = 0;
            String datedeb = request.getParameter("date1");
            String datefin = request.getParameter("date2");
        
                 if (datedeb.equals("") || datefin.equals("") ){
                    res = gest.getAll();
                 }else{
                     res = gest.Recherche2Date(datedeb, datefin);
                 }
        %>
     <table class="table table-bordered table-striped" id="tab_comm">
        <thead>
            <tr>
                <th>Numéro commande</th>
                <th>Numéro client</th>
                <th>Numéro produit</th>
                <th>Date commande</th>
                <th>Quantité</th>
                <th>Prix</th>
                <th>Montant</th>
                <th style="text-align: center;">Actions</th>
            </tr>
        </thead>
        <tbody>
             <% while (res.next()) {%>
                <tr>
                    <td><%= res.getString("ref_com")%><input type="hidden" id="ref_com<%=i%>" value="<%=res.getString("ref_com")%>"/></td>
                     <td><%= res.getString("num_cli")%><input type="hidden" id="num_cli<%=i%>" value="<%=res.getString("num_cli")%>"/></td>
                     <td><%= res.getString("ref_prod")%><input type="hidden" id="ref_prod<%=i%>" value="<%=res.getString("ref_prod")%>"/></td>
                     <td><%= res.getString("date")%><input type="hidden" id="date<%=i%>" value="<%=res.getString("date")%>"/></td>
                     <td><%= res.getString("quantite")%><input type="hidden" id="quantite<%=i%>" value="<%=res.getString("quantite")%>"/></td>
                     <td><%= res.getString("prix")%><input type="hidden" id="prix<%=i%>" value="<%=res.getString("prix")%>"/></td>
                     <td><%= res.getString("montant")%><input type="hidden" id="montant<%=i%>" value="<%=res.getString("montant")%>"/></td>
                     <td align="center">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" id="checkbox" name="checkbox<%=i%>" onclick="getVal(<%=i%>)">
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