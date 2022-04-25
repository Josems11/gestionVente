<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Login Gvv</title>
  <link rel="stylesheet" href="assets/css/ready.css">
  <link rel="stylesheet" href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/vendors/iconfonts/puse-icons-feather/feather.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.addons.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<script>
    function getUser(str) {
        if (str == "") {
             document.getElementById("ScriptSelect").innerHTML = "";
             return;
         } else { 
             if (window.XMLHttpRequest) {
                 // code for IE7+, Firefox, Chrome, Opera, Safari
                 xmlhttp = new XMLHttpRequest();
             } else {
                 // code for IE6, IE5
                 xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
             }
             xmlhttp.onreadystatechange = function() {
                 if (this.readyState == 4 && this.status == 200) {
                     document.getElementById("ScriptSelect").innerHTML = this.responseText;
                 }
             };
             xmlhttp.open("GET","select_user.jsp?code="+str,true);

             xmlhttp.send();
         }
                }
                function affiche_nom(){
                 var nom=document.getElementById("nm").value;
                 document.getElementById("nom").value=nom;
               }
               function affiche_prenom(){
                 var prenom=document.getElementById("pren").value;
                 document.getElementById("prenom").value=prenom;
               }
               function affiche_tel(){
                 var tel=document.getElementById("tl").value;
                 document.getElementById("tel").value=tel;
               }
               function affiche_ad(){
                 var adresse=document.getElementById("ad").value;
                 document.getElementById("adresse").value=adresse;
               }
 </script>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
      <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
                <h1 class="footer-text text-center">AUTHENTIFICATION</h1>
            <div class="auto-form-wrapper">
                <form action="seconnecter.jsp" method="post">
                <div class="form-group">
                  <label class="label">Nom d'utilisateur</label>
                  <div class="input-group">
                      <input type="text" class="form-control" name="utilisateur" id="utilisateur" placeholder="nom d'utilisateur" onkeyup="getUser(this.value)" onblur="affiche_nom(),affiche_ad(),affiche_prenom(),affiche_tel()">
                      <div id="ScriptSelect"></div>
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="label">Mot de passe</label>
                  <div class="input-group">
                      <input type="password" class="form-control" name="motpasse" id="motpasse" placeholder="*********">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>   
                  </div>
                     <input type="text" name="nom" id="nom" hidden>
                      <input type="text" name="prenom" id="prenom" hidden>
                      <input type="text" name="tel" id="tel" hidden>
                      <input type="text" name="adresse" id="adresse" hidden>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-primary submit-btn btn-block" value="Connecter">
                </div>
                <div class="form-group d-flex justify-content-between">
                  <div class="form-check form-check-flat mt-0">
                    <label class="form-check-sign"> 
                      <input class="form-check-input" type="checkbox" id="checkbox" name="checkbox">
                       <span class="form-check-sign"></span>
                        Afficher mot passe
                    </label>
                  </div>
                  <a href="#" class="text-small forgot-password text-black">Mot de passe oublier</a>
                </div>
                <div class="text-block text-center my-3">
                  <span class="text-small font-weight-semibold">Pas encore membre ?</span>
                  <a href="nouveau_compte.jsp" class="text-black text-small">Nouveau compte</a>
                </div>
              </form>
            </div>
            <ul class="auth-footer">
              <li>
                <a href="#">Conditions</a>
              </li>
              <li>
                <a href="#">Aide</a>
              </li>
              <li>
                <a href="#">Termes</a>
              </li>
            </ul>
            <p class="footer-text text-center">Copyright © <script>document.write(new Date().getFullYear());</script> K-LynG DAII 3 à l'EMIT. Tout droit reservé.</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="assets/js/jquery-3.1.1.min.js"></script>
  <script src="assets/vendors/js/vendor.bundle.base.js"></script>
  <script src="assets/vendors/js/vendor.bundle.addons.js"></script>
  <script src="assets/js/off-canvas.js"></script>
  <script src="assets/js/hoverable-collapse.js"></script>
  <script src="assets/js/misc.js"></script>
  <script src="assets/js/settings.js"></script>
  <script src="assets/js/todolist.js"></script>
</body>
<script type="text/javascript">
    $(document).ready(function(){
//affichage mot de passe
    $("#checkbox").click(function(){
        if($("#checkbox").get(0).checked){
            $("#motpasse").attr('type','text');
        }else{
            $("#motpasse").attr('type','password');
            }
        });
        });
  </script>
</html>