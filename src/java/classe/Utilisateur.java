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
public class Utilisateur {

    private String nom;
    private String prenom;
    private String utilisateur;
    private String motpasse;
    private String tel;
    private String adresse;
   
    public Utilisateur() {
    }

    public Utilisateur(String nom, String prenom, String utilisateur, String motpasse, String tel, String adresse) {
        this.nom = nom;
        this.prenom = prenom;
        this.utilisateur = utilisateur;
        this.motpasse = motpasse;
        this.tel = tel;
        this.adresse = adresse;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getUtilisateur() {
        return utilisateur;
    }

    public void setUtilisateur(String utilisateur) {
        this.utilisateur = utilisateur;
    }

    public String getMotpasse() {
        return motpasse;
    }

    public void setMotpasse(String motpasse) {
        this.motpasse = motpasse;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    
}
