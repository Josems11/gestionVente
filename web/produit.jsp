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
  <style type="text/css">
        #btn_save{
            display: none;
     }
   </style>
  </head>
<script language="javascript">
    $(function($) {
            $('.jclock').jclock();
        });
    function getTotal(){
      var quantite = document.getElementById("quantite").value;
      var prix_commande = document.getElementById("prix").value;
      var total = quantite * prix_commande;
      document.getElementById("montant").value = total;
    }
     function CtrlRef() {
            var str = document.produit.num_prod.value;
            var x = 0;
            var y = 1;
            var txt = (str.substring(x, y)).toUpperCase();
            var dsg = txt;
            for (var i = 0; i < str.length; i++) {
                x = y;
            }
        dsg = dsg + str.substring(x, str.length) + " ";
        document.produit.num_prod.value = dsg;
     }  
        function CtrlDsgnt() {
            var str = document.produit.design_prod.value;
            var x = 0;
            var y = 1;
            var txt = (str.substring(x, y)).toUpperCase();
            var dsg = txt;
            for (var i = 0; i < str.length; i++) {
                x = y;
            }
        dsg = dsg + str.substring(x, str.length) + " ";
        document.produit.design_prod.value = dsg;
     }  
        function CtrlForm() {
            var str = document.produit.forme.value;
            var x = 0;
            var y = 1;
            var txt = (str.substring(x, y)).toUpperCase();
            var dsg = txt;
            for (var i = 0; i < str.length; i++) {
                x = y;
            }
        dsg = dsg + str.substring(x, str.length) + " ";
        document.produit.forme.value = dsg;
    }  
     function CtrlMark() {
            var str = document.produit.marque.value;
            var x = 0;
            var y = 1;
            var txt = (str.substring(x, y)).toUpperCase();
            var dsg = txt;
            for (var i = 0; i < str.length; i++) {
                x = y;
            }
        dsg = dsg + str.substring(x, str.length) + " ";
        document.produit.marque.value = dsg;
    } 
     function CtrlEpais() {
            var str = document.produit.epais.value;
            var x = 0;
            var y = 1;
            var txt = (str.substring(x, y)).toUpperCase();
            var dsg = txt;
            for (var i = 0; i < str.length; i++) {
                x = y;
            }
        dsg = dsg + str.substring(x, str.length) + " ";
        document.produit.epais.value = dsg;
    } 
    
    
           function CtrlChiffre(evt){  
            var charCode = (evt.which) ? evt.which : event.keyCode;
               if (charCode > 31 && (charCode < 48 || charCode > 57)){
                   swal({
                    title: "<span style='font-size: 20px; color:#ff0000'>Saisie quantité invalide<span>",
                    text: "<span>Veuillez changer votre caractère en chiffre<span>",
                    html: true
                  });
                   return false;
                }
                   return true;
               }
             function CtrlChiffrepri(evt){  
            var charCode = (evt.which) ? evt.which : event.keyCode;
               if (charCode > 31 && (charCode < 48 || charCode > 57)){
                   swal({
                    title: "<span style='font-size: 20px; color:#ff0000'>Saisie prix invalide<span>",
                    text: "<span>Veuillez changer votre caractère en chiffre<span>",
                    html: true
                  });
                   return false;
                }
                   return true;
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
                <h3>Nouveau produit</h3>
              </span>
            </div>
          </div>
            
          
          <div class="row">
                      <div class="col-12 stretch-card">
                  <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" method="post" name="produit">
                        <div class="form-group row">
                          <label for="exampleInputPassword2" class="col-sm-1 col-form-label">Référence</label>
                          <div class="col-sm-11">
                            <input type="text" class="form-control num_prod" id="num_prod" name="num_prod" onblur="CtrlRef(produit)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputEmail2" class="col-sm-1 col-form-label">Désignation</label>
                          <div class="col-sm-11">
                            <input type="text" class="form-control design_prod" id="design_prod" name="design_prod" onblur="CtrlDsgnt(produit)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputEmail2" class="col-sm-1 col-form-label">Marque</label>
                          <div class="col-sm-11">
                            <input type="text" class="form-control marque" id="marque" name="marque" onblur="CtrlMark(produit)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputEmail2" class="col-sm-1 col-form-label">Forme</label>
                          <div class="col-sm-11">
                            <input type="text" class="form-control forme" id="forme" name="forme" onblur="CtrlForm(produit)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputEmail2" class="col-sm-1 col-form-label">Epaisseur</label>
                          <div class="col-sm-11">
                            <input type="text" class="form-control epais" id="epais" name="epais" onblur="CtrlEpais(produit)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputPassword2" class="col-sm-1 col-form-label">Prix</label>
                          <div class="col-sm-11">
                              <input type="text" class="form-control prix" id="prix" name="prix" >
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputEmail2" class="col-sm-1 col-form-label">Quantité</label>
                          <div class="col-sm-11">
                              <input type="text" class="form-control quantite"  id="quantite" name="quantite" onkeyup="getTotal()">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label for="exampleInputPassword2" class="col-sm-1 col-form-label">Montant</label>
                          <div class="col-sm-11">
                              <input type="text" class="form-control montant"  id="montant" name="montant" readonly>
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
</body>

  <script>
        
        $(function () {
           $("#num_prod").keyup(function(){
             AfficheBtnSave();
           });

           $("#design_prod").keyup(function(){
             AfficheBtnSave();
           });

           $("#marque").keyup(function(){
             AfficheBtnSave();
           });

           $("#forme").keyup(function(){
             AfficheBtnSave();
           });

           $("#epais").keyup(function(){
             AfficheBtnSave();
           });

            $("#prix").keyup(function(){
             AfficheBtnSave();
           });
           $("#quantite").keyup(function(){
             AfficheBtnSave();
           });
           $("#montant").change(function(){
             AfficheBtnSave();
           });
       });

       function Remplissage(){
           if((!VerifieChamp($("#num_prod"))) && (!VerifieChamp($("#design_prod"))) && (!VerifieChamp($("#marque"))) && (!VerifieChamp($("#forme"))) && (!VerifieChamp($("#epais"))) && (!VerifieChamp($("#prix"))) && (!VerifieChamp($("#quantite"))) && (!VerifieChamp($("#montant")))){
               return true;
               }
           }
       function VerifieChamp(valeur){
           if(valeur.val() === ""){
             return true;
           }
             return false;
       }

       function AfficheBtnSave(){
           if(Remplissage()){
               $("#btn_save").show("speed");
           }else{
               $("#btn_save").hide("speed");
             }
           }
    </script>
<script>
      $(document).ready(function(){
        $('form').delegate('input.forme','keyup',function(){
          if(!$(this).val().match(/^[a-zéèçàùôûêî]*$/i))
          enlevement(this);
        });

       $('form').delegate('input.prenom_cli','keyup',function(){
           if(!$(this).val().match(/^[a-zéèçàùôûêî]*$/i))
            enlevement(this);
        });

       $('form').delegate('input.prix','keyup',function(){
          if(!$(this).val().match(/^\-?[0-9]*$/)) // numbers
          enlevement(this);
       });
       
        $('form').delegate('input.quantite','keyup',function(){
          if(!$(this).val().match(/^\-?[0-9]*$/)) // numbers
          enlevement(this);
       });
       
       $('form').delegate('input.epais','keyup',function(){
          if(!$(this).val().match(/^[0-9a-z, ]*$/i)) // numbers
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
            var num_prod = $('#num_prod').val();
            var design_prod = $('#design_prod').val();
            var marque = $('#marque').val();
            var forme = $('#forme').val();
            var epais = $('#epais').val();
            var prix = $('#prix').val();
            var quantite = $('#quantite').val();
            var montant = $('#montant').val();
            if (num_prod === '' || design_prod=== '' || marque=== '' || forme === '' || epais === '' || prix === '' || quantite === '' || montant=== '') {
               swal("", "Veuillez remplir le champ vide", "error");
            } else{
            $.ajax({
                type : "POST",
                url  : "insert_produit.jsp",
                dataType : "JSON",
                data : {num_prod:num_prod, design_prod:design_prod, marque:marque, forme:forme, epais:epais, prix:prix , quantite:quantite, montant:montant},
            });
                $("#num_prod").val("");
                $('#design_prod').val("");
                $('#marque').val("");
                $('#forme').val("");
                $('#epais').val("");
                $('#prix').val("");
                $('#quantite').val("");
                $('#montant').val("");
                swal("", "Insertion avec succès", "success");
        };
        });
    });
</script> 

</html>