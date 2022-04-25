<%@page import="gestion.Gestion_msg"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%
    HttpSession sess = request.getSession();
        if(sess.getAttribute("nom") == null){
            response.sendRedirect("login.jsp");
        }
 %>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Gestion vente vitre</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="assets/alert/sweetalert.css" />
  <link rel="stylesheet" href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.addons.css">
  <link rel="stylesheet" href="assets/vendors/iconfonts/font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="shortcut icon" href="assets/images/favicon.png" />
  <script src="assets/js/function_date.js"></script> 
  <script src="assets/js/jquery-3.1.1.min.js"></script>       
  <script src="assets/js/jquery.jclock-1.2.0.js" type="text/javascript"></script> 
    <script type="text/javascript">
        $(function($) {
            $('.jclock').jclock();
        });
          function deconnecter() {
            if (
                swal({
                    title: "",
                    text: "Voulez-vous vraiment déconnecter ?",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "green",
                    confirmButtonText: "Oui",
                    cancelButtonText: "Non",
                    closeOnConfirm: false,
                    closeOnCancel: false
                    },
                function(isConfirm){
                    if (isConfirm) {
                         document.location = "deconnection.jsp";
                    }else {
                        swal("", "Déconnexion annuler", "error");
                    }
                })
            );  
        }
  </script>
</head>

<body>
    <jsp:useBean id="geprod" class ="gestion.Gestion_produit"/>
    <jsp:useBean id="gecom" class ="gestion.Gestion_commande"/>
    <jsp:useBean id="gest" scope="page"  class="gestion.Gestion_msg" />
            
        <%
            ResultSet resul = gest.getAllin();
            int i = 0;
        %>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
        <a class="navbar-brand brand-logo" href="index.jsp">
          <img src="assets/images/logo.png" alt="logo" />
        </a>
        <a class="navbar-brand brand-logo-mini" href="index.jsp">
          <img src="assets/images/logo-mini.svg" alt="logo" />
        </a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center">
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <i class="mdi  mdi-email"></i>
                <%
                    Gestion_msg mess = new Gestion_msg(); 
                %>
              <span class="count"><%=mess.getCount()%></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
              <div class="dropdown-item">
                <p class="mb-0 font-weight-normal float-left">Vous avez réçu <%=mess.getCount()%> messages
                </p>
                <a href="liste_message.jsp" class="badge badge-primary badge-pill float-right" style="color:white">Voir tous</a>
              </div>
                
            <% while (resul.next()) {%>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="assets/images/faces/mess_in.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-medium text-dark">Du : <b><%= resul.getString("sender")%></b></h6>
                  <p class="font-weight-light small-text" style="width:180px">
                    <%= resul.getString("msg")%>
                  </p>
                  <h6 class="preview-subject ellipsis font-weight-medium text-dark">
                      <span class="float-right font-weight-light small-text" style="color: #1273dd"><%= resul.getString("senttime")%></span>
                  </h6>
                </div>
              </a>
            <% i++; %>
           <% }%>
              
            </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-message-reply-text"></i>
              <span class="count"><%=mess.getCountMessageOut()%></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <div class="dropdown-item">
                <p class="mb-0 font-weight-normal float-left">vous avez envoyer <%=mess.getCountMessageOut()%> messages
                </p>
                <a href="liste_message_envoyer.jsp" class="badge badge-pill badge-primary float-right">Voir tous</a>
              </div>
                 <%
            ResultSet result = gest.getAllout();
            int j = 0;
        %>
             <% while (result.next()) {%>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <img src="assets/images/faces/mess_out.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium text-dark">Au : <b><%= result.getString("receiver")%></b></h6>
                  <p class="font-weight-light small-text" style="width:180px">
                    <%= result.getString("msg")%>
                  </p>
                  <h6 class="preview-subject ellipsis font-weight-medium text-dark">
                      <span class="float-right font-weight-light small-text" style="color: #1273dd"><%= result.getString("senttime")%></span>
                  </h6>
                </div>
              </a>
            <% j++; %>
           <% }%>
            </div>
          </li>
          <li class="nav-item dropdown d-none d-xl-inline-block">
            <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
               <img class="img-xs rounded-circle" src="assets/images/faces/face1.jpg" alt="Profile image">&nbsp;
              <span class="profile-text"><%=session.getAttribute("nom")%> &nbsp; <%=session.getAttribute("prenom")%></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
                <button class="dropdown-item mt-2" data-toggle="modal" data-target="#profilutilisateur"><i class="fa fa-info-circle"></i> Profil</button>
              <button class="dropdown-item mt-2" onclick="deconnecter()"><i class="fa fa-power-off"></i> Déconnexion</button>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <div class="nav-link">
              <div class="user-wrapper">
                <div class="profile-image">
                  <img src="assets/images/faces/face1.jpg" alt="profile image">
                </div>
                <div class="text-wrapper">
                  <p class="profile-name"><%=session.getAttribute("nom")%> &nbsp; <%=session.getAttribute("prenom")%></p>
                  <div>
                    <small class="designation text-muted">Connecté</small>
                    <span class="status-indicator online"></span>
                  </div>
                </div>
              </div>
                <span class="jclock"></span>
              <p style="color: #337ab7" id="dateAnio"></p>
               <script type="text/javascript">
                    window.onload = date_heure('heure','dateAnio');
                </script>
              <button class="btn btn-primary btn-block"><i class="fa fa-navicon"></i>Page de navigation</button>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">
              <i class="menu-icon mdi mdi-home-variant"></i>
              <span class="menu-title">Acceuil</span>
            </a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="menu-icon mdi mdi-account"></i>
              <span class="menu-title">Client</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="client.jsp"><i class="fa fa-plus-circle"></i>&nbsp; Nouveau client</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="liste_cli.jsp"><i class="fa fa-list"></i>&nbsp; Voir liste</a>
                </li>
              </ul>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth1" aria-expanded="false" aria-controls="auth">
              <i class="menu-icon mdi mdi-content-copy"></i>
              <span class="menu-title">Produit</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth1">
              <ul class="nav flex-column sub-menu">
                 <li class="nav-item">
                  <a class="nav-link" href="produit.jsp"><i class="fa fa-plus-circle"></i>&nbsp;  Nouveau produit</a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="nouveau_qtt.jsp"><i class="fa fa-sign-in"></i>&nbsp; Nouveau quantité</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="liste_prod.jsp"><i class="fa fa-list"></i>&nbsp; Voir liste</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="consultation_stock.jsp"><i class="fa fa-hourglass-1"></i>&nbsp; Consultation tock</a>
                </li>
              </ul>
            </div>
          </li>

           <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth2" aria-expanded="false" aria-controls="auth">
              <i class="menu-icon mdi mdi-cart-outline"></i>
              <span class="menu-title">Commande</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth2">
              <ul class="nav flex-column sub-menu">
               <li class="nav-item">
                  <a class="nav-link" href="commande.jsp"><i class="fa fa-plus-circle"></i>&nbsp;  Nouveau commande</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="liste_com.jsp"><i class="fa fa-list"></i>&nbsp; Voir liste</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="facture.jsp"><i class="fa fa-file-pdf-o"></i>&nbsp; Bon de commande</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="statistique.jsp"><i class="fa fa-pie-chart"></i>&nbsp; Statistique du commande</a>
                </li>
              </ul>
            </div>
          </li>
           <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth3" aria-expanded="false" aria-controls="auth">
              <i class="menu-icon mdi mdi-artist"></i>
              <span class="menu-title">Fournisseur</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth3">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="fournisseur.jsp"><i class="fa fa-plus-circle"></i>&nbsp;  Nouveau fournisseur</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="liste_frs.jsp"><i class="fa fa-list"></i>&nbsp; Voir liste</a>
                </li>
              </ul>
            </div>
          </li>
           <li class="nav-item">
            <a class="nav-link" href="Message.jsp">
              <i class="menu-icon mdi  mdi-email-secure"></i>
              <span class="menu-title">Nouveau Message</span>
            </a>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row purchace-popup">
            <div class="col-12">
              <span class="d-flex alifn-items-center">
                <h3>Consultation du stock</h3>
              </span>
            </div>
          </div>
            
          
          <div class="row">
                      <div class="col-12 stretch-card">
                  <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" method="post">
                        <div class="form-group row">
                          <h3>Stock restant</h3>
                          </div>
                        <div class="form-group row">
                            
                          <label class="col-sm-1 col-form-label"></label>
                          <label class="col-sm-3 col-form-label">La quantite du produit disponible est égal à</label>
                          <label class="form-control col-sm-2" style="color: #337ab7; text-align: center; font-size: 20px"><%=geprod.getSomme_qtt()%></label>
                          <label class="col-sm-2 col-form-label">dont la somme compte </label>
                          <label class="form-control col-sm-2" style="color: #337ab7; text-align: center; font-size: 20px"><%=geprod.getSomme_montant()%></label>
                          <label class="col-sm-2 col-form-label">Ariary</label>
                        </div>
                        <div class="form-group row">
                          <h3>Stock déjà vendu</h3>
                          </div>
                            
                            <div class="form-group row">
                            
                          <label class="col-sm-1 col-form-label"></label>
                          <label class="col-sm-3 col-form-label">La quantite du produit vendu est égal à</label>
                          <label class="form-control col-sm-2" style="color: #337ab7; text-align: center; font-size: 20px"><%=gecom.getSomme_qtt()%></label>
                          <label class="col-sm-2 col-form-label">dont la somme compte </label>
                          <label class="form-control col-sm-2" style="color: #337ab7; text-align: center; font-size: 20px"><%=gecom.getSomme_montant()%></label>
                          <label class="col-sm-2 col-form-label">Ariary</label>
                        </div>
                        <div class="form-group row float-sm-right">
                            <button type="button" id="btn_stat" class="btn btn-default mr-2"><i class="fa fa-pie-chart"></i> Graphe</button>
                        </div><br><br><br><br>
                        <div class="box-body">
                            
                                <div id="bar-chart" style="height: 300px;"></div>
                         </div>
                      </form>
                    </div>
                  </div>
                </div>
                  <form name="profil">
         <div class="modal fade" id="profilutilisateur" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document"><br><br><br><br><br><br>
                <div class="modal-content col-md-10">
                    <div class="modal-body" align="center">
                        <div class="panel panel-default">
                            <h3>PROFIL D'UTILISATEUR</h3><hr>
                                <div class="form-group row">
                                   <label class="col-md-3 col-form-label">Nom</label>
                                   <div class="col-md-9">
                                       <label class="form-control col-sm-12" style="color: #337ab7; text-align: center; font-size: 16px"><%=session.getAttribute("nom")%></label>
                                   </div>
                               </div>

                               <div class="form-group row">
                                   <label class="col-md-3 col-form-label">Prénom</label>
                                   <div class="col-md-9">
                                     <label class="form-control col-sm-12" style="color: #337ab7; text-align: center; font-size: 16px"><%=session.getAttribute("prenom")%></label>
                                   </div>
                               </div>

                               <div class="form-group row">
                                   <label class="col-md-3 col-form-label">Téléphone</label>
                                   <div class="col-md-9">
                                       <label class="form-control col-sm-12" style="color: #337ab7; text-align: center; font-size: 16px"><%=session.getAttribute("tel")%></label>
                                   </div>
                               </div>

                               <div class="form-group row">
                                   <label class="col-md-3 col-form-label">Adresse</label>
                                   <div class="col-md-9">
                                        <label class="form-control col-sm-12" style="color: #337ab7; text-align: center; font-size: 16px"><%=session.getAttribute("adresse")%></label>
                                   </div>
                               </div><hr>

                               <div class="pull-right">
                                   <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-remove"></i></button>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        
          </div>
        <!-- partial -->
      </div> 
        <footer class="footer">
          <div class="container-fluid clearfix">
            <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © <script>document.write(new Date().getFullYear());</script>
              <a href="#" target="_blank">K-LynG</a>. DAII 3.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">EMIT Fianarantsoa </span>
          </div>
        </footer>
    </div>
  </div>
  <script src="assets/alert/sweetalert.min.js"></script>
  <script src="assets/alert/sweetalert.init.js"></script>
  <script src="assets/vendors/js/vendor.bundle.base.js"></script>
  <script src="assets/js/off-canvas.js"></script>
  <script src="assets/js/misc.js"></script>
  <script src="assets/js/dashboard.js"></script>
<script src="assets/chart/jquery.min.js"></script>
<script src="assets/chart/jquery.flot.js"></script>
<script src="assets/chart/jquery.flot.categories.js"></script>
</body> 
<script> 
$(document).ready(function(){
    $("#bar-chart").hide("fast");
    $("#btn_stat").click(function(){
        $("#bar-chart").toggle("slow");
    });
});
</script>
<script>
  $(function () {
    var bar_data = {
        data : [['Stock restant', <%=geprod.getSomme_qtt()%>], ['Stock vendu', <%=gecom.getSomme_qtt()%>]],
        color: '#0d5cb4'
      }
      $.plot('#bar-chart', [bar_data], {
        grid  : {
          borderWidth: 1,
          borderColor: '#f3f3f3',
          tickColor  : '#f3f3f3'
        },
        series: {
          bars: {
            show    : true,
            barWidth: 0.8,
            align   : 'center'
          }
        },
        xaxis : {
          mode      : 'categories',
          tickLength: 0
        }
      });
    });
</script>

</html>