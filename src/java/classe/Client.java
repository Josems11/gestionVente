/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classe;

/**
 *
 * @author K-LynG
 */
public class Client {
    
    private String ref_cli;
    private String nom_cli;
    private String prenom_cli;
    private String cin_cli;
    private String tel_cli;
    private String adresse_cli;
   
    public Client() {
    }

    public Client(String ref_cli, String nom_cli, String prenom_cli, String cin_cli, String tel_cli, String adresse_cli) {
        this.ref_cli = ref_cli;
        this.nom_cli = nom_cli;
        this.prenom_cli = prenom_cli;
        this.cin_cli = cin_cli;
        this.tel_cli = tel_cli;
        this.adresse_cli = adresse_cli;
    }

    public String getRef_cli() {
        return ref_cli;
    }

    public void setRef_cli(String ref_cli) {
        this.ref_cli = ref_cli;
    }

    public String getNom_cli() {
        return nom_cli;
    }

    public void setNom_cli(String nom_cli) {
        this.nom_cli = nom_cli;
    }

    public String getPrenom_cli() {
        return prenom_cli;
    }

    public void setPrenom_cli(String prenom_cli) {
        this.prenom_cli = prenom_cli;
    }

    public String getCin_cli() {
        return cin_cli;
    }

    public void setCin_cli(String cin_cli) {
        this.cin_cli = cin_cli;
    }

    public String getTel_cli() {
        return tel_cli;
    }

    public void setTel_cli(String tel_cli) {
        this.tel_cli = tel_cli;
    }

    public String getAdresse_cli() {
        return adresse_cli;
    }

    public void setAdresse_cli(String adresse_cli) {
        this.adresse_cli = adresse_cli;
    }
    
  
}
