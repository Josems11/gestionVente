/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;

import Connection.ConnexionBase;
import classe.Produit;
import java.sql.ResultSet;

/**
 *
 * @author K-LynG
 */
  public class Gestion_produit {
    public ConnexionBase connexion;

  public Gestion_produit() throws Exception {
    connexion = new ConnexionBase();
    
  }
  public void insert(Produit p) throws Exception{
      String query = "INSERT INTO produit(num_prod,design_prod,marque,forme,epais,prix,quantite,montant)VALUES('" + p.getNum_prod()+ "','" + p.getDesign_prod()+ "','" + p.getMarque()+ "','" + p.getForme()+ "','" + p.getEpais()+ "','" + p.getPrix()+ "','" + p.getQuantite()+ "','" + p.getMontant()+ "')";
      connexion.executeUpdate(query); 
  }
  public void update(String id, Produit p) throws Exception {
    String query = "UPDATE produit SET num_prod='" + p.getNum_prod()+ "',design_prod='" + p.getDesign_prod()+ "',marque='" + p.getMarque()+ "',forme='" + p.getForme()+ "',epais='" + p.getEpais()+ "', prix='" + p.getPrix()+ "',quantite='" + p.getQuantite()+ "',montant='" + p.getMontant()+ "' WHERE ref_prod='" + id + "'";
    connexion.executeUpdate(query);

  }
  public void delete(String id) throws Exception {
    String query = "DELETE FROM produit WHERE ref_prod='" + id + "'";
    connexion.executeUpdate(query);

  }
  public void modifier_quantite(String ref_prod,Produit p) throws Exception{
    String query="UPDATE produit SET quantite='"+p.getQuantite()+"' WHERE ref_prod='"+ref_prod+"'";
    connexion.executeUpdate(query);
  }
  public ResultSet getAll() throws Exception {
    String query = "SELECT * FROM produit ORDER BY ref_prod";
    ResultSet rs = connexion.executeQuery(query);
    return rs;
  }
  public ResultSet getAll(int limitInf, int limitSup) throws Exception{
		String query="SELECT * FROM produit ORDER BY ref_prod LIMIT "+limitInf+","+limitSup;
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	}	
	//nombre produit dans la base
	public int getCount() throws Exception{
		int res = 0 ;
		String query="SELECT count(*) FROM produit";
		ResultSet rs = connexion.executeQuery(query);
		rs.next() ;
		res = rs.getInt("count(*)") ;
		return res ;		
	}
  public ResultSet getRecherche(String id) throws Exception{
    String query="SELECT * FROM produit WHERE ref_prod LIKE '%"+id+"%' OR num_prod LIKE '%"+id+"%' OR design_prod LIKE '%"+id+"%' OR marque LIKE '%"+id+"%' OR forme LIKE '%"+id+"%' OR epais LIKE '%"+id+"%' OR  prix LIKE '%"+id+"%' OR quantite LIKE '%"+id+"%' OR montant LIKE '%"+id+"%'";
    ResultSet rs=connexion.executeQuery(query);
    return rs;
    }
  public ResultSet getByNumero(String id) throws Exception{
		String query="SELECT * FROM produit WHERE ref_prod='"+id+"'";
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	}
  public ResultSet chargeRef() throws Exception{
    String query="SELECT ref_prod,design_prod,prix FROM produit ORDER BY ref_prod ";
    ResultSet rs=connexion.executeQuery(query);
    return rs;
  }
  public ResultSet getRef(String ref) throws Exception{
    String query="SELECT * FROM produit WHERE ref_prod='"+ref+"'";
    ResultSet rs=connexion.executeQuery(query);
    return rs;
   }
  public ResultSet getRefProd(String rf) throws Exception{
    String query="SELECT * FROM produit WHERE ref_prod='"+rf+"'";
    ResultSet rs=connexion.executeQuery(query);
    return rs;
  }
  public int getSomme_qtt() throws Exception{
    int res = 0 ;
		String query="SELECT sum(quantite)  FROM produit";
		ResultSet rs = connexion.executeQuery(query);
    rs.next() ;
		res = rs.getInt("sum(quantite)") ;
		return res ;		
	}
          
  public int getSomme_montant() throws Exception{
   int res = 0 ;
		String query="SELECT sum(montant)  FROM produit";
		ResultSet rs = connexion.executeQuery(query);
    rs.next() ;
		res = rs.getInt("sum(montant)") ;
		return res ;		
	}
      
}
