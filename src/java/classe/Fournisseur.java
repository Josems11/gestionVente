/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classe;

/**
 *
 * @author K-LnyG
 */
public class Fournisseur {
    
    private String nom_frs;
    private String prenom_frs;
    private String cin;
    private String tel_frs;
    private String adresse;
    
    public Fournisseur() {
    }

    public Fournisseur(String nom_frs, String prenom_frs, String cin, String tel_frs, String adresse) {
        this.nom_frs = nom_frs;
        this.prenom_frs = prenom_frs;
        this.cin = cin;
        this.tel_frs = tel_frs;
        this.adresse = adresse;
    }

    public String getNom_frs() {
        return nom_frs;
    }

    public void setNom_frs(String nom_frs) {
        this.nom_frs = nom_frs;
    }

    public String getPrenom_frs() {
        return prenom_frs;
    }

    public void setPrenom_frs(String prenom_frs) {
        this.prenom_frs = prenom_frs;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getTel_frs() {
        return tel_frs;
    }

    public void setTel_frs(String tel_frs) {
        this.tel_frs = tel_frs;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
    

}
