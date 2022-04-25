<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>iscription Gvv</title>
  <link rel="stylesheet" href="assets/css/ready.css">
  <link rel="stylesheet" href="assets/alert/sweetalert.css" />
  <link rel="stylesheet" href="assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/vendors/iconfonts/puse-icons-feather/feather.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.addons.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="shortcut icon" href="assets/images/favicon.png" />
  <style type="text/css">
        #btn_save{
            display: none;
     }
   </style>
</head>
<script language="JavaScript" type="text/javascript">                
          function CtrlNom() {
              var test = document.user.nom.value;
              var ConvMaj = test.toUpperCase();
              document.user.nom.value = ConvMaj;
          }
          
          function CtrlPrenom() {
              var prn = document.user.prenom.value;
              var x = 0;
              var y = 1;
              var txt = (prn.substring(x, y)).toUpperCase();
              var prnm = txt;
              for (var i = 0; i < prn.length; i++) {
                  x = y;
              }
              prnm = prnm + prn.substring(x, prn.length) + " ";
              document.user.prenom.value = prnm;
          }
          
          function CtrlAdresse() {
              var ad = document.user.adresse.value;
              var x = 0;
              var y = 1;
              var txt = (ad.substring(x, y)).toUpperCase();
              var adrss = txt;
              for (var i = 0; i < ad.length; i++) {
                  x = y;
              }
              adrss = adrss + ad.substring(x, ad.length) + " ";
              document.user.adresse.value = adrss;
          }

          function CtrlTel() {
            var numphon = document.user.tel.value;
            var commc = numphon.substring(6, 7);
              if (commc === "2" || commc === "3" || commc === "4") {
                document.user.tel.value = numphon.substring(0, 6)+ "" +numphon.substring(6, 7) + "" + numphon.substring(7, 17);
              } else {
                    swal({
                      title: "Ooups...",
                      text: "<span style='color:#ff0000'>Votre numéro téléphone est invalide<span>",
                      html: true
                    });
                }
            }
</script>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
      <div class="content-wrapper d-flex align-items-center auth register-bg-1 theme-one">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <h2 class="text-center mb-4">NOUVELLE COMPTE</h2>
            <div class="auto-form-wrapper">
              <form name="user">
               <div class="form-group">
                  <div class="input-group">
                      <input type="text" class="form-control nom" name="nom" id="nom" placeholder="nom"  onblur="CtrlNom(user)">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                 <div class="form-group">
                  <div class="input-group">
                      <input type="text" class="form-control prenom" name="prenom" id="prenom"  placeholder="prenom"  onblur="CtrlPrenom(user)">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control utilisateur" name="utilisateur" id="utilisateur"  placeholder="nom d'utilisateur">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <input type="password" class="form-control motpasse" name="motpasse" id="motpasse"  placeholder="mot de passe">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group">
                    <input type="password" class="form-control confmotpass" name="confmotpasse" id="confmotpasse"  placeholder="Confirmation mot de passe">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                 <div class="form-group">
                  <div class="input-group">
                    <input type="text" class="form-control tel" name="tel" id="tel"  placeholder="téléphone"  data-inputmask='"mask": "+261 39 99 999 99"' data-mask onblur="CtrlTel(user)">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                 <div class="form-group">
                  <div class="input-group">
                      <input type="text" class="form-control adresse" name="adresse" id="adresse"  placeholder="adresse"  onblur="CtrlAdresse(user)">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>

                </div>
                <div class="form-group d-flex justify-content-center">
                  <div class="form-check form-check-flat mt-0">
                      <label class="form-check-sign"> 
                          <input class="form-check-input" type="checkbox" id="checkbox" name="checkbox">
                       <span class="form-check-sign"></span>
                        J'accepte le condition d'utilisation
                    </label>
                  </div>
                </div>
                <div class="form-group">
                    <button type="button" class="btn btn-primary submit-btn btn-block" id="btn_save">Inscrire</button>
                    <button type="reset" class="btn btn-danger submit-btn btn-block" id="btn_save">Annuler</button>
                </div>
                <div class="text-block text-center my-3">
                  <span class="text-small font-weight-semibold">Vous avez une compte ?</span>
                  <a href="login.jsp" class="text-black text-small">Se connecter</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="assets/alert/sweetalert.min.js"></script>
  <script src="assets/alert/sweetalert.init.js"></script>
  <script src="assets/js/jquery-3.1.1.min.js"></script>
  <script src="assets/vendors/js/vendor.bundle.base.js"></script>
  <script src="assets/vendors/js/vendor.bundle.addons.js"></script>
<script src="assets/mask/jquery.inputmask.js"></script>
<script>
  $(function () {
    $('[data-mask]').inputmask();
  });
</script>
</body>
<script>
        
        $(function () {
           $("#nom").keyup(function(){
             AfficheBtnSave();
           });

           $("#prenom").change(function(){
             AfficheBtnSave();
           });

           $("#utilisateur").keyup(function(){
             AfficheBtnSave();
           });

           $("#motpasse").keyup(function(){
             AfficheBtnSave();
           });

           $("#confmotpasse").change(function(){
             AfficheBtnSave();
           });

            $("#tel").keyup(function(){
             AfficheBtnSave();
           });
           
           $("#adresse").keyup(function(){
             AfficheBtnSave();
           });
       });

       function Remplissage(){
           if((!VerifieChamp($("#nom"))) && (!VerifieChamp($("#prenom"))) && (!VerifieChamp($("#utilisateur"))) && (!VerifieChamp($("#motpasse"))) && (!VerifieChamp($("#confmotpasse"))) && (!VerifieChamp($("#tel"))) && (!VerifieChamp($("#adresse")))){
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
        $('form').delegate('input.nom','keyup',function(){
          if(!$(this).val().match(/^[a-zéèçàùôûêî]*$/i))
          enlevement(this);
        });

       $('form').delegate('input.prenom','keyup',function(){
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
          
        function condition_util(){
            var valeurcheck='';
                if($("#checkbox").get(0).checked){
                    valeurcheck=1;
                }else{
                    valeurcheck=0;
                }
               return valeurcheck;
             }
    
       $('#btn_save').on('click',function(){
            var nom = $('#nom').val();
            var prenom = $('#prenom').val();
            var utilisateur = $('#utilisateur').val();
            var motpasse = $('#motpasse').val();
            var confmotpasse = $('#confmotpasse').val();
            var tel = $('#tel').val();
            var adresse = $('#adresse').val();
                if (nom === '' || prenom=== '' || utilisateur === '' || motpasse === '' || tel=== '' || adresse === '') {
                   swal("", "Veuillez remplir le champ vide", "error");
                } else{
                    if(motpasse==='' || confmotpasse===''){
                        swal("", "Vous n'avez pas confirmer le mot de passe", "error");
                    }else{
                        if(motpasse !== confmotpasse){
                            swal("", "Votre mot de passe sont different", "error");
                        }else{
                            if(condition_util()===0){
                                swal("", "Vous n'avez pas accepter le terme d'utilisation", "error");
                            }else{
                                    $.ajax({
                                    type : "POST",
                                    url  : "insert_utilisateur.jsp",
                                    dataType : "JSON",
                                    data : {nom:nom, prenom:prenom,utilisateur:utilisateur , motpasse:motpasse, tel:tel, adresse:adresse}
                                     });
                                    $("#nom").val("");
                                    $('#prenom').val("");
                                    $('#utilisateur').val("");
                                    $('#motpasse').val("");
                                    $('#tel').val("");
                                    $('#adresse').val("");
                                    $('#confmotpasse').val("");
                                    swal("", "Insertion avec succès", "success");

                                }      
                            }
                        }
                    }
                });
            });
    </script> 
</html>