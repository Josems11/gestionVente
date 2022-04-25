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
    <jsp:useBean id="gest" scope="page"  class="gestion.Gestion_client" />
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
    <table class="table table-bordered table-striped" id="tab_cli">
        <div hidden> <input class="num_cli"  id="num_cli" name="num_cli"> </div>
            <thead>
                <tr>
                    <th>Numéro</th>
                    <th>Nom</th>
                    <th>Prénom(s)</th>
                    <th>CIN</th>
                    <th>Téléphone</th>
                    <th>Adresse</th>
                    <th style="text-align: center;">Actions</th>
                </tr>
            </thead>
            <tbody>
                 <% while (res.next()) {%>
                    <tr>
                         <td><%= res.getString("num_cli")%><input type="hidden" id="num_cli<%=i%>" value="<%=res.getString("num_cli")%>"/></td>
                         <td><%= res.getString("nom_cli")%><input type="hidden" id="nom_cli<%=i%>" value="<%=res.getString("nom_cli")%>"/></td>
                         <td><%= res.getString("prenom_cli")%><input type="hidden" id="prenom_cli<%=i%>" value="<%=res.getString("prenom_cli")%>"/></td>
                         <td><%= res.getString("cin_cli")%><input type="hidden" id="cin_cli<%=i%>" value="<%=res.getString("cin_cli")%>"/></td>
                         <td><%= res.getString("tel_cli")%><input type="hidden" id="tel_cli<%=i%>" value="<%=res.getString("tel_cli")%>"/></td>
                         <td><%= res.getString("adresse_cli")%><input type="hidden" id="adresse_cli<%=i%>" value="<%=res.getString("adresse_cli")%>"/></td>
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