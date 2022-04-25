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
</head>
    <script type="text/javascript">
        $(function($) {
            $('.jclock').jclock();
        });               
          function CtrlNom() {
              var test = document.fournisseur.nom_frs.value;
              var nb = test.length;
              var ConvMaj = test.toUpperCase();
              document.fournisseur.nom_frs.value = ConvMaj;
          }
          
          function CtrlPrenom() {
              var comm = document.fournisseur.prenom_frs.value;
              var x = 0;
              var y = 1;
              var txt = (comm.substring(x, y)).toUpperCase();
              var prnm = txt;
              for (var i = 0; i < comm.length; i++) {
                  x = y;
              }
              prnm = prnm + comm.substring(x, comm.length) + " ";
              document.fournisseur.prenom_frs.value = prnm;
          }
          
          function CtrlAdresse() {
              var str = document.fournisseur.adresse.value;
              var x = 0;
              var y = 1;
              var txt = (str.substring(x, y)).toUpperCase();
              var adrss = txt;
              for (var i = 0; i < str.length; i++) {
                  x = y;
              }
              adrss = adrss + str.substring(x, str.length) + " ";
              document.fournisseur.adresse.value = adrss;
          }

          function CtrlCIN() {
            var numcin = document.fournisseur.cin.value;
              var val = numcin.substring(6, 7);
                if (val === "1" || val === "2") {
                  document.fournisseur.cin.value = numcin.substring(0, 6) + numcin.substring(6, 7)+ " " + numcin.substring(7, 15);
                } else {
                  swal({
                    title: "<span style='font-size: 20px; color:#ff0000'>Saisie CIN invalide<span>",
                    text: "<span>La 6<sup>ème</sup> position doit être 1 ou 2 veuillez vérifier<span>",
                    html: true
                  });
                }  
              }

          function CtrlTel() {
            var numphon = document.fournisseur.tel_frs.value;
            var commc = numphon.substring(6, 7);
              if (commc === "2" || commc === "3" || commc === "4" || commc === "9") {
                document.fournisseur.tel_frs.value = numphon.substring(0, 6)+ "" +numphon.substring(6, 7) + "" + numphon.substring(7, 17);
        } else {
          swal({
            title: "<span style='font-size: 20px; color:#ff0000'>Numéro téléphone invalide<span>",
            text: "<span>La 6<sup>ème</sup> position doit être 2 ou 3 ou 4 ou 9<span>",
            html: true
            });
          }
       }
</script>
<script>
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

<body>
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
              <i class="menu-icon mdi mdi-email-secure"></i>
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
                <h3>Nouveau fournisseur</h3>
              </span>
            </div>
          </div>
            
          
          <div class="row">
                      <div class="col-12 stretch-card">
                  <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" method="post" name="fournisseur">
                        <div class="form-group row">
                          <label for="exampleInputPassword2" class="col-sm-1 col-form-label">Nom</label>
                          <div class="col-sm-11">
                            <input type="text" class="form-control nom_frs" id="nom_frs" name="nom_frs" onblur="CtrlNom(fournisseur)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputEmail2" class="col-sm-1 col-form-label">Prénom(s)</label>
                          <div class="col-sm-11">
                              <input type="text" class="form-control prenom_frs" id="prenom_frs" name="prenom_frs" onblur="CtrlPrenom(fournisseur)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputPassword2" class="col-sm-1 col-form-label">CIN</label>
                          <div class="col-sm-11">
                              <input type="text" class="form-control cin" id="cin" name="cin" data-inputmask='"mask": "999 999 999 999"' data-mask onblur="CtrlCIN(fournisseur)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputEmail2" class="col-sm-1 col-form-label">Téléphone</label>
                          <div class="col-sm-11">
                              <input type="text" class="form-control tel_frs"  id="tel_frs" name="tel_frs" data-inputmask='"mask": "+261 39 99 999 99"' data-mask onblur="CtrlTel(fournisseur)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputPassword2" class="col-sm-1 col-form-label">Adresse</label>
                          <div class="col-sm-11">
                              <textarea type="text" class="form-control adresse"  id="adresse" name="adresse" onblur="CtrlAdresse(fournisseur)"></textarea>
                          </div>
                        </div>
                        <div class="form-group row float-sm-right">
                            <button type="button" id="btn_save" class="btn btn-success mr-2"><i class="fa fa-save"></i> Enregistrer</button>
                            <button type="reset" class="btn btn-danger mr-2"><i class="fa fa-remove"></i> Annuler</button>
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
  <script src="assets/js/jquery-3.1.1.min.js"></script>
  <script src="assets/vendors/js/vendor.bundle.base.js"></script>
  <script src="assets/js/off-canvas.js"></script>
  <script src="assets/js/misc.js"></script>
  <script src="assets/js/dashboard.js"></script>
<script src="assets/mask/jquery.inputmask.js"></script>
<script>
  $(function () {
    $('[data-mask]').inputmask();
  });
</script>
</body>
<script>
      $(document).ready(function(){
        $('form').delegate('input.nom_frs','keyup',function(){
          if(!$(this).val().match(/^[a-zéèçàùôûêî]*$/i))
          enlevement(this);
        });

       $('form').delegate('input.prenom_frs','keyup',function(){
           if(!$(this).val().match(/^[a-zéèçàùôûêî]*$/i))
            enlevement(this);
        });
        
       function enlevement(elm) {
          var val = $(elm).val();
          var pst = elm.selectionStart;
            $(elm).val( val.substr(0,pst-1) + val.substr(pst,val.length)),
              elm.selectionStart = pst-1;
              elm.selectionEnd   = pst-1;
          }
          
        $('#btn_save').on('click',function(){
            var nom_frs = $('#nom_frs').val();
            var prenom_frs = $('#prenom_frs').val();
            var cin = $('#cin').val();
            var tel_frs = $('#tel_frs').val();
            var adresse = $('#adresse').val();
            if (nom_frs == '' || prenom_frs== '' || cin == '' || tel_frs == '' || adresse== '') {
               swal("", "Veuillez remplir le champ vide", "error");
            } else{
            $.ajax({
                type : "POST",
                url  : "insert_fournisseur.jsp",
                dataType : "JSON",
                data : {nom_frs:nom_frs, prenom_frs:prenom_frs,cin:cin , tel_frs:tel_frs, adresse:adresse},
            });
                $("#nom_frs").val("");
                $('#prenom_frs').val("");
                $('#cin').val("");
                $('#tel_frs').val("");
                $('#adresse').val("");
                swal("", "Insertion avec succès", "success");
        };
        });
    });
</script> 

</html>