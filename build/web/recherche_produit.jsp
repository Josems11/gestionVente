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
    <jsp:useBean id="gest" scope="page"  class="gestion.Gestion_produit" />
        <%
            ResultSet res;
            int i = 0;
            String re = request.getParameter("recherche");
                if (re.equals("")){
                    res = gest.getAll();
            
                }else{
                    res = gest.getRecherche(re);
            }
        %>              
        <table class="table table-bordered table-striped" id="tab_prod">
            <div hidden> <input class="ref_prod"  id="ref_prod" name="ref_prod"> </div>
                <thead>
                   <tr>
                    <th>Numéro</th>
                    <th>Référence</th>
                    <th>Désignation</th>
                    <th>Marque</th>
                    <th>Forme</th>
                    <th>Epaisseur</th>
                    <th>Prix</th>
                    <th>Quantité</th>
                    <th>Montant</th>
                    <th style="text-align: center;">Actions</th>
                </tr>
            </thead>
            <tbody>
                 <% while (res.next()) {%>
                    <tr>
                         <td><%= res.getString("ref_prod")%><input type="hidden" id="ref_prod<%=i%>" value="<%=res.getString("ref_prod")%>"/></td>
                         <td><%= res.getString("num_prod")%><input type="hidden" id="num_prod<%=i%>" value="<%=res.getString("num_prod")%>"/></td>
                         <td><%= res.getString("design_prod")%><input type="hidden" id="design_prod<%=i%>" value="<%=res.getString("design_prod")%>"/></td>
                         <td><%= res.getString("marque")%><input type="hidden" id="marque<%=i%>" value="<%=res.getString("marque")%>"/></td>
                         <td><%= res.getString("forme")%><input type="hidden" id="forme<%=i%>" value="<%=res.getString("forme")%>"/></td>
                         <td><%= res.getString("epais")%><input type="hidden" id="epais<%=i%>" value="<%=res.getString("epais")%>"/></td>
                         <td><%= res.getString("prix")%><input type="hidden" id="prix<%=i%>" value="<%=res.getString("prix")%>"/></td>
                         <td><%= res.getString("quantite")%><input type="hidden" id="quantite<%=i%>" value="<%=res.getString("quantite")%>"/></td>
                         <td><%= res.getString("montant")%><input type="hidden" id="montant<%=i%>" value="<%=res.getString("montant")%>"/></td>
                         <td align="center">
                            <label class="form-check-label">
                                <input class="form-check-input" type="checkbox" id="checkbox" name="checkbox<%=i%>" onclick="getVal(<%=i%>)" value="<%=res.getString("ref_prod")%>">
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