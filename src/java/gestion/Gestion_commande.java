/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestion;
import classe.Produit;
import classe.Commande;
import Connection.ConnexionBase;
import java.sql.ResultSet;

/**
 *
 * @author K-LynG
 */
  public class Gestion_commande {
    public ConnexionBase connexion;

  public Gestion_commande() throws Exception {
    connexion = new ConnexionBase();
    
  }
  public void insert(Commande c) throws Exception{
    String query = "INSERT INTO commande(num_cli,ref_prod,date,quantite,prix,montant) VALUES('" + c.getNum_cli() + "','" + c.getRef_prod() + "','" + c.getDate() + "','" + c.getQuantite()+"','" + c.getPrix()+"','" + c.getMontant()+"')";
    connexion.executeUpdate(query); 
  }
  public void update(String id,Commande c) throws Exception {
    String query = "UPDATE commande SET num_cli='" + c.getNum_cli()+ "',ref_prod='" +c.getRef_prod() + "',date='" +  c.getDate()+"', quantite='" +c.getQuantite() + "', prix='" +c.getPrix() + "', montant='" +c.getMontant() + "'WHERE ref_com='" + id + "'";
    connexion.executeUpdate(query);

  }
  public void update_qtt(String id,int quantite,Produit p) throws Exception {
    String query = "UPDATE produit SET  quantite=quantite - "+quantite+"  WHERE ref_prod='" + id + "'";
    connexion.executeUpdate(query);

  }
  public void delete(String id) throws Exception {
    String query = "DELETE FROM  commande WHERE ref_com='" + id + "'";
    connexion.executeUpdate(query);

  }
  public ResultSet getAll() throws Exception {
    String query = "SELECT * FROM commande ORDER BY ref_com";
    ResultSet rs = connexion.executeQuery(query);
    return rs;
  }
  public ResultSet getAll(int limitInf, int limitSup) throws Exception{
		String query="SELECT * FROM commande ORDER BY date LIMIT "+limitInf+","+limitSup;
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	}	
	//nombre commande dans la base
	public int getCount() throws Exception{
		int res = 0 ;
		String query="SELECT count(*) FROM Commande";
		ResultSet rs = connexion.executeQuery(query);
		rs.next() ;
		res = rs.getInt("count(*)") ;
		return res ;		
	}
  public int getCountstock(int ref) throws Exception{
		int res = 0 ;
		String query="SELECT quantite FROM produit where ref_prod="+ref+"";
		ResultSet rs = connexion.executeQuery(query);
		rs.next() ;
		res = rs.getInt("quantite") ;
		return res ;		
	}
  public int getCountstockcred(String ref) throws Exception{
		int res = 0 ;
		String query="SELECT quantite FROM produit  WHERE ref_prod="+ref+"";
		ResultSet rs = connexion.executeQuery(query);
		rs.next() ;
		res = rs.getInt("quantite") ;
		return res ;		
	}
  public ResultSet getRecherche(String id) throws Exception{
    String query="SELECT * FROM commande WHERE ref_com LIKE '%"+id+"%' or num_cli LIKE '%"+id+"%' OR ref_prod LIKE '%"+id+"%' OR date LIKE '%"+id+"%'OR quantite LIKE '%"+id+"%' OR prix LIKE '%"+id+"%' OR montant LIKE '%"+id+"%'" ;
    ResultSet rs=connexion.executeQuery(query);
    return rs;
    }
  public ResultSet ChargerNumero() throws Exception {
    String query = "SELECT num_cli,nom_cli,prenom_cli FROM client ORDER BY num_cli ";
    ResultSet rs = connexion.executeQuery(query);
    return rs; 
    } 
  public ResultSet ChargerRef() throws Exception {
    String query = "SELECT ref_prod FROM produit ORDER BY ref_prod";
    ResultSet rs = connexion.executeQuery(query);
    return rs;   
     }
   public ResultSet getByNumero(String id) throws Exception{
		String query="SELECT * FROM commande WHERE ref_com='"+id+"'";
		ResultSet rs = connexion.executeQuery(query);
		return rs ;		
	} 
  public ResultSet Recherche2Date(String date1, String date2) throws Exception {
    String query = "SELECT * FROM commande WHERE date BETWEEN '"+date1+"' AND '"+date2+"'";
    ResultSet rs = connexion.executeQuery(query);
    return rs;
    } 
  public ResultSet getprixMax() throws Exception {
    String query = "SELECT cl.nom_cli, cl.prenom_cli, p.prix FROM client cl, produit p, commande c WHERE cl.num_cli=c.num_cli AND c.ref_prod=p.ref_prod AND p.prix=(SELECT MAX(prix)FROM produit)";
    ResultSet rs = connexion.executeQuery(query);
    return rs;
    } 
  public int getSomme_qtt() throws Exception{
    int res = 0 ;
		String query="SELECT SUM(quantite)  FROM commande";
		ResultSet rs = connexion.executeQuery(query);
    rs.next() ;
		res = rs.getInt("SUM(quantite)") ;
		return res ;		
	}
  public int getSomme_montant() throws Exception{
    int res = 0 ;
		String query="SELECT SUM(montant)  FROM commande";
		ResultSet rs = connexion.executeQuery(query);
    rs.next() ;
		res = rs.getInt("SUM(montant)") ;
		return res ;		
	}
}
