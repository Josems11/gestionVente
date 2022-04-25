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
public class Commande {
    private String num_cli;
    private String ref_prod;
    private String date;
    private int quantite;
    private int prix;
    private int montant;
  
    public Commande() {
    }

    public Commande(String num_cli, String ref_prod, String date, int quantite, int prix, int montant) {
        this.num_cli = num_cli;
        this.ref_prod = ref_prod;
        this.date = date;
        this.quantite = quantite;
        this.prix = prix;
        this.montant = montant;
    }

    public String getNum_cli() {
        return num_cli;
    }

    public void setNum_cli(String num_cli) {
        this.num_cli = num_cli;
    }

    public String getRef_prod() {
        return ref_prod;
    }

    public void setRef_prod(String ref_prod) {
        this.ref_prod = ref_prod;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

    public int getMontant() {
        return montant;
    }

    public void setMontant(int montant) {
        this.montant = montant;
    }

    
}
