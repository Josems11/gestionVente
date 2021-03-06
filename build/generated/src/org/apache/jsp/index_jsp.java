package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import gestion.Gestion_msg;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("\n");

    HttpSession sess = request.getSession();
        if(sess.getAttribute("nom") == null){
            response.sendRedirect("login.jsp");
        }
 
      out.write("\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <!-- Required meta tags -->\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("  <title>Gestion vente vitre</title>\n");
      out.write("  <!-- plugins:css -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/alert/sweetalert.css\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/vendors/iconfonts/mdi/css/materialdesignicons.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/vendors/iconfonts/font-awesome/css/font-awesome.min.css\" />\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/vendors/css/vendor.bundle.base.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/vendors/css/vendor.bundle.addons.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("  <link rel=\"shortcut icon\" href=\"assets/images/favicon.png\" />\n");
      out.write("  <script src=\"assets/js/function_date.js\"></script>  \n");
      out.write("  <script src=\"assets/js/jquery-3.1.1.min.js\"></script>       \n");
      out.write("  <script src=\"assets/js/jquery.jclock-1.2.0.js\" type=\"text/javascript\"></script> \n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        $(function($) {\n");
      out.write("            $('.jclock').jclock();\n");
      out.write("        });\n");
      out.write("          function deconnecter() {\n");
      out.write("            if (\n");
      out.write("                swal({\n");
      out.write("                    title: \"\",\n");
      out.write("                    text: \"Voulez-vous vraiment d??connecter ?\",\n");
      out.write("                    type: \"warning\",\n");
      out.write("                    showCancelButton: true,\n");
      out.write("                    confirmButtonColor: \"green\",\n");
      out.write("                    confirmButtonText: \"Oui\",\n");
      out.write("                    cancelButtonText: \"Non\",\n");
      out.write("                    closeOnConfirm: false,\n");
      out.write("                    closeOnCancel: false\n");
      out.write("                    },\n");
      out.write("                function(isConfirm){\n");
      out.write("                    if (isConfirm) {\n");
      out.write("                         document.location = \"deconnection.jsp\";\n");
      out.write("                    }else {\n");
      out.write("                        swal(\"\", \"D??connexion annuler\", \"error\");\n");
      out.write("                    }\n");
      out.write("                })\n");
      out.write("            );  \n");
      out.write("        }\n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      gestion.Gestion_client gestcli = null;
      synchronized (_jspx_page_context) {
        gestcli = (gestion.Gestion_client) _jspx_page_context.getAttribute("gestcli", PageContext.PAGE_SCOPE);
        if (gestcli == null){
          gestcli = new gestion.Gestion_client();
          _jspx_page_context.setAttribute("gestcli", gestcli, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("    ");
      gestion.Gestion_produit gestprod = null;
      synchronized (_jspx_page_context) {
        gestprod = (gestion.Gestion_produit) _jspx_page_context.getAttribute("gestprod", PageContext.PAGE_SCOPE);
        if (gestprod == null){
          gestprod = new gestion.Gestion_produit();
          _jspx_page_context.setAttribute("gestprod", gestprod, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("    ");
      gestion.Gestion_commande gestcomm = null;
      synchronized (_jspx_page_context) {
        gestcomm = (gestion.Gestion_commande) _jspx_page_context.getAttribute("gestcomm", PageContext.PAGE_SCOPE);
        if (gestcomm == null){
          gestcomm = new gestion.Gestion_commande();
          _jspx_page_context.setAttribute("gestcomm", gestcomm, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("    ");
      gestion.Gestion_msg gest = null;
      synchronized (_jspx_page_context) {
        gest = (gestion.Gestion_msg) _jspx_page_context.getAttribute("gest", PageContext.PAGE_SCOPE);
        if (gest == null){
          gest = new gestion.Gestion_msg();
          _jspx_page_context.setAttribute("gest", gest, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("            \n");
      out.write("        ");

            ResultSet resul = gest.getAllin();
            int i = 0;
        
      out.write("\n");
      out.write("  <div class=\"container-scroller\">\n");
      out.write("    <!-- partial:partials/_navbar.html -->\n");
      out.write("    <nav class=\"navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row\">\n");
      out.write("      <div class=\"text-center navbar-brand-wrapper d-flex align-items-top justify-content-center\">\n");
      out.write("        <a class=\"navbar-brand brand-logo\" href=\"index.jsp\">\n");
      out.write("          <img src=\"assets/images/logo.png\" alt=\"logo\" />\n");
      out.write("        </a>\n");
      out.write("        <a class=\"navbar-brand brand-logo-mini\" href=\"index.jsp\">\n");
      out.write("          <img src=\"assets/images/logo-mini.svg\" alt=\"logo\" />\n");
      out.write("        </a>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"navbar-menu-wrapper d-flex align-items-center\">\n");
      out.write("        <ul class=\"navbar-nav navbar-nav-right\">\n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("            <a class=\"nav-link count-indicator dropdown-toggle\" id=\"messageDropdown\" href=\"#\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("              <i class=\"mdi  mdi-email\"></i>\n");
      out.write("                ");

                    Gestion_msg mess = new Gestion_msg(); 
                
      out.write("\n");
      out.write("              <span class=\"count\">");
      out.print(mess.getCount());
      out.write("</span>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-menu dropdown-menu-right navbar-dropdown preview-list\" aria-labelledby=\"messageDropdown\">\n");
      out.write("              <div class=\"dropdown-item\">\n");
      out.write("                <p class=\"mb-0 font-weight-normal float-left\">Vous avez r????u ");
      out.print(mess.getCount());
      out.write(" messages\n");
      out.write("                </p>\n");
      out.write("                <a href=\"liste_message.jsp\" class=\"badge badge-primary badge-pill float-right\" style=\"color:white\">Voir tous</a>\n");
      out.write("              </div>\n");
      out.write("                \n");
      out.write("            ");
 while (resul.next()) {
      out.write("\n");
      out.write("              <div class=\"dropdown-divider\"></div>\n");
      out.write("              <a class=\"dropdown-item preview-item\">\n");
      out.write("                <div class=\"preview-thumbnail\">\n");
      out.write("                  <img src=\"assets/images/faces/mess_in.jpg\" alt=\"image\" class=\"profile-pic\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"preview-item-content flex-grow\">\n");
      out.write("                  <h6 class=\"preview-subject ellipsis font-weight-medium text-dark\">Du : <b>");
      out.print( resul.getString("sender"));
      out.write("</b></h6>\n");
      out.write("                  <p class=\"font-weight-light small-text\" style=\"width:180px\">\n");
      out.write("                    ");
      out.print( resul.getString("msg"));
      out.write("\n");
      out.write("                  </p>\n");
      out.write("                  <h6 class=\"preview-subject ellipsis font-weight-medium text-dark\">\n");
      out.write("                      <span class=\"float-right font-weight-light small-text\" style=\"color: #1273dd\">");
      out.print( resul.getString("senttime"));
      out.write("</span>\n");
      out.write("                  </h6>\n");
      out.write("                </div>\n");
      out.write("              </a>\n");
      out.write("            ");
 i++; 
      out.write("\n");
      out.write("           ");
 }
      out.write("\n");
      out.write("              \n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("            <a class=\"nav-link count-indicator dropdown-toggle\" id=\"notificationDropdown\" href=\"#\" data-toggle=\"dropdown\">\n");
      out.write("              <i class=\"mdi mdi-message-reply-text\"></i>\n");
      out.write("              <span class=\"count\">");
      out.print(mess.getCountMessageOut());
      out.write("</span>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-menu dropdown-menu-right navbar-dropdown preview-list\" aria-labelledby=\"notificationDropdown\">\n");
      out.write("              <div class=\"dropdown-item\">\n");
      out.write("                <p class=\"mb-0 font-weight-normal float-left\">vous avez envoyer ");
      out.print(mess.getCountMessageOut());
      out.write(" messages\n");
      out.write("                </p>\n");
      out.write("                <a href=\"liste_message_envoyer.jsp\" class=\"badge badge-pill badge-primary float-right\">Voir tous</a>\n");
      out.write("              </div>\n");
      out.write("                 ");

            ResultSet result = gest.getAllout();
            int j = 0;
        
      out.write("\n");
      out.write("             ");
 while (result.next()) {
      out.write("\n");
      out.write("              <div class=\"dropdown-divider\"></div>\n");
      out.write("              <a class=\"dropdown-item preview-item\">\n");
      out.write("                <div class=\"preview-thumbnail\">\n");
      out.write("                  <img src=\"assets/images/faces/mess_out.jpg\" alt=\"image\" class=\"profile-pic\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"preview-item-content\">\n");
      out.write("                  <h6 class=\"preview-subject font-weight-medium text-dark\">Au : <b>");
      out.print( result.getString("receiver"));
      out.write("</b></h6>\n");
      out.write("                  <p class=\"font-weight-light small-text\" style=\"width:180px\">\n");
      out.write("                    ");
      out.print( result.getString("msg"));
      out.write("\n");
      out.write("                  </p>\n");
      out.write("                  <h6 class=\"preview-subject ellipsis font-weight-medium text-dark\">\n");
      out.write("                      <span class=\"float-right font-weight-light small-text\" style=\"color: #1273dd\">");
      out.print( result.getString("senttime"));
      out.write("</span>\n");
      out.write("                  </h6>\n");
      out.write("                </div>\n");
      out.write("              </a>\n");
      out.write("            ");
 j++; 
      out.write("\n");
      out.write("           ");
 }
      out.write("\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item dropdown d-none d-xl-inline-block\">\n");
      out.write("            <a class=\"nav-link dropdown-toggle\" id=\"UserDropdown\" href=\"#\" data-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("               <img class=\"img-xs rounded-circle\" src=\"assets/images/faces/face1.jpg\" alt=\"Profile image\">&nbsp;\n");
      out.write("              <span class=\"profile-text\">");
      out.print(session.getAttribute("nom"));
      out.write(" &nbsp; ");
      out.print(session.getAttribute("prenom"));
      out.write("</span>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"dropdown-menu dropdown-menu-right navbar-dropdown\" aria-labelledby=\"UserDropdown\">\n");
      out.write("                <button class=\"dropdown-item mt-2\" data-toggle=\"modal\" data-target=\"#profilutilisateur\"><i class=\"fa fa-info-circle\"></i> Profil</button>\n");
      out.write("              <button class=\"dropdown-item mt-2\" onclick=\"deconnecter()\"><i class=\"fa fa-power-off\"></i> D??connexion</button>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("        <button class=\"navbar-toggler navbar-toggler-right d-lg-none align-self-center\" type=\"button\" data-toggle=\"offcanvas\">\n");
      out.write("          <span class=\"icon-menu\"></span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    <!-- partial -->\n");
      out.write("    <div class=\"container-fluid page-body-wrapper\">\n");
      out.write("      <!-- partial:partials/_sidebar.html -->\n");
      out.write("      <nav class=\"sidebar sidebar-offcanvas\" id=\"sidebar\">\n");
      out.write("        <ul class=\"nav\">\n");
      out.write("          <li class=\"nav-item nav-profile\">\n");
      out.write("            <div class=\"nav-link\">\n");
      out.write("              <div class=\"user-wrapper\">\n");
      out.write("                <div class=\"profile-image\">\n");
      out.write("                  <img src=\"assets/images/faces/face1.jpg\" alt=\"profile image\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"text-wrapper\">\n");
      out.write("                  <p class=\"profile-name\">");
      out.print(session.getAttribute("nom"));
      out.write(" &nbsp; ");
      out.print(session.getAttribute("prenom"));
      out.write("</p>\n");
      out.write("                  <div>\n");
      out.write("                    <small class=\"designation text-muted\">Connect??</small>\n");
      out.write("                    <span class=\"status-indicator online\"></span>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("              <span class=\"jclock\"></span>\n");
      out.write("              <p style=\"color: #337ab7\" id=\"dateAnio\"></p>\n");
      out.write("               <script type=\"text/javascript\">\n");
      out.write("                    window.onload = date_heure('heure','dateAnio');\n");
      out.write("                </script>\n");
      out.write("              <button class=\"btn btn-primary btn-block\"><i class=\"fa fa-navicon\"></i>Page de navigation</button>\n");
      out.write("            </div>\n");
      out.write("         </li>\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"index.jsp\">\n");
      out.write("              <i class=\"menu-icon mdi mdi-home-variant\"></i>\n");
      out.write("              <span class=\"menu-title\">Acceuil</span>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("         \n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#auth\" aria-expanded=\"false\" aria-controls=\"auth\">\n");
      out.write("              <i class=\"menu-icon mdi mdi-account\"></i>\n");
      out.write("              <span class=\"menu-title\">Client</span>\n");
      out.write("              <i class=\"menu-arrow\"></i>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"collapse\" id=\"auth\">\n");
      out.write("              <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"client.jsp\"><i class=\"fa fa-plus-circle\"></i>&nbsp; Nouveau client</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"liste_cli.jsp\"><i class=\"fa fa-list\"></i>&nbsp; Voir liste</a>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("\n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#auth1\" aria-expanded=\"false\" aria-controls=\"auth\">\n");
      out.write("              <i class=\"menu-icon mdi mdi-content-copy\"></i>\n");
      out.write("              <span class=\"menu-title\">Produit</span>\n");
      out.write("              <i class=\"menu-arrow\"></i>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"collapse\" id=\"auth1\">\n");
      out.write("              <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                 <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"produit.jsp\"><i class=\"fa fa-plus-circle\"></i>&nbsp;  Nouveau produit</a>\n");
      out.write("                </li>\n");
      out.write("\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"nouveau_qtt.jsp\"><i class=\"fa fa-sign-in\"></i>&nbsp; Nouveau quantit??</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"liste_prod.jsp\"><i class=\"fa fa-list\"></i>&nbsp; Voir liste</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"consultation_stock.jsp\"><i class=\"fa fa-hourglass-1\"></i>&nbsp; Consultation tock</a>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("\n");
      out.write("           <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#auth2\" aria-expanded=\"false\" aria-controls=\"auth\">\n");
      out.write("              <i class=\"menu-icon mdi mdi-cart-outline\"></i>\n");
      out.write("              <span class=\"menu-title\">Commande</span>\n");
      out.write("              <i class=\"menu-arrow\"></i>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"collapse\" id=\"auth2\">\n");
      out.write("              <ul class=\"nav flex-column sub-menu\">\n");
      out.write("               <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"commande.jsp\"><i class=\"fa fa-plus-circle\"></i>&nbsp;  Nouveau commande</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"liste_com.jsp\"><i class=\"fa fa-list\"></i>&nbsp; Voir liste</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"facture.jsp\"><i class=\"fa fa-file-pdf-o\"></i>&nbsp; Bon de commande</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"statistique.jsp\"><i class=\"fa fa-pie-chart\"></i>&nbsp; Statistique du commande</a>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("           <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" data-toggle=\"collapse\" href=\"#auth3\" aria-expanded=\"false\" aria-controls=\"auth\">\n");
      out.write("              <i class=\"menu-icon mdi mdi-artist\"></i>\n");
      out.write("              <span class=\"menu-title\">Fournisseur</span>\n");
      out.write("              <i class=\"menu-arrow\"></i>\n");
      out.write("            </a>\n");
      out.write("            <div class=\"collapse\" id=\"auth3\">\n");
      out.write("              <ul class=\"nav flex-column sub-menu\">\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"fournisseur.jsp\"><i class=\"fa fa-plus-circle\"></i>&nbsp;  Nouveau fournisseur</a>\n");
      out.write("                </li>\n");
      out.write("                <li class=\"nav-item\">\n");
      out.write("                  <a class=\"nav-link\" href=\"liste_frs.jsp\"><i class=\"fa fa-list\"></i>&nbsp; Voir liste</a>\n");
      out.write("                </li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("          </li>\n");
      out.write("           <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"Message.jsp\">\n");
      out.write("              <i class=\"menu-icon mdi mdi-email-secure\"></i>\n");
      out.write("              <span class=\"menu-title\">Nouveau Message</span>\n");
      out.write("            </a>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("      <!-- partial -->\n");
      out.write("      <div class=\"main-panel\">\n");
      out.write("        <div class=\"content-wrapper\">\n");
      out.write("          <div class=\"row purchace-popup\">\n");
      out.write("            <div class=\"col-12\">\n");
      out.write("              <span class=\"d-flex alifn-items-center\">\n");
      out.write("                <h3>Page d'acceuil</h3>\n");
      out.write("              </span>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card\">\n");
      out.write("              <div class=\"card card-statistics\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <div class=\"clearfix\">\n");
      out.write("                    <div class=\"float-left\">\n");
      out.write("                      <i class=\"mdi mdi-cube text-danger icon-lg\"></i>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"float-right\">\n");
      out.write("                      <p class=\"mb-0 text-right\">Total Revenu</p>\n");
      out.write("                      <div class=\"fluid-container\">\n");
      out.write("                        <h3 class=\"font-weight-medium text-right mb-0\">Ar ");
      out.print(gestprod.getSomme_montant());
      out.write("</h3>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                  <p class=\"text-muted mt-3 mb-0\">\n");
      out.write("                    <i class=\"mdi mdi-alert-octagon mr-1\" aria-hidden=\"true\"></i> Revenu total de la commande\n");
      out.write("                  </p>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card\">\n");
      out.write("              <div class=\"card card-statistics\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <div class=\"clearfix\">\n");
      out.write("                    <div class=\"float-left\">\n");
      out.write("                      <i class=\"mdi mdi-receipt text-warning icon-lg\"></i>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"float-right\">\n");
      out.write("                      <p class=\"mb-0 text-right\">Orders</p>\n");
      out.write("                      <div class=\"fluid-container\">\n");
      out.write("                        <h3 class=\"font-weight-medium text-right mb-0\">");
      out.print(gestprod.getSomme_qtt());
      out.write("</h3>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                  <p class=\"text-muted mt-3 mb-0\">\n");
      out.write("                    <i class=\"mdi mdi-bookmark-outline mr-1\" aria-hidden=\"true\"></i> Quantit?? du stock restant\n");
      out.write("                  </p>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card\">\n");
      out.write("              <div class=\"card card-statistics\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <div class=\"clearfix\">\n");
      out.write("                    <div class=\"float-left\">\n");
      out.write("                      <i class=\"mdi mdi-poll-box text-success icon-lg\"></i>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"float-right\">\n");
      out.write("                      <p class=\"mb-0 text-right\">Sales</p>\n");
      out.write("                      <div class=\"fluid-container\">\n");
      out.write("                        <h3 class=\"font-weight-medium text-right mb-0\">");
      out.print(gestcomm.getSomme_qtt());
      out.write("</h3>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                  <p class=\"text-muted mt-3 mb-0\">\n");
      out.write("                    <i class=\"mdi mdi-calendar mr-1\" aria-hidden=\"true\"></i> Quantit?? du produit vendu\n");
      out.write("                  </p>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card\">\n");
      out.write("              <div class=\"card card-statistics\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                  <div class=\"clearfix\">\n");
      out.write("                    <div class=\"float-left\">\n");
      out.write("                      <i class=\"mdi mdi-account-location text-info icon-lg\"></i>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"float-right\">\n");
      out.write("                      <p class=\"mb-0 text-right\">Clients</p>\n");
      out.write("                      <div class=\"fluid-container\">\n");
      out.write("                          <h3 class=\"font-weight-medium text-right mb-0\">");
      out.print(gestcli.getCount());
      out.write("</h3>\n");
      out.write("                      </div>\n");
      out.write("                    </div>\n");
      out.write("                  </div>\n");
      out.write("                  <p class=\"text-muted mt-3 mb-0\">\n");
      out.write("                    <i class=\"mdi mdi-reload mr-1\" aria-hidden=\"true\"></i> Client d??j?? abonn??e\n");
      out.write("                  </p>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("          <div class=\"row\">\n");
      out.write("            <div class=\"col-12 grid-margin\">\n");
      out.write("              <div class=\"card\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("            <ul id=\"images\">\n");
      out.write("                <li><img src=\"assets/images/slide2.png\" width=\"700\" height=\"435\"/></li>\n");
      out.write("                <li><img src=\"assets/images/slide1.png\" width=\"700\" height=\"435\"/></li>\n");
      out.write("                <li><img src=\"assets/images/slide3.png\" width=\"700\" height=\"435\"/></li>\n");
      out.write("                <li><img src=\"assets/images/slide4.png\" width=\"700\" height=\"435\"/></li>\n");
      out.write("                <li><img src=\"assets/images/slide5.png\" width=\"700\" height=\"435\"/></li>\n");
      out.write("                <li><img src=\"assets/images/slide6.png\" width=\"700\" height=\"435\"/></li>\n");
      out.write("                <li><img src=\"assets/images/slide7.png\" width=\"700\" height=\"435\"/></li>\n");
      out.write("            </ul>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("          </div>\n");
      out.write("        <!-- content-wrapper ends -->\n");
      out.write("        <!-- partial:partials/_footer.html -->\n");
      out.write("        <form name=\"profil\">\n");
      out.write("         <div class=\"modal fade\" id=\"profilutilisateur\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\n");
      out.write("              <div class=\"modal-dialog\" role=\"document\"><br><br><br><br><br><br>\n");
      out.write("                <div class=\"modal-content col-md-10\">\n");
      out.write("                    <div class=\"modal-body\" align=\"center\">\n");
      out.write("                        <div class=\"panel panel-default\">\n");
      out.write("                            <h3>PROFIL D'UTILISATEUR</h3><hr>\n");
      out.write("                                <div class=\"form-group row\">\n");
      out.write("                                   <label class=\"col-md-3 col-form-label\">Nom</label>\n");
      out.write("                                   <div class=\"col-md-9\">\n");
      out.write("                                       <label class=\"form-control col-sm-12\" style=\"color: #337ab7; text-align: center; font-size: 16px\">");
      out.print(session.getAttribute("nom"));
      out.write("</label>\n");
      out.write("                                   </div>\n");
      out.write("                               </div>\n");
      out.write("\n");
      out.write("                               <div class=\"form-group row\">\n");
      out.write("                                   <label class=\"col-md-3 col-form-label\">Pr??nom</label>\n");
      out.write("                                   <div class=\"col-md-9\">\n");
      out.write("                                     <label class=\"form-control col-sm-12\" style=\"color: #337ab7; text-align: center; font-size: 16px\">");
      out.print(session.getAttribute("prenom"));
      out.write("</label>\n");
      out.write("                                   </div>\n");
      out.write("                               </div>\n");
      out.write("\n");
      out.write("                               <div class=\"form-group row\">\n");
      out.write("                                   <label class=\"col-md-3 col-form-label\">T??l??phone</label>\n");
      out.write("                                   <div class=\"col-md-9\">\n");
      out.write("                                       <label class=\"form-control col-sm-12\" style=\"color: #337ab7; text-align: center; font-size: 16px\">");
      out.print(session.getAttribute("tel"));
      out.write("</label>\n");
      out.write("                                   </div>\n");
      out.write("                               </div>\n");
      out.write("\n");
      out.write("                               <div class=\"form-group row\">\n");
      out.write("                                   <label class=\"col-md-3 col-form-label\">Adresse</label>\n");
      out.write("                                   <div class=\"col-md-9\">\n");
      out.write("                                        <label class=\"form-control col-sm-12\" style=\"color: #337ab7; text-align: center; font-size: 16px\">");
      out.print(session.getAttribute("adresse"));
      out.write("</label>\n");
      out.write("                                   </div>\n");
      out.write("                               </div><hr>\n");
      out.write("\n");
      out.write("                               <div class=\"pull-right\">\n");
      out.write("                                   <button type=\"button\" class=\"btn btn-danger\" data-dismiss=\"modal\"><i class=\"fa fa-remove\"></i></button>\n");
      out.write("                               </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <!-- partial -->\n");
      out.write("      </div>\n");
      out.write("    <!-- page-body-wrapper ends -->\n");
      out.write("     <footer class=\"footer\">\n");
      out.write("          <div class=\"container-fluid clearfix\">\n");
      out.write("            <span class=\"text-muted d-block text-center text-sm-left d-sm-inline-block\">Copyright ?? 2018\n");
      out.write("              <a href=\"http://www.bootstrapdash.com/\" target=\"_blank\">K-LynG</a>. DAII 3.</span>\n");
      out.write("            <span class=\"float-none float-sm-right d-block mt-1 mt-sm-0 text-center\">EMIT Fianarantsoa </span>\n");
      out.write("          </div>\n");
      out.write("        </footer>\n");
      out.write("      <!-- main-panel ends -->\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <!-- container-scroller -->\n");
      out.write("\n");
      out.write("  <!-- plugins:js -->\n");
      out.write("  <script src=\"assets/alert/sweetalert.min.js\"></script>\n");
      out.write("  <script src=\"assets/alert/sweetalert.init.js\"></script>\n");
      out.write("  <script src=\"assets/vendors/js/vendor.bundle.base.js\"></script>\n");
      out.write("  <script src=\"assets/js/off-canvas.js\"></script>\n");
      out.write("  <script src=\"assets/js/misc.js\"></script>\n");
      out.write("  <script src=\"assets/js/dashboard.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"assets/animation/jquery.js\"></script>\n");
      out.write("  <script type=\"text/javascript\" src=\"assets/animation/jquery.kwicks-1.5.1.js\"></script>\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/animation/style.css\" />\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    $(document).ready(function() {\n");
      out.write("      $('#images').kwicks({\n");
      out.write("        max : 700,\n");
      out.write("        spacing : -57\n");
      out.write("      });\n");
      out.write("      $('ul.sf-menu').sooperfish();\n");
      out.write("    });\n");
      out.write("  </script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
