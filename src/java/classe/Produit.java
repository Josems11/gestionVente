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
    public class Produit {
        private String num_prod;
        private String design_prod;
        private String marque;
        private String forme;
        private String epais;
        private int prix; 
        private int quantite;
        private int montant;

    public Produit() {
    }

    public Produit(String num_prod, String design_prod, String marque, String forme, String epais, int prix, int quantite, int montant) {
        this.num_prod = num_prod;
        this.design_prod = design_prod;
        this.marque = marque;
        this.forme = forme;
        this.epais = epais;
        this.prix = prix;
        this.quantite = quantite;
        this.montant = montant;
    }
    

    public String getNum_prod() {
        return num_prod;
    }

    public void setNum_prod(String num_prod) {
        this.num_prod = num_prod;
    }

    public String getDesign_prod() {
        return design_prod;
    }

    public void setDesign_prod(String design_prod) {
        this.design_prod = design_prod;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public String getForme() {
        return forme;
    }

    public void setForme(String forme) {
        this.forme = forme;
    }

    public String getEpais() {
        return epais;
    }

    public void setEpais(String epais) {
        this.epais = epais;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }

    public int getQuantite() {
        return quantite;
    }

    public void setQuantite(int quantite) {
        this.quantite = quantite;
    }

    public int getMontant() {
        return montant;
    }

    public void setMontant(int montant) {
        this.montant = montant;
    }

    
}
